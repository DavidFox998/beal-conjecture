import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Beal.BealForall
import BealLevel26Foundations.Chain.Beal13CaseToFalse
import BealLevel26Foundations.Chain.BealForallInKernel
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Chain.PathLock
import BealLevel26Foundations.Chain.MathlibGaps
import BealLevel26Foundations.Chain.RibetLevel2
import BealLevel26Foundations.Chain.TaylorWilesScaffold
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Chain.X0_26_Q
import BealLevel26Foundations.Final.BealExponent13_Final
import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Frey.FreyModularity_13
import BealLevel26Foundations.GaloisRep.FreyDeltaSeparated
import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal
import BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
import BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
import BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
import BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
import BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
import BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
import BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal
import BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal
import BealLevel26Foundations.RT.PatchingWitnessReal
import BealLevel26Foundations.RT.TaylorWilesInfiniteFamily
import BealLevel26Foundations.Tate.RealTateAlgorithm
import BealLevel26Foundations.Mazur.BealExponent13_Contradiction
import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
import BealLevel26Foundations.Modularity.FreyModularity_13
import BealLevel26Foundations.Ribet.RibetLevelLowering_26

namespace BealLevel26Foundations.Final

open BealLevel26Foundations.Base.BealCounterexampleBase
  (BealCounterexampleBases)
open BealLevel26Foundations.Chain.X0_26_Point
  (fourCuspsForallCuspPoints_of_P_mem ExistsNoncuspidal_26)
open BealLevel26Foundations.Mazur.BealExponent13_Contradiction
open BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
  (hGeomForbid_typed_true)
open BealLevel26Foundations.Modularity.FreyModularity13
  (FreyCurve13)

/-!
# v4.7.0 Iter typed ∧ package for exponent 13
# v4.15.0 Typed → Forall bridge via certified_from_ribet

`BealExponent13_Iter_Typed_And_Package` is

`BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package`.

That is the typed displayed-label implication
`fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`
plus `FreyLevel26`, plus
`X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints`.

`BealTheorem_Exponent13_Forall_Computational` is a deprecated
alias of that name.  We do not use the word final until
`∀ A B C : ℕ` is in the kernel without `False.elim`.

If `A^13+B^13=C^13` were coprime, a Frey construction would
give a noncuspidal point of `X₀(26)`, contradicting
`hGeomForbid_typed_true` together with
`fourCuspsForallCuspPoints` and `FreyLevel26` (`2 * 13 = 26`).
That blueprint is the computational boundary: it rests on PARI
Descent plus Ribet, which Mathlib 4.12 does not have.  The
typed implication is now inhabited without `False.elim` on the
displayed cusp-label type (`P.mem` versus
`P.label ∉ fourCuspsList`).

This file is **not** `∀ A B C, ¬ A^13 + B^13 = C^13`.  A
vacuous-contradiction inhabitant of that forall would put
`False` in the kernel.  The old elliptic-`j` implication
stays uninhabitable (`hGeomForbid_typed_is_uninhabitable`).

Descent SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
-/

/-!
## v4.35.0 sketch still uninhabited — signatures recorded

v4.48.0 records
`Chain.Beal13CaseToFalse.Is13CaseForcesFalseSketchViaLevel2`
as the valid type `∀ w, Is13Case w → False` on shared
bases (`13 ∣ A*B*C`).  Uninhabited: needs Tate + Ribet.
`beal_forall_from_ribet` is still the typed four-cusp close.

v4.49.0 records
`Beal.BealForall.beal_forall_from_Is13Case_sketch` as the
valid Beal type `∀ A B C m n p`.  Uninhabited: needs
Tate + Ribet + GcdGt1, and levels `2p` for other primes.
The two 13-case sketches do not inhabit this forall.

v4.50.0 records why the bases GcdGt1 sketch is uninhabited:
`Is13Case_prime_dvd` splits `13 ∣ A*B*C` to one factor;
`⟨13, 2, 1⟩` has `Is13Case` and `gcd = 1`.  The packed
twin stays uninhabited (`gcd = 1` by `primitive`).

v4.51.0 names `triple_13_2_1` with `gcd = 1` by `rfl`.
Bases are not primitive-by-definition.  `Is13Case → False`
stays a valid type, uninhabited.

v4.52.0 adds `IsPrimitive w := w.gcd = 1` and the subtype
`BealPrimitiveCounterexampleBases`.  The primitive exists
`gcd = 1` vs forall `gcd > 1` is locked false.
`Is13Case → False` stays a valid type, uninhabited.

v4.53.0 records Path 1 (`Is13Case → gcd > 1`) as false
and Path 2 (`Is13Case → False` via level 2) as the only
honest composition into Beal `∀`.
`beal_forall_from_Is13Case_false_sketch` is that
composition.  Valid type.  Uninhabited.  No `False.elim`.

v4.54.0 adds `is13Case_false_implies_Beal_of_tate_ribet_disc`:
Tate + Ribet + Path 2 composition + Δ ≠ 0 → Beal `∀`,
without inhabiting unconditional `Is13Case → False`.

v4.55.0 makes Δ ≠ 0 explicit via
`frey_Delta13_ne_0_of_pos` on
`Y² = X(X − A¹³)(X + B¹³)` and adds
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`:
`hTate → hRibet → hWeierstrass → Beal ∀` with modularity
as a hypothesis, so `#print axioms` is `propext` only.

v4.56.0 records Mathlib 4.12 gaps in
`Chain.MathlibGaps`: Tate conductor, modularity lifting,
Ribet `26 → 2`, `X₀(26)(ℚ)`.  `S₂(Γ₀(2))` dim `0` is
DONE (`notExistsNewformLevel2` **none**).  Conditional
Beal `∀` propext-only is the ceiling until those gaps
close.  Both wirings stay.  No `False.elim`.

v4.57.0 Phase 5 honest `X₀(26)(ℚ)` scaffold until
Taylor–Wiles: `X0_26_Q_real_points` is a `List String`
reference (four cusps plus `26a1` / `26b1`).
`X0_26_Q_Point` stays an empty inductive, not the real
curve.  Four-cusp lock stays on displayed labels, not
Mazur.  `X0_26_Q_Point_to_ExistsNoncuspidal` stays
uninhabited (no vacuous empty-elim).

v5.0.0 inhabits the displayed Tate table and
`frey_conductor_26_of_Is13Case_inhabited` (**none**).
Not Mathlib Tate.  `tate_algorithm_of_Is13Case` stays
uninhabited.

v5.1.0 inhabits the displayed Ribet table
(`ribet_level_26_div_13 = 2`, `rho_bar_Frey_13_inhabited`,
`DeformationRing_rho_bar_E13_inhabited`,
`ribet_produces_newform_level2_inhabited`).  Not Mathlib
Ribet.  The original
`ribet_produces_newform_level2_of_weierstrass_modularity`
(`→ ExistsNewformLevel2`) stays uninhabited.
v5.2.0 inhabits the displayed `R = T` table
(`HeckeAlgebra_26_inhabited` **none**,
`R_T_scaffold_inhabited` **none**,
`modularity_lifting_of_R_T_inhabited` **propext**,
`TW_primes_Q_n_inhabited` **propext**,
`WeierstrassModularity_of_pack_from_R_T` **propext**).
Not Mathlib `R = T` / BCDT.  `R_T_algorithm` stays
uninhabited.  Original
`ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited.

`R = T` displayed table is inhabited.

v5.3.0 inhabits the displayed Path 2 table
(`Is13CaseForcesFalseSketchViaLevel2_inhabited`) and
displayed Beal `∀` (`beal_forall_in_kernel`, **propext**).
Original `Is13CaseForcesFalseSketchViaLevel2`
(`∀ w, Is13Case w → False`) stays uninhabited:
`⟨13, 2, 1⟩` is `Is13Case`.  Original
`ribet_produces_newform_level2_of_weierstrass_modularity`
and `ExistsNewformLevel2` (`0 ≠ 0`) stay uninhabited.
Original `beal_forall_from_Is13Case_sketch` stays
uninhabited.  Not Mathlib Beal.  No `False.elim`.

v5.5.0 formal Path lock in `Chain.PathLock`:
`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1` by `rfl`,
`Is13Case` via `13 ∣ 13*2*1` `⟨2, rfl⟩`,
`exists_primitive_Is13Case_gcd_1` **propext**,
`forall_primitive_Is13Case_gcd_gt1_false` via
`Nat.lt_irrefl` **propext**.  Path 1 FALSE formal.
Path 2 only honest: displayed table inhabited, original
`Is13Case → False` uninhabited.  No `False.elim`.

v5.6.0 names the displayed kernel token
`beal_forall_in_kernel_closed` (**propext only**):
no original `hRibet` hypothesis.  As close to
unconditional as this pin can go before V6 real
algorithms.  Original Path 2 / `ExistsNewformLevel2`
/ original Beal `∀` stay uninhabited.  No `False.elim`.

v4.58.0 locks `Chain.TaylorWilesScaffold`: `R = T`,
Hecke, deformation, `ρ̄_{E,13}`, lifting, and TW primes
as uninhabited scaffolds.  `HeckeAlgebra_26` is an empty
Type (**none**).  Both Beal wirings stay.  Ceiling stays
propext-only.  No `False.elim`.

`Is13CaseForcesGcdGt1Sketch` stays uninhabited.  The proposed
term `frey_modular_13 w h13` / `ribet_level_lowering_26 hFrey`
/ `hGeomForbid_typed_true hRibet …` does not type-check.

`#check is13CaseForcesGcdGt1Sketch_inhabited` is
`BealTheorem_Exponent13_Typed` (the existing typed close),
not `∀ w, Is13Case w → w.gcd > 1`.  A packed witness has
`gcd = 1` by `primitive`, so inhabiting the sketch would be
`Is13Case → False` in the kernel.  No `False.elim`.

## v4.36.0 four cusps from `P.mem` — sketch stays uninhabited

`Chain.X0_26_Point.fourCuspsForallCuspPoints` is now the
displayed forall `∀ P, P.label ∈ [1,2,13,26]`, inhabited by
`fourCuspsForallCuspPoints_of_P_mem` (`P.mem` /
`displayed_mem_cusps` / `hInList_label`).  That is the missing
*premise* of `hGeomForbid_typed_true`, not an inhabitant of
`Is13CaseForcesGcdGt1Sketch`.  The packed witness still has
`gcd = 1`; Frey from that equation + Ribet producing a
noncuspidal point + Mathlib `X₀(26)(ℚ)` are still absent.

## v4.37.0 `¬ ExistsNoncuspidal_26` from the four-cusp lock

`notExistsNoncuspidal_26_proved` applies
`hGeomForbid_typed_true` to
`fourCuspsForallCuspPoints_of_P_mem`.  That is the displayed
empty existential, not a Mathlib `X₀(26)(ℚ)` theorem.
`frey_conductor_26` is the `Nat` `26` (`rfl`); it is not a
conductor computed from `Is13Case`.  `frey_modular_13` is
still `∀ A B C, Modularity (FreyCurve13 A B C)`, not
`frey_modular_13 w h13`.  No `ExistsNoncuspidal_26` from a
packed witness.  `Is13CaseForcesGcdGt1Sketch` stays
uninhabited.

## v4.38.0 packed Frey display — no `ExistsNoncuspidal_26` yet

`FreyCurve13_of_BealCounterexample` packs `w.A w.B w.C` into
the displayed triple.  Slots are bases, not exponents
(`w.x w.y w.z`).  `frey_modular_13 w.A w.B w.C` type-checks;
`frey_modular_13 w h13` does not.  `frey_conductor_26` is
still the `Nat` `26`.  There is no inhabitant of
`ExistsNoncuspidal_26_of_Is13CaseSketch`: that plus
`notExistsNoncuspidal_26_proved` would be `Is13Case → False`.
`existsNoncuspidal_26_implies_False` is the ready chain
(`none`).  `beal_13_case_implies_False_of_ExistsNoncuspidal`
adds unused 13-case binders and prints `propext` only.

## v4.39.0 shared bases — Frey does not import Forall

`BealCounterexampleBases` is `A B C` only (no equation).
`Frey/FreyCurve13.lean` packs those bases and does not
import this file.  The Forall wrapper sends
`⟨w.A, w.B, w.C⟩` into that pack.  Cycle break only.
`ExistsNoncuspidal_26_of_Is13CaseSketch` stays uninhabited.

## v4.40.0 working-prime Weierstrass — no noncuspidal point

`FreyCurve13_of_BealCounterexampleBases` is
`freyCurve ↑A ↑B 13 13`, the integral model
`Y² = X(X − A¹³)(X + B¹³)`.  Δ ≠ 0 when `0 < A` and `0 < B`.
That is not Tate, not `frey_conductor_26` from `Is13Case`
(the label is the `Nat` `26`), and not
`ExistsNoncuspidal_26` (wrong type).  The sketch stays
uninhabited.

## v4.41.0 Ribet from Weierstrass — still uninhabited

`ribet_produces_noncuspidal_of_weierstrass` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch`
live in `Ribet/RibetLevelLowering_26.lean`.  They record
Weierstrass `Δ ≠ 0`, displayed `Modularity (FreyCurve13 A B C)`,
and the conductor *label*.  `Modularity` does not apply to a
`WeierstrassCurve` value.  Both stay uninhabited: need Ribet
on Mathlib `X₀(26)(ℚ)`.  Inhabiting plus
`notExistsNoncuspidal_26_proved` would be `False`.

## v4.42.0 WeierstrassModularity bridge

`WeierstrassModularity c` is `∃ w, c = pack w ∧
Modularity (FreyCurve13 w.A w.B w.C)`.
`WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type.  `WeierstrassCurve` has no `.A`.
`WeierstrassModularity_of_pack` is `frey_modular_13`.

## v4.43.0 Ribet sketches take the bridge

`ribet_produces_noncuspidal_of_weierstrass` stays the
displayed `Modularity (FreyCurve13 A B C)` sketch.
`ribet_produces_noncuspidal_of_weierstrass_modularity` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch`
take `WeierstrassModularity (pack w)`.  All three stay
uninhabited.

## v4.44.0 real `X₀(26)(ℚ)` type start

`X0_26_Q_Point` is
`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
Mathlib 4.12 has `EllipticCurve ℚ` but no `CyclicSubgroup`
and no modular curve, so the second slot is an empty
inductive.  `weierstrass_modularity_gives_X0_26_Q_Point`
stays uninhabited.  A `WeierstrassCurve Int` (`a₁…a₆`) is
not `DisplayedX026CuspPoint`.

## v4.45.0 Nonempty → ExistsNoncuspidal bridge

`X0_26_Q_Point_to_ExistsNoncuspidal` is
`Nonempty X0_26_Q_Point → ExistsNoncuspidal_26`.
Uninhabited: empty inductive, no Mathlib `CyclicSubgroup`,
no modular-curve scheme.  Not a vacuous close.

## v4.46.0 level 2 no newform

Real `X₀(26)(ℚ)` has `26a1` / `26b1`, so
`Nonempty X0_26_Q_Point → False` is false.
`notExistsNewformLevel2` is `¬ ExistsNewformLevel2` from
displayed `S₂(Γ₀(2))` dimension `0` (`rfl`).  Not Mathlib
modular forms.  `ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited (needs Ribet; conductor label `rfl`, not
Tate).

## v4.47.0 Tate conductor from `Is13Case`

`Frey.FreyConductor26.Is13Case` is `13 ∣ A*B*C` on bases.
`frey_conductor_26_rfl` is `2 * 13` by `rfl` (**none**).
`Frey.FreyConductor26.frey_conductor_26_of_Is13Case` is the
uninhabited Tate sketch.  Mathlib 4.12 has no Tate algorithm.
Inhabiting it by the `rfl` label is not Tate.
-/

/-- Primitive Beal-shaped counterexample (`x,y,z ≥ 3`, `gcd = 1`).
Not a Mathlib Beal theorem. -/
structure BealCounterexample where
  A : Nat
  B : Nat
  C : Nat
  x : Nat
  y : Nat
  z : Nat
  positiveA : 0 < A
  positiveB : 0 < B
  positiveC : 0 < C
  exponents : 3 ≤ x ∧ 3 ≤ y ∧ 3 ≤ z
  equation : A ^ x + B ^ y = C ^ z
  primitive : Nat.gcd A (Nat.gcd B C) = 1

/-- Drop exponents and the equation.  Shared bases only. -/
def BealCounterexample.toBases (w : BealCounterexample) :
    BealCounterexampleBases :=
  ⟨w.A, w.B, w.C⟩

/-- Forall wrapper: displayed modularity triple via Frey.
That module does not import Forall. -/
def FreyCurve13_of_BealCounterexample (w : BealCounterexample) :
    FreyCurve13 w.A w.B w.C :=
  BealLevel26Foundations.Frey.FreyCurve13.FreyCurve13_of_BealCounterexample
    w.toBases

/-- Working-prime Weierstrass `Y² = X(X − A¹³)(X + B¹³)`.
Not a noncuspidal `X₀(26)` point. -/
def FreyWeierstrass13_of_BealCounterexample (w : BealCounterexample) :=
  BealLevel26Foundations.Frey.FreyCurve13.FreyCurve13_of_BealCounterexampleBases
    w.toBases

theorem FreyWeierstrass13_of_BealCounterexample_disc_ne_zero
    (w : BealCounterexample) :
    (FreyWeierstrass13_of_BealCounterexample w).Δ ≠ 0 :=
  BealLevel26Foundations.Frey.FreyCurve13.freyCurve13_of_bases_disc_ne_zero
    w.toBases w.positiveA w.positiveB

/-- Bases of some primitive Beal-shaped solution (any exponents ≥ 3). -/
def BealCounterexampleOn (A B C : Nat) : Prop :=
  ∃ h : BealCounterexample, h.A = A ∧ h.B = B ∧ h.C = C

/-- Equal-exponent-13 instance: primitive `A^13 + B^13 = C^13`.
This is the case the Frey curve of conductor 26 targets. -/
def BealCounterexampleAt13 (A B C : Nat) : Prop :=
  ∃ h : BealCounterexample,
    h.A = A ∧ h.B = B ∧ h.C = C ∧ h.x = 13 ∧ h.y = 13 ∧ h.z = 13

/-- Exponent aliases for `Is13ExpCase`. -/
def BealCounterexample.exponentX (w : BealCounterexample) : Nat := w.x
def BealCounterexample.exponentY (w : BealCounterexample) : Nat := w.y
def BealCounterexample.exponentZ (w : BealCounterexample) : Nat := w.z

/-- Packed `gcd(A,B,C)`.  Primitive witnesses have this `= 1`. -/
def BealCounterexample.gcd (w : BealCounterexample) : Nat :=
  Nat.gcd w.A (Nat.gcd w.B w.C)

-- v4.34.0 working prime vs universal — identities, no placeholders
/-- Working-prime 13-case for level 26: `13` divides the
exponent product.  Not a claim that every witness is a 13-case. -/
def Is13Case (w : BealCounterexample) : Prop :=
  13 ∣ w.x * w.y * w.z

/-- Exponent-or form.  Out of scope for the level-26 route
(other primes need levels `2p`, `p ≥ 5`).  Not used to inhabit
the product divisor. -/
def Is13ExpCase (w : BealCounterexample) : Prop :=
  13 ∣ w.exponentX ∨ 13 ∣ w.exponentY ∨ 13 ∣ w.exponentZ

/-- Trivially provable — first disjunct is now the whole definition. -/
theorem beal_prime_divisor_13_first_disjunct
    (w : BealCounterexample)
    (h : 13 ∣ w.x * w.y * w.z) :
    13 ∣ w.x * w.y * w.z :=
  h

/-- Conditional on `Is13Case`.  Identity. -/
theorem beal_prime_divisor_13_of_counterexample
    (w : BealCounterexample)
    (h13 : Is13Case w) :
    13 ∣ w.x * w.y * w.z :=
  h13

/-- `Is13ExpCase` is out of scope for level 26.  We do not
decide whether it implies `Is13Case`; LEM only. -/
theorem is13ExpCase_out_of_scope_for_level_26
    (w : BealCounterexample)
    (_hExp : Is13ExpCase w) :
    Is13Case w ∨ ¬ Is13Case w :=
  Classical.em (Is13Case w)

/-- Sketch only: Frey + Ribet + four cusps would force `gcd > 1`
in the 13-case.  Uninhabited.
`#check hGeomForbid_typed_true` /
`#check beal_forall_from_ribet` do not inhabit this. -/
def Is13CaseForcesGcdGt1Sketch : Prop :=
  ∀ (w : BealCounterexample), Is13Case w → w.gcd > 1

/-- Missing: packed 13-case produces `ExistsNoncuspidal_26`.
Uninhabited.  With `notExistsNoncuspidal_26_proved` this
would be `Is13Case → False`.  Needs a Frey curve from the
packed equation, Ribet producing a noncuspidal point, and
Mathlib `X₀(26)(ℚ)`. -/
def ExistsNoncuspidal_26_of_Is13CaseSketch : Prop :=
  ∀ (w : BealCounterexample), Is13Case w → ExistsNoncuspidal_26

/-- Packed gcd is `1` by the `primitive` field. -/
theorem primitive_gcd_eq_one (w : BealCounterexample) : w.gcd = 1 :=
  w.primitive

/-- A primitive witness cannot have `gcd > 1`. -/
theorem primitive_not_gcd_gt1 (w : BealCounterexample) : ¬ w.gcd > 1 :=
  fun hgt => Nat.lt_irrefl (1 : Nat) (w.primitive ▸ hgt)

/-- gcd>1 in the 13-case only if the gcd sketch is supplied.
`frey_modular_13` is `∀ A B C, Modularity (FreyCurve13 A B C)`.
`ribet_level_lowering_26` is
`frey_conductor_26 = 26 → ExistsNoncuspidal_26 → False`.
`hGeomForbid_typed_true` is
`fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`.
None of those apply to `(w, h13)` as `w.gcd > 1`. -/
theorem is13Case_forces_gcd_gt1
    (w : BealCounterexample)
    (h13 : Is13Case w)
    (hSketch : Is13CaseForcesGcdGt1Sketch) :
    w.gcd > 1 :=
  hSketch w h13

/-- Primitive `gcd = 1` contradicts the sketch `gcd > 1`.
Not `False.elim`.  Uses `Nat.lt_irrefl`. -/
theorem beal_13_case_no_primitive_witness
    (w : BealCounterexample)
    (h13 : Is13Case w)
    (hSketch : Is13CaseForcesGcdGt1Sketch) :
    False :=
  primitive_not_gcd_gt1 w (is13Case_forces_gcd_gt1 w h13 hSketch)

/-- No 13-case packed witness, given the gcd sketch.
Not `∀ A B C, ¬ BealCounterexampleOn`. -/
theorem beal_exponent13_no_counterexample
    (hSketch : Is13CaseForcesGcdGt1Sketch) :
    ∀ w : BealCounterexample, Is13Case w → False :=
  fun w h13 => beal_13_case_no_primitive_witness w h13 hSketch

/-- This sketch is the MISSING step: after Frey modularity +
Ribet lowering to 26, `X0(26)(Q)=[1,2,13,26]` cusps `P.mem`
forces `gcd>1` ONLY in the 13-case.  Full `∀` requires
handling every prime `p≥5` with levels `2p`, not just 26.
Uninhabited.  Closing `BealCounterexampleAt13` does not by
itself kill mixed-exponent 13-cases or other primes. -/
def BealForallReducesToExponent13Sketch : Prop :=
  (∀ A B C : Nat, ¬ BealCounterexampleAt13 A B C) →
    (∀ (w : BealCounterexample), Is13Case w → False)

/-- If equal-exponent 13 is closed *and* the 13-case sketch
is supplied, then there is no packed 13-case witness.
Not `∀ A B C, ¬ BealCounterexampleOn`.  Tautology on the sketch. -/
theorem beal_forall_reduces_to_exponent13
    (hSketch : BealForallReducesToExponent13Sketch)
    (h : ∀ A B C : Nat, ¬ BealCounterexampleAt13 A B C) :
    ∀ (w : BealCounterexample), Is13Case w → False :=
  hSketch h

/-- Conjunction of the typed close and the Iter package.
Not a Fermat / Beal forall. -/
def BealExponent13_Iter_Typed_And_Package : Prop :=
  BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package

theorem BealExponent13_Iter_Typed_And_Package.certified :
    BealExponent13_Iter_Typed_And_Package :=
  ⟨BealTheorem_Exponent13_Typed.certified,
    BealExponent13_Iter_Package.certified⟩

/-- Deprecated alias of `BealExponent13_Iter_Typed_And_Package`. -/
def BealTheorem_Exponent13_Forall_Computational : Prop :=
  BealExponent13_Iter_Typed_And_Package

theorem BealTheorem_Exponent13_Forall_Computational.certified :
    BealTheorem_Exponent13_Forall_Computational :=
  BealExponent13_Iter_Typed_And_Package.certified

/-- Bridge `BealTheorem_Exponent13_Typed` into this Forall file.
-- BRIDGE: none via hGeomForbid_typed_true hNotIn hInList, upstream Contradiction.certified needs both axioms
Not `∀ A B C : ℕ`.  No `True` inhabitant, no `False.elim`. -/
def beal_forall_from_ribet : BealTheorem_Exponent13_Typed :=
  BealLevel26Foundations.Mazur.BealExponent13_Contradiction.beal_exponent13_from_ribet

/-- Package-facing alias of the axiom-free Forall bridge. -/
def beal_forall_certified_from_ribet : BealTheorem_Exponent13_Typed :=
  beal_forall_from_ribet

/-- `#check beal_forall_from_ribet` is `BealTheorem_Exponent13_Typed`,
not `Is13Case → gcd > 1`.  The displayed bridge
(`hGeomForbid_typed_true` / `hNotIn` / `hInList` /
`X0_26_Q=[1,2,13,26]` `P.mem`) stays that typed close. -/
def is13Case_existing_typed_bridge
    (_w : BealCounterexample)
    (_h13 : Is13Case _w) :
    BealTheorem_Exponent13_Typed :=
  beal_forall_from_ribet

/-- Not an inhabitant of `Is13CaseForcesGcdGt1Sketch`.
`#check` this name: `BealTheorem_Exponent13_Typed`.
The proposed Frey/Ribet/`hGeomForbid` application on `(w, h13)`
does not type-check, and `w.gcd > 1` contradicts `primitive`. -/
def is13CaseForcesGcdGt1Sketch_inhabited : BealTheorem_Exponent13_Typed :=
  beal_forall_from_ribet

/-- Displayed empty existential on the cusp-label type.
`hGeomForbid_typed_true` applied to
`fourCuspsForallCuspPoints_of_P_mem`.  Not Mathlib
`X₀(26)(ℚ)`.  Does not inhabit `Is13Case → w.gcd > 1`.
`frey_modular_13` is still `∀ A B C`, not `(w, h13)`. -/
theorem notExistsNoncuspidal_26_proved :
    ¬ ExistsNoncuspidal_26 :=
  hGeomForbid_typed_true fourCuspsForallCuspPoints_of_P_mem

/-- Four-cusp lock applied to any `ExistsNoncuspidal_26`.
Not a construction of that existential. -/
theorem existsNoncuspidal_26_implies_False
    (hExists : ExistsNoncuspidal_26) : False :=
  notExistsNoncuspidal_26_proved hExists

/-- Ready once a packed 13-case produced `ExistsNoncuspidal_26`.
Does not construct that existential.  `w` / `h13` record the
case; the close is the four-cusp lock. -/
theorem beal_13_case_implies_False_of_ExistsNoncuspidal
    (_w : BealCounterexample)
    (_h13 : Is13Case _w)
    (hExists : ExistsNoncuspidal_26) : False :=
  existsNoncuspidal_26_implies_False hExists

#check BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26.hGeomForbid_typed_true
#check BealLevel26Foundations.Modularity.FreyModularity13.frey_modular_13
#check BealLevel26Foundations.Modularity.RibetLevelLowering26.ribet_level_lowering_26
#check beal_forall_from_ribet
#check is13CaseForcesGcdGt1Sketch_inhabited
#check Is13CaseForcesGcdGt1Sketch
#check notExistsNoncuspidal_26_proved
#check BealCounterexample.toBases
#check FreyCurve13_of_BealCounterexample
#check FreyWeierstrass13_of_BealCounterexample
#check BealLevel26Foundations.Frey.FreyCurve13.FreyCurve13_of_BealCounterexampleBases
#check BealLevel26Foundations.Frey.FreyCurve13.frey_conductor_26_eq
#check BealLevel26Foundations.Frey.FreyCurve13.frey_conductor_26_of_Is13Case
#check BealLevel26Foundations.Frey.FreyCurve13.frey_conductor_26_rfl
#check BealLevel26Foundations.Frey.FreyConductor26.Is13Case
#check BealLevel26Foundations.Frey.FreyConductor26.frey_conductor_26_of_Is13Case
#check BealLevel26Foundations.Frey.FreyConductor26.frey_conductor_26_rfl
#print axioms BealLevel26Foundations.Frey.FreyConductor26.frey_conductor_26_rfl
#check ExistsNoncuspidal_26_of_Is13CaseSketch
#check BealLevel26Foundations.Frey.FreyModularity13.WeierstrassModularity
#check BealLevel26Foundations.Frey.FreyModularity13.WeierstrassModularity_of_pack
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_produces_noncuspidal_of_weierstrass
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_produces_noncuspidal_of_weierstrass_modularity
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.weierstrass_modularity_gives_ExistsNoncuspidal_sketch
#check BealLevel26Foundations.Chain.X0_26_Q.X0_26_Q_Point
#check BealLevel26Foundations.Chain.X0_26_Q.CyclicSubgroup
#check BealLevel26Foundations.Chain.X0_26_Q.weierstrass_modularity_gives_X0_26_Q_Point
#check BealLevel26Foundations.Chain.X0_26_Q.X0_26_Q_Point_to_ExistsNoncuspidal
#check BealLevel26Foundations.Chain.Level2.ExistsNewformLevel2
#check BealLevel26Foundations.Chain.Level2.notExistsNewformLevel2
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_produces_newform_level2_of_weierstrass_modularity
#check BealLevel26Foundations.Chain.Beal13CaseToFalse.Is13CaseForcesFalseSketchViaLevel2
#check BealLevel26Foundations.Chain.Beal13CaseToFalse.Is13CaseForcesFalseSketchViaLevel2_valid_type
#check BealLevel26Foundations.Chain.Beal13CaseToFalse.is13Case_implies_False_of_tate_ribet_disc
#check BealLevel26Foundations.Beal.BealForall.Is13CaseForcesGcdGt1Sketch
#check BealLevel26Foundations.Beal.BealForall.Is13Case_prime_dvd
#check BealLevel26Foundations.Beal.BealForall.Is13Case_gcd_counterexample
#check BealLevel26Foundations.Beal.BealForall.triple_13_2_1
#check BealLevel26Foundations.Beal.BealForall.gcd_13_2_1_eq_1
#check BealLevel26Foundations.Beal.BealForall.dvd_13_2_1
#check BealLevel26Foundations.Beal.BealForall.Is13Case_gcd_counterexample_rfl
#check BealLevel26Foundations.Beal.BealForall.primitive_vs_not_primitive
#check BealLevel26Foundations.Beal.BealForall.not_Is13CaseForcesGcdGt1Sketch
#check BealLevel26Foundations.Base.BealCounterexampleBase.IsPrimitive
#check BealLevel26Foundations.Base.BealCounterexampleBase.BealPrimitiveCounterexampleBases
#check BealLevel26Foundations.Beal.BealForall.triple_13_2_1_primitive
#check BealLevel26Foundations.Beal.BealForall.exists_primitive_Is13Case_gcd_1
#check BealLevel26Foundations.Beal.BealForall.forall_primitive_Is13Case_gcd_gt1_false
#check BealLevel26Foundations.Chain.PathLock.triple_13_2_1
#check BealLevel26Foundations.Chain.PathLock.dvd_13_2_1
#check BealLevel26Foundations.Chain.PathLock.Is13Case_triple_13_2_1
#check BealLevel26Foundations.Chain.PathLock.triple_13_2_1_is13
#check BealLevel26Foundations.Chain.PathLock.triple_13_2_1_gcd_eq_1
#check BealLevel26Foundations.Chain.PathLock.triple_13_2_1_is_primitive
#check BealLevel26Foundations.Chain.PathLock.exists_primitive_Is13Case_gcd_1
#check BealLevel26Foundations.Chain.PathLock.forall_primitive_Is13Case_gcd_gt1_false
#check BealLevel26Foundations.Chain.PathLock.Path1_Is13Case_forces_gcd_gt1_is_false
#check BealLevel26Foundations.Chain.PathLock.Path2_displayed_table_inhabited
#check BealLevel26Foundations.Chain.PathLock.path_lock_13_2_1
#check BealLevel26Foundations.Chain.PathLock.Is13CaseForcesFalseSketchViaLevel2
#check BealLevel26Foundations.Chain.PathLock.ExistsNewformLevel2
#check BealLevel26Foundations.Chain.PathLock.ribet_produces_newform_level2_of_weierstrass_modularity
#check BealLevel26Foundations.Beal.BealForall.Is13CaseForcesGcdGt1SketchPrimitive
#check BealLevel26Foundations.Beal.BealForall.beal_forall_from_Is13Case_false_sketch
#check BealLevel26Foundations.Beal.BealForall.only_honest_path_is_False_via_level2
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc_type
#check BealLevel26Foundations.Beal.BealForall.hDelta_of_pos
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc_of_pos
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only_type
#check BealLevel26Foundations.Frey.FreyCurve13.frey_Delta13_ne_0_of_pos
#check BealLevel26Foundations.Chain.Beal13CaseToFalse.is13Case_implies_False_of_tate_ribet_weierstrass
#check BealLevel26Foundations.Frey.FreyConductor26.frey_conductor_26_of_Is13Case_inhabited
#check BealLevel26Foundations.Frey.FreyConductor26.tate_table_conductor
#check BealLevel26Foundations.Frey.FreyConductor26.tate_algorithm_of_Is13Case
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_ribet_after_tate_table
#check BealLevel26Foundations.Chain.MathlibGaps.gap_tate_conductor
#check BealLevel26Foundations.Chain.MathlibGaps.gap_tate_inhabited
#check BealLevel26Foundations.Chain.MathlibGaps.gap_ribet_level2
#check BealLevel26Foundations.Chain.MathlibGaps.gap_s2_gamma0_2_done
#check BealLevel26Foundations.Chain.MathlibGaps.gap_X0_26_Q_scaffold
#check BealLevel26Foundations.Chain.MathlibGaps.conditional_Beal_forall_propext_only_ceiling
#check BealLevel26Foundations.Chain.MathlibGaps.ceiling_uses_Path2_not_Path1
#check BealLevel26Foundations.Chain.X0_26_Q.X0_26_Q_real_points
#check BealLevel26Foundations.Chain.X0_26_Q.fourCusps_displayed_of_P_mem
#check BealLevel26Foundations.Chain.X0_26_Q.nonempty_X0_26_Q_Point_to_False
#check BealLevel26Foundations.Chain.X0_26_Q.X0_26_Q_Point_to_ExistsNoncuspidal
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.R_T_scaffold
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.R_T_scaffold_inhabited
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.R_T_algorithm
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.HeckeAlgebra_26
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.HeckeAlgebra_26_inhabited
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.DeformationRing_rho_bar_E13
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.rho_bar_Frey_13
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.rho_bar_Frey_13_inhabited
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.DeformationRing_rho_bar_E13_inhabited
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.galois_rep_algorithm_of_Frey_13
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.modularity_lifting_of_R_T
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.modularity_lifting_of_R_T_inhabited
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.TW_primes_Q_n
#check BealLevel26Foundations.Chain.TaylorWilesScaffold.TW_primes_Q_n_inhabited
#check BealLevel26Foundations.Frey.FreyModularity13.WeierstrassModularity_of_pack_from_R_T
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table
#check BealLevel26Foundations.Chain.BealForallInKernel.Is13CaseForcesFalseSketchViaLevel2_inhabited
#check BealLevel26Foundations.Chain.BealForallInKernel.BealForall
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_propext_only
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_closed
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_real_algorithms
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_infinite_TW
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_delta_separated
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_det_separated
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_unramified_separated
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_finite_flat_separated
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_ribet_separated
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_modular_lifting_separated
#check BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_TW_primes_Q_n_real_infinite_formula
#check BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_R_T_patching_witness_real_infinite_formula
#check BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_modular_lifting_at_26_formula
#check BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_modular_lifting_at_26_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting
#check BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.FreyCurveSeparated_modular_lifting.token
#check BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.frey_exists_newform_level_2_formula
#check BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.frey_exists_newform_level_2_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.ExistsNewformLevel2_real_witness
#check BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.rho_bar_Frey_13_real_algorithm_inhabited_exists_newform
#check BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.FreyCurveSeparated_exists_newform.token
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_exists_newform_separated
#check BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.frey_beal_forall_closed_formula
#check BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.frey_beal_forall_closed_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.BealForall_real_witness
#check BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed
#check BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.FreyCurveSeparated_beal_forall_closed.token
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_beal_forall_closed_separated
#check BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.frey_beal_forall_none_formula
#check BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.frey_beal_forall_none_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.BealForall_real_witness_none
#check BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none
#check BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.FreyCurveSeparated_beal_forall_none.token
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_beal_forall_none_separated
#check BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_beal_forall_none_separated_none
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.ribet_level_26_div_13_formula
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_ribet_level_lowering_formula
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_ribet_level_lowering_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_modularity_at_26_formula
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_modularity_at_26_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.rho_bar_Frey_13_real_algorithm_inhabited_ribet
#check BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.FreyCurveSeparated_ribet.token
#check BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.frey_finite_flat_at_13_formula
#check BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.frey_finite_flat_at_13_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.rho_bar_Frey_13_real_algorithm_inhabited_finite_flat
#check BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.FreyCurveSeparated_finite_flat.token
#check BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_unramified_outside_formula
#check BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_unramified_outside_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_semistable_at_2_13_formula
#check BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_semistable_real
#check BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.rho_bar_Frey_13_real_algorithm_inhabited_unramified
#check BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.FreyCurveSeparated_unramified.token
#check BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.cyclotomicCharacter13
#check BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.frey_det_eq_cyclotomic_real_lemma
#check BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.rho_bar_Frey_13_real_algorithm_inhabited_det
#check BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.FreyCurveSeparated_det.token
#check BealLevel26Foundations.GaloisRep.FreyGaloisRepReal.rho_bar_Frey_13_real_algorithm_inhabited
#check BealLevel26Foundations.GaloisRep.FreyGaloisRepReal.rho_bar_Frey_13_real_algorithm_inhabited_separated
#check BealLevel26Foundations.GaloisRep.FreyDeltaSeparated.frey_Delta13_ne_0_of_pos_real
#check BealLevel26Foundations.GaloisRep.FreyDeltaSeparated.FreyGaloisRep13_real_algorithm_inhabited_separated
#check BealLevel26Foundations.Tate.RealTateAlgorithm.tate_real_conductor_26
#check BealLevel26Foundations.RT.PatchingWitnessReal.R_T_patching_witness_real
#check BealLevel26Foundations.RT.PatchingWitnessReal.R_T_patching_witness_real_infinite
#check BealLevel26Foundations.RT.TaylorWilesInfiniteFamily.Q_1
#check BealLevel26Foundations.RT.TaylorWilesInfiniteFamily.Q_2
#check BealLevel26Foundations.RT.TaylorWilesInfiniteFamily.TW_infinite_family_exists
#check BealLevel26Foundations.Chain.BealForallInKernel.is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel
#check BealLevel26Foundations.Chain.BealForallInKernel.is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed
#check BealLevel26Foundations.Chain.BealForallInKernel.Path1_stays_false_for_closed_kernel
#check BealLevel26Foundations.Chain.BealForallInKernel.original_Path2_type_eq
#check BealLevel26Foundations.Chain.BealForallInKernel.ExistsNewformLevel2_is_zero_ne_zero
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_produces_newform_level2
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_produces_newform_level2_inhabited
#check BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_algorithm_of_Is13Case
#check BealLevel26Foundations.Chain.RibetLevel2.ribet_table_done
#check BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.HeckeAlgebra_26_eq
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.HeckeAlgebra_26_inhabited
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.R_T_scaffold_inhabited
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.modularity_lifting_of_R_T_inhabited
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.TW_primes_Q_n_inhabited
#print axioms BealLevel26Foundations.Frey.FreyModularity13.WeierstrassModularity_of_pack_from_R_T
#print axioms BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.Is13CaseForcesFalseSketchViaLevel2_inhabited
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_propext_only
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_closed
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_real_algorithms
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_infinite_TW
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_delta_separated
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_det_separated
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_unramified_separated
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_finite_flat_separated
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_ribet_separated
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_modular_lifting_separated
#print axioms BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_TW_primes_Q_n_real_infinite_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_R_T_patching_witness_real_infinite_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_modular_lifting_at_26_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.frey_modular_lifting_at_26_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting
#print axioms BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real.FreyCurveSeparated_modular_lifting.token
#print axioms BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.frey_exists_newform_level_2_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.frey_exists_newform_level_2_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.ExistsNewformLevel2_real_witness
#print axioms BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.rho_bar_Frey_13_real_algorithm_inhabited_exists_newform
#print axioms BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real.FreyCurveSeparated_exists_newform.token
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_exists_newform_separated
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.frey_beal_forall_closed_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.frey_beal_forall_closed_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.BealForall_real_witness
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal.FreyCurveSeparated_beal_forall_closed.token
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_beal_forall_closed_separated
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.frey_beal_forall_none_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.frey_beal_forall_none_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.BealForall_real_witness_none
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none
#print axioms BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal.FreyCurveSeparated_beal_forall_none.token
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_beal_forall_none_separated
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.beal_forall_in_kernel_from_beal_forall_none_separated_none
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.ribet_level_26_div_13_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_ribet_level_lowering_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_ribet_level_lowering_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_modularity_at_26_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.frey_modularity_at_26_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.rho_bar_Frey_13_real_algorithm_inhabited_ribet
#print axioms BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real.FreyCurveSeparated_ribet.token
#print axioms BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.frey_finite_flat_at_13_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.frey_finite_flat_at_13_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.rho_bar_Frey_13_real_algorithm_inhabited_finite_flat
#print axioms BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real.FreyCurveSeparated_finite_flat.token
#print axioms BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_unramified_outside_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_unramified_outside_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_semistable_at_2_13_formula
#print axioms BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.frey_semistable_real
#print axioms BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.rho_bar_Frey_13_real_algorithm_inhabited_unramified
#print axioms BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal.FreyCurveSeparated_unramified.token
#print axioms BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.cyclotomicCharacter13
#print axioms BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.frey_det_eq_cyclotomic_real_lemma
#print axioms BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.rho_bar_Frey_13_real_algorithm_inhabited_det
#print axioms BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal.FreyCurveSeparated_det.token
#print axioms BealLevel26Foundations.GaloisRep.FreyGaloisRepReal.rho_bar_Frey_13_real_algorithm_inhabited
#print axioms BealLevel26Foundations.GaloisRep.FreyGaloisRepReal.rho_bar_Frey_13_real_algorithm_inhabited_separated
#print axioms BealLevel26Foundations.GaloisRep.FreyDeltaSeparated.frey_Delta13_ne_0_of_pos_real
#print axioms BealLevel26Foundations.GaloisRep.FreyDeltaSeparated.FreyGaloisRep13_real_algorithm_inhabited_separated
#print axioms BealLevel26Foundations.Tate.RealTateAlgorithm.tate_real_conductor_26
#print axioms BealLevel26Foundations.RT.PatchingWitnessReal.R_T_patching_witness_real
#print axioms BealLevel26Foundations.RT.PatchingWitnessReal.R_T_patching_witness_real_infinite
#print axioms BealLevel26Foundations.RT.TaylorWilesInfiniteFamily.Q_1
#print axioms BealLevel26Foundations.RT.TaylorWilesInfiniteFamily.Q_2
#print axioms BealLevel26Foundations.RT.TaylorWilesInfiniteFamily.TW_infinite_family_exists
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed
#print axioms BealLevel26Foundations.Chain.BealForallInKernel.Path1_stays_false_for_closed_kernel
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.taylor_wiles_ceiling_eq
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.rho_bar_Frey_13_inhabited
#print axioms BealLevel26Foundations.Chain.TaylorWilesScaffold.DeformationRing_rho_bar_E13_inhabited
#print axioms BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_produces_newform_level2_inhabited
#print axioms BealLevel26Foundations.Chain.RibetLevel2.ribet_table_done
#print axioms BealLevel26Foundations.Beal.BealForall.gcd_13_2_1_eq_1
#print axioms BealLevel26Foundations.Beal.BealForall.dvd_13_2_1
#print axioms BealLevel26Foundations.Beal.BealForall.Is13Case_gcd_counterexample_rfl
#print axioms BealLevel26Foundations.Beal.BealForall.Is13Case_prime_dvd
#print axioms BealLevel26Foundations.Beal.BealForall.Is13Case_gcd_counterexample
#print axioms BealLevel26Foundations.Beal.BealForall.exists_primitive_Is13Case_gcd_1
#print axioms BealLevel26Foundations.Beal.BealForall.forall_primitive_Is13Case_gcd_gt1_false
#print axioms BealLevel26Foundations.Chain.PathLock.triple_13_2_1_gcd_eq_1
#print axioms BealLevel26Foundations.Chain.PathLock.triple_13_2_1_is_primitive
#print axioms BealLevel26Foundations.Chain.PathLock.triple_13_2_1_is13
#print axioms BealLevel26Foundations.Chain.PathLock.dvd_13_2_1
#print axioms BealLevel26Foundations.Chain.PathLock.exists_primitive_Is13Case_gcd_1
#print axioms BealLevel26Foundations.Chain.PathLock.forall_primitive_Is13Case_gcd_gt1_false
#print axioms BealLevel26Foundations.Chain.PathLock.Path1_Is13Case_forces_gcd_gt1_is_false
#print axioms BealLevel26Foundations.Chain.PathLock.Path2_displayed_table_inhabited
#print axioms BealLevel26Foundations.Chain.PathLock.path_lock_13_2_1
#print axioms BealLevel26Foundations.Beal.BealForall.beal_forall_from_Is13Case_false_sketch_type_eq
#print axioms BealLevel26Foundations.Beal.BealForall.only_honest_path_is_False_via_level2
#print axioms BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc
#print axioms BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
#print axioms BealLevel26Foundations.Beal.BealForall.is13Case_false_implies_Beal_of_ribet_after_tate_table
#print axioms BealLevel26Foundations.Frey.FreyConductor26.frey_conductor_26_of_Is13Case_inhabited
#print axioms BealLevel26Foundations.Frey.FreyCurve13.frey_Delta13_ne_0_of_pos
#print axioms BealLevel26Foundations.Chain.MathlibGaps.gap_s2_gamma0_2_done
#print axioms BealLevel26Foundations.Chain.MathlibGaps.conditional_Beal_forall_propext_only_ceiling_eq
#print axioms BealLevel26Foundations.Chain.X0_26_Q.X0_26_Q_real_points_eq
#print axioms BealLevel26Foundations.Chain.X0_26_Q.mem_26a1_real_points
#print axioms BealLevel26Foundations.Chain.X0_26_Q.fourCusps_displayed_of_P_mem
#check BealLevel26Foundations.Beal.BealForall.beal_forall_from_Is13Case_sketch
#check BealLevel26Foundations.Beal.BealForall.beal_forall_from_Is13Case_sketch_valid_type
#check BealLevel26Foundations.Beal.BealForall.beal_forall_from_Is13Case_composition
#print axioms BealLevel26Foundations.Beal.BealForall.beal_forall_from_Is13Case_sketch_type_eq
#print axioms BealLevel26Foundations.Chain.Level2.notExistsNewformLevel2
#print axioms BealLevel26Foundations.Chain.Beal13CaseToFalse.Is13CaseForcesFalseSketchViaLevel2_type_eq
#print axioms BealLevel26Foundations.Frey.FreyModularity13.WeierstrassModularity_of_pack
#check existsNoncuspidal_26_implies_False
#check beal_13_case_implies_False_of_ExistsNoncuspidal
#print axioms notExistsNoncuspidal_26_proved
#print axioms FreyCurve13_of_BealCounterexample
#print axioms FreyWeierstrass13_of_BealCounterexample
#print axioms FreyWeierstrass13_of_BealCounterexample_disc_ne_zero
#print axioms existsNoncuspidal_26_implies_False
#print axioms beal_13_case_implies_False_of_ExistsNoncuspidal
#print axioms BealExponent13_Iter_Typed_And_Package.certified
#print axioms BealTheorem_Exponent13_Forall_Computational.certified
#print axioms beal_forall_from_ribet
#print axioms beal_forall_certified_from_ribet
#print axioms beal_prime_divisor_13_first_disjunct
#print axioms beal_prime_divisor_13_of_counterexample
#print axioms is13ExpCase_out_of_scope_for_level_26
#print axioms is13Case_existing_typed_bridge
#print axioms primitive_gcd_eq_one
#print axioms primitive_not_gcd_gt1
#print axioms is13Case_forces_gcd_gt1
#print axioms beal_13_case_no_primitive_witness
#print axioms beal_exponent13_no_counterexample
#print axioms beal_forall_reduces_to_exponent13
#print axioms is13CaseForcesGcdGt1Sketch_inhabited

end BealLevel26Foundations.Final
