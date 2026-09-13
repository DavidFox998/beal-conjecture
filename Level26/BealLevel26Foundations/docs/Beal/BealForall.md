# v4.49.0 Beal forall sketch from the 13-case

`lean/BealLevel26Foundations/Beal/BealForall.lean`

`beal_forall_from_Is13Case_sketch` is the Beal statement

`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd(A,B,C) > 1`.

Valid type.  Uninhabited.

| Name | Status |
|---|---|
| `Is13CaseForcesFalseSketchViaLevel2` | `∀ w, Is13Case w → False` on bases; uninhabited; needs Tate + Ribet |
| `Is13CaseForcesGcdGt1Sketch` (this file) | `13 ∣ A*B*C → gcd > 1` on bases; uninhabited |
| `Is13CaseForcesGcdGt1Sketch` (Forall) | packed `w.gcd > 1`; uninhabited |
| `beal_forall_from_Is13Case_sketch` | `∀ A B C m n p` Beal; uninhabited; needs Tate + Ribet + GcdGt1 and levels `2p` for other primes |
| `beal_forall_from_Is13Case_composition` | the two 13-case sketches imply Beal; uninhabited (they do not) |

Real `X₀(26)(ℚ)` has `26a1` (Δ `-17576`) and `26b1`
(Δ `-1664`).  The 13-case contradiction is level 2, no
newform.  Still not `∀ A B C` in the kernel.

### v4.50.0 why GcdGt1 is uninhabited

`Is13Case_prime_dvd` (**none**): prime 13 divides one
factor of `A*B*C`.  `Is13Case_gcd_counterexample` is
`⟨13, 2, 1⟩` with `gcd = 1`.  So
`∀ w, Is13Case w → w.gcd > 1` is false on bases.
`not_Is13CaseForcesGcdGt1Sketch` records that (**none**,
`Nat.lt_irrefl`).  The packed Forall twin stays
uninhabited (`gcd = 1` by `primitive`).

### v4.51.0 gcd counterexample `rfl` + primitive vs not

`triple_13_2_1` is the named base `⟨13,2,1⟩`.
`gcd_13_2_1_eq_1` is `rfl` (**propext**).
`dvd_13_2_1` is **none**.
`Is13Case_gcd_counterexample_rfl` is
`∃ w, Is13Case w ∧ w.gcd = 1` (**propext**).
`primitive_vs_not_primitive` records that bases may be
primitive (`gcd = 1`) or not (`gcd > 1`).
`Is13Case` does not imply primitive.
Bases are not primitive-by-definition.
The packed twin stays uninhabited (`gcd = 1` by
`primitive` if that field is present).

### v4.52.0 primitive subtype: exists vs forall false

`IsPrimitive w := w.gcd = 1` is a derived Prop, not a
structure field.  `BealPrimitiveCounterexampleBases` is
`{w // IsPrimitive w}`.
`triple_13_2_1_primitive` is `rfl` (**propext**).
`exists_primitive_Is13Case_gcd_1` is
`∃ w` primitive `Is13Case w.val ∧ w.val.gcd = 1` (**propext**).
`forall_primitive_Is13Case_gcd_gt1_false` is
`¬ ∀ w` primitive `Is13Case → gcd > 1` (**propext**).
`Is13CaseForcesGcdGt1SketchPrimitive` stays uninhabited
and is now provably false, not just uninhabited.
`Is13Case → False` stays a valid type, uninhabited.

### v4.53.0 only honest path is False via level 2

Path 1 (`Is13Case → gcd > 1`) is false.
Path 2 (`Is13Case → False` via level 2) is the only
honest composition into Beal `∀`.
`beal_forall_from_Is13Case_false_sketch` is
`(∀ w, Is13Case w → False) → Beal ∀` (**propext** type eq).
Uninhabited.  Uses Path 2, not Path 1.  No `False.elim`.
`only_honest_path_is_False_via_level2` records Path 1
false and Path 2 as the typed `∀ w, Is13Case w → False`.

### v4.54.0 conditional Beal from Tate + Ribet

`is13Case_false_implies_Beal_of_tate_ribet_disc` takes
`hTate`, `hRibet`, Path 2 `hComp`, and Δ ≠ 0, and returns
Beal `∀`.  It builds a *local* `Is13Case → False` and does
**not** inhabit the unconditional sketch.
Axioms **propext** + existing `frey_modular_13`.
`is13Case_false_implies_Beal_of_tate_ribet_disc_type` is
the uninhabited `hTate → hRibet → Beal ∀`.

### v4.55.0 explicit Δ ≠ 0 and propext-only wiring

`frey_Delta13_ne_0_of_pos` is `∀ w, 0 < A → 0 < B → Δ ≠ 0`
on `Y² = X(X − A¹³)(X + B¹³)`.  Axioms **propext** +
`Classical.choice` + `Quot.sound`.
`is13Case_false_implies_Beal_of_tate_ribet_disc` still
takes explicit `hΔ` (propext + `frey_modular_13`).
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
takes `hTate`, `hRibet`, and `hWeierstrass` as hypotheses
so `#print axioms` is **propext only**.
`hDelta_of_pos` feeds positivity into the existing Δ lemma.
Does **not** inhabit unconditional `Is13Case → False`.
No `False.elim`.

### v4.56.0 Mathlib gaps; propext-only is the ceiling

Both wirings stay.  `Chain.MathlibGaps` records Tate,
modularity, Ribet, and `X₀(26)(ℚ)` as missing from
Mathlib 4.12.  `notExistsNewformLevel2` **none** is the
DONE anchor.  The propext-only wiring is the ceiling
until those gaps close.  Uses Path 2, not Path 1.
No `False.elim`.

### v4.57.0-iter-phase5-X0-26-Q-honest-scaffold

Both Beal wirings stay as in v4.55.0 / v4.56.0.  This
slice builds out **Phase 5** `X₀(26)(ℚ)` as an honest
scaffold until Taylor–Wiles / BCDT.

- `X0_26_Q_Point` stays the **empty inductive** scaffold
  `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.  It is
  **not** real `X₀(26)(ℚ)`.
- Real curve has four cusps (`1, 2, 13, 26`) **and**
  `26a1` (Δ `-17576`) and `26b1` (Δ `-1664`).  Reference
  list: `X0_26_Q_real_points` (`List String`, **none**).
- `fourCuspsForallCuspPoints_of_P_mem` is **none** via
  displayed `label ∈ [1, 2, 13, 26]`, **not** Mazur.
- `notExistsNoncuspidal_26_proved` is **none** via
  `hGeomForbid` **label check**, **not** Mazur `X₀(N)(ℚ)`
  classification.
- `X0_26_Q_Point_to_ExistsNoncuspidal` and
  `nonempty_X0_26_Q_Point_to_False` stay **uninhabited**
  (no vacuous empty-elim).
- `Chain.MathlibGaps` Phase 5 now states Mathlib 4.12
  lacks `X₀(N)(ℚ)` / Mazur.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate.

### v4.58.0-iter-taylor-wiles-scaffold

Both Beal wirings stay.  New 10th module
`Chain.TaylorWilesScaffold` records `R = T`, Hecke,
deformation, `ρ̄_{E,13}`, lifting, and TW primes as
uninhabited scaffolds.  `HeckeAlgebra_26` is an empty
Type (**none**).  Ceiling stays
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
(**propext only**).  Needs `R = T` + Ribet + Tate for
unconditional Beal `∀`.  Path 2 only honest.  No
`False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v4.59.0-iter-about-roadmap-catchup-before-v5

Both Beal wirings stay.  About now records mint
`22551298` (v4.58.0).  `docs/Final/ROADMAP.md` locks
v5.0.0–v5.3.0 inhabit slices without waiting for
Mathlib.  Those slices are **not** done.  Ceiling stays
propext-only.  Path 2 only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v5.0.0-iter-tate-conductor-26-inhabit-no-mathlib

`frey_conductor_26_of_Is13Case_inhabited` fills `hTate`
via the displayed Tate table (**propext**).  Not Mathlib
Tate.  New wrapper
`is13Case_false_implies_Beal_of_ribet_after_tate_table`
still needs `hRibet`.  Both original wirings stay.
`tate_algorithm_of_Is13Case` stays uninhabited.  Path 2
only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v5.1.0-iter-ribet-26-to-2-inhabit-no-mathlib

Displayed Ribet table inhabited (`26 / 13 = 2`, ρ̄ token,
deformation token).  Not Mathlib Ribet.  New wrapper
`is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table`
plugs inhabited `hTate` and the displayed label; still
needs original `hRibet` (`→ ExistsNewformLevel2`) and
`hWeierstrass`.  Both original wirings stay.
`ribet_algorithm_of_Is13Case` stays uninhabited.  Path 2
only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v5.2.0-iter-taylor-wiles-R=T-inhabit-no-mathlib

Displayed `R = T` inhabited.  New wrapper
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table`
plugs inhabited `hTate`, displayed Ribet, and
`WeierstrassModularity_of_pack_from_R_T` (**not**
`frey_modular_13`); still needs original `hRibet`
(`→ ExistsNewformLevel2`).  Both original wirings stay.
`R_T_algorithm` stays uninhabited.  Path 2 only honest.
No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v5.3.0-iter-beal-forall-in-kernel-no-false-label

Displayed Beal `∀` IN KERNEL
(`Chain.BealForallInKernel.beal_forall_in_kernel`,
**propext**) via the displayed Path 2 table
(`Is13CaseForcesFalseSketchViaLevel2_inhabited`).
Original `beal_forall_from_Is13Case_sketch` (`∀ A B C m n p`)
stays uninhabited.  Original Path 2
(`∀ w, Is13Case w → False`) stays uninhabited
(`⟨13, 2, 1⟩` is `Is13Case`).  `ExistsNewformLevel2`
(`0 ≠ 0`) stays uninhabited.  Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel`
is the inhabited closed term.  Path 2 only honest.
No `False.elim`.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v5.5.0-iter-path-lock-formal-13-2-1

`Chain.PathLock` is the independent formal lock of
`⟨13, 2, 1⟩` (does not import this file).
`triple_13_2_1` primitive `gcd = 1` by `rfl`.
`Is13Case` via `13 ∣ 13*2*1` `⟨2, rfl⟩` **none**.
`exists_primitive_Is13Case_gcd_1` **propext**.
`forall_primitive_Is13Case_gcd_gt1_false` via
`Nat.lt_irrefl` **propext**.  Path 1 FALSE formal.
Path 2 only honest: displayed table inhabited, original
`Is13Case → False` and `ExistsNewformLevel2` (`0 ≠ 0`)
stay uninhabited.  No `False.elim`.

### v5.6.0-iter-unconditional-close-displayed

`beal_forall_in_kernel_closed` is the displayed Beal
`∀` closed term (**propext only**).  No original
`hRibet` hypothesis.  As close to unconditional as
this pin can go before V6.  Original
`beal_forall_from_Is13Case_sketch` stays uninhabited.

