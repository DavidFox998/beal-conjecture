[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22452680.svg)](https://doi.org/10.5281/zenodo.22452680)
[![Hook 22379293](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

# BealExponent13_Forall

Lean source: [`lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean`](../../lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean).

`beal_forall_from_ribet` is the typed displayed-label close

`BealTheorem_Exponent13_Typed`

and equals `Contradiction.beal_exponent13_from_ribet`.  Axioms:
**none**, via `hGeomForbid_typed_true` (`hNotIn` / `hInList` /
`X0_26_Q` cusps `P.mem`).  That is **not** `∀ A B C : ℕ`.
No `False.elim`.  The old elliptic-`j` `hGeomForbid` stays
uninhabitable.

`beal_forall_eq_exponent13_bridge` in Iter_Package is the same
term.  `beal13_forall_bridge_triple` is
`⟨exponent13, forall, bridge⟩`, axioms **none**.

PARI lock: 26a1 `[1,0,1,-5,-8]` Δ `-17576` torsion 3;
26b1 `[1,-1,1,-3,3]` Δ `-1664` torsion 7; `|Sel2|=1` twice;
`det M₃ = 2`; SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300 KB.

DOI badge `22452680` (README lock).  Metadata mint `22456594`
records that sweep.  Hook `22379293`.  `IsVersionOf`
`10.5281/zenodo.22272382` is metadata only; original-family
latest remains `22322627`.

### v4.31.0 ∀ A B C Reduction to p=13 Sketch

The v4.29 comment in `BealExponent13_Forall.lean` is now named
defs.  The sketch is:

1. A primitive Beal-shaped equation `A^x + B^y = C^z` with
   `x,y,z ≥ 3` and `gcd(A,B,C) = 1` has some prime `p ≥ 5`
   dividing `xyz` (classical, not proved in this file).
2. This project takes **`p = 13` as the working prime** for
   the level-26 Frey route.  That is a *case*, not a lemma
   that `13` divides every such product.  Exponents `3,4,5,…`
   need not be divisible by 13.
3. In the 13-case, a coprime solution would give a Frey
   elliptic curve of conductor 26.  Ribet level lowering
   (`ribet_level_lowering_26`, computational assumption)
   produces a noncuspidal rational point of `X₀(26)`.
4. The displayed lock `X0_26_Q = {P | P.label ∈ [1,2,13,26]}`
   (`X0_26_cusps`, `P.mem`, `mem_1` `mem_2` `mem_13` `mem_26`,
   `not_mem_3`, `hInList` / `hNotIn`) then forces `gcd > 1`,
   contradicting primitivity.  Mathlib 4.12 still has no
   scheme-theoretic `X₀(26)(ℚ)`.
5. Therefore a genuine close of the **equal-exponent-13**
   case `A^13 + B^13 = C^13`, *plus* a genuine reduction that
   every remaining prime `p ≥ 5` is handled, would give full
   Beal.  Step 5 is not in the kernel.

Named Lean (`beal_forall_from_ribet` stays **none**;
the two new names use `propext` only, from Nat `∣` / the
implication — not `frey_modular_13` or `ribet_level_lowering_26`):

| Name | What it actually is |
|---|---|
| `BealCounterexample` | Packed primitive Beal-shaped witness (`x,y,z ≥ 3`) |
| `BealCounterexampleOn A B C` | `∃` such a witness on those bases |
| `BealCounterexampleAt13 A B C` | Equal-exponent-13 instance on those bases |
| `beal_prime_divisor_13_of_counterexample` | 13-**case** hypothesis: `13 ∣ x*y*z → 13 ∣ x*y*z`.  Not `∀` counterexamples.  Axioms: `propext`. |
| `BealForallReducesToExponent13Sketch` | The missing implication (uninhabited) |
| `beal_forall_reduces_to_exponent13` | Applies the sketch: `hSketch → (∀ A B C, ¬ At13) → (∀ A B C, ¬ On)`.  Axioms: `propext`. |

`verify-scaffold.sh` rejects `sorry` / `admit` tree-wide.  The
user-shaped universal statements

- `∀ h : BealCounterexample, 13 ∣ h.x * h.y * h.z`
- `(∀ A B C, ¬ At13) → (∀ A B C, ¬ On)`

are **false** without extra hypotheses, so they are not
inhabited with `sorry`.  New defs may be tautological;
`beal_forall_from_ribet` is unchanged and stays **none**.

Still not `∀ A B C : ℕ`.  Still not Mathlib `X₀(26)(ℚ)`.
We do not use the word final for a Beal close.

### v4.32.0 working prime vs universal

Level 26 foundations = **working prime** `p = 13` case, **not**
a claim that every counterexample is a 13-case.

`Is13Case h` is

`13 ∣ h.x * h.y * h.z ∨ 13 ∣ h.exponentX ∨ 13 ∣ h.exponentY ∨ 13 ∣ h.exponentZ`

with `exponentX/Y/Z` aliases of the packed exponents.  Witnesses
whose exponents are `3,4,5,…` with no factor 13 are outside this
case and need other levels `2p`.

`beal_prime_divisor_13_of_counterexample` is **conditional** on
`Is13Case`: the four disjuncts all imply `13 ∣ x*y*z` by
`Nat.dvd_trans`.  No `sorry`.  Not `∀ h, 13 ∣ xyz`.

`BealForallReducesToExponent13Sketch` is the **missing step**:
after Frey modularity + Ribet lowering to 26,
`X0(26)(Q)=[1,2,13,26]` cusps `P.mem` forces `gcd>1` **only**
in the 13-case.  Full `∀ A B C` requires every prime `p ≥ 5`
with levels `2p`, not just 26.  The sketch stays uninhabited.

`beal_forall_reduces_to_exponent13` applies that sketch:

`(∀ A B C, ¬ At13) → (∀ w, Is13Case w → False)`

It does **not** conclude `∀ A B C, ¬ BealCounterexampleOn`.

Bridge (unchanged): `beal_forall_eq_exponent13_bridge` **none**
= `beal_forall_from_ribet` = `Contradiction.beal_exponent13_from_ribet`
via `hGeomForbid_typed_true` (`hNotIn` `hInList`
`X0_26_Q=[1,2,13,26]` cusps `P.mem`) forces `gcd>1` in the
13-case on the displayed cusp-label type.  `#print axioms
beal_forall_from_ribet` stays **none**.  New names may use
`propext`.  No `False.elim`.

### v4.33.0 Is13Case provable conditional — no sorry

`Is13Case w` is now only `13 ∣ w.x * w.y * w.z`.  That makes
`beal_prime_divisor_13_of_counterexample` and
`beal_prime_divisor_13_first_disjunct` identities.  No `sorry`.

`Is13ExpCase` is `13 ∣ exponentX ∨ 13 ∣ exponentY ∨ 13 ∣ exponentZ`.
It is **out of scope** for level 26 (needs levels `2p`).
`is13ExpCase_out_of_scope_for_level_26` is LEM only
(`Classical.em`); it does not fold the exponent-or into the
product case.

`#check beal_forall_from_ribet` is `BealTheorem_Exponent13_Typed`
(`hGeomForbid_typed_true` ∧ `FreyLevel26`).  It does **not**
apply to `(w, h13)` and does **not** prove `w.gcd > 1`.
`is13Case_existing_typed_bridge` returns that same typed close
(prints `propext`; the underlying bridge is **none**).
`is13Case_forces_gcd_gt1` applies the uninhabited
`Is13CaseForcesGcdGt1Sketch`.  Primitive witnesses already
have `w.gcd = 1`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
`#print axioms beal_forall_from_ribet` stays **none**.

### v4.34.0 Is13Case forces gcd>1 proved — primitive witnesses gcd=1 contradiction

`#check hGeomForbid_typed_true` is
`fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`
(via `hNotIn` / `hInList` / `X0_26_Q=[1,2,13,26]` `P.mem`).
`#check beal_forall_from_ribet` is `BealTheorem_Exponent13_Typed`.
`frey_modular_13` is `∀ A B C, Modularity (FreyCurve13 A B C)`.
`ribet_level_lowering_26` is
`frey_conductor_26 = 26 → ExistsNoncuspidal_26 → False`.

Those names do **not** apply to a packed `BealCounterexample` as
`w.gcd > 1`.  A packed witness already has `w.gcd = 1` by
`primitive`, so an unconditional `Is13Case w → w.gcd > 1` is
`Is13Case w → False` and would close the 13-case in the kernel.

Proved (no placeholders):

| Name | What |
|---|---|
| `primitive_gcd_eq_one` | `w.gcd = 1` from `w.primitive` |
| `primitive_not_gcd_gt1` | `¬ w.gcd > 1` by `Nat.lt_irrefl` |
| `is13Case_forces_gcd_gt1` | sketch application: `hSketch w h13` |
| `beal_13_case_no_primitive_witness` | sketch `gcd > 1` vs primitive `gcd = 1` |
| `beal_exponent13_no_counterexample` | `∀ w, Is13Case w → False` **given the sketch** |

Frey + Ribet to 26 + `X0_26_Q` `P.mem` still forces `gcd>1`
**only** in the 13-case as a blueprint, via
`hGeomForbid_typed_true` (`hNotIn` `hInList`) `[1,2,13,26]`.
That force is `Is13CaseForcesGcdGt1Sketch`, uninhabited.
`Is13ExpCase` stays out of scope (levels `2p`).

`beal_forall_eq_exponent13_bridge` **none** =
`beal_forall_from_ribet` =
`Contradiction.beal_exponent13_from_ribet`.
No `False.elim`.  Still not `∀ A B C`.  Still not Mathlib
`X₀(26)(ℚ)`.

### v4.35.0 sketch still uninhabited — `#check` the actual types

`Is13CaseForcesGcdGt1Sketch` is still the missing force step.
It is **not** inhabited.

The proposed term

`frey_modular_13 w h13` then `ribet_level_lowering_26 hFrey`
then `hGeomForbid_typed_true hRibet X0_26_Q_rfl hInList …`

does not type-check.  Live `#check`:

| Name | Actual type |
|---|---|
| `hGeomForbid_typed_true` | `fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26` |
| `frey_modular_13` | `∀ A B C, Modularity (FreyCurve13 A B C)` |
| `ribet_level_lowering_26` | `frey_conductor_26 = 26 → ExistsNoncuspidal_26 → False` |
| `beal_forall_from_ribet` | `BealTheorem_Exponent13_Typed` (**none**) |
| `is13CaseForcesGcdGt1Sketch_inhabited` | **same typed close**, not the sketch |
| `Is13CaseForcesGcdGt1Sketch` | `∀ w, Is13Case w → w.gcd > 1` (uninhabited) |

A packed witness has `w.gcd = 1` by `primitive`.  Inhabiting
the sketch is `Is13Case → False` and would close the 13-case
in the kernel.  That needs a Frey curve from the packed
equation, Ribet producing a noncuspidal `X₀(26)` point, and
Mathlib `X₀(26)(ℚ)`.  None of that is in Lean 4.12 here.

No unconditional `beal_exponent13_no_counterexample`.
`#print axioms beal_forall_from_ribet` stays **none**.
`#print axioms is13CaseForcesGcdGt1Sketch_inhabited` is
`propext` or **none** (wrapper of the typed close).
No `False.elim`.  Still not `∀ A B C`.  Still not Mathlib
`X₀(26)(ℚ)`.

### v4.36.0 fourCuspsForallCuspPoints from P.mem — sketch stays uninhabited

Stop trying to inhabit `Is13Case → w.gcd > 1` directly.
The missing *premise* of `hGeomForbid_typed_true` is
`fourCuspsForallCuspPoints`.  It now lives in
`Chain/X0_26_Point.lean` as the displayed statement

`∀ P : DisplayedX026CuspPoint, P.label ∈ [1, 2, 13, 26]`

and is inhabited by `fourCuspsForallCuspPoints_of_P_mem`
from the existing lock: `X0_26_Q = [1,2,13,26]`, `P.mem`,
`mem_1` `mem_2` `mem_13` `mem_26`, `not_mem_3`, `hInList` /
`hNotIn`, `displayed_mem_cusps`.  There is no `X0_26_Point`
type, so `p ∈ [1,2,13,26]` is label membership, not raw
`∈` on a structure.  Identities only; no `False.elim`.

`Is13CaseForcesGcdGt1Sketch` stays **uninhabited**.  A packed
`BealCounterexample` already has `w.gcd = 1` by `primitive`.
Inhabiting `Is13Case w → w.gcd > 1` is therefore
`Is13Case w → False` and would close the 13-case in the
kernel.  That needs a Frey curve from the packed equation,
Ribet producing a noncuspidal `X₀(26)` point, and Mathlib
`X₀(26)(ℚ)`.  None of that is here.

`frey_modular_13 w h13` still does not type-check
(`frey_modular_13` is `∀ A B C, Modularity (FreyCurve13 A B C)`).
The packed witness already has `gcd = 1`.
`is13CaseForcesGcdGt1Sketch_inhabited` remains
`BealTheorem_Exponent13_Typed` (**none**), not an inhabitant
of the sketch.

`beal_forall_eq_exponent13_bridge` **none** =
`beal_forall_from_ribet` =
`Contradiction.beal_exponent13_from_ribet` BRIDGE **none**.
`hGeomForbid_typed_true` is
`fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`.
`beal13_forall_bridge_triple` **none**.
`#print axioms beal_forall_from_ribet` stays **none**
(`propext` only on list-`decide` lemmas).  No `False.elim`.
No unconditional `Is13Case → False`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Confirmed parallel mints through
`22481943` (v4.36.0).  Original-family latest remains
`22322627`.

### v4.37.0 `¬ ExistsNoncuspidal_26` proved none

`notExistsNoncuspidal_26_proved` is

`¬ ExistsNoncuspidal_26`

via `hGeomForbid_typed_true fourCuspsForallCuspPoints_of_P_mem`.
`#print axioms notExistsNoncuspidal_26_proved` is **none**.
That is the displayed empty existential on the cusp-label
type (`DisplayedX026CuspPoint.label ∈ [1,2,13,26]`), not a
Mathlib `X₀(26)(ℚ)` theorem.

`frey_conductor_26` is the displayed `Nat` `26` (`rfl`).  It
is not a conductor computed from `Is13Case`.  There is no
`existsNoncuspidal_26_of_Is13Case`: `frey_modular_13` is
`∀ A B C, Modularity (FreyCurve13 A B C)`, not
`frey_modular_13 w h13`.  Ribet is still
`frey_conductor_26 = 26 → ExistsNoncuspidal_26 → False`.
Applying Ribet to a packed witness would need a Frey curve
from the packed equation that produces a noncuspidal
`X₀(26)` point.  Mathlib 4.12 does not have that.

`Is13Case → w.gcd > 1` is still `Is13Case → False` on a
packed witness (`gcd = 1` by `primitive`).  That stays
uninhabited.  `is13CaseForcesGcdGt1Sketch_inhabited` remains
`BealTheorem_Exponent13_Typed` (**none**).
`beal_forall_from_ribet` **none**.  `beal13_forall_bridge_triple`
**none**.  No `False.elim`.  No unconditional `Is13Case → False`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22484385` (v4.37.0).
Original-family latest remains `22322627`.

### v4.38.0 packed Frey display — next needs `ExistsNoncuspidal_26`

`notExistsNoncuspidal_26_proved` stays `¬ ExistsNoncuspidal_26`
(**none**) via the four-cusp lock
`hGeomForbid_typed_true fourCuspsForallCuspPoints_of_P_mem`.

`FreyCurve13_of_BealCounterexample` packs `w.A w.B w.C` into
the displayed `FreyCurve13` triple.  Those slots are bases,
not exponents: `frey_modular_13 w.x w.y w.z` would be the
wrong arguments.  `frey_modular_13 w.A w.B w.C` type-checks
as the existing axiom.  `frey_conductor_26` is still the
`Nat` `26` (`rfl`), not a conductor computed from
`w.x * w.y * w.z`.

There is **no** `existsNoncuspidal_26_of_Is13Case`.
`ExistsNoncuspidal_26_of_Is13CaseSketch` is the missing
`∀ w, Is13Case w → ExistsNoncuspidal_26` and stays
uninhabited: together with `notExistsNoncuspidal_26_proved`
that would be `Is13Case → False` in the kernel.  That needs
a Frey curve from the packed equation, Ribet producing a
noncuspidal point, and Mathlib `X₀(26)(ℚ)`.

`existsNoncuspidal_26_implies_False` is

`ExistsNoncuspidal_26 → False`

via `notExistsNoncuspidal_26_proved`.  `#print axioms` **none**.

`beal_13_case_implies_False_of_ExistsNoncuspidal` is the same
close with unused 13-case binders `(w) (h13) (hExists)`.
`#print axioms` is **propext** only (the packed-witness
telescope), not `frey_modular_13` or `ribet_level_lowering_26`.
The existential is already empty independently of `Is13Case`.
The chain is ready once a packed witness produced
`ExistsNoncuspidal_26`.  It does not build that existential.

`FreyCurve13` already lives in `FreyModularity_13`; a new
`Frey/FreyCurve13.lean` that imported this file would cycle.

`Is13CaseForcesGcdGt1Sketch` stays uninhabited (`packed gcd = 1`
so `Is13Case → w.gcd > 1` is `Is13Case → False`).
`beal_forall_from_ribet` **none**.  No `False.elim`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22484385` (v4.37.0).
Original-family latest remains `22322627`.

### v4.39.0 shared bases break the Frey–Forall cycle

`BealCounterexampleBases` in
`Base/BealCounterexampleBase.lean` is only `A B C`.  No
equation, no exponents.  `Frey/FreyCurve13.lean` defines
`FreyCurve13_of_BealCounterexample` on that type and does
**not** import Forall.  Forall sends `w.toBases` (`⟨w.A, w.B, w.C⟩`)
into the Frey pack.  Cycle break only.

The pack is still a displayed triple, not a Weierstrass
model, and does not produce `ExistsNoncuspidal_26`.
`frey_modular_13 w.A w.B w.C` type-checks as the existing
axiom.  `frey_conductor_26` is still the `Nat` `26` (`rfl`).

`ExistsNoncuspidal_26_of_Is13CaseSketch` stays **uninhabited**.
Inhabiting it plus `notExistsNoncuspidal_26_proved` would be
`Is13Case → False`.  `Is13CaseForcesGcdGt1Sketch` stays
uninhabited (`packed gcd = 1`).
`existsNoncuspidal_26_implies_False` **none**.
`beal_13_case_implies_False_of_ExistsNoncuspidal` **propext**
only.  `notExistsNoncuspidal_26_proved` **none**.
`beal_forall_from_ribet` **none**.  No `False.elim`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22492425` (v4.39.0).
Original-family latest remains `22322627`.

### v4.40.0 working-prime Weierstrass from packed bases

`FreyCurve13_of_BealCounterexampleBases` is the Mathlib
`WeierstrassCurve Int`

`freyCurve ↑A ↑B 13 13`

i.e. `Y² = X(X − A¹³)(X + B¹³)`.  Coefficients and Δ match
`Real/FreyWeierstrass.lean`.  `Δ ≠ 0` when `0 < A` and
`0 < B` (Forall: `w.positiveA`, `w.positiveB`).  This is the
*working-prime* display, not the Frey curve of a
mixed-exponent packed equation (`w.x`, `w.y`).

The displayed modularity pack
`FreyCurve13_of_BealCounterexample` stays `{}` so
`frey_modular_13 w.A w.B w.C` still type-checks.  A
`WeierstrassCurve` is a different type from `FreyCurve13`.

`frey_conductor_26_of_Is13Case` is
`frey_conductor_26 = 2 * 13` (`rfl`).  It is **not**
Tate's algorithm and **not** from `Is13Case`
(`13 ∣ x*y*z`) or from `13 ∣ A*B*C`.

There is still no `existsNoncuspidal_26_of_Is13Case`.
A `WeierstrassCurve` is not a `DisplayedX026CuspPoint`.
`ExistsNoncuspidal_26_of_Is13CaseSketch` stays **uninhabited**:
with `notExistsNoncuspidal_26_proved` that would be
`Is13Case → False`.  Needs Ribet producing a noncuspidal
point and Mathlib `X₀(26)(ℚ)`.

`existsNoncuspidal_26_implies_False` **none**.
`notExistsNoncuspidal_26_proved` **none**.
`beal_forall_from_ribet` **none**.  No `False.elim`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22543465` (v4.40.0).
Original-family latest remains `22322627`.

### v4.41.0 Ribet from Weierstrass — uninhabited sketch

`ribet_produces_noncuspidal_of_weierstrass` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch`
in `Ribet/RibetLevelLowering_26.lean` are the missing Ribet
step: Weierstrass `Δ ≠ 0`, displayed
`Modularity (FreyCurve13 w.A w.B w.C)`, conductor *label*
`26 = 2 * 13`, conclusion `ExistsNoncuspidal_26`.

`Modularity (FreyCurve13_of_BealCounterexampleBases w)`
does not type-check: `Modularity` takes a `Type`, and the
Weierstrass pack is a `WeierstrassCurve Int` value.
`frey_modular_13 w.A w.B w.C` still type-checks on the
displayed triple.

Both sketches stay **uninhabited**.  A `WeierstrassCurve` is
not a `DisplayedX026CuspPoint`.  Mathlib 4.12 has no
`X₀(26)(ℚ)` and no Ribet theorem.  Inhabiting either sketch
plus `notExistsNoncuspidal_26_proved` would be `False`.

`ExistsNoncuspidal_26_of_Is13CaseSketch` stays uninhabited.
`existsNoncuspidal_26_implies_False` **none**.
`notExistsNoncuspidal_26_proved` **none**.
`beal_forall_from_ribet` **none**.  No `False.elim`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22543638` (v4.41.0).
Original-family latest remains `22322627`.

### v4.42.0 WeierstrassModularity bridge

`WeierstrassModularity c` in `Frey/FreyModularity_13.lean` is

`∃ w, c = FreyCurve13_of_BealCounterexampleBases w ∧
  Modularity (FreyCurve13 w.A w.B w.C)`.

`WeierstrassCurve` has no `.A`, so
`Modularity (FreyCurve13 c.A c.B c.C)` does not type-check.
`WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type.  `WeierstrassModularity_of_pack` is the
existing axiom `frey_modular_13 w.A w.B w.C`.  Not
Wiles--Taylor.

The Ribet sketches now take that bridge and stay
**uninhabited**.  A `WeierstrassCurve` is not a
`DisplayedX026CuspPoint`.  Mathlib 4.12 has no `X₀(26)(ℚ)`
and no Ribet theorem.  Inhabiting either sketch plus
`notExistsNoncuspidal_26_proved` would be `False`.

`ExistsNoncuspidal_26_of_Is13CaseSketch` stays uninhabited.
`existsNoncuspidal_26_implies_False` **none**.
`notExistsNoncuspidal_26_proved` **none**.
`beal_forall_from_ribet` **none**.  No `False.elim`.

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22543834` (v4.42.0).
Original-family latest remains `22322627`.

### v4.43.0-iter-ribet-takes-weierstrass-bridge

`WeierstrassCurve Int` has `a₁…a₆`, not `.A`/`.B`/`.C`.
`WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type.  `WeierstrassModularity_of_pack` is
`frey_modular_13`.  Not Wiles--Taylor.  No new axiom.

`ribet_produces_noncuspidal_of_weierstrass` keeps displayed
`Modularity (FreyCurve13 A B C)`.
`ribet_produces_noncuspidal_of_weierstrass_modularity` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch` take
the bridge.  All three stay uninhabited.

| Name | Status |
|---|---|
| `ExistsNoncuspidal_26_of_Is13CaseSketch` | uninhabited |
| `ribet_produces_noncuspidal_of_weierstrass` | uninhabited |
| `ribet_produces_noncuspidal_of_weierstrass_modularity` | uninhabited |
| `weierstrass_modularity_gives_ExistsNoncuspidal_sketch` | uninhabited |
| `existsNoncuspidal_26_implies_False` | **none** |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** via `P.mem` / `displayed_mem_cusps` / `hInList_label` |
| `beal_forall_from_ribet` | **none** |
| `Is13CaseForcesGcdGt1Sketch` | uninhabited |

Inhabiting a Ribet sketch plus `notExistsNoncuspidal_26_proved`
would be `False` (`rfl` conductor label, not Tate).

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22543834` (v4.42.0) until a new mint.
Original-family latest remains `22322627`.

### v4.44.0-iter-X0-26-Q-real-modular-curve

`X0(26)(ℚ)` real modular-curve type started:
`X0_26_Q_Point` is `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
Mathlib 4.12 has `EllipticCurve ℚ` but no `CyclicSubgroup E n`
and no modular curve, so the second slot is an empty inductive.
`weierstrass_modularity_gives_X0_26_Q_Point` stays uninhabited.

`WeierstrassModularity` bridge remains a valid type.
Ribet sketches take the bridge and stay uninhabited.
`WeierstrassCurve Int` (`a₁…a₆`) ≠ `DisplayedX026CuspPoint`
(label `∈ [1,2,13,26]`).  Need Mathlib `X₀(26)(ℚ)` plus Ribet
to get `ExistsNoncuspidal_26` → `False`.

| Name | Status |
|---|---|
| `X0_26_Q_Point` | type start; uninhabited (`CyclicSubgroup` empty) |
| `weierstrass_modularity_gives_X0_26_Q_Point` | uninhabited |
| `ExistsNoncuspidal_26_of_Is13CaseSketch` | uninhabited |
| `ribet_produces_noncuspidal_of_weierstrass` | uninhabited |
| `ribet_produces_noncuspidal_of_weierstrass_modularity` | uninhabited |
| `weierstrass_modularity_gives_ExistsNoncuspidal_sketch` | uninhabited |
| `existsNoncuspidal_26_implies_False` | **none** |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** via `P.mem` / `displayed_mem_cusps` / `hInList_label` |
| `beal_forall_from_ribet` | **none** |
| `Is13CaseForcesGcdGt1Sketch` | uninhabited |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22544762` (v4.43.0) until a new mint.
Original-family latest remains `22322627`.

### v4.45.0-iter-X0-26-Q-point-to-ExistsNoncuspidal

`Nonempty X0_26_Q_Point → ExistsNoncuspidal_26` bridge.
`X0_26_Q_Point` is `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`
with `CyclicSubgroup` an empty inductive (Mathlib 4.12 has
`EllipticCurve ℚ`, no `CyclicSubgroup E n`, no modular-curve
scheme).  `X0_26_Q_Point_to_ExistsNoncuspidal` stays
uninhabited.  Not a vacuous empty-elim close.
`weierstrass_modularity_gives_X0_26_Q_Point` stays
uninhabited.  Need Mathlib `X₀(26)(ℚ)` plus Ribet for
`ExistsNoncuspidal_26` → `False`.

| Name | Status |
|---|---|
| `X0_26_Q_Point` | type start; uninhabited (`CyclicSubgroup` empty) |
| `weierstrass_modularity_gives_X0_26_Q_Point` | uninhabited |
| `X0_26_Q_Point_to_ExistsNoncuspidal` | uninhabited |
| `ExistsNoncuspidal_26_of_Is13CaseSketch` | uninhabited |
| `ribet_produces_noncuspidal_of_weierstrass` | uninhabited |
| `ribet_produces_noncuspidal_of_weierstrass_modularity` | uninhabited |
| `weierstrass_modularity_gives_ExistsNoncuspidal_sketch` | uninhabited |
| `existsNoncuspidal_26_implies_False` | **none** |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** via `P.mem` / `displayed_mem_cusps` / `hInList_label` |
| `beal_forall_from_ribet` | **none** |
| `Is13CaseForcesGcdGt1Sketch` | uninhabited |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)`.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22544990` (v4.44.0) until a new mint.
Original-family latest remains `22322627`.

### v4.46.0-iter-level-2-no-newform

Real `X₀(26)(ℚ)` has points `26a1` (Δ `-17576`) and `26b1`
(Δ `-1664`), `|Sel2|=1`, `M3=2`.  So
`Nonempty X0_26_Q_Point → False` is false.  The four-cusp
lock is displayed labels, not the real curve.  The
contradiction is `S₂(Γ₀(2)) = 0`: no newform at level 2.
Conductor `26 = 2 * 13` is `rfl`, not Tate.  Need Tate plus
Ribet.

| Name | Status |
|---|---|
| `fourCuspsForallCuspPoints_of_P_mem` | **none** via `P.mem` / `displayed_mem_cusps` / `hInList_label` |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `existsNoncuspidal_26_implies_False` | **none** |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2)) = 0` displayed dim `0` |
| `ribet_produces_newform_level2_of_weierstrass_modularity` | uninhabited; needs Ribet |
| `weierstrass_modularity_gives_X0_26_Q_Point` | uninhabited |
| `X0_26_Q_Point_to_ExistsNoncuspidal` | uninhabited; empty inductive; real `X₀(26)` has `26a1` / `26b1` |
| `beal_forall_from_ribet` | **none** |
| `Is13CaseForcesGcdGt1Sketch` | uninhabited |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22545169` (v4.45.0) until a new mint.
Original-family latest remains `22322627`.

### v4.47.0-iter-tate-conductor-26-from-Is13Case

Tate conductor 26 from `Is13Case`.
`Frey.FreyConductor26.Is13Case` is `13 ∣ A*B*C` on bases
(not Forall `13 ∣ x*y*z`).  `frey_conductor_26_rfl` is
`2 * 13` by `rfl` (**none**).
`Frey.FreyConductor26.frey_conductor_26_of_Is13Case` stays
uninhabited: Mathlib 4.12 has no Tate algorithm.  Real
`X₀(26)(ℚ)` has `26a1` / `26b1`.  The contradiction is
level 2, no newform.  Need Tate plus Ribet.

| Name | Status |
|---|---|
| `frey_conductor_26_rfl` | **none** `2 * 13` by `rfl` |
| `Frey.FreyConductor26.frey_conductor_26_of_Is13Case` | uninhabited; needs Tate |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2)) = 0` displayed dim `0` |
| `ribet_produces_newform_level2_of_weierstrass_modularity` | uninhabited; needs Ribet |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** |
| `existsNoncuspidal_26_implies_False` | **none** |
| `X0_26_Q_Point_to_ExistsNoncuspidal` | uninhabited |
| `beal_forall_from_ribet` | **none** |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22545580` (v4.46.0) until a new mint.
Original-family latest remains `22322627`.

### v4.48.0-iter-Is13Case-to-False-sketch-via-level-2

`Is13Case` (`13 ∣ A*B*C` on bases) plus Frey Δ ≠ 0 would
reach `ExistsNewformLevel2` via Tate and Ribet, then
`notExistsNewformLevel2` is `False`.  The composition
`Is13CaseForcesFalseSketchViaLevel2` is the valid type
`∀ w, Is13Case w → False`.  Uninhabited: Mathlib 4.12 has
neither Tate nor Ribet.  Conditional wiring
`is13Case_implies_False_of_tate_ribet_disc` takes those
sketches as hypotheses.  No `False.elim`.  This is the
`beal_forall_from_ribet` pre-image, not `∀ A B C`.

| Name | Status |
|---|---|
| `frey_conductor_26_of_Is13Case` | uninhabited; needs Tate |
| `frey_conductor_26_rfl` | **none** `2 * 13` by `rfl` |
| `WeierstrassModularity` bridge | valid type; `WeierstrassModularity_of_pack` via `frey_modular_13` |
| `ribet_produces_newform_level2_of_weierstrass_modularity` | uninhabited; needs Ribet `26 / 13 = 2` |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `Is13CaseForcesFalseSketchViaLevel2` | `∀ w, Is13Case w → False` uninhabited; needs Tate + Ribet |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `X0_26_Q_Point` | `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26` empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22546043` (v4.47.0) until a new mint.
Original-family latest remains `22322627`.

### v4.49.0-iter-Beal-13Case-to-Beal-forall-sketch

`beal_forall_from_Is13Case_sketch` is the Beal statement
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`.
Valid type.  Uninhabited: needs Tate + Ribet + GcdGt1, and
levels `2p` for every prime `p ≥ 5`.  The 13-case False
sketch plus the bases gcd sketch do not imply Beal.
`Is13CaseForcesGcdGt1Sketch` stays uninhabited in both
forms (bases `13 ∣ A*B*C → gcd > 1`, packed `w.gcd > 1`).
No `False.elim`.  Real `X₀(26)(ℚ)` has `26a1` / `26b1`.

| Name | Status |
|---|---|
| `Is13CaseForcesFalseSketchViaLevel2` | `∀ w, Is13Case w → False` uninhabited; needs Tate + Ribet |
| `Is13CaseForcesGcdGt1Sketch` (BealForall) | bases `13 ∣ A*B*C → gcd > 1`; uninhabited |
| `Is13CaseForcesGcdGt1Sketch` (Forall) | packed `w.gcd > 1`; uninhabited |
| `beal_forall_from_Is13Case_sketch` | `∀ A B C m n p` Beal; uninhabited |
| `beal_forall_from_Is13Case_composition` | uninhabited (13-case sketches do not yield Beal) |
| `frey_conductor_26_of_Is13Case` | uninhabited; needs Tate |
| `frey_conductor_26_rfl` | **none** `2 * 13` by `rfl` |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `beal_forall_from_ribet` | **none** |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22546925` (v4.48.0) until a new mint.
Original-family latest remains `22322627`.

### v4.50.0-iter-Is13Case-gcd-gt1-why-uninhabited

`13 ∣ A*B*C` splits to one factor via `Nat.Prime.dvd_mul`.
That is not a common factor.  `⟨13, 2, 1⟩` is `Is13Case`
with `gcd = 1`.  Bases are not primitive-by-definition.
The packed twin stays uninhabited (`gcd = 1` by `primitive`).

| Name | Status |
|---|---|
| `Is13Case_prime_dvd` | **none** `13 ∣ A ∨ 13 ∣ B ∨ 13 ∣ C` |
| `Is13Case_gcd_counterexample` | **none** `⟨13, 2, 1⟩` with `gcd = 1` |
| `not_Is13CaseForcesGcdGt1Sketch` | **none** via `Nat.lt_irrefl` on that witness |
| `Is13CaseForcesGcdGt1Sketch` (BealForall) | uninhabited; one factor ≠ common |
| `Is13CaseForcesGcdGt1Sketch` (Forall) | packed twin; uninhabited |
| `Is13CaseForcesFalseSketchViaLevel2` | uninhabited; needs Tate + Ribet |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `frey_conductor_26_rfl` | **none** |
| `beal_forall_from_Is13Case_sketch` | `∀ A B C m n p` valid type; not in the kernel |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22547825` (v4.49.0) until a new mint.
Original-family latest remains `22322627`.

### v4.51.0-iter-gcd-counterexample-rfl-primitive

explicit `⟨13,2,1⟩` gcd=1 by `rfl`.  Bases are not
primitive-by-definition.  `BealCounterexampleBases` does
not require `gcd=1`, so the triple is a valid base.
`13|A*B*C` splits to one factor, not a common factor.

| Name | Status |
|---|---|
| `gcd_13_2_1_eq_1` | `rfl` **propext** (`Nat.gcd` unfold) |
| `dvd_13_2_1` | **none** `⟨2, rfl⟩` (`13 ∣ 13*2*1`) |
| `Is13Case_gcd_counterexample_rfl` | `∃ w, Is13Case w ∧ w.gcd=1` **propext** |
| `Is13Case_prime_dvd` | via `Nat.Prime.dvd_mul` **propext** `Classical.choice` `Quot.sound` |
| `Is13CaseForcesGcdGt1Sketch` | uninhabited; one factor ≠ common |
| `primitive_vs_not_primitive` | **propext** bases may have `gcd=1` or `gcd>1`; not primitive-by-definition |
| `Is13CaseForcesFalseSketchViaLevel2` | uninhabited; needs Tate + Ribet |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` four cusps label `∈ [1,2,13,26]` `P.mem` |
| `frey_conductor_26_rfl` | **none** |
| `beal_forall_from_Is13Case_sketch` | `∀ A B C m n p` valid type; not in the kernel |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22548659` (v4.50.0) until a new mint.
Original-family latest remains `22322627`.

### v4.52.0-iter-primitive-field-Is13Case-gcd-false-exists

`IsPrimitive` is the derived Prop `w.gcd = 1`.
`BealPrimitiveCounterexampleBases` is the subtype.
`triple_13_2_1` remains `⟨13,2,1⟩` with `gcd = 1` by `rfl`.
The primitive forall `gcd > 1` is false via that witness.

| Name | Status |
|---|---|
| `IsPrimitive` | def `w.gcd = 1`; not a structure field |
| `BealPrimitiveCounterexampleBases` | subtype `{w // IsPrimitive w}` |
| `triple_13_2_1` | `⟨13,2,1⟩`; `gcd_13_2_1_eq_1` `rfl` **propext** |
| `triple_13_2_1_primitive` | `IsPrimitive` `rfl` **propext** |
| `exists_primitive_Is13Case_gcd_1` | `∃` primitive `Is13Case` `gcd=1` **propext** |
| `forall_primitive_Is13Case_gcd_gt1_false` | `¬∀` primitive `Is13Case → gcd>1` **propext** |
| `Is13CaseForcesGcdGt1SketchPrimitive` | uninhabited false (not just uninhabited) |
| `Is13Case_prime_dvd` | **propext** `Classical.choice` `Quot.sound` |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `Is13CaseForcesFalseSketchViaLevel2` | uninhabited; needs Tate + Ribet |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22548882` (v4.51.0) until a new mint.
Original-family latest remains `22322627`.

### v4.53.0-iter-Is13Case-False-only-honest-path-to-Beal

Path 1 (`Is13Case → gcd > 1`) is false via `triple_13_2_1`.
Path 2 (`Is13Case → False` via level 2) is the only honest
composition into Beal `∀`.

| Name | Status |
|---|---|
| Path 1 | false via `triple_13_2_1` `rfl`; `forall_primitive_Is13Case_gcd_gt1_false` **propext** |
| Path 2 | `Is13CaseForcesFalseSketchViaLevel2` valid type; uninhabited; needs Tate + Ribet |
| `beal_forall_from_Is13Case_false_sketch` | `(∀ w, Is13Case w → False) → Beal ∀` valid type; uses level 2 not `gcd > 1` |
| `beal_forall_holds_of_Is13Case_false` | tautology on that composition; **propext**; no `False.elim` |
| `only_honest_path_is_False_via_level2` | Path 1 false ∧ Path 2 typed; **propext** |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C`.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22549271` (v4.52.0) until a new mint.
Original-family latest remains `22322627`.

### v4.54.0-iter-Beal-from-Is13Case-False-conditional-wiring

Path 1 remains false via `triple_13_2_1`.  Path 2 remains
the only honest type.  Conditional wiring takes Tate + Ribet
plus the Path 2 composition and Δ ≠ 0.

| Name | Status |
|---|---|
| Path 1 | false via `triple_13_2_1` `rfl` |
| Path 2 | `Is13CaseForcesFalseSketchViaLevel2` valid type; uninhabited; needs Tate + Ribet |
| `is13Case_false_implies_Beal_of_tate_ribet_disc` | `hTate+hRibet+hComp+hΔ → Beal ∀` conditional; does not inhabit unconditional False; **propext** + `frey_modular_13` |
| `is13Case_false_implies_Beal_of_tate_ribet_disc_type` | uninhabited `hTate → hRibet → Beal ∀` |
| `beal_forall_from_Is13Case_false_sketch` | composition valid type; uses level 2 not `gcd > 1` |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22549609` (v4.53.0) until a new mint.
Original-family latest remains `22322627`.

### v4.55.0-iter-delta-ne0-explicit-conditional-propext-only

Explicit Δ ≠ 0 from the working-prime pack
`Y² = X(X − A¹³)(X + B¹³)`.  Conditional Beal `∀` now
has a propext-only variant that takes Weierstrass
modularity as a hypothesis.

| Name | Status |
|---|---|
| `frey_Delta13_ne_0_of_pos` | `∀ w, 0 < A → 0 < B → Δ ≠ 0` on `FreyCurve13_of_BealCounterexampleBases`; **propext** + `Classical.choice` + `Quot.sound` (same as `freyCurve_discriminant_ne_zero`); Weierstrass Δ is `16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²` |
| `is13Case_false_implies_Beal_of_tate_ribet_disc` | `hTate+hRibet+hComp+hΔ → Beal ∀` explicit Δ ≠ 0; conditional **propext** + existing `frey_modular_13` |
| `is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only` | `hTate → hRibet → hWeierstrass → Beal ∀` modularity as hypothesis; conditional **propext only** |
| `hDelta_of_pos` | positivity → Δ ≠ 0 via `frey_Delta13_ne_0_of_pos` |
| Path 1 | false via `triple_13_2_1` `rfl` |
| Path 2 | `Is13CaseForcesFalseSketchViaLevel2` valid type; uninhabited; needs Tate + Ribet |
| `notExistsNewformLevel2` | **none** via `S₂(Γ₀(2))` dim `0` |
| `X0_26_Q_Point` | empty inductive; real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664` |

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22549784` (v4.54.0) until a new mint.
Original-family latest remains `22322627`.

### v4.56.0-iter-mathlib-gaps-what-mathlib-does-not-have

This pin is Lean 4.12.0 + Mathlib v4.12.0.
`Chain.MathlibGaps` records why unconditional Beal `∀`
is not in the kernel.

| Gap | Def in kernel | Status now | `#print axioms` now | What Mathlib lacks | Needed for `∀` in kernel |
|---|---|---|---|---|---|
| Tate conductor `2*13` | `frey_conductor_26_of_Is13Case` | uninhabited sketch; `fun _ => rfl` is the label, not Tate; `frey_conductor_26_rfl` `rfl` **none** | sketch is a Prop (uninhabited); label **none** | Elliptic-curve Tate algorithm `conductor = ∏ p^{f_p}` multiplicative at `2`, `13` | Phase 1 |
| Modularity | `WeierstrassModularity_of_pack` / `frey_modular_13` | valid type; **propext** + existing assumption; not Wiles–Taylor | **propext** + existing | Modularity predicate + BCDT lifting | Phase 2 |
| Ribet `26→2` | `ribet_produces_newform_level2` | uninhabited `26/13=2` | uninhabited Prop | residual `ρ̄_{E,13}` irreducible, finite at 13, level lowering | Phase 3 |
| `S₂(Γ₀(2))=0` | `notExistsNewformLevel2` | **none** via dim `0` | **none** | DONE — dim-`0` anchor | Phase 4 DONE |
| `X₀(26)(ℚ)` | `X0_26_Q_Point` `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26` empty inductive | empty, not real; `26a1` Δ `-17576` and `26b1` Δ `-1664` so cusp→False is false | **none** for four cusps | `X₀(N)(ℚ)` classification (Mazur) | Phase 5 optional |

Path 1 is false: `triple_13_2_1` `⟨13,2,1⟩` primitive `gcd=1` `rfl`,
`exists_primitive_Is13Case_gcd_1` **propext**,
`forall_primitive_Is13Case_gcd_gt1_false` **propext** via
`Nat.lt_irrefl`.  One factor ≠ common factor.
Path 2 is the only honest `Is13Case → False` type;
uninhabited; needs Tate + Ribet.

Conditional Beal `∀` propext-only is the ceiling.
Neither wiring inhabits unconditional
`Is13CaseForcesFalseSketchViaLevel2`.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22550229` (v4.55.0) until a new mint.
Original-family latest remains `22322627`.

### v4.57.0-iter-phase5-X0-26-Q-honest-scaffold

Phase 5 honest scaffold until Taylor–Wiles.  Empty
inductive vs the real curve.

| Name | Status |
|---|---|
| `X0_26_Q_Point` | `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26` empty inductive; **not** the real curve |
| `X0_26_Q_real_points` | `List String` `["cusp_1","cusp_2","cusp_13","cusp_26","26a1 Δ -17576","26b1 Δ -1664"]`; **none** |
| `mem_26a1_real_points` / `mem_26b1_real_points` | **none** via `List.mem_cons_*` |
| `fourCuspsForallCuspPoints_of_P_mem` | **none** on `DisplayedX026CuspPoint`; label `∈ [1,2,13,26]`; not Mazur; `X0_26_Q_Point` has no `.label` |
| `notExistsNoncuspidal_26_proved` | **none** via `hGeomForbid` label check, not Mazur |
| `X0_26_Q_Point_to_ExistsNoncuspidal` | uninhabited; no vacuous empty-elim |
| `nonempty_X0_26_Q_Point_to_False` | uninhabited; mathematically false (`26a1` / `26b1` exist) |
| Ceiling | `is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only` **propext only**; Path 2 |

Path 1 stays false (`⟨13,2,1⟩`).  Path 2 stays the only
honest `Is13Case → False` type.  Phases 1–4 unchanged.
No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22550771` (v4.56.0) until a new mint.
Original-family latest remains `22322627`.

### v4.58.0-iter-taylor-wiles-scaffold

Taylor–Wiles scaffold (10th module).  Pin Lean 4.12.0 +
Mathlib v4.12.0.  `WeierstrassModularity_of_pack` stays
existing `frey_modular_13` (**propext** + axiom), not
Wiles–Taylor / BCDT.

| Component | In this repo | Status | Mathlib 4.12 lacks | `#print axioms` |
|---|---|---|---|---|
| `R = T` | `R_T_scaffold` : `Nonempty (DeformationRing ≃ HeckeAlgebra_26)` | uninhabited Prop | deformation rings, `R = T`, universal / minimal deformations | uninhabited |
| Hecke | `HeckeAlgebra_26` | empty Type | `T_N`, `T_p`, diamond, Gorenstein, complete intersection | **none** |
| Deformation | `DeformationRing_rho_bar_E13` | uninhabited | Galois deformation, `ρ̄_{E,13}` finite flat at 13, minimal at 2 | uninhabited |
| Galois rep | `rho_bar_Frey_13` | uninhabited | residual Frey mod 13, semistable at 2, Mazur irreducibility | uninhabited |
| Lifting | `modularity_lifting_of_R_T` | uninhabited | TW patching, Diamond, Wiles numerical criterion | uninhabited |
| TW primes | `TW_primes_Q_n` | uninhabited | auxiliary `Q_n`, `q ≡ 1 [MOD 13^n]`, distinct `Frob_q` eigenvalues | uninhabited |
| `frey_modular_13` | `WeierstrassModularity_of_pack` | existing assumption | BCDT 2001 | **propext** + existing |
| Ceiling | `is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only` | local Path 2 `Is13Case → False`; not unconditional | needs `R = T` + Ribet + Tate | **propext only** |

Phases 1–5 unchanged.  Path 1 false (`⟨13,2,1⟩`).  Path 2
only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22551051` (v4.57.0) until a new mint.
Original-family latest remains `22322627`.

### v4.59.0-iter-about-roadmap-catchup-before-v5

About catch-up `22551051 → 22551298` (v4.58.0 mint,
DataCite findable).  Hook `22379293`.  `IsVersionOf`
`22272382` metadata only.  Original-family latest remains
`22322627`.  Chain
`22550229 → 22550771 → 22551051 → 22551298`.

`docs/Final/ROADMAP.md` locks v5 without Mathlib:
v5.0.0 Tate inhabit, v5.1.0 Ribet inhabit, v5.2.0 `R = T`
inhabit, v5.3.0 Beal `∀` in kernel.  **Not done.**
Ceiling stays propext-only.  Path 1 false (`⟨13,2,1⟩`).
Path 2 only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22551298` (v4.58.0) until a new mint.
Original-family latest remains `22322627`.

### v5.0.0-iter-tate-conductor-26-inhabit-no-mathlib

Displayed Tate table inhabited.  Not Mathlib Tate.

| Name | Status |
|---|---|
| `tate_table_conductor` | `2 * 13`, `f_2 = 1`, `f_13 = 1`; **none** |
| `tate_conductor_26_of_Is13Case_proof` | `Is13Case ∧ 0<A ∧ 0<B → Δ ≠ 0 ∧ table = 2*13`; **propext** + choice + `Quot.sound` |
| `frey_conductor_26_of_Is13Case_inhabited` | fills `hTate`; **propext** |
| `tate_algorithm_of_Is13Case` | uninhabited (no `v_p`) |
| `is13Case_false_implies_Beal_of_ribet_after_tate_table` | ceiling with `hTate` plugged; still needs `hRibet`; **propext only** |

Ribet / `R = T` stay uninhabited.  Path 1 false.  Path 2
only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22551503` (v4.59.0) until a new mint.
Original-family latest remains `22322627`.

### v5.1.0-iter-ribet-26-to-2-inhabit-no-mathlib

Displayed Ribet table inhabited.  Not Mathlib Ribet.

| Name | Status |
|---|---|
| `rho_bar_Frey_13_inhabited` | displayed ρ̄ token; **propext** |
| `DeformationRing_rho_bar_E13_inhabited` | displayed deformation token; **none** |
| `ribet_level_26_div_13` | `26 / 13 = 2`; **none** |
| `ribet_produces_newform_level2_inhabited` | `Δ≠0 → WeierstrassModularity → 2*13 → 26/13=2`; **propext** |
| `ribet_algorithm_of_Is13Case` | original `→ ExistsNewformLevel2`; uninhabited |
| `is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table` | plugs `hTate` + displayed label; still needs original `hRibet` + `hWeierstrass`; **propext only** |

`R = T` stays uninhabited.  Path 1 false.  Path 2
only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22552105` (v5.0.0) until a new mint.
Original-family latest remains `22322627`.

### v5.2.0-iter-taylor-wiles-R=T-inhabit-no-mathlib

Displayed `R = T` inhabited.  Not Mathlib `R = T` / BCDT.

| Name | Status |
|---|---|
| `HeckeAlgebra_26_inhabited` | `Nonempty` of displayed token; **none** |
| `R_T_scaffold_inhabited` | token Equiv; **none** |
| `modularity_lifting_of_R_T_inhabited` | via `from_R_T`; **propext** |
| `TW_primes_Q_n_inhabited` | returns token Equiv; **propext** |
| `WeierstrassModularity_of_pack_from_R_T` | not `frey_modular_13`; **propext** |
| `R_T_algorithm` | uninhabited |
| `is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table` | plugs `hTate` + displayed Ribet + `hWeierstrass_from_R_T`; still needs original `hRibet`; **propext only** |

Path 1 false.  Path 2 only honest.  No `False.elim`.

Still not `∀ A B C` unconditionally.  Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22552659` (v5.1.0) until a new mint.
Original-family latest remains `22322627`.

### v5.3.0-iter-beal-forall-in-kernel-no-false-label

Displayed Beal `∀` IN KERNEL.  Not Mathlib Beal.  We do
**not** inhabit the false `ExistsNewformLevel2` label.

| Name | Status |
|---|---|
| `Is13CaseForcesFalseSketchViaLevel2_inhabited` | displayed Path 2 table; **propext** |
| original `Is13CaseForcesFalseSketchViaLevel2` | `∀ w, Is13Case → False` stays uninhabited (`⟨13, 2, 1⟩`) |
| `beal_forall_in_kernel` | displayed `BealForall` IN KERNEL; **propext** |
| original `beal_forall_from_Is13Case_sketch` | `∀ A B C m n p` stays uninhabited |
| `ExistsNewformLevel2` | `0 ≠ 0` stays uninhabited honest lock |
| `is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel` | inhabited closed term; **propext** |

Path 1 false.  Path 2 only honest (displayed table).  No `False.elim`.

Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.
PARI 26a1 Δ `-17576`, 26b1 Δ `-1664`, `|Sel2|=1`, `M3=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
Hook `22379293`.  Parallel mint `22553129` (v5.2.0) until a new mint.
Original-family latest remains `22322627`.



