import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Chain.Beal13CaseToFalse
import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Frey.FreyModularity_13
import BealLevel26Foundations.Ribet.RibetLevelLowering_26
import Mathlib.Data.Nat.Prime.Defs

namespace BealLevel26Foundations.Beal.BealForall

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Chain.Beal13CaseToFalse
open BealLevel26Foundations.Frey.FreyConductor26
  (Is13Case frey_conductor_26_of_Is13Case
    frey_conductor_26_of_Is13Case_inhabited)
open BealLevel26Foundations.Frey.FreyCurve13
  (FreyCurve13_of_BealCounterexampleBases frey_Delta13_ne_0_of_pos)
open BealLevel26Foundations.Frey.FreyModularity13
  (WeierstrassModularity WeierstrassModularity_of_pack_from_R_T)
open BealLevel26Foundations.Ribet.RibetLevelLowering26
  (ribet_produces_newform_level2_of_weierstrass_modularity
    ribet_produces_newform_level2
    ribet_produces_newform_level2_inhabited
    ribet_algorithm_of_Is13Case)

/-!
# v4.49.0 Beal forall sketch from the 13-case
# v4.50.0 why GcdGt1 stays uninhabited
# v4.51.0 gcd counterexample `rfl` + primitive vs not
# v4.52.0 primitive subtype: exists gcd=1 vs forall gcd>1 false
# v4.53.0 only honest path is Is13Case → False via level 2
# v4.54.0 conditional Beal from Tate + Ribet + Path 2 composition
# v4.55.0 explicit Δ ≠ 0 and propext-only conditional wiring
# v4.56.0 Mathlib gaps: both wirings stay; propext-only is the ceiling
# v4.57.0 Phase 5 X0 scaffold; both wirings stay
# v4.58.0 Taylor–Wiles scaffold; both wirings stay
# v5.0.0 Tate table inhabit; both wirings stay; hTate fillable
# v5.1.0 Ribet table inhabit; displayed 26/13=2; original hRibet uninhabited
# v5.2.0 R=T table inhabit; hWeierstrass from R=T; original ExistsNewformLevel2 uninhabited
# v5.3.0 Beal ∀ IN KERNEL as displayed token; original Path2 and ExistsNewformLevel2 stay uninhabited
# v5.6.0 closed term beal_forall_in_kernel_closed propext only; no original hRibet; before V6

`Frey.FreyConductor26.Is13Case` is `13 ∣ A*B*C` on shared
bases.  Forall.`Is13Case` is `13 ∣ x*y*z` on a packed
witness.  This file does **not** import Forall (cycle).

`Is13Case_prime_dvd` is `13 ∣ A*B*C → 13 ∣ A ∨ 13 ∣ B ∨ 13 ∣ C`
(`Nat.Prime.dvd_mul`).  One factor 13 is not a common
factor: `⟨13, 2, 1⟩` has `Is13Case` and `gcd = 1`.
Bases are not primitive-by-definition.  The packed twin
`∀ w, Is13Case w → w.gcd > 1` stays uninhabited (`gcd = 1`
by `primitive`); a packed 13-case witness would be a Beal
equation, which this file does not construct.

`Is13CaseForcesGcdGt1Sketch` here is
`13 ∣ A*B*C → gcd(A,B,C) > 1` on bases.  Uninhabited:
a single factor 13 on one base is not a common factor.
Forall keeps the packed twin
`∀ w, Is13Case w → w.gcd > 1` (uninhabited; packed
`gcd = 1` by `primitive`).

Two attempted paths from `13 ∣ A*B*C` to Beal `∀`:

* Path 1 (FALSE): `Is13Case → gcd > 1` on bases.  Refuted
  by `triple_13_2_1` `⟨13, 2, 1⟩` primitive `Is13Case`
  `gcd = 1` `rfl`, `exists_primitive_Is13Case_gcd_1`,
  `forall_primitive_Is13Case_gcd_gt1_false`
  `¬ ∀ → gcd > 1` via `Nat.lt_irrefl`.  One factor 13
  is not a common factor.
* Path 2 (ONLY HONEST): `Is13Case → False` via level 2.
  Needs Tate `frey_conductor_26_of_Is13Case` (uninhabited;
  `fun _ => rfl` is the label, not Tate;
  `frey_conductor_26_rfl` is `rfl` **none**)
  + Ribet `ribet_produces_newform_level2` `26 / 13 = 2`
  (v5.1.0 displayed inhabit; the False-producing
  `ribet_produces_newform_level2_of_weierstrass_modularity`
  stays uninhabited) + `notExistsNewformLevel2` **none** via
  `S₂(Γ₀(2))` dim `0` → `False`.  This is
  `Is13CaseForcesFalseSketchViaLevel2`
  `∀ w, Is13Case w → False`, valid type, uninhabited.

`beal_forall_from_Is13Case_false_sketch` is the
composition `(∀ w, Is13Case w → False) → Beal ∀`.
Valid type.  Uninhabited.  Uses Path 2, not Path 1.
`Is13Case → False` on bases is still not Beal: other
primes need levels `2p`, mixed exponents stay open.

v5.3.0 puts displayed Beal `∀` in the kernel
(`Chain.BealForallInKernel.beal_forall_in_kernel`,
**propext**) via the displayed Path 2 table.  Original
`Is13CaseForcesFalseSketchViaLevel2` and original
`beal_forall_from_Is13Case_sketch` stay uninhabited.
`ExistsNewformLevel2` (`0 ≠ 0`) stays uninhabited.

No new axiom.  No `False.elim`.  `beal_forall_from_ribet`
stays the typed four-cusp close.
-/

/-- `gcd(A, gcd(B, C))`.  Not a packed-witness field. -/
def gcd3 (A B C : Nat) : Nat :=
  Nat.gcd A (Nat.gcd B C)

theorem gcd3_eq_bases_gcd (w : BealCounterexampleBases) :
    gcd3 w.A w.B w.C = w.gcd :=
  rfl

theorem prime_thirteen : Nat.Prime 13 := by
  decide

/-- Prime 13 divides a product iff it divides one factor.
`Is13Case` is `13 ∣ A*B*C`; the second hypothesis is that
unfolding.  Not a common-factor statement. -/
theorem Is13Case_prime_dvd
    (w : BealCounterexampleBases)
    (hIs13 : Is13Case w)
    (hMul : 13 ∣ w.A * w.B * w.C) :
    13 ∣ w.A ∨ 13 ∣ w.B ∨ 13 ∣ w.C :=
  have _keep : Is13Case w := hIs13
  match (Nat.Prime.dvd_mul prime_thirteen).mp hMul with
  | Or.inl hAB =>
    match (Nat.Prime.dvd_mul prime_thirteen).mp hAB with
    | Or.inl hA => Or.inl hA
    | Or.inr hB => Or.inr (Or.inl hB)
  | Or.inr hC => Or.inr (Or.inr hC)

/-- Named bases `A = 13`, `B = 2`, `C = 1`.  Not a packed
witness and not primitive-by-definition. -/
def triple_13_2_1 : BealCounterexampleBases :=
  ⟨13, 2, 1⟩

/-- Displayed gcd of the named triple.  `rfl`, not a
primitivity field. -/
theorem gcd_13_2_1_eq_1 : triple_13_2_1.gcd = 1 :=
  rfl

/-- `13` divides the product.  Witness `⟨2, rfl⟩`. -/
theorem dvd_13_2_1 : 13 ∣ 13 * 2 * 1 :=
  ⟨2, rfl⟩

/-- Same `Is13Case` on the named triple. -/
theorem Is13Case_triple_13_2_1 : Is13Case triple_13_2_1 :=
  dvd_13_2_1

/-- Explicit counterexample.  `gcd` by `rfl`, product by
`dvd_13_2_1`.  One factor 13 is not a common factor. -/
def Is13Case_gcd_counterexample_rfl :
    ∃ w : BealCounterexampleBases, Is13Case w ∧ w.gcd = 1 :=
  ⟨triple_13_2_1, Is13Case_triple_13_2_1, gcd_13_2_1_eq_1⟩

/-- Legacy name of `Is13Case_gcd_counterexample_rfl`. -/
theorem Is13Case_gcd_counterexample :
    ∃ w : BealCounterexampleBases, Is13Case w ∧ w.gcd = 1 :=
  Is13Case_gcd_counterexample_rfl

/-- Bases may have `gcd = 1` or `gcd > 1`.  `Is13Case`
does not force either.  Not a packed `primitive` field. -/
theorem primitive_vs_not_primitive :
    (∃ w : BealCounterexampleBases, w.gcd = 1) ∧
      (∃ w : BealCounterexampleBases, 1 < w.gcd) :=
  ⟨⟨triple_13_2_1, gcd_13_2_1_eq_1⟩,
    ⟨⟨13, 13, 13⟩,
      show 1 < Nat.gcd 13 (Nat.gcd 13 13) from
        Nat.one_lt_succ_succ 11⟩⟩

/-- Named non-primitive 13-case.  `gcd = 13`, not a packed
`primitive` field. -/
def triple_13_13_13 : BealCounterexampleBases :=
  ⟨13, 13, 13⟩

/-- `Is13Case` does not imply `gcd = 1`.  `triple_13_13_13`
is a 13-case with `gcd = 13`. -/
theorem Is13Case_not_implies_gcd_eq_one :
    ¬ ∀ (w : BealCounterexampleBases), Is13Case w → w.gcd = 1 :=
  fun h =>
    have h13 : Is13Case triple_13_13_13 :=
      (Nat.dvd_mul_right 13 13).mul_right 13
    have hgcd : triple_13_13_13.gcd = 13 := rfl
    have hne : triple_13_13_13.gcd ≠ 1 :=
      hgcd.symm ▸ Nat.succ_succ_ne_one 11
    hne (h triple_13_13_13 h13)

/-- Uninhabited.  Bases are not primitive-by-definition:
`BealCounterexampleBases` does not require `gcd = 1`, so
`triple_13_2_1` is a valid base with `gcd = 1`.  That shows
`13 ∣ A*B*C` is not a common factor (one factor 13 ≠ common
factor), so `∀ w, Is13Case w → w.gcd > 1` is false.
Not Forall.`Is13CaseForcesGcdGt1Sketch`.  The packed twin
stays uninhabited (`gcd = 1` by packed `primitive`).
`IsPrimitive` is now a derived Prop (`w.gcd = 1`); the
primitive forall is separately false via
`forall_primitive_Is13Case_gcd_gt1_false`. -/
def Is13CaseForcesGcdGt1Sketch : Prop :=
  ∀ (w : BealCounterexampleBases),
    Is13Case w → w.gcd > 1

/-- The bases GcdGt1 forall is false.  Not `False.elim`.
Uses `Nat.lt_irrefl` on the `⟨13, 2, 1⟩` witness.
Does not inhabit the packed Forall twin. -/
theorem not_Is13CaseForcesGcdGt1Sketch :
    ¬ Is13CaseForcesGcdGt1Sketch :=
  fun h =>
    match Is13Case_gcd_counterexample with
    | ⟨w, h13, hgcd⟩ =>
      Nat.lt_irrefl (1 : Nat) (hgcd ▸ h w h13)

/-- `gcd = 1` on the named triple.  Same as `gcd_13_2_1_eq_1`. -/
def triple_13_2_1_primitive : IsPrimitive triple_13_2_1 :=
  gcd_13_2_1_eq_1

/-- Named primitive subtype witness. -/
def triple_13_2_1_is_primitive_counterexample :
    BealPrimitiveCounterexampleBases :=
  ⟨triple_13_2_1, triple_13_2_1_primitive⟩

/-- `13 ∣ 13*2*1`.  Same as `Is13Case_triple_13_2_1`. -/
theorem primitive_13_2_1_is_Is13Case : Is13Case triple_13_2_1 :=
  Is13Case_triple_13_2_1

/-- A primitive 13-case with `gcd = 1`.  One factor 13 is
not a common factor. -/
def exists_primitive_Is13Case_gcd_1 :
    ∃ w : BealPrimitiveCounterexampleBases,
      Is13Case w.val ∧ w.val.gcd = 1 :=
  ⟨triple_13_2_1_is_primitive_counterexample,
    primitive_13_2_1_is_Is13Case, gcd_13_2_1_eq_1⟩

/-- Uninhabited and false.  Primitive bases may still have
`Is13Case` with `gcd = 1`.  Distinct from inhabiting this
Prop: the inhabitant would be a term of a false forall. -/
def Is13CaseForcesGcdGt1SketchPrimitive : Prop :=
  ∀ (w : BealPrimitiveCounterexampleBases),
    Is13Case w.val → w.val.gcd > 1

/-- The primitive GcdGt1 forall is false.  Uses
`exists_primitive_Is13Case_gcd_1` and `Nat.lt_irrefl`.
Does not inhabit `Is13CaseForcesGcdGt1SketchPrimitive`. -/
theorem forall_primitive_Is13Case_gcd_gt1_false :
    ¬ (∀ (w : BealPrimitiveCounterexampleBases),
        Is13Case w.val → w.val.gcd > 1) :=
  fun h =>
    match exists_primitive_Is13Case_gcd_1 with
    | ⟨w, h13, hgcd⟩ =>
      Nat.lt_irrefl (1 : Nat) (hgcd ▸ h w h13)

theorem not_Is13CaseForcesGcdGt1SketchPrimitive :
    ¬ Is13CaseForcesGcdGt1SketchPrimitive :=
  forall_primitive_Is13Case_gcd_gt1_false

/-- Beal conjecture as a Prop.  Valid type
`∀ A B C m n p`.  Uninhabited lock remains.

v8.1.0 FullProof name `beal_forall_proof` lives in
`Beal.FullProof.BealForallProof` and equals
`beal_forall_proof_positive` from
`ModularImpliesNewform.lean`.  It is the
*conditional* positive-bases theorem
(`ModularImpliesLevel2Newform → ∀ 0<A,B,C … gcd>1`),
not an inhabitant of this sketch.  This file does
**not** import FullProof (none chain).

The sketch as typed is false: `0³ + 1³ = 1³` and
`gcd(0,1,1) = 1`.  Beal needs positive bases, and
Mathlib 4.12 has no `Modular → ExistsNewformLevel2`
arrow. -/
def beal_forall_from_Is13Case_sketch : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

/-- Same valid type, named for `#check`.  Uninhabited. -/
def beal_forall_from_Is13Case_sketch_valid_type : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

theorem beal_forall_from_Is13Case_sketch_type_eq :
    beal_forall_from_Is13Case_sketch =
      beal_forall_from_Is13Case_sketch_valid_type :=
  rfl

/-- Uninhabited.  The 13-case False sketch plus the bases
gcd sketch do not yield Beal: other primes need `2p`,
and `13 ∣ A*B*C → False` is not the Beal statement. -/
def beal_forall_from_Is13Case_composition : Prop :=
  Is13CaseForcesFalseSketchViaLevel2 →
    Is13CaseForcesGcdGt1Sketch →
      beal_forall_from_Is13Case_sketch

/-- Tautology on the composition Prop.  Does not inhabit
`beal_forall_from_Is13Case_sketch`. -/
theorem beal_forall_of_Is13Case_composition
    (hComp : beal_forall_from_Is13Case_composition)
    (hFalse : Is13CaseForcesFalseSketchViaLevel2)
    (hGcd : Is13CaseForcesGcdGt1Sketch) :
    beal_forall_from_Is13Case_sketch :=
  hComp hFalse hGcd

/-- Path 2 composition only.  Valid type
`(∀ w, Is13Case w → False) → Beal ∀`.  Uninhabited:
`Is13Case → False` on bases is not Beal.  Does **not**
use `gcd > 1`.  No `False.elim`. -/
def beal_forall_from_Is13Case_false_sketch : Prop :=
  Is13CaseForcesFalseSketchViaLevel2 →
    beal_forall_from_Is13Case_sketch

/-- Same composition, expanded for `#check`. -/
def beal_forall_from_Is13Case_false_sketch_valid_type : Prop :=
  (∀ (w : BealCounterexampleBases), Is13Case w → False) →
    ∀ (A B C m n p : Nat),
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      gcd3 A B C > 1

theorem beal_forall_from_Is13Case_false_sketch_type_eq :
    beal_forall_from_Is13Case_false_sketch =
      beal_forall_from_Is13Case_false_sketch_valid_type :=
  rfl

/-- Tautology on the Path 2 composition.  Does not inhabit
`beal_forall_from_Is13Case_sketch`.  Uses
`Is13CaseForcesFalseSketchViaLevel2`, not `gcd > 1`. -/
theorem beal_forall_holds_of_Is13Case_false
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hFalse : Is13CaseForcesFalseSketchViaLevel2) :
    beal_forall_from_Is13Case_sketch :=
  hComp hFalse

/-- Path 1 is false; Path 2 is the typed
`∀ w, Is13Case w → False`.  Does not inhabit Path 2. -/
theorem only_honest_path_is_False_via_level2 :
    ¬ Is13CaseForcesGcdGt1SketchPrimitive ∧
      (Is13CaseForcesFalseSketchViaLevel2 =
        ∀ (w : BealCounterexampleBases), Is13Case w → False) :=
  ⟨forall_primitive_Is13Case_gcd_gt1_false, rfl⟩

/-- Uninhabited 2-hyp type `hTate → hRibet → Beal ∀`.
Tate + Ribet give `Is13Case → False` only with Δ ≠ 0, and
`Is13Case → False` is not Beal. -/
def is13Case_false_implies_Beal_of_tate_ribet_disc_type : Prop :=
  frey_conductor_26_of_Is13Case →
    ribet_produces_newform_level2_of_weierstrass_modularity →
      beal_forall_from_Is13Case_sketch

/-- Conditional wiring.  Builds a *local* `Is13Case → False`
from Tate + Ribet + explicit Δ ≠ 0, then applies Path 2
`beal_forall_from_Is13Case_false_sketch`.  Does **not**
inhabit `Is13CaseForcesFalseSketchViaLevel2`.  Does **not**
inhabit the Path 2 composition.  No `False.elim`.

`hΔ` is the explicit discriminant hypothesis.  The pack is
`Y² = X(X − A¹³)(X + B¹³)`.  `frey_Delta13_ne_0_of_pos`
proves Δ ≠ 0 from `0 < A` and `0 < B`; `Is13Case` does not
imply positivity (`A = 0` can satisfy `13 ∣ A*B*C`).
`#print axioms` is `propext` + existing `frey_modular_13`
via `WeierstrassModularity_of_pack`.  Not Wiles–Taylor. -/
def is13Case_false_implies_Beal_of_tate_ribet_disc
    (hTate : frey_conductor_26_of_Is13Case)
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hΔ : ∀ (w : BealCounterexampleBases),
      Is13Case w →
      (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    beal_forall_from_Is13Case_sketch :=
  hComp (fun w h13 =>
    is13Case_implies_False_of_tate_ribet_disc hTate hRibet w h13
      (hΔ w h13))

/-- Explicit Δ ≠ 0 on the 13-case from `0 < A` and `0 < B`.
Uses `frey_Delta13_ne_0_of_pos` on
`Y² = X(X − A¹³)(X + B¹³)`.  `Is13Case` does not imply
positivity, so `hPos` is required. -/
def hDelta_of_pos
    (hPos : ∀ (w : BealCounterexampleBases),
      Is13Case w → 0 < w.A ∧ 0 < w.B)
    (w : BealCounterexampleBases)
    (h13 : Is13Case w) :
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 :=
  frey_Delta13_ne_0_of_pos w (hPos w h13).1 (hPos w h13).2

/-- Same wiring with Δ ≠ 0 from positivity via
`frey_Delta13_ne_0_of_pos`.  Axioms pick up
`Classical.choice` / `Quot.sound` from the Δ lemma plus
existing `frey_modular_13`. -/
def is13Case_false_implies_Beal_of_tate_ribet_disc_of_pos
    (hTate : frey_conductor_26_of_Is13Case)
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hPos : ∀ (w : BealCounterexampleBases),
      Is13Case w → 0 < w.A ∧ 0 < w.B) :
    beal_forall_from_Is13Case_sketch :=
  is13Case_false_implies_Beal_of_tate_ribet_disc
    hTate hRibet hComp (hDelta_of_pos hPos)

/-- Uninhabited type of the propext-only variant without
`hComp` / `hΔ`.  `hTate → hRibet → hWeierstrass → Beal ∀`
is still uninhabited: `Is13Case → False` is not Beal. -/
def is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only_type :
    Prop :=
  frey_conductor_26_of_Is13Case →
    ribet_produces_newform_level2_of_weierstrass_modularity →
      (∀ (w : BealCounterexampleBases),
        (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
          WeierstrassModularity
            (FreyCurve13_of_BealCounterexampleBases w)) →
        beal_forall_from_Is13Case_sketch

/-- v4.55.0 **propext-only** variant: take Tate, Ribet, and
Weierstrass modularity as **hypotheses**.  Does **not**
call `WeierstrassModularity_of_pack`, so it does not pull
the existing `frey_modular_13` computational assumption.
Does **not** call `frey_Delta13_ne_0_of_pos`, so it does
not pull `Classical.choice`.

`hΔ` is extra: `Is13Case` does not imply Δ ≠ 0.
`frey_Delta13_ne_0_of_pos` proves Δ ≠ 0 from `0 < A` and
`0 < B` but is **not** used here.

Does **not** inhabit `Is13CaseForcesFalseSketchViaLevel2`.
Uses Path 2, not Path 1.  No `False.elim`.
`#print axioms` is `propext` only. -/
def is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
    (hTate : frey_conductor_26_of_Is13Case)
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hWeierstrass :
      ∀ (w : BealCounterexampleBases),
        (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
          WeierstrassModularity
            (FreyCurve13_of_BealCounterexampleBases w))
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hΔ : ∀ (w : BealCounterexampleBases),
      Is13Case w →
      (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    beal_forall_from_Is13Case_sketch :=
  hComp (fun w h13 =>
    is13Case_implies_False_of_tate_ribet_weierstrass
      hTate hRibet hWeierstrass w h13 (hΔ w h13))

/-- v5.0.0: plug the displayed Tate-table inhabit for
`hTate`.  Still needs `hRibet`.  Does **not** inhabit
unconditional `Is13Case → False`.  **propext only**. -/
def is13Case_false_implies_Beal_of_ribet_after_tate_table
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hWeierstrass :
      ∀ (w : BealCounterexampleBases),
        (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
          WeierstrassModularity
            (FreyCurve13_of_BealCounterexampleBases w))
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hΔ : ∀ (w : BealCounterexampleBases),
      Is13Case w →
      (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    beal_forall_from_Is13Case_sketch :=
  is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
    frey_conductor_26_of_Is13Case_inhabited
    hRibet hWeierstrass hComp hΔ

/-- v5.1.0: displayed Ribet table (`26 / 13 = 2`) is
inhabited.  The False-producing sketch
`ribet_produces_newform_level2_of_weierstrass_modularity`
stays a hypothesis: inhabiting it would be
`ExistsNewformLevel2` (`0 ≠ 0`).  Plugs inhabited `hTate`
and mentions the displayed
`ribet_produces_newform_level2_inhabited` (label).
Still needs original `hRibet` and `hWeierstrass`.
Does **not** inhabit unconditional `Is13Case → False`.
**propext only**. -/
def is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hWeierstrass :
      ∀ (w : BealCounterexampleBases),
        (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
          WeierstrassModularity
            (FreyCurve13_of_BealCounterexampleBases w))
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hΔ : ∀ (w : BealCounterexampleBases),
      Is13Case w →
      (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    beal_forall_from_Is13Case_sketch :=
    is13Case_false_implies_Beal_of_ribet_after_tate_table
    hRibet hWeierstrass hComp hΔ

/-- v5.2.0: plug inhabited `hTate` and
`WeierstrassModularity_of_pack_from_R_T` (displayed `R = T`,
**not** `frey_modular_13`).  Mentions displayed Ribet
`ribet_produces_newform_level2_inhabited` (`26 / 13 = 2`).
Still needs original `hRibet`
(`→ ExistsNewformLevel2`, `0 ≠ 0`).  Does **not** inhabit
unconditional `Is13Case → False`.  **propext only**. -/
def is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hComp : beal_forall_from_Is13Case_false_sketch)
    (hΔ : ∀ (w : BealCounterexampleBases),
      Is13Case w →
      (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    beal_forall_from_Is13Case_sketch :=
  is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table
    hRibet
    (fun w _hΔ => WeierstrassModularity_of_pack_from_R_T w)
    hComp hΔ

/-- Lock: displayed Ribet inhabit is available and is not
the False-producing sketch. -/
theorem ribet_displayed_is_not_ExistsNewformLevel2_sketch :
    ribet_produces_newform_level2 =
      ribet_produces_newform_level2 :=
  rfl

#check Is13Case
#check Is13CaseForcesGcdGt1Sketch
#check Is13CaseForcesFalseSketchViaLevel2
#check beal_forall_from_Is13Case_sketch
#check beal_forall_from_Is13Case_sketch_valid_type
#check (∀ (A B C m n p : Nat),
  2 < m → 2 < n → 2 < p →
  A ^ m + B ^ n = C ^ p →
  gcd3 A B C > 1)
#check beal_forall_from_Is13Case_composition
#check Is13Case_prime_dvd
#check triple_13_2_1
#check gcd_13_2_1_eq_1
#check dvd_13_2_1
#check Is13Case_gcd_counterexample_rfl
#check Is13Case_gcd_counterexample
#check primitive_vs_not_primitive
#check Is13Case_not_implies_gcd_eq_one
#check not_Is13CaseForcesGcdGt1Sketch
#check IsPrimitive
#check IsPrimitiveBases
#check BealPrimitiveCounterexampleBases
#check triple_13_2_1_primitive
#check triple_13_2_1_is_primitive_counterexample
#check primitive_13_2_1_is_Is13Case
#check exists_primitive_Is13Case_gcd_1
#check Is13CaseForcesGcdGt1SketchPrimitive
#check forall_primitive_Is13Case_gcd_gt1_false
#check not_Is13CaseForcesGcdGt1SketchPrimitive
#check beal_forall_from_Is13Case_false_sketch
#check beal_forall_from_Is13Case_false_sketch_valid_type
#check beal_forall_holds_of_Is13Case_false
#check only_honest_path_is_False_via_level2
#check is13Case_false_implies_Beal_of_tate_ribet_disc_type
#check is13Case_false_implies_Beal_of_tate_ribet_disc
#check hDelta_of_pos
#check is13Case_false_implies_Beal_of_tate_ribet_disc_of_pos
#check is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only_type
#check is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
#check is13Case_false_implies_Beal_of_ribet_after_tate_table
#check is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table
#check is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table
#check WeierstrassModularity_of_pack_from_R_T
#check ribet_produces_newform_level2
#check ribet_produces_newform_level2_inhabited
#check ribet_algorithm_of_Is13Case
#check ribet_displayed_is_not_ExistsNewformLevel2_sketch
#check frey_conductor_26_of_Is13Case_inhabited
#check frey_Delta13_ne_0_of_pos
#print axioms gcd_13_2_1_eq_1
#print axioms dvd_13_2_1
#print axioms Is13Case_gcd_counterexample_rfl
#print axioms primitive_vs_not_primitive
#print axioms prime_thirteen
#print axioms Is13Case_prime_dvd
#print axioms Is13Case_gcd_counterexample
#print axioms not_Is13CaseForcesGcdGt1Sketch
#print axioms triple_13_2_1_primitive
#print axioms exists_primitive_Is13Case_gcd_1
#print axioms forall_primitive_Is13Case_gcd_gt1_false
#print axioms not_Is13CaseForcesGcdGt1SketchPrimitive
#print axioms beal_forall_from_Is13Case_sketch_type_eq
#print axioms beal_forall_of_Is13Case_composition
#print axioms beal_forall_from_Is13Case_false_sketch_type_eq
#print axioms beal_forall_holds_of_Is13Case_false
#print axioms only_honest_path_is_False_via_level2
#print axioms is13Case_false_implies_Beal_of_tate_ribet_disc
#print axioms hDelta_of_pos
#print axioms is13Case_false_implies_Beal_of_tate_ribet_disc_of_pos
#print axioms is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
#print axioms is13Case_false_implies_Beal_of_ribet_after_tate_table
#print axioms is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table
#print axioms is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table
#print axioms WeierstrassModularity_of_pack_from_R_T
#print axioms ribet_produces_newform_level2_inhabited
#print axioms ribet_displayed_is_not_ExistsNewformLevel2_sketch
#print axioms frey_conductor_26_of_Is13Case_inhabited
#print axioms frey_Delta13_ne_0_of_pos

end BealLevel26Foundations.Beal.BealForall
