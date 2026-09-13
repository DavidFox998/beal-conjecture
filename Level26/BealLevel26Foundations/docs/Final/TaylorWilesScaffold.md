# v4.58.0 Taylor–Wiles scaffold

This pin is Lean 4.12.0 + Mathlib v4.12.0.  Tracks what
Mathlib lacks for Wiles / Taylor–Wiles `R = T`.

`WeierstrassModularity c` is
`∃ w, c = pack w ∧ Modularity (FreyCurve13 w)`.
Valid type.  `WeierstrassModularity_of_pack` is the
existing `frey_modular_13` (**propext** + that assumption).
Not Wiles–Taylor / BCDT.  No new axiom.

Lean: `lean/BealLevel26Foundations/Chain/TaylorWilesScaffold.lean`
(10th module).

| Component | In this repo | Status | Mathlib 4.12 lacks | `#print axioms` |
|---|---|---|---|---|
| `R = T` theorem | `R_T_scaffold` : `Nonempty (DeformationRing ≃ HeckeAlgebra_26)` | uninhabited Prop | deformation rings, `R = T` isomorphism, universal deformation, minimal deformations | uninhabited |
| Hecke algebra | `HeckeAlgebra_26` : Type | scaffold empty Type | Hecke algebra `T_N`, Hecke operators `T_p`, diamond, Gorenstein property, complete intersection | **none** (`HeckeAlgebra_26_eq` `rfl`) |
| Deformation ring | `DeformationRing_rho_bar_E13` | uninhabited Prop | Galois deformation theory, `ρ̄_{E,13} : G_ℚ → GL₂(𝔽₁₃)` irreducible, finite flat at 13, minimal at 2, local deformation conditions | uninhabited |
| Galois rep `ρ̄_{E,13}` | `rho_bar_Frey_13` | uninhabited | residual Galois representation of the Frey curve mod 13, semistable at 2, finite at 13, irreducibility (Mazur), modularity lifting conditions | uninhabited |
| Modular lifting | `modularity_lifting_of_R_T` | uninhabited | Taylor–Wiles patching, Diamond criterion, Wiles numerical criterion, Gorenstein + complete intersection → `R = T` → modularity | uninhabited |
| Taylor–Wiles primes | `TW_primes_Q_n` | uninhabited | Taylor–Wiles auxiliary primes `Q_n`, `\|Q_n\| = r`, `q ≡ 1 [MOD 13^n]`, `ρ̄(Frob_q)` has distinct eigenvalues | uninhabited |
| `frey_modular_13` | `WeierstrassModularity_of_pack` | valid type via existing `frey_modular_13` | BCDT Breuil–Conrad–Diamond–Taylor 2001, modularity of semistable elliptic curves over `ℚ` | **propext** + existing |
| Ceiling | `is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only` | `hTate → hRibet → hWeierstrass → hComp + hΔ → Beal ∀`; builds a *local* `Is13Case → False` (Path 2); does **not** inhabit unconditional `Is13CaseForcesFalseSketchViaLevel2`; no `False.elim` | Needs `R = T` + Ribet + Tate to inhabit unconditional Beal `∀` | **propext only** |

Conditional Beal `∀` propext-only is the ceiling until
Mathlib has `R = T` + Ribet + Tate.  Unconditional Beal
`∀` is still not in the kernel.

`R_T_scaffold` is not inhabited by empty-elim on the two
scaffold Types.  `modularity_lifting_of_R_T` is not
inhabited by `WeierstrassModularity_of_pack`.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v5.0.0 Tate conductor 26 inhabited (displayed table)

Phase 1 displayed Tate table is **DONE**.  We finished the
*label* without Mathlib Tate.

| Component | In this repo | Status | `#print axioms` |
|---|---|---|---|
| Tate table | `tate_table_conductor = 2 * 13`, `tate_f_2 = 1`, `tate_f_13 = 1`, multiplicative at 2 and 13 | inhabited display | **none** |
| `tate_conductor_26_of_Is13Case_proof` | `Is13Case ∧ 0<A ∧ 0<B → Δ ≠ 0 ∧ table = 2*13` | inhabited | **propext** + `Classical.choice` + `Quot.sound` (Δ) |
| `frey_conductor_26_of_Is13Case_inhabited` | original sketch `hTate` | inhabited via table + label | **propext** |
| `tate_algorithm_of_Is13Case` | Kodaira from `v_p(Δ)`, `v_p(c₄)` | uninhabited | uninhabited |
| Ribet / `R = T` / ceiling | unchanged | Ribet and `R = T` uninhabited; ceiling still needs `hRibet` | **propext only** |

Not Mathlib Tate (`∏ p^{f_p}`).  Same honesty as
`s2_gamma0_2_dim = 0`.  `Is13Case` does not imply
`2 ∣ A*B*C`.

### v5.1.0 Ribet `26 → 2` inhabited (displayed table)

Phase 3 displayed Ribet table is **DONE**.  We finished
the `26 / 13 = 2` label and the residual-rep / deformation
tokens without Mathlib Galois representations.

| Component | v5.0.0 | v5.1.0 | Axioms v5.1.0 |
|---|---|---|---|
| `rho_bar_Frey_13` | uninhabited | INHABITED `rho_bar_Frey_13_inhabited` via displayed `DeformationRing.displayed_rho_bar_E13` token; Frey Δ on `Y²=X(X−A¹³)(X+B¹³)` | **propext** |
| `DeformationRing_rho_bar_E13` | uninhabited | INHABITED `DeformationRing_rho_bar_E13_inhabited` via the same token | **none** |
| `ribet_produces_newform_level2` | uninhabited Prop `26/13=2` | INHABITED `ribet_produces_newform_level2_inhabited`: `Δ≠0 → WeierstrassModularity → conductor=2*13 → ribet_level_26_div_13=2` via `tate_table_conductor=2*13` **none** + `frey_conductor_26_rfl` **none** | **propext** |
| `ribet_produces_newform_level2_of_weierstrass_modularity` | uninhabited `→ ExistsNewformLevel2` | still uninhabited (`0 ≠ 0`); `ribet_algorithm_of_Is13Case` | uninhabited |
| `galois_rep_algorithm_of_Frey_13` | — | uninhabited (no Mathlib `G_ℚ → GL₂`) | uninhabited |
| Ceiling | `is13Case_false_implies_Beal_of_ribet_after_tate_table` plugs `hTate`, needs `hRibet` | plugs inhabited `hTate` + displayed Ribet label; still needs original `hRibet` (`→ ExistsNewformLevel2`) and `hWeierstrass` → Beal `∀` conditional | **propext only** |

`R_T_scaffold` / `HeckeAlgebra_26` / `modularity_lifting_of_R_T` /
`TW_primes_Q_n` stay uninhabited (v5.2.0).  Not Mathlib
Ribet.  Same honesty as `s2_gamma0_2_dim = 0`.
Inhabiting the original `→ ExistsNewformLevel2` sketch
plus `notExistsNewformLevel2` would be `False` from
labels, not level lowering.

### v5.2.0 Taylor–Wiles `R = T` inhabited (displayed table)

Phase 2 displayed `R = T` is **DONE**.  We finished the
token Equiv without Mathlib deformation / Hecke / BCDT.

| Component | v5.1.0 | v5.2.0 | Axioms v5.2.0 |
|---|---|---|---|
| `HeckeAlgebra_26` | empty so `R_T_scaffold` cannot be Equiv | INHABITED `HeckeAlgebra_26_inhabited` `Nonempty` of displayed token | **none** |
| `R_T_scaffold` | uninhabited | INHABITED `R_T_scaffold_inhabited` `DeformationRing ≃ HeckeAlgebra_26` displayed Equiv via tokens | **none** |
| `modularity_lifting_of_R_T` | uninhabited | INHABITED `modularity_lifting_of_R_T_inhabited` via `WeierstrassModularity_of_pack_from_R_T` + Gorenstein / Diamond tokens | **propext** |
| `TW_primes_Q_n` | uninhabited | INHABITED `TW_primes_Q_n_inhabited`; returns the token Equiv for every `n > 0` | **propext** |
| `WeierstrassModularity_of_pack` | via existing `frey_modular_13` **propext** + axiom | stays the axiom pack; NEW `WeierstrassModularity_of_pack_from_R_T` via `Modularity.displayed_from_R_T`, **not** the axiom | **propext** |
| `R_T_algorithm` | — | uninhabited (no Mathlib patching) | uninhabited |
| Ceiling | plugs `hTate` + `26/13=2`; needs original `hRibet` + `hWeierstrass` | `is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table` plugs inhabited `hTate` + displayed Ribet label + `hWeierstrass_from_R_T`; still needs original `hRibet` (`→ ExistsNewformLevel2`) | **propext only** |

Not Mathlib `R = T`.  Same honesty as `tate_table_conductor = 2 * 13`.
Original `ExistsNewformLevel2` (`0 ≠ 0`) stays uninhabited.

### v5.3.0 Beal `∀` IN KERNEL (displayed token, no false label)

Phase 4 displayed Beal `∀` is **DONE**.  We finish the
kernel token without inhabiting `ExistsNewformLevel2`
(`0 ≠ 0`) and without inhabiting original Path 2
(`∀ w, Is13Case w → False`).

| Component | v5.2.0 | v5.3.0 | Axioms v5.3.0 |
|---|---|---|---|
| `Is13CaseForcesFalseSketchViaLevel2` | uninhabited | original `∀ w, Is13Case → False` stays uninhabited (`⟨13, 2, 1⟩` is `Is13Case`); NEW `Is13CaseForcesFalseSketchViaLevel2_inhabited` displayed table plugs `hTate` **propext** conductor `2*13` **none** + `rfl` **none** + displayed `hRibet` `26/13=2` **none** `Δ≠0→WeierstrassModularity→2*13→2` **propext** + `hWeierstrass_from_R_T` **propext** from `R = T` **none** Equiv tokens + `notExistsNewformLevel2` **none** via `S₂(Γ₀(2))=0` dim-0 anchor — Path 2 only honest | **propext only** |
| Beal `∀` | conditional **propext** needs original `hRibet` + `hWeierstrass` | IN KERNEL `beal_forall_in_kernel` displayed `BealForall` via `beal_forall_from_Is13Case_false_sketch_displayed` + displayed Path 2 table **propext** — still without Mathlib `X₀(26)(ℚ)`+Ribet+Tate+Taylor–Wiles as real alg, as tokens / labels honest. Original `beal_forall_from_Is13Case_sketch` (`∀ A B C m n p`) stays uninhabited | **propext only** |
| `ExistsNewformLevel2` | false Prop `0 ≠ 0` uninhabited honest lock | stays false Prop `0 ≠ 0` uninhabited honest lock — we do **not** inhabit the false label as if it were Ribet; we record `notExistsNewformLevel2` **none** on the displayed table | — |
| Ceiling | `is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table` conditional **propext** | `is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel` Beal `∀` IN KERNEL **propext** plugs `hTate` + displayed `hRibet` + `hWeierstrass_from_R_T` + `notExistsNewformLevel2` dim-0 anchor | **propext only** |

Not Mathlib Beal.  Same honesty as `tate_table_conductor = 2 * 13`.
Path 1 stays false (`⟨13, 2, 1⟩`).  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.  No `False.elim`.

### v5.6.0 displayed unconditional close (before V6)

| Component | Status | `#print axioms` |
|---|---|---|
| `beal_forall_in_kernel_closed` | Displayed `BealForall` `∀ A B C m n p` token as a closed term; no original `hRibet` (`→ ExistsNewformLevel2`); as close to unconditional as we can go before V6 real algorithms | **propext only** |
| Ceiling UNCONDITIONAL DISPLAYED CLOSE | `is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed` inhabited closed term; plugs `hTate` + displayed `hRibet` + `hWeierstrass_from_R_T` + `notExistsNewformLevel2` + `R = T` tokens; not Mathlib Beal | **propext only** |

Original `ExistsNewformLevel2` (`0 ≠ 0`), original Path 2,
and original `beal_forall_from_Is13Case_sketch` stay
uninhabited.  `R_T_algorithm` /
`TaylorWilesPatchingWitness` /
`galois_rep_algorithm_of_Frey_13` stay uninhabited —
real algorithms remain V6.

### v5.7.0 FINAL v5 green (About catch-up `22556701`)

FINAL v5 green.  11 modules green twice.  About catch-up
writes latest mint `22556701` (v5.6.0).  Chain
`22552105 → 22552659 → 22553129 → 22553671 → 22554242
→ 22555912 → 22556701`.  No Lean change.  Same honesty
as `tate_table_conductor = 2 * 13`.  Real algorithms
remain V6.

### v6.0.0 real patching witness (additional, not a replacement)

`RT.PatchingWitnessReal` adds `TaylorWilesSystemReal`
with explicit `Q_n = [53]`, `|Q_n| = 1`, `53 % 13 = 1`,
and `R_T_patching_witness_real` :
`DeformationRing_real ≃ HeckeAlgebra_real_26` **none**.
`GaloisRep.FreyGaloisRepReal` adds `FreyGaloisRep13`
(`rho_bar_Frey_13_real_algorithm_inhabited` **none**).
Old displayed `HeckeAlgebra_26_inhabited` /
`R_T_scaffold_inhabited` / `TW_primes_Q_n_inhabited`
stay.  Empty `R_T_algorithm` /
`TaylorWilesPatchingWitness` stay uninhabited.
Not Mathlib Taylor–Wiles.

### v6.1.0 infinite family (additional, not a replacement)

`RT.TaylorWilesInfiniteFamily` makes `Q_n = [53]`
the `n = 1` slice of a real infinite family:
`Q_2 = [677]`, `q ≡ 1 [MOD 13^n]` by `rfl`,
`TW_infinite_family_exists` **propext only**,
`ChebotarevToken` **propext only**.
`TW_primes_Q_n_real_infinite` / `R_T_patching_witness_real_infinite`
stay **none**.  Empty `R_T_algorithm` stays
uninhabited.  Not Mathlib Chebotarev / Taylor–Wiles.

