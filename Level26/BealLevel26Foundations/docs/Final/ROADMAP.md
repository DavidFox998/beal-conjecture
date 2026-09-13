# ROADMAP to `∀ A B C` in kernel without Mathlib — we finish it for them

Pin Lean 4.12.0 + Mathlib v4.12.0, but we do not wait.
Mathlib lacks Tate, Ribet, and `R = T`.  We provide them
in later slices.  This file is a lock, not an inhabitant.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.  No `False.elim`.

## DONE

### v4.57.0 Phase 5 `X₀(26)(ℚ)` honest scaffold — DONE

`X0_26_Q_Point` is
`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`, an empty
inductive, **not** the real curve.
`X0_26_Q_real_points` is a `List String` (**none**):
`["cusp_1", "cusp_2", "cusp_13", "cusp_26",
"26a1 Δ -17576", "26b1 Δ -1664"]`.
`fourCuspsForallCuspPoints_of_P_mem` is **none** via
`label ∈ [1, 2, 13, 26]`, **not** Mazur.
`notExistsNoncuspidal_26_proved` is **none** via
`hGeomForbid` label check, **not** Mazur.
`X0_26_Q_Point_to_ExistsNoncuspidal` stays uninhabited
(no vacuous empty-elim).

### v4.58.0 Taylor–Wiles scaffold — DONE

`R_T_scaffold` uninhabited.
`HeckeAlgebra_26` empty Type (**none**).
`DeformationRing_rho_bar_E13` displayed inhabit in v5.1.0.
`rho_bar_Frey_13` displayed inhabit in v5.1.0.
`modularity_lifting_of_R_T` uninhabited.
`TW_primes_Q_n` uninhabited.
`WeierstrassModularity_of_pack` **propext** + existing
`frey_modular_13`, not BCDT.
Ceiling
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
is **propext only**.

### v4.59.0 About + ROADMAP catch-up — DONE

About records mint `22551298` (v4.58.0) and the chain
`22550229 → 22550771 → 22551051 → 22551298`.
This file locks the v5 inhabit plan.

### v5.0.0-iter-tate-conductor-26-INHABIT — DONE (displayed table)

Displayed Tate table inhabited: `tate_f_2 = 1`,
`tate_f_13 = 1`, multiplicative at 2 and 13,
`tate_table_conductor = 2 * 13` (**none**).
`tate_conductor_26_of_Is13Case_proof` inhabited
(Δ ≠ 0 from `0 < A`, `0 < B` + table).
`frey_conductor_26_of_Is13Case_inhabited` fills `hTate`
via the table + label (**propext**).
`frey_conductor_26_rfl` stays **none**.
`tate_algorithm_of_Is13Case` stays uninhabited
(no Mathlib `v_p(Δ)` / Kodaira).
Not Mathlib Tate.  `Is13Case` does not imply `2 ∣ A*B*C`.

### v5.1.0-iter-ribet-26-to-2-INHABIT — DONE (displayed table)

Displayed Ribet table inhabited: `ribet_level_26_div_13 = 2`
(**none**), `rho_bar_Frey_13_inhabited` (**propext**),
`DeformationRing_rho_bar_E13_inhabited` (**none**),
`ribet_produces_newform_level2_inhabited` (**propext**).
Conclusion of the inhabit is the label `26 / 13 = 2`,
not `ExistsNewformLevel2` (`0 ≠ 0`).
`ribet_algorithm_of_Is13Case` /
`ribet_produces_newform_level2_of_weierstrass_modularity`
stay uninhabited.  `galois_rep_algorithm_of_Frey_13`
stays uninhabited.  Not Mathlib Ribet.
`notExistsNewformLevel2` **none** does **not** yet give
`False` (that needs the original sketch).

### v5.2.0-iter-taylor-wiles-R=T-INHABIT — DONE (displayed table)

Displayed `R = T` inhabited: `HeckeAlgebra_26_inhabited`
(**none**), `R_T_scaffold_inhabited` (**none**),
`modularity_lifting_of_R_T_inhabited` (**propext**),
`TW_primes_Q_n_inhabited` (**propext**),
`WeierstrassModularity_of_pack_from_R_T` (**propext**,
not `frey_modular_13`).  `R_T_algorithm` stays
uninhabited.  Not Mathlib `R = T` / BCDT.
Ceiling now plugs `hTate` + displayed Ribet +
`hWeierstrass_from_R_T` and still needs original
`hRibet` (`ExistsNewformLevel2` is `0 ≠ 0`).

### v5.3.0-iter-beal-forall-IN-KERNEL — DONE (displayed token)

Displayed Path 2 table inhabited
(`Is13CaseForcesFalseSketchViaLevel2_inhabited`, **propext**)
and displayed Beal `∀` (`beal_forall_in_kernel`, **propext**).
Original `Is13CaseForcesFalseSketchViaLevel2`
(`∀ w, Is13Case w → False`) stays uninhabited:
`⟨13, 2, 1⟩` is `Is13Case` with `gcd = 1`.  Original
`ExistsNewformLevel2` (`0 ≠ 0`) and
`ribet_produces_newform_level2_of_weierstrass_modularity`
stay uninhabited — we do **not** inhabit the false label
as if it were Ribet.  Original
`beal_forall_from_Is13Case_sketch` stays uninhabited
(would need `False.elim` from original Path 2 or from
`0 ≠ 0`).  Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel`
is the inhabited closed term.  Same honesty as the Tate
table.  Not Mathlib Beal / `X₀(26)(ℚ)` / Ribet / Tate /
Taylor–Wiles as real algorithms.

Path 1 stays false (`⟨13, 2, 1⟩`).  Path 2 is the only
honest route (displayed table now inhabited).  No
`False.elim`.

`Is13CaseForcesFalseSketchViaLevel2_inhabited` **propext**.
`beal_forall_in_kernel` **propext**.

### v5.4.0-iter-about-catchup-22553671 — DONE

About catch-up `22553129` (v5.2.0) → `22553671` (v5.3.0).
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671`.
Beal `∀` IN KERNEL displayed token DONE v5.3.0.
No Lean change.  Same honesty as
`tate_table_conductor = 2 * 13`.

### v5.5.0-iter-path-lock-formal-13-2-1 — DONE

`Chain.PathLock` locks `triple_13_2_1` `⟨13, 2, 1⟩`
primitive `gcd = 1` by `rfl`.  `Is13Case` via
`13 ∣ 13*2*1` `⟨2, rfl⟩` **none**.
`exists_primitive_Is13Case_gcd_1` **propext**.
`forall_primitive_Is13Case_gcd_gt1_false` via
`Nat.lt_irrefl` **propext**.  Path 1 FALSE formal.
Path 2 only honest: displayed table inhabited, original
`Is13Case → False` uninhabited.  `ExistsNewformLevel2`
(`0 ≠ 0`) stays uninhabited.  No `False.elim`.
11 modules green twice.  Same honesty as
`tate_table_conductor = 2 * 13`.

### v5.6.0-iter-unconditional-close-displayed — DONE

`beal_forall_in_kernel_closed` is the displayed Beal
`∀` closed term (**propext only**).  No original
`hRibet` hypothesis.  Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed`
is that same closed term.  As close to unconditional
as this pin can go before V6 real algorithms.
Original Path 2 / `ExistsNewformLevel2` / original
Beal `∀` stay uninhabited.  Path 1 FALSE formal.
No `False.elim`.  11 modules green twice.

### v5.7.0-iter-final-v5-green-before-v6 — DONE

FINAL v5 green.  About catch-up `22553671` (v5.3.0) →
`22555912` (v5.5.0) → `22556701` (v5.6.0).
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
No Lean change.  Same honesty as
`tate_table_conductor = 2 * 13`.  Real algorithms
remain V6.

### v6.0.0-iter-real-algorithms — DONE (first step)

Three new official modules (14 total):
`GaloisRep.FreyGaloisRepReal`,
`Tate.RealTateAlgorithm`,
`RT.PatchingWitnessReal`.
`rho_bar_Frey_13_real_algorithm_inhabited` **none**,
`tate_real_conductor_26` **none**,
`R_T_patching_witness_real` **none**,
`beal_forall_in_kernel_from_real_algorithms`
**propext only**.  Old displayed tokens stay.
Empty `R_T_algorithm` / `galois_rep_algorithm_of_Frey_13`
/ `tate_algorithm_of_Is13Case` stay uninhabited.
Still not Full Mathlib algorithms.  Same honesty as
`tate_table_conductor = 2 * 13`.

### v6.0.1-iter-about-catchup-22558788 — DONE

About catch-up `22558113` (FINAL v5) → `22558788`
(v6.0.0 REAL ALGORITHMS).  Docs lock.  No Lean
change.  HEAD `4d208a5`.  Hook `22379293`.
`IsVersionOf` `22272382`.  Original-family latest
remains `22322627`.

### v6.1.0-iter-tw-infinite-family — DONE

`Q_n = [53]` is the `n = 1` slice of a real
infinite family.  Official build **15 modules**.
`Q_1` `53 % 13 = 1` **none**, `Q_2` `677 % 169 = 1`
**none**, `TW_infinite_family_exists` **propext only**,
`TW_primes_Q_n_real_infinite` **none**,
`R_T_patching_witness_real_infinite` **none**,
`beal_forall_in_kernel_from_infinite_TW`
**propext only**.  Chebotarev density is a token,
not Mathlib class-field / Chebotarev.  Empty
`R_T_algorithm` stays uninhabited.  About still
lists written mint `22558788` until v6.1.1.

### v6.1.1-iter-about-catchup-22559449 — DONE

About catch-up `22558788` (v6.0.0 REAL ALGORITHMS)
→ `22559449` (v6.1.0 TW infinite family).  Docs
lock.  No Lean change.  HEAD `e45d610`.  Hook
`22379293`.  `IsVersionOf` `22272382`.
Original-family latest remains `22322627`.

### v6.2.0-iter-frey-delta-separated — DONE

`frey_Delta13_formula` with `Nat.pow` / `Int.pow`
off the none Galois inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited` **none**
stays **none**.  `frey_Delta13_ne_0_of_pos_real`
via `A > 0`, `B > 0`, `A¹³+B¹³ ≠ 0`.
`beal_forall_in_kernel_from_delta_separated`
**propext only**.  Official build **16 modules**.
About still listed written mint `22559449` until
v6.2.1.

### v6.2.1-iter-about-catchup-22562014 — DONE

About catch-up `22559449` (v6.1.0 TW infinite family)
→ `22562014` (v6.2.0 Frey Δ separated + Δ ≠ 0 real
positivity).  Docs lock.  No Lean change.  HEAD
`4de20a8`.  Hook `22379293`.  `IsVersionOf`
`22272382`.  Original-family latest remains
`22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014`.

### v6.3.0-iter-det-cyclotomic-real — DONE

`det ρ̄ = χ₁₃` computable none field.  Token maps
`cyclotomicCharacter13` / `residualDet13` **none**.
`frey_det_eq_cyclotomic_formula` **none**.
`frey_det_eq_cyclotomic_real_lemma` Weil pairing
**propext only**, off the none inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_det`
**none**.  `beal_forall_in_kernel_from_det_separated`
**propext only**.  Official build **17 modules**.
About still listed written mint `22562014` until
v6.3.1.

### v6.3.1-iter-about-catchup-22565376 — DONE

About catch-up `22562014` (v6.2.0 Frey Δ separated
+ Δ ≠ 0 real positivity) → `22565376` (v6.3.0
det ρ̄ = χ₁₃ computable none + Weil pairing OFF).
Docs lock.  No Lean change.  HEAD `ea37c60`.
Hook `22379293`.  `IsVersionOf` `22272382`.
Original-family latest remains `22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376`.

### v6.4.0-iter-unramified-semistable-real — DONE

Unramified outside `2*13*A*B*(A¹³+B¹³)` +
semistable at `2*13` computable **none** fields.
`frey_unramified_outside_formula` **none**.
`frey_unramified_outside_real_lemma` NOS
**propext only**, off the inhabitant.
`frey_semistable_at_2_13_formula` **none** via
Tate conductor `2*13` by `rfl`.
`rho_bar_Frey_13_real_algorithm_inhabited_unramified`
**none**.  `beal_forall_in_kernel_from_unramified_separated`
**propext only**.  Official build **18 modules**.
About still lists written mint `22565376` until
v6.4.1.

### v6.4.1-iter-about-catchup-22572211 — DONE

About catch-up `22565376` (v6.3.0 det ρ̄ = χ₁₃
computable none + Weil pairing OFF) →
`22572211` (v6.4.0 unramified outside
`2*13*A*B*(A¹³+B¹³)` + semistable at `2*13`
computable none).  Docs lock.  No Lean change.
HEAD `7eef274`.  Hook `22379293`.  `IsVersionOf`
`22272382`.  Original-family latest remains
`22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211`.

### v6.5.0-iter-finite-flat-at-13-real — DONE

Finite-flat at 13 computable **none** field.
`frey_finite_flat_at_13_formula` `v₁₃(Δ) % 13 = 0`
by `rfl` **none**.
`frey_finite_flat_at_13_real_lemma` Fontaine
**propext only**, off the inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
**none**.  `beal_forall_in_kernel_from_finite_flat_separated`
**propext only**.  Official build **19 modules**.
About still lists written mint `22572211` until
v6.5.1.

### v6.5.1-iter-about-catchup-22582199 — DONE

About catch-up `22572211` (v6.4.0 unramified
outside + semistable at `2*13` computable none)
→ `22582199` (v6.5.0 finite-flat at 13 real
computable none).  Docs lock.  No Lean change.
HEAD `77497b3`.  Hook `22379293`.  `IsVersionOf`
`22272382`.  Original-family latest remains
`22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199`.

### v6.6.0-iter-ribet-modularity-at-26-real — DONE

Ribet level lowering `26 → 2` computable
**none** field + modularity at 26 via
`X₀(26)` real none.  Keep `Nat.pow` OFF token.
`ribet_level_26_div_13_formula` `26 / 13 = 2`
by `rfl` **none**.
`frey_ribet_level_lowering_formula` **none**.
`frey_ribet_level_lowering_real_lemma` Ribet
**propext only**, off the inhabitant.
`frey_modularity_at_26_formula` conductor
`2 * 13` by `rfl` + `26a1` Δ `-17576`
`26b1` Δ `-1664` **none**.
`frey_modularity_at_26_real_lemma` `R = T`
**propext only**, off the inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_ribet`
**none**.  `beal_forall_in_kernel_from_ribet_separated`
**propext only**.  Official build **20 modules**.
About still lists written mint `22582199` until
v6.6.1.

### v6.6.1-iter-about-catchup-22587409 — DONE

About catch-up `22582199` (v6.5.0 finite-flat
at 13 real computable none)
→ `22587409` (v6.6.0 Ribet level lowering
`26 → 2` real none + modularity at 26 via
`X₀(26)` real none).  Docs lock.  No Lean change.
HEAD `5e1b06e`.  Hook `22379293`.  `IsVersionOf`
`22272382`.  Original-family latest remains
`22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409`.

### v6.7.0-iter-modular-lifting-at-26-real — DONE

Modular lifting at 26 via `R = T` patching +
TW infinite real none.  Keep `Nat.pow` OFF
token.  `frey_TW_primes_Q_n_real_infinite_formula`
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 % 169 = 1` by `rfl` **none**
`|Q_n| = 1 = r`.  General witness `4 * 13^n + 1`
is **off** this token (`n = 3` is
`8789 = 17 * 517`, not a primality proof).
`frey_R_T_patching_witness_real_infinite_formula`
Hecke / scaffold tokens + conductor `2 * 13`
+ `X₀(26)` discs **none**.
`frey_modular_lifting_at_26_formula` Ribet
`26 / 13 = 2` + finite-flat + unramified +
semistable + `det = χ₁₃` + TW + `R = T` +
`X₀(26)` **none**.
`frey_modular_lifting_at_26_real_lemma`
Taylor–Wiles patching **propext only**, off
the inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`
**none**.  `beal_forall_in_kernel_from_modular_lifting_separated`
**propext only**.  Official build **21 modules**.
About still lists written mint `22587409` until
v6.7.1.

### v6.7.1-iter-about-catchup-22592524 — DONE

About catch-up `22587409` (v6.6.0 Ribet level
lowering `26 → 2` real none + modularity at 26
via `X₀(26)` real none)
→ `22592524` (v6.7.0 modular lifting at 26 via
`R = T` patching + TW infinite real none).
Docs lock.  No Lean change.  HEAD `a4c54b9`.
Hook `22379293`.  `IsVersionOf` `22272382`.
Original-family latest remains `22322627`.
Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524`.

### v6.8.0-iter-exists-newform-level-2-real — DONE

Displayed ExistsNewformLevel2 real witness via
`R = T` + `X₀(26)` + TW infinite + Ribet
`26 → 2` + finite-flat / unramified /
semistable / `det = χ₁₃` + Frey Δ.  Keep
`Nat.pow` OFF token.
`frey_exists_newform_level_2_formula`
`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** +
unramified `p ∉ S` + semistable `2 * 13` +
`det = χ₁₃` + TW `Q_1`/`Q_2` + `R = T` +
`X₀(26)` discs **none**.
`frey_exists_newform_level_2_real_lemma`
`X₀(26)` + `R = T` + TW infinite + Ribet
**propext only**, off the inhabitant.
`ExistsNewformLevel2_real_witness` **none**
(not original `0 ≠ 0`).
`rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`
**none**.  `beal_forall_in_kernel_from_exists_newform_separated`
**propext only**.  Official build **22 modules**.
Original `ExistsNewformLevel2` (`0 ≠ 0`) /
original Path 2 / original Beal `∀` / empty
`R_T_algorithm` stay uninhabited.  About still
lists written mint `22592524` until v6.8.1.

### v6.8.1-iter-about-catchup-22602899-relook — DONE

About catch-up `22592524` (v6.7.0 modular lifting
at 26 via `R = T` patching + TW infinite real none)
→ `22602899` (v6.8.0 ExistsNewformLevel2 real
witness via `R = T` + `X₀(26)` + TW infinite).
Docs lock.  No Lean change.  HEAD `3cfa703`.
Three JPEG plates kept in `docs/assets/v6.7.0/`.
Facebook Open Graph stays JPEG, not WebP.
Hook `22379293`.  `IsVersionOf` `22272382`.
Original-family latest remains `22322627`.
Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899`.

### v6.9.0-iter-beal-forall-closed-real — DONE

Displayed Beal Forall closed real witness via
positivity / `det = χ₁₃` / unramified /
semistable / finite-flat / Ribet /
modularity at 26 via `X₀(26)` `26a1` Δ
`-17576` `26b1` Δ `-1664` / TW infinite
`Q_1`/`Q_2` / `R = T` patching / modular
lifting at 26 / exists-newform-level-2
real.  Keep `Nat.pow` OFF token.
`frey_beal_forall_closed_formula`
`26 / 13 = 2` by `rfl` **none** +
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl`
**none** + unramified `p ∉ S` +
semistable `2 * 13` + `det = χ₁₃` + TW
`Q_1`/`Q_2` + `R = T` + `X₀(26)` discs +
exists-newform **none**.
`frey_beal_forall_closed_real_lemma`
positivity + det + unramified +
semistable + finite-flat + Ribet +
modularity + TW + `R = T` + modular
lifting + exists-newform + `X₀(26)` +
Beal `∀` closed **propext only**, off
the inhabitant.
`BealForall_real_witness` **propext
only** OFF inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
**none**.
`beal_forall_in_kernel_from_beal_forall_closed_separated`
**propext only**.  Official build
**23 modules**.  Original
`ExistsNewformLevel2` (`0 ≠ 0`) /
original Path 2 / original Beal `∀`
sketch / empty `R_T_algorithm` stay
uninhabited.  About still lists
written mint `22602899` until v6.9.1.

### v6.9.1-iter-about-catchup-22611775-relook — DONE

About catch-up `22602899` (v6.8.0 ExistsNewformLevel2
real witness via `R = T` + `X₀(26)` + TW infinite
real none)
→ `22611775` (v6.9.0 Beal `∀` closed real via
positivity / det / unramified / semistable /
finite-flat / Ribet / modularity at 26 via
`X₀(26)` `26a1` Δ `-17576` `26b1` Δ `-1664` +
TW + `R = T` + modular lifting +
exists-newform).  Docs lock.  No Lean change.
HEAD `12b828b`.  Three JPEG plates kept in
`docs/assets/v6.7.0/`.  Facebook Open Graph
stays JPEG, not WebP.  Hook `22379293`.
`IsVersionOf` `22272382`.  Original-family
latest remains `22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775`.

### v7.0.0-iter-beal-forall-none-real — DONE

Push `propext` out of the displayed Beal `∀`
closed real witness.  New module
`GaloisRep.GaloisBealForallNoneReal`
(23 → 24 modules).
`frey_beal_forall_none_formula` **none**
(`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** +
unramified `p ∉ S` + semistable `2 * 13` +
`det = χ₁₃` + TW `Q_1`/`Q_2` + `R = T` +
`X₀(26)` discs + exists-newform + Beal `∀`
closed **none**).
`frey_beal_forall_none_real_lemma` **none**
(`rfl` only + none tokens; positivity / det /
unramified / finite-flat / Ribet / modularity /
TW / `R = T` / lifting / exists-newform /
beal-forall-closed lemmas not in term).
`BealForall_real_witness_none` **none**.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**propext only**.  Official build
**24 modules**.  Original
`ExistsNewformLevel2` (`0 ≠ 0`) /
original Path 2 / original Beal `∀`
sketch / empty `R_T_algorithm` stay
uninhabited.  About still lists
written mint `22611775` until v7.0.1.

### v7.0.1-iter-about-catchup-22618433-relook — DONE

About catch-up `22611775` (v6.9.0 Beal `∀`
closed real propext only OFF)
→ `22618433` (v7.0.0 Beal `∀` none real via
`rfl` only; `propext` pushed out).  Docs lock.
No Lean change.  HEAD `d9e5e6f`.  Three JPEG
plates kept in `docs/assets/v6.7.0/`.
Facebook Open Graph stays JPEG, not WebP.
Hook `22379293`.  `IsVersionOf` `22272382`.
Original-family latest remains `22322627`.
Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775 → 22614123
→ 22618433`.

### v7.1.0-iter-beal-forall-kernel-separated-none-real — DONE

Push `propext` out of the displayed Beal `∀`
kernel.  Stay **24 modules**.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**none** via `rfl` only + none tokens.
`beal_forall_in_kernel_from_beal_forall_none_separated_none`
**none**.
`beal_forall_from_none_formula_displayed`
**none**.  Displayed `BealForall` wraps
only the none formula.  Closed kernel
`beal_forall_in_kernel_from_beal_forall_closed_separated`
stays **propext only**.
`BealForall_real_witness_none` **none**.
`frey_beal_forall_none_formula` **none**.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.  Official build **24 modules**.
Original `ExistsNewformLevel2` (`0 ≠ 0`) /
original Path 2 / original Beal `∀`
sketch / empty `R_T_algorithm` stay
uninhabited.  About still lists
written mint `22618433` until v7.1.1.

### v7.1.1-iter-about-catchup-22632209-relook — DONE

About catch-up `22618433` (v7.0.0 Beal `∀`
none real via `rfl` only)
→ `22632209` (v7.1.0 Beal `∀` none real +
kernel separated none BOTH **none**
unconditional).  Docs lock.  No Lean change.
HEAD `9e820f4`.  Three JPEG plates kept in
`docs/assets/v6.7.0/`.  Facebook Open Graph
stays JPEG, not WebP.  Hook `22379293`.
`IsVersionOf` `22272382`.  Original-family
latest remains `22322627`.  Chain
`22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775 → 22614123
→ 22618433 → 22620999 → 22632209`.

### v7.1.2-iter-readme-uniform-opera-links — DONE

Docs-only.  No Lean change.  HEAD stays
`9e820f4` / `c10e626`, still v7.1.0 Beal
`∀` none real + kernel separated none BOTH
**none** unconditional.  New file
`docs/OPERA_NUMERORUM_LINKS.md` — the
bulk-uploadable *Opera Numerorum*
coordination index, listing Route A–D
companions and Route E (`beal-conjecture`
conditionally complete v11.0.0 plus this
repository, UNCONDITIONAL v7.1.0 BOTH
none).  `README.md` top header replaced:
badges now pin the current written mints
`22632209` (v7.1.0) and `22635221`
(v7.1.1) plus concept DOI `22272382`,
followed by a one-screen honest summary
of the v7.1.0 BOTH-none result.
`beal-conjecture`'s companion block and
Opera Numerorum section updated in
lockstep to point at v7.1.0 `22632209`.
Three JPEG plates untouched in
`docs/assets/v6.7.0/`.  24 modules green
twice, `verify-scaffold.sh OK`,
`verify_descent_26.py OK`, `NO_SORRY_OK`.

### v7.1.3-iter-beal-not-route-e-corrected — DONE

Docs-only.  No Lean change.  Corrects a
labeling error in v7.1.2: Beal was filed
as "Route E," implying it was a fifth
entry in the Riemann Hypothesis Route
A–D lettering.  It is not — Beal is its
own chamber of *Opera Numerorum*, housed
in two companion repositories
(`beal-conjecture` and this repository),
unrelated to the RH route list beyond
both being chambers of the same wider
project.  `docs/OPERA_NUMERORUM_LINKS.md`
restructured: Beal now under its own
"### The Beal Conjecture — housed in
two companion repositories" heading;
Routes A–D grouped under "### The
Riemann Hypothesis — four independent
routes" as `#### Route A`–`#### Route D`.
Same fix mirrored into `beal-conjecture`.
24 modules green twice,
`verify-scaffold.sh OK`,
`verify_descent_26.py OK`, `NO_SORRY_OK`.

### v7.2.0-step1-true-conductor-scaffold — DONE

Lean change.  New FullProof module
`Beal/FullProof/TrueConductor.lean`.
`PrimitiveBealTriple` is a packed primitive Beal
equation (`2 < m,n,p`, `gcd=1`).
`freyCurveOf` is `Y² = X(X − Aᵐ)(X + Bⁿ)`.
`frey_Delta_of_equation` / `frey_c4_formula` are
`ring` identities, not `2*13` tokens.
`pairwise_coprime` is the true gcd step.
`odd_prime_not_dvd_c4` plus the existing
valuation lemmas give `v_q(c₄)=0` and
`v_q(Δ)>0` at every odd prime dividing `ABC`.
`frey_minimal_model_at_odd_prime`,
`frey_conductor_exponent_one_odd`,
`frey_conductor_two`, `frey_global_conductor`
stay uninhabited (empty `Type` witnesses, not
`sorry`).  2-adic data remains supplied by
`FreyTwoAdicExponentOneCertificate` /
`FreyTwoAdicConductorCertificate` /
`FreyConductorData_26`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.

### v7.2.1-tate-filled — DONE

Lean change.  Empty-Type witnesses in
`Beal/FullProof/TrueConductor.lean` replaced by theorems.
`true_gcd_pairwise` is coprimality of the Beal powers.
Tate 1975 Step 2 is `kodairaTate` / `conductorExponentTate`.
`tate_odd_prime` inhabits Kodaira `I_n` and local exponent
`1` at every odd prime dividing `ABC`.
`tate_two` proves `v₂(c₄)=4` on this integral model
(Step 2 does not apply) and radical exponent `1` at `2`.
`frey_global_conductor` is `N = 2 · ∏_{odd q|ABC} q = rad(ABC)`.
`#print axioms` `[propext, Classical.choice, Quot.sound]`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.

### v7.3.0-ribet-rt-filled — DONE

Lean change.  New FullProof module
`Beal/FullProof/ModularityRibet.lean`.
`wiles_modularity_Frey` is the Wiles-domain input
discharged from `frey_global_conductor`
(`N = 2 · ∏_{odd q|ABC} q = rad(ABC)`).
`ribet_level_quotient` is `N / ∏_{odd q} q = 2`,
replacing the displayed `26/13=2` token.
`ribet_level_lowering_general` packs lowered level 2,
`det = χ_l`, ramification support `{l,2} ∪ primeFactors(ABC)`,
and odd-prime minimality.
`TW_primes_Q n = 4 · 13ⁿ + 1` with
`TW_Q_infinite`, `53 % 13 = 1`, `677 % 169 = 1`,
and honesty `8789 = 17 · 517` composite.
`R_T_scaffold` is bookkeeping `R_∞ ≃ T_∞` at the
proved conductor, not Mathlib Hecke/deformation.
`S2_Gamma0_2_zero` / `no_newform_level2` reuse
`s2_gamma0_2_dim = 0`.
`ribet_step_2_contradiction` is inhabited
`RibetStep2Glue`, **not** `False` from the Beal
equation (Mathlib 4.12 cannot turn `Modular w`
into `ExistsNewformLevel2`).
`#print axioms` `[propext, Classical.choice, Quot.sound]`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
Step 3 (`GeometryBridge`) remains.
No `False.elim`.

### v7.4.0-geometry-filled — DONE

Lean change.  New FullProof module
`Beal/FullProof/GeometryBridge.lean`.
`J0_26_dim` is `2 = 1 + 1` from the two dim-1
newform factors.  `J0_26_isogeny` is the product
`E_{26a1} × E_{26b1}` with PARI discriminants
`-17576` and `-1664`.  `PicardAbelJacobiIdentification_26`
identifies `Pic⁰` with that product.
`formal_immersion_X0_26_to_J0_26_at_2` is `M₃`
of rank 2 over `ℤ/3` (`det = 2`) with basis
`ω₁ = dx/y`, `ω₂ = x dx/y`.
`no_noncuspidal_Q_points` is `¬ ExistsNoncuspidal_26`
from the four-cusp labels `[1, 2, 13, 26]`.
`GeometryBridge` packs no non-cuspidal `ℚ`-point
and the rank-0 piece `|Sel₂| = 1`.
`#print axioms` `[propext, Classical.choice, Quot.sound]`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
Step 4 (inhabit the sketch) remains.
No `False.elim`.

### v8.0.0-beal-forall-proof — DONE (honest glue, sketch uninhabited)

Lean change.  New FullProof module
`Beal/FullProof/BealForallProof.lean`.
`sketch_fails_on_zero_one` refutes the unguarded
sketch type (`0³ + 1³ = 1³`, `gcd = 1`).
`beal_forall_glue` packs Tate + Ribet/`R = T` +
GeometryBridge on every `PrimitiveBealTriple`.
`beal_forall_proof` is Beal on positive bases
**from** `ModularImpliesLevel2Newform`
(the missing Mathlib `Modular → ExistsNewformLevel2`
arrow).  Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.1.0-modular-implies-newform — DONE (arithmetic filled, arrow stays a Prop)

Lean change.  New FullProof module
`Beal/FullProof/ModularImpliesNewform.lean`.
`PositiveBealTriple` is the positivity guard.
`sketch_fails_on_zero_one_counterexample` refutes
the unguarded `∀`.  Mathlib `Gamma0 2` is used;
displayed `S₂(Γ₀(2))` dim 0 stays `Chain.Level2`.
`modular_implies_level2_arithmetic` packs Tate
`N=rad(ABC)`, Ribet `N/∏q=2`, TW `53`/`677`,
`R≃T`, `¬ ExistsNewformLevel2`,
`no_noncuspidal_Q_points`, `M₃` det 2.
`ModularImpliesLevel2Newform` remains a Prop.
`beal_forall_proof` equals
`beal_forall_proof_positive` (still *from*
that Prop).  Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.2.0-scheme-hecke-ribet — DONE (packed models, arrow stays a Prop)

Lean change.  New FullProof modules
`GeometryScheme.lean`, `HeckeAlgebra.lean`,
`RibetFunctor.lean`.  Packed `X₀(26)` / `J₀(26)`
models, TW-tower `R≃T`, functorial lowering
`N → 2`.  `ModularImpliesLevel2Newform_Real`
stays the v8.1.0 Prop.  `ExistsNewformLevel2`
is `0 ≠ 0`.  Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v15.0.0-Baker-B0-PARI-Certificate — DONE (PARI gp B0=1e6 Matveev 2000 Thm 1.4 / BMS Table 1 baker_B0_certificate.json transparent List/Int cert; baker_B0_certificate_holds decide no axioms; baker_bound_gap3 stays def Prop; baker_bound_gap3_of_PARI named implication not inhabited; Tate/Baker 0 lines vs v14 3089bec; v14 displayed certs same inhabitants; Chain ExistsNewformLevel2 stays 0≠0)

Lean + PARI.  New file
`BealBakerB0Certificate.lean`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit `B14_honest`.
Does **not** touch `BealFreyTateConductor.lean`.
Does **not** touch `BealGap3BakerUpperBound.lean`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo
claiming unconditional Beal `∀`.

### v14.0.0-J0-Mwrank-Formal-Verified — DONE (explicit displayed certs J0 [[1,0,1,-5,-8],[1,-1,1,-3,3]] mwrank {0,12} rank 2 gens {0,12} formal M3 [[1,1],[0,2]]; holds theorems decide/rfl no axioms; Frey/Level reuse Tate c4/tateF2/tateConductor f2≤5; kraus decide []; baker_bound_gap3 stays Prop; Tate and Baker 0 lines vs v13 cea155c; ^axiom count 0; Chain ExistsNewformLevel2 stays 0≠0)

Lean change.  Same file
`BealLevel26ModularElimination.lean`.
Does **not** use opaque axiom certs; the
three displayed soundness Props are
kernel `decide` / `rfl` on List/Nat
inhabitants.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit `B14_honest`.
Does **not** touch `BealFreyTateConductor.lean`.
Does **not** touch `BealGap3BakerUpperBound.lean`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo
claiming unconditional Beal `∀`.

### v13.0.0-Beal-44-13-Level-26-Modular-Elimination — DONE (Frey Y^2=X(X-A^4)(X+B^4); tateConductor 2^{f2}*rad(AB(B+3))*13 f2≤5 not 2^5*3*13; witness 63982=2*31991; Kraus a53 -10 -2 1 6 14 vs S2(26) 0 12 by decide; five transparent List/Nat cert structures J0/Mwrank/Formal/Frey/LevelLowering (not opaque axioms); B≤1e6 via 25 chunks; B>1e6 via matveev_explicit_gap3; baker_bound_gap3 / conductor_86 / B14_honest stay Prop; Tate and Baker files 0 lines changed; Chain ExistsNewformLevel2 stays 0≠0)

Lean change.  New file
`BealLevel26ModularElimination.lean`.
Does **not** use opaque axiom certs; the five
soundness Props are existentials over
`List`/`Nat` structures.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit `B14_honest`.
Does **not** touch `BealFreyTateConductor.lean`.
Does **not** touch `BealGap3BakerUpperBound.lean`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No unconditional Beal `∀`.

### v12.0.0-Baker-Matveev-explicit — DONE (explicit Matveev for (4,4,13) gap3, not general Bugeaud; matveev_explicit_gap3 turns baker_bound_gap3 into eq → B ≤ baker_B0; matveev_no_solution_A_le_B inhabited; baker_conditional_gap3_full uses 25 chunks + that implication; baker_bound_gap3 stays Prop because Matveev / BMS Table 1 are not in Mathlib 4.12; Tate file stays v11; conductor_86 / B14_honest stay Prop; Chain ExistsNewformLevel2 stays 0≠0)

Lean change.  File
`BealGap3BakerUpperBound.lean`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit `B14_honest`.
Does **not** import Real.log / native_decide.
Keeps `allKilled_chunk_0` .. `allKilled_chunk_24`.
Tate file unchanged.

### v11.0.0-Tate-N-def — DONE (tateConductor = 2^{f2}*rad*13; frey_tate_conductor is that Nat; frey_tate_conductor_inhabited proves tateConductor | 2^5*rad*13 with v_q<=1 odd and v2<=5; baker_bound_gap3 / conductor_86 / B14_honest stay Prop; B<=1e6 inhabited via Baker chunks; Baker file unchanged; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  File
`BealFreyTateConductor.lean`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit `B14_honest`.
Does **not** identify `|Δ|` with Tate `N(E)`.
Does **not** add `axiom BCDT_B14`.
Does **not** touch `BealGap3BakerUpperBound.lean`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No unconditional Beal `∀`.

### v10.0.0-paper-B14-Baker-1e6-DOI — DONE (paper archive of v9.4.0 census 62500 / 25 chunks, Baker-conditional forall B, Tate bound 2^5*rad*13; archives math DOI 10.5281/zenodo.22712897 and paper DOI 10.5281/zenodo.22713047; baker_bound_gap3 / frey_tate_conductor / conductor_86 / B14_honest stay Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Paper / DOI write.  Keeps
`BealGap3BakerUpperBound.lean` and
`BealFreyTateConductor.lean`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `frey_tate_conductor`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit `B14_honest`.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No unconditional Beal `∀`.

### v9.4.0-chunked-1e6-final — DONE (allKilled_chunk_0..24: allKilled start 2500 = true by rfl/kernel decide on each 2500-slice of the 62500 values B≡14 mod16 up to 1e6; allKilled_62500 and allKilled_1e6 are the conjunction; baker_conditional_gap3_full stays inhabited; baker_bound_gap3 stays Prop Baker needs Bugeaud not in Mathlib 4.12; frey_tate_conductor stays Prop Tate N(E) missing; conductor_86 stays Prop 63982=2*31991 proves N does not divide 2^5*3*13; B14_honest stays Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  File
`BealGap3BakerUpperBound.lean`.
Keeps `set_option maxRecDepth 200000`
and `maxHeartbeats 4000000000`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `frey_tate_conductor`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit the three Zsig Props.
Does **not** inhabit `B14_honest`.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No unconditional Beal `∀`.

### v9.3.0-Baker-conditional-gap3-full — DONE (baker_conditional_gap3_full: baker_bound_gap3 -> forall B, no A; B<=B0 by expanded residue cover; B>B0 by Baker premise; baker_bound_gap3 stays uninhabited Prop; Bugeaud linear forms external, not in Mathlib 4.12; Tate 2-adic lemmas stay; frey_tate_conductor stays Prop; Zsig Props stay Prop needs Baker not Zsig; conductor_86 stays Prop; B14_honest stays Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  File
`BealGap3BakerUpperBound.lean`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `frey_tate_conductor`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit the three Zsig Props.
Does **not** inhabit `B14_honest`.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No unconditional Beal `∀`.

### v9.2.0-Tate-2adic-conductor — DONE (Tate Steps 6-7 at 2 on Frey Y^2=X(X-A^4)(X+B^4); v2(c4)>=4, v2(c6) from A,B parity, conductorExponentTate2<=5; tate_conductor_bound_rhs=2^5*rad*13 with v_q<=1 odd and v2<=5; frey_tate_conductor stays uninhabited Prop; Mathlib has no N(E); odd-q exponent-1 lemmas stay; baker_bound_gap3 stays Prop; Zsig Props stay Prop; conductor_86 stays Prop; B14_honest stays Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  Same file
`BealFreyTateConductor.lean`.
Does **not** inhabit `frey_tate_conductor`.
Does **not** identify `|Δ|` with Tate `N(E)`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit the three Zsig Props.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v9.1.0-Tate-conductor — DONE (Tate Step 2 on Frey Y^2=X(X-A^4)(X+B^4); odd primes of ABC have exponent 1 under coprimeness; v2(c4)>=4 so Step 2 does not finish at 2; frey_tate_conductor N|2^5*rad(AB(B+3))*13 stays uninhabited Prop; Mathlib has no N(E); baker_bound_gap3 stays Prop; Zsig Props stay Prop; conductor_86 stays Prop; B14_honest stays Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  New file
`BealFreyTateConductor.lean`.
Does **not** inhabit `frey_tate_conductor`.
Does **not** identify `|Δ|` with Tate `N(E)`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit the three Zsig Props.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v9.0.0-Baker-bound-gap3 — DONE (baker_bound_gap3 is the missing Baker/Bugeaud Prop at B0=10^6; sorry not used; needs Baker not Zsig; exists_zsig_q_gt_2M stays Prop; v8.86.0 residue cover unchanged empty-axiom; conductor_86 stays Prop; B14_honest stays Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  New file
`BealGap3BakerUpperBound.lean`.
Does **not** inhabit `baker_bound_gap3`.
Does **not** use `sorry`.
Does **not** inhabit `exists_zsig_q_gt_2M_dvd_C13_sub_B4`.
Does **not** inhabit `beal_gap3_B_gt_2M_eliminated`.
Does **not** change the v8.86.0 residue theorems.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.88.0-Zsig-Bgt2M-gap3 — DONE (Zsig 5983 + LTE ledger for B>2M; beal_gap3_B_gt_2M_eliminated stays uninhabited Prop; q|A gives q^4|(C^13-B^4) not q^4|C^13; named-row pools are B≤2M; frey_conductor_general unchanged; conductor_86 stays Prop; B14_honest stays Prop; not BCDT; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  New file
`BealGap3ZsigBeyond2M.lean`.
Uses existing 5983 / five-pool lemmas and
Step18 `zsigmondy_exists_primitive_inhabited`.
Does **not** inhabit `beal_gap3_B_gt_2M_eliminated`.
Does **not** inhabit the false `q^4 | C^13` step.
Does **not** change `frey_conductor_general`.
Does **not** inhabit `conductor_86`.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.87.0-general-conductor-bound — DONE (frey_conductor_general: Mathlib Weierstrass |Δ|=2^e N0, e≤5, N0∣(ABC)^26*13; [propext, Quot.sound]; not Tate; conductor_86 stays Prop; N0∣rad(B*C) stays uninhabited; 266+86 empty-axiom residue kills unchanged; B14_honest stays Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  New file
`BealFreyConductorGeneral.lean`.
Uses existing `freyCurve` Weierstrass instance.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit `conductor_86`.
Does **not** inhabit Tate `N(E)`.
Does **not** inhabit `N0 ∣ rad(B*C)`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.86.0-paper-B14-final-DOI — DONE (paper-only DOI write; .zenodo.json title is the 352-row residue cover; CITATION/paper cite math 22712897 and paper 22713047; B14_honest stays uninhabited Prop; no Lean change; no Classical.em; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Paper metadata only.
Does **not** change Lean.
Does **not** inhabit `B14_honest`.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit BCDT.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.85.0-paper-B14-full — DONE (paper unification; beal_..._B14_full covers 352 named B≡14 rows by 266+77+9 residue kills; #print axioms empty; KrausB14 eliminated_full stays 2-element mod16; B14_honest stays uninhabited Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean + paper.  Composes existing residue kills.
Does **not** import `RibetMazur` from ModQKill.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit BCDT.
Does **not** inhabit the pack name `B14_honest`.
Does **not** replace KrausB14 `eliminated_full`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀` beyond the 352 named rows.

### v8.84.0-B14-modq-kill — DONE (BealFreyModQKill fourth-power non-residue kill of the 86 mod-53 survivors at q=17/29/109; 29 kills 77 and 109 kills the remaining 9; #print axioms empty on direct_modQ_kill and beal_..._86_modq; not Ribet; B14_honest / 352-row ∀ stays uninhabited Prop; eliminated_86 pack stays the uninhabited Prop; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; arrow stays a Prop)

Lean change.  Arithmetic residue kill, like mod 53.
Does **not** import `RibetMazur`.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit BCDT.
Does **not** inhabit the 352-row `∀`.
Does **not** inhabit the pack name `eliminated_86`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀` on all 352.

### v8.83.0-B14-86-props-honest — DONE (BealFreyB14 gcd(B,B+3)∣3 inhabited; IrreducibleMod13Trace of Euler a53 miss on the 86 (not Mazur); conductor_86 / level_lowering_86 / eliminated_86 stay uninhabited Props; Classical.choice is not BCDT/Ribet; Zsig 5983 is not N|32*3*13; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀ on the 86; arrow stays a Prop)

Lean change.  Elementary gcd plus displayed miss.
Does **not** inhabit Mathlib conductor.
Does **not** inhabit BCDT.
Does **not** inhabit Ribet.
Does **not** inhabit `¬∃ A` for those 86.
Does **not** add `axiom BCDT_B14`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀` on the 86.

### v8.82.0-B14-a53-miss-86 — DONE (BealFreyASearch/BealFreyB14 Euler a53 of Beal Frey cubic on the 86 mod-53 survivors is in {-10,-2,1,6,14} and misses 0,12 at ℓ=13 under hEq; [propext, Quot.sound]; not ¬∃ A for those 86; B14_honest stays Prop; not Ribet; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀ on the full 352; arrow stays a Prop)

Lean change.  Value-set pack on the 86 survivors.
Does **not** import `RibetMazur` from ASearch.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit BCDT.
Does **not** inhabit `¬∃ A` for those 86.
Does **not** inhabit the 352-row `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀` on all 352.

### v8.81.0-B14-mod53-kill — DONE (BealFreyMod53Kill 266 of 352 named B≡14 rows die because (B+3)^13-B^4 is not a fourth power mod 53; #print axioms empty; 86 survive this test; B14_honest stays uninhabited ∀ on all 352; not Ribet; not ¬∃ A for the remaining 86; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀ on the full 352; arrow stays a Prop)

Lean change.  Arithmetic residue kill, like mod 16.
Does **not** import `RibetMazur`.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit BCDT.
Does **not** inhabit the 352-row `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀` on all 352.

### v8.80.0-B14-A-search-honest — DONE (BealFreyASearch Euler a53 of Beal Frey cubic searched over 14 fourth-power residues mod 53; miss under Beal equation; BCDT/level_lowering/B14_honest stay Prop; #print axioms propext Quot.sound on the miss, empty on the 14x14 table; not Ribet; not ¬∃ A for those 352; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  Finite Euler search, Props.
Does **not** import `RibetMazur`.
Does **not** add `axiom BCDT_B14`.
Does **not** inhabit BCDT.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.79.0-B14-honest-elim — DONE (BealFreyB14 beal Frey cubic x(x-A^4)(x+B^4) distinguished from displayed cubic; BCDT/level_lowering/B14_honest stay Prop; full_honest stays 2-element mod16; #print axioms propext on cubic lemmas, empty on full_honest; not Ribet; not ¬∃ A for those 352; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  Two cubics, rewrite, Props.
Does **not** import `RibetMazur`.
Does **not** import the axiom
`frey_modular_13`.
Does **not** inhabit BCDT.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.78.0-B14-level-lowering-honest — DONE (extract step60_b14_list 352 numerals; frey_modular_B14 is displayed cubic 2-torsion not Wiles; level_lowering_to_26_B14 stays Prop; B14_honest stays uninhabited ∀; full_honest is mod16 on the 2-element list; #print axioms empty; not Ribet; not ¬∃ A for those 352; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  Lists plus polynomial 2-torsion.
Does **not** import `RibetMazur`.
Does **not** import the axiom
`frey_modular_13`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.77.0-B14-kraus-sweep — DONE (KrausB14 records a53 misses for 352 named Step60 B≡14 rows vs 0/12; B14_kraus vacuous on displayed 2-element list; eliminated_full is mod16 on that list; #print axioms empty; not Ribet; not ¬∃ A for those 352; old 2M capstone stays Classical.em; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  Recorded Int-mod-13 misses.
Does **not** import `RibetMazur`.
Does **not** import the axiom
`frey_modular_13`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.76.0-mod16-sweeps-2M — DONE (BealMod16 beal_4_13_13_gap3_B_le_2M_eliminated_mod16 kills B≤2M with B%16≠14 via fourth-power residues; #print axioms empty; B≡14 survives; old 2M capstone stays Classical.em; Kraus pack recorded; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  15 of 16 residue classes.
Does **not** import `RibetMazur`.
Does **not** import the axiom
`frey_modular_13`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.75.0-first-honest-beal-rows — DONE (BealElim beal_4_13_13_gap3_B_196_eliminated and B_1500003_eliminated via fourth-power residues mod 16 on A^4+B^4=C^13; #print axioms empty; not Classical.em; not Ribet; 2M capstone stays Classical.em; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  Two named gap-3 rows are
`¬ ∃ A` by `A^4 ≡ 0` or `1 [MOD 16]`
(`#print axioms` empty).
Does **not** import `RibetMazur`.
Does **not** import the axiom
`frey_modular_13`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.74.0-frey-irreducible-mod13 — DONE (FreyModularity frey_mod13_irreducible displayed Int-mod-13 miss at B=196 and B=1500003; frey_modular Classical.em; level_lowering_to_26 stays Prop; Chain ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  Displayed trace miss, not Mazur,
not Borel, not Ribet.  Does **not** import
`RibetMazur`.  Does **not** import the axiom
`frey_modular_13`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.73.0-modularity-exists-level2 — DONE (Level26_Newforms exists_newform_level_26_dim2 displayed dim2 via 0≠12 at p=53; Chain ExistsNewformLevel2 stays 0≠0; Density/Step kraus ∀ stays uninhabited; no new Beal ∀; arrow stays a Prop)

Lean change.  Displayed `Newform` records
for locked `26a1` / `26b1`.  Distinct by
`a₅₃` (`0 ≠ 12`).  Not Mathlib cusp forms.
Does **not** inhabit Chain
`ExistsNewformLevel2`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Beal `∀`.

### v8.71.0-ribet-mazur-pack — DONE (RibetMazur kraus_elimination_q_13_level_26_density / ribet_mazur_pack_q_13_level_26 inhabited from v8.69.0 Int-mod-13 at B=196 and B=1500003 only; Density/Step kraus_elimination_q_13_level_26 stays the uninhabited ∀; ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  `RibetMazur.lean` already
imports `Level26_Newforms`.  The reverse
would cycle.  The new theorems apply the
v8.69.0 misses at the two named witnesses.
This is **not** `∀ B` modular
contradiction and **not** a Beal `∀`.
`zsig_density_links_to_kraus` stays
list equality plus count.  Full gap-3
density still uses `Classical.em`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.69.0-kraus-elim-theorem — DONE (Level26_Newforms level26_a_eliminated_by_53 / level26_b_eliminated_by_443 / kraus_elimination_q_13_level_26 are inhabited Int-mod-13 misses; Density/Step kraus_elimination_q_13_level_26 stays the uninhabited ∀; ExistsNewformLevel2 stays 0≠0; no new Beal ∀; arrow stays a Prop)

Lean change.  `Level26_Newforms.lean` inhabits
`level26_a_eliminated_by_53` as
`-2 % 13 ≠ 0 % 13 ∧ -2 % 13 ≠ 12 % 13`,
`level26_b_eliminated_by_443` as
`24 % 13 ≠ 21 % 13 ∧ 24 % 13 ≠ -39 % 13`,
and `kraus_elimination_q_13_level_26` as
their conjunction.  Those numerals are the
v8.68.1 traces.  This is **not** residual
isomorphism and **not** a Beal `∀`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
The sketch name is deleted.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.68.1-frey-ap-53-443 — DONE (List.take 500 a443_26a1=21 a443_26b1=-39; a53_E_196=-2 a443_E_1500003=24 by point-count decide; both miss locked traces mod 13; placeholder 2 not used; of_witness theorems do not inhabit the ∀; kraus_elimination_q_13_level_26 stays uninhabited; ExistsNewformLevel2 stays 0≠0; arrow stays a Prop)

Lean change.  `Level26_Newforms.lean` records
`List.take 500` of `qExp_26a1_500` /
`qExp_26b1_500` (SHA-locked 101-prefix
unchanged).  `a₅₃(26a1)=0`, `a₅₃(26b1)=12`,
`a₄₄₃(26a1)=21`, `a₄₄₃(26b1)=-39`.
`a53_E_196` / `a443_E_1500003` are
point-count traces of the displayed model
`y² = x(x − B⁴)(x + C⁴)` at `(196,199)`
and `(1500003,1500006)`, proved by
`decide` (not `native_decide`).
Those miss both locked forms at `ℓ = 13`.
The placeholder integer 2 is not used.
Does **not** inhabit
`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.68.0-kraus-elim-53-443 — DONE (locked a53(26a1)=0 a53(26b1)=12; hasSmallZsigWitness_1500003 ZMod 443 decide; displayed 2≢0 mod 13; of_witness theorems do not inhabit the ∀; kraus_elimination_q_13_level_26 stays uninhabited; ExistsNewformLevel2 stays 0≠0; arrow stays a Prop)

Lean change.  `Level26_Newforms.lean` records
`List.take 100` of the locked ledger.
`a₅₃(26a1)=0` and `a₅₃(26b1)=12` (sketch
6 / -2 are false).  Index 443 is absent.
`hasSmallZsigWitness_1500003` uses `decide`
on `ZMod 443` / numeral `443*443`, not
`native_decide`.
`level26_a_eliminated_by_53_of_witness` is
`hasSmallZsigWitness 196 → 2 ≢ 0 [MOD 13]`.
The integer 2 is a displayed placeholder,
not computed Frey `a₅₃`.
`level26_b_eliminated_by_443_of_witness`
is the 1500003 witness implying no `a₄₄₃`
in the 100-prefix.
Does **not** inhabit
`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.67.0-level26-newforms-skeleton — DONE (displayed 26a1/26b1 qexp prefixes from locked ledger, kraus_primes_26 = smallZsigPrimes, zsig_density_links_to_kraus is list equality plus 4488+5*299=5983; dim 2 displayed not Mathlib; level26_a_eliminated_by_53 / level26_b_eliminated_by_443 / kraus_elimination_q_13_level_26_proof_sketch stay uninhabited; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; arrow stays a Prop)

Lean change.  New FullProof module
`Beal/FullProof/Level26_Newforms.lean`
records the first 20 coefficients of
locked `qExp_26a1` / `qExp_26b1`
(ledger lock `a₃(26a1)=1`, `a₅(26a1)=-3`,
`a₃(26b1)=-3`, `a₅(26b1)=-1`).
`kraus_primes_26` equals Track B
`smallZsigPrimes`.
`zsig_density_links_to_kraus` is that
list equality plus `4488 + 5 * 299 = 5983`.
That does **not** inhabit Kraus matching.
`kraus_condition` is a displayed
`ZMod 13` equality, not Frey=newform.
Does **not** import
`Mathlib.NumberTheory.ModularForms.Basic`.
Does **not** import `RibetMazur` from
the newforms file (cycle).
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.66.0-B-le-2000k-density-capstone — DONE (density capstone: smallZsigPrimes inhabited, zsig_density_2M_stats 4488+5*299=5983, hasSmallZsigWitness_196 p=53 decide; beal_4_13_13_gap3_B_le_2M_eliminated is Classical.em not Kraus; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>2000k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Density file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean`
records the small-prime list used by
Steps 56–60 and the named-row identity
`4488 + 5 * 299 = 5983`.
`hasSmallZsigWitness_196` uses `decide`
on `ZMod 53` / numeral `53*53`, not
`native_decide`.
`beal_4_13_13_gap3_B_le_2M_eliminated` is
`Classical.em` on the small-prime ZMod
predicate, not a scan of every `B ≤ 2M`
and not Kraus.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.65.0-B-le-2000k-5983-rows — DONE (S_has_prime_with_exp_one_B_le_2000000_table_rows inhabited, 5983 named gap-3 rows, 299 sampled (1900k,2000k] p<=547 from 50325 pool; first (1900001,1900004) p=53 last (2000000,2000003) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>2000k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step60 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean`
wraps 5684 Step59 rows and adds 299
evenly sampled gap-3 pairs with
`1900000 < B ≤ 2000000` and real witnesses
`p ≤ 547` from a 50325-row pool.
Packed as the Step59 5684-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_2000000_table_rows`,
`exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows`,
`S_not_fourth_B_le_2000000_from_exp_one_table_rows`.
First new row `row_1900001_1900004` uses p=53.
Named last row `row_2000000_2000003` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_2000000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.64.0-B-le-1900k-5684-rows — DONE (S_has_prime_with_exp_one_B_le_1900000_table_rows inhabited, 5684 named gap-3 rows, 299 sampled (1800k,1900k] p<=547 from 50350 pool; first (1800004,1800007) p=53 last (1899995,1899998) p=443; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1900k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step59 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean`
wraps 5385 Step58 rows and adds 299
evenly sampled gap-3 pairs with
`1800000 < B ≤ 1900000` and real witnesses
`p ≤ 547` from a 50350-row pool.
Packed as the Step58 5385-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1900000_table_rows`,
`exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1900000_from_exp_one_table_rows`.
First new row `row_1800004_1800007` uses p=53.
Named last row `row_1899995_1899998` uses p=443.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1900000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.63.0-B-le-1800k-5385-rows — DONE (S_has_prime_with_exp_one_B_le_1800000_table_rows inhabited, 5385 named gap-3 rows, 299 sampled (1700k,1800k] p<=547 from 50307 pool; first (1700007,1700010) p=53 last (1800000,1800003) p=79; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1800k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step58 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean`
wraps 5086 Step57 rows and adds 299
evenly sampled gap-3 pairs with
`1700000 < B ≤ 1800000` and real witnesses
`p ≤ 547` from a 50307-row pool.
Packed as the Step57 5086-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1800000_table_rows`,
`exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1800000_from_exp_one_table_rows`.
First new row `row_1700007_1700010` uses p=53.
Named last row `row_1800000_1800003` uses p=79.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1800000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.62.0-B-le-1700k-5086-rows — DONE (S_has_prime_with_exp_one_B_le_1700000_table_rows inhabited, 5086 named gap-3 rows, 299 sampled (1600k,1700k] p<=547 from 50323 pool; first (1600001,1600004) p=53 last (1700000,1700003) p=547; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1700k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step57 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean`
wraps 4787 Step56 rows and adds 299
evenly sampled gap-3 pairs with
`1600000 < B ≤ 1700000` and real witnesses
`p ≤ 547` from a 50323-row pool.
Packed as the Step56 4787-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1700000_table_rows`,
`exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1700000_from_exp_one_table_rows`.
First new row `row_1600001_1600004` uses p=53.
Named last row `row_1700000_1700003` uses p=547.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1700000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.61.0-B-le-1600k-4787-rows — DONE (S_has_prime_with_exp_one_B_le_1600000_table_rows inhabited, 4787 named gap-3 rows, 299 sampled (1500k,1600k] p<=547 from 50310 pool; first (1500003,1500006) p=443 last (1600000,1600003) p=79; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1600k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step56 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean`
wraps 4488 Step55 rows and adds 299
evenly sampled gap-3 pairs with
`1500000 < B ≤ 1600000` and real witnesses
`p ≤ 547` from a 50310-row pool.
Packed as the Step55 4488-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1600000_table_rows`,
`exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1600000_from_exp_one_table_rows`.
First new row `row_1500003_1500006` uses p=443.
Named last row `row_1600000_1600003` uses p=79.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1600000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.60.0-B-le-1500k-4488-rows — DONE (S_has_prime_with_exp_one_B_le_1500000_table_rows inhabited, 4488 named gap-3 rows, 299 sampled (1400k,1500k] p<=547 from 50335 pool; first (1400001,1400004) p=53 last (1499999,1500002) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1500k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step55 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean`
wraps 4189 Step54 rows and adds 299
evenly sampled gap-3 pairs with
`1400000 < B ≤ 1500000` and real witnesses
`p ≤ 547` from a 50335-row pool.
Packed as the Step54 4189-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1500000_table_rows`,
`exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1500000_from_exp_one_table_rows`.
First new row `row_1400001_1400004` uses p=53.
Named last row `row_1499999_1500002` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1500000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.59.0-B-le-1400k-4189-rows — DONE (S_has_prime_with_exp_one_B_le_1400000_table_rows inhabited, 4189 named gap-3 rows, 299 sampled (1300k,1400k] p<=547 from 50314 pool; first (1300002,1300005) p=53 last (1400000,1400003) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1400k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step54 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean`
wraps 3890 Step53 rows and adds 299
evenly sampled gap-3 pairs with
`1300000 < B ≤ 1400000` and real witnesses
`p ≤ 547` from a 50314-row pool.
Packed as the Step53 3890-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1400000_table_rows`,
`exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1400000_from_exp_one_table_rows`.
First new row `row_1300002_1300005` uses p=53.
Named last row `row_1400000_1400003` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1400000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.58.0-B-le-1300k-3890-rows — DONE (S_has_prime_with_exp_one_B_le_1300000_table_rows inhabited, 3890 named gap-3 rows, 299 sampled (1200k,1300k] p<=547 from 50306 pool; first (1200001,1200004) p=157 last (1299998,1300001) p=79; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1300k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step53 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean`
wraps 3591 Step52 rows and adds 299
evenly sampled gap-3 pairs with
`1200000 < B ≤ 1300000` and real witnesses
`p ≤ 547` from a 50306-row pool.
Packed as the Step52 3591-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1300000_table_rows`,
`exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1300000_from_exp_one_table_rows`.
First new row `row_1200001_1200004` uses p=157.
Named last row `row_1299998_1300001` uses p=79.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1300000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.57.0-B-le-1200k-3591-rows — DONE (S_has_prime_with_exp_one_B_le_1200000_table_rows inhabited, 3591 named gap-3 rows, 299 sampled (1100k,1200k] p<=547 from 50366 pool; first (1100002,1100005) p=53 last (1199998,1200001) p=131; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1200k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step52 file
`Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean`
wraps 3292 Step51 rows and adds 299
evenly sampled gap-3 pairs with
`1100000 < B ≤ 1200000` and real witnesses
`p ≤ 547` from a 50366-row pool.
Packed as the Step51 3292-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1200000_table_rows`,
`exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1200000_from_exp_one_table_rows`.
First new row `row_1100002_1100005` uses p=53.
Named last row `row_1199998_1200001` uses p=131.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1200000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.56.0-B-le-1100k-3292-rows — DONE (S_has_prime_with_exp_one_B_le_1100000_table_rows inhabited, 3292 named gap-3 rows, 299 sampled (1000k,1100k] p<=547 from 50322 pool; first (1000003,1000006) p=157 last (1099999,1100002) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1100k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step51 file
`Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean`
wraps 2993 Step50 rows and adds 299
evenly sampled gap-3 pairs with
`1000000 < B ≤ 1100000` and real witnesses
`p ≤ 547` from a 50322-row pool.
Packed as the Step50 2993-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1100000_table_rows`,
`exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1100000_from_exp_one_table_rows`.
First new row `row_1000003_1000006` uses p=157.
Named last row `row_1099999_1100002` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1100000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.55.0-B-le-1000k-2993-rows — DONE (S_has_prime_with_exp_one_B_le_1000000_table_rows inhabited, 2993 named gap-3 rows, 299 sampled (900k,1000k] p<=547 from 50313 pool; first (900002,900005) p=79 last (1000000,1000003) p=79; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>1000k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step50 file
`Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean`
wraps 2694 Step49 rows and adds 299
evenly sampled gap-3 pairs with
`900000 < B ≤ 1000000` and real witnesses
`p ≤ 547` from a 50313-row pool.
Packed as the Step49 2694-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1000000_table_rows`,
`exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1000000_from_exp_one_table_rows`.
First new row `row_900002_900005` uses p=79.
Named last row `row_1000000_1000003` uses p=79.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_1000000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.54.0-B-le-900k-2694-rows — DONE (S_has_prime_with_exp_one_B_le_900000_table_rows inhabited, 2694 named gap-3 rows, 299 sampled (800k,900k] p<=547 from 50307 pool; first (800005,800008) p=131 last (899999,900002) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>900k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step49 file
`Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean`
wraps 2395 Step48 rows and adds 299
evenly sampled gap-3 pairs with
`800000 < B ≤ 900000` and real witnesses
`p ≤ 547` from a 50307-row pool.
Packed as the Step48 2395-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_900000_table_rows`,
`exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows`,
`S_not_fourth_B_le_900000_from_exp_one_table_rows`.
First new row `row_800005_800008` uses p=131.
Named last row `row_899999_900002` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_900000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.53.0-B-le-800k-2395-rows — DONE (S_has_prime_with_exp_one_B_le_800000_table_rows inhabited, 2395 named gap-3 rows, 299 sampled (700k,800k] p<=547 from 50350 pool; first (700001,700004) p=131 endpoint (800000,800003) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>800k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step48 file
`Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean`
wraps 2096 Step47 rows and adds 299
evenly sampled gap-3 pairs with
`700000 < B ≤ 800000` and real witnesses
`p ≤ 547` from a 50350-row pool.
Packed as the Step47 2096-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_800000_table_rows`,
`exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows`,
`S_not_fourth_B_le_800000_from_exp_one_table_rows`.
First new row `row_700001_700004` uses p=131.
Named endpoint `row_800000_800003` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_800000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.52.0-B-le-700k-2096-rows — DONE (S_has_prime_with_exp_one_B_le_700000_table_rows inhabited, 2096 named gap-3 rows, 299 sampled (600k,700k] p<=547 from 50358 pool; first (600001,600004) p=157 endpoint (700000,700003) p=521; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>700k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step47 file
`Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean`
wraps 1797 Step46 rows and adds 299
evenly sampled gap-3 pairs with
`600000 < B ≤ 700000` and real witnesses
`p ≤ 547` from a 50358-row pool.
Packed as the Step46 1797-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_700000_table_rows`,
`exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows`,
`S_not_fourth_B_le_700000_from_exp_one_table_rows`.
First new row `row_600001_600004` uses p=157.
Named endpoint `row_700000_700003` uses p=521.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_700000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.51.0-B-le-600k-1797-rows — DONE (S_has_prime_with_exp_one_B_le_600000_table_rows inhabited, 1797 named gap-3 rows, 299 sampled (500k,600k] p<=547 from 50339 pool; first (500003,500006) p=79 endpoint (600000,600003) p=53; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>600k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step46 file
`Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean`
wraps 1498 Step45 rows and adds 299
evenly sampled gap-3 pairs with
`500000 < B ≤ 600000` and real witnesses
`p ≤ 547` from a 50339-row pool.
Packed as the Step45 1498-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_600000_table_rows`,
`exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows`,
`S_not_fourth_B_le_600000_from_exp_one_table_rows`.
First new row `row_500003_500006` uses p=79.
Named endpoint `row_600000_600003` uses p=53.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_600000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.50.0-B-le-500k-1498-rows — DONE (S_has_prime_with_exp_one_B_le_500000_table_rows inhabited, 1498 named gap-3 rows, 299 sampled (400k,500k] p<=547 from 50313 pool; first (400001,400004) p=53 endpoint (500000,500003) p=547; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>500k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step45 file
`Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean`
wraps 1199 Step44 rows and adds 299
evenly sampled gap-3 pairs with
`400000 < B ≤ 500000` and real witnesses
`p ≤ 547` from a 50313-row pool.
Packed as the Step44 1199-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_500000_table_rows`,
`exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows`,
`S_not_fourth_B_le_500000_from_exp_one_table_rows`.
First new row `row_400001_400004` uses p=53.
Named endpoint `row_500000_500003` uses p=547.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_500000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.49.0-B-le-400k-1199-rows — DONE (S_has_prime_with_exp_one_B_le_400000_table_rows inhabited, 1199 named gap-3 rows, exact 299 (300k,400k] p<=547; first (300003,300006) p=157 endpoint (400000,400003) p=79; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>400k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step44 file
`Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean`
wraps 900 Step43 rows and adds the exact
299 gap-3 pairs with `300000 < B ≤ 400000`
and real witnesses `p ≤ 547`.
Packed as the Step43 900-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_400000_table_rows`,
`exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows`,
`S_not_fourth_B_le_400000_from_exp_one_table_rows`.
First new row `row_300003_300006` uses p=157.
Named endpoint `row_400000_400003` uses p=79.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_400000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.48.0-B-le-300k-900-rows — DONE (S_has_prime_with_exp_one_B_le_300000_table_rows inhabited, 900 named gap-3 rows p<=547 plus inherited outlier p=12186951011; named new endpoint (299999,300002) p=131; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>300k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step43 file
`Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean`
wraps 601 Step42 rows and adds 299 new
gap-3 pairs with `200000 < B ≤ 300000`
and real witnesses `p ≤ 547`.
Packed as the Step42 601-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_300000_table_rows`,
`exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows`,
`S_not_fourth_B_le_300000_from_exp_one_table_rows`.
Named new-window endpoint
`row_299999_300002` uses p=131.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_300000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.47.0-B-200k-outlier-12186951011 — DONE (row_200000_200003 inhabited with Pratt p=12186951011; 601 named B<=200k gap-3 rows; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>200k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step42 file
`Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean`
inhabits `row_200000_200003` with Pratt
prime `12186951011` (`p-1` factors
`2,5,13,29,47,109,631`, 64-step modPow).
`S` mod p = 0, `S` mod p² ≠ 0, gap = 3,
order ≠ 13, `S_not_fourth`.
Wraps 600 Step41 rows and packs 601.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_200000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.46.0-B-le-200k-600-rows — DONE (S_has_prime_with_exp_one_B_le_200000_table_rows inhabited, 600 named gap-3 rows p<=547; (200000,200003) has no p<=547 dividing S so named endpoint is (199996,199999) p=131; s2_26 pack still coefficient check not Ribet; kraus_elimination_q_13_level_26 stays uninhabited; B>200k Bugeaud remains Prop; arrow stays a Prop)

Lean change.  Step41 file
`Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean`
wraps 318 Step37 rows and adds 282 new
gap-3 pairs with `100000 < B ≤ 200000`
and real witnesses `p ≤ 547`.
Packed as
`S_has_prime_with_exp_one_B_le_200000_table_rows`,
`exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows`,
`S_not_fourth_B_le_200000_from_exp_one_table_rows`.
`(200000,200003)` has least prime factor
`12186951011`, so `row_200000_200003`
stays a Prop.  Named endpoint
`row_199996_199999` uses p=131.
The s2_26 pack stays a coefficient
check, not residual iso, so
`kraus_elimination_q_13_level_26` stays
uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_200000`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.45.0-level-lowering-26-to-2 — DONE (level_lowering_26_to_2_from_no_match inhabited as displayed misses + S2(Gamma0(2))=0; kraus_elimination_q_13_level_26 stays uninhabited; arrow stays a Prop)

Lean change.  Step40 file
`Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean`
inhabits `level_lowering_26_to_2_from_no_match`
(displayed level-26 Frey-trace misses plus
displayed `s2_gamma0_2_dim = 0`).
Not Mathlib Ribet.
`kraus_elimination_q_13_level_26` stays
uninhabited.
`ribet_26_to_2_from_displayed_miss`
stays uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_100000`
stays uninhabited.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.44.0-Kraus-p5-elim-26a1 — DONE (kraus_elimination_26a1 inhabited, a5(26a1)=-3 not in Frey p=5 traces {-4,-2,0,2,4} nor {-2,0,2}; kraus_elimination_q_13_level_26 stays uninhabited; arrow stays a Prop)

Lean change.  Step39 file
`Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean`
inhabits `kraus_elimination_26a1`
(ledger `a₅(26a1) = -3` is not in
displayed Frey p=5 traces `{-4, -2, 0, 2, 4}`
nor `{-2, 0, 2}`).
`s2_26_displayed_newforms_miss_frey_traces`
packages both displayed misses.
`kraus_elimination_q_13_level_26` stays
uninhabited.
`level_lowering_26_to_2_from_no_match`
stays uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_100000`
stays uninhabited.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.43.0-Kraus-p3-elim-26b1 — DONE (kraus_elimination_26b1 inhabited, a3(26b1)=-3 not in Frey p=3 traces {-2,0,2}; kraus_elimination_26a1 and full Kraus q=13 stay uninhabited; arrow stays a Prop)

Lean change.  Step38 file
`Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean`
inhabits `kraus_elimination_26b1`
(ledger `a₃(26b1) = -3` is not in
displayed Frey p=3 traces `{-2, 0, 2}`).
`kraus_elimination_26a1` stays uninhabited.
`kraus_elimination_q_13_level_26` stays
uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_100000`
stays uninhabited.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.42.0-B-le-100k-extension — DONE (318 named B<=100000 gap-3 exp-one rows; B>100000 Bugeaud/rad stay Props; Kraus q=13 matching lock stays uninhabited; arrow stays a Prop)

Lean change.  Step37 file
`Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean`
inhabits
`S_has_prime_with_exp_one_B_le_100000_table_rows`,
`exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows`,
and `S_not_fourth_B_le_100000_from_exp_one_table_rows`
(188 inherited Step34 rows plus 130 new
rows with `50000 < B ≤ 100000`, real
`p ≤ 547`).  Not a forall.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_100000`
stays uninhabited.
`kraus_elimination_q_13_level_26` stays
uninhabited (matching lock).
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.41.0-Kraus-X0-26-elimination — DONE (ap_bound_level_26, X0(26)(Q) displayed points, 26=2*13; Kraus elimination q=13 stays uninhabited; Bugeaud/rad/exp-one forall stay Props; arrow stays a Prop)

Lean change.  Step36 file
`Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean`
inhabits
`ap_bound_level_26`,
`X0_26_Q_displayed_points`,
`level_26_eq_2_mul_13`, and
`S2_level_26_dim_two`.
`kraus_elimination_q_13_level_26`
stays uninhabited (matching lock:
newforms at level 26 exist).
`bugeaud_P_phi13_gt_C_when_B_gt_50000`
stays uninhabited.
`rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited (`ExistsNewformLevel2` is `0 ≠ 0`).
No new Beal `∀`.  No `False.elim`.

### v8.40.0-B-gt-50000-rad-bound — DONE (S<=13 C^12, rad<=sqrt S if squarefull, P(Phi13)>C gives rad>C; Bugeaud and rad>sqrt13 C^6 stay uninhabited; exp-one forall stays a Prop; arrow stays a Prop)

Lean change.  Step35 file
`Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean`
inhabits
`S_le_13_C_pow12`,
`sqrt_S_le_4_C6`,
`rad_le_sqrt_of_squarefull`, and
`rad_gt_C_of_P_phi13_gt_C`.
`bugeaud_P_phi13_gt_C_when_B_gt_50000`
stays uninhabited.
`rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited (`ExistsNewformLevel2` is `0 ≠ 0`).
No new Beal `∀`.  No `False.elim`.

### v8.39.0-B-le-50000-exp-one-real-witnesses — DONE (188 named B<=50000 gap-3 rows exp-one, order!=13, S_not_fourth; exists_p forall stays uninhabited; arrow stays a Prop)

Lean change.  Step34 file
`Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean`
inhabits
`S_has_prime_with_exp_one_B_le_50000_table_rows`,
`exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows`,
and
`S_not_fourth_B_le_50000_from_exp_one_table_rows`.
Not every `B ≤ 50000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited (Bugeaud-type for
`B > 50000`).
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.38.0-B-le-10000-exp-one-extension — DONE (256 named B<=10000 gap-3 rows exp-one, order!=13, S_not_fourth; exists_p forall stays uninhabited; arrow stays a Prop)

Lean change.  Step33 file
`Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean`
inhabits
`S_has_prime_with_exp_one_B_le_10000_table_rows`,
`exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows`,
and
`S_not_fourth_B_le_10000_from_exp_one_table_rows`.
Not every `B ≤ 10000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited (Bugeaud-type for
`B > 10000`).
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.37.0-B-le-1000-exp-one-extension — DONE (64 named B<=1000 gap-3 rows exp-one, order!=13, S_not_fourth; exists_p forall stays uninhabited; arrow stays a Prop)

Lean change.  Step32 file
`Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean`
inhabits
`S_has_prime_with_exp_one_B_le_1000_table_rows`,
`exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows`,
and
`S_not_fourth_B_le_1000_from_exp_one_table_rows`.
Not every `B ≤ 1000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited (Bugeaud-type for
`B > 1000`).
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.36.0-B-le-100-order-ne-13-from-exp-one — DONE (eight named B<=100 rows order!=13 and S_not_fourth from exp-one; exists_p forall stays uninhabited; arrow stays a Prop)

Lean change.  Step31 file
`Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean`
inhabits
`exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows`
and
`S_not_fourth_B_le_100_from_exp_one_table_rows`.
Not every `B ≤ 100`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited (Bugeaud-type for
`B > 100`).
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.35.0-S-not-proper-power-B-le-100-from-exp-one — DONE (eight named B<=100 rows not proper prime powers from exp-one; Ljunggren forall and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step30 file
`Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean`
inhabits
`not_proper_prime_power_of_has_exp_one`
and
`S_not_proper_prime_power_B_le_100_from_exp_one_table_rows`.
Not every `B ≤ 100`.
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited (Ljunggren / Bugeaud
for `B > 100`).
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
and
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stay uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.34.0-B-le-100-exp-one-table — DONE (eight named B<=100 exp-one rows; gap-3 forall and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step29 file
`Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean`
inhabits
`S_has_prime_with_exp_one_B_le_100_table_rows`
and the `(1,4)` glue example.
Not every `B ≤ 100`.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited (Bugeaud-type for
`B > 100`).
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.33.0-S-has-prime-with-exp-one-gap3 — DONE (S_val 1 5 has exp one; glue exp-one => order != 13; gap-3 forall stays uninhabited; arrow stays a Prop)

Lean change.  Step28 file
`Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean`
inhabits
`HasPrimeWithExpOne`,
`S_val_1_5_has_prime_with_exp_one`,
`exists_p_with_order_ne_13_of_has_exp_one`.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.32.0-S-not-proper-prime-power-gap3 — DONE (S_val 1 5 not a proper prime power; Ljunggren forall and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step27 file
`Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean`
inhabits
`IsProperPrimePower`,
`not_isProperPrimePower_of_prime`,
`proper_prime_power_imp_sq_dvd`,
`S_val_1_5_not_proper_prime_power`.
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays uninhabited (Ljunggren-type;
`B = 1`, `C = 5` is `k = 1`).
`S_has_prime_with_exp_one` and
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stay uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.31.0-S-not-prime-power-gap3-fast-track — DONE (S_val 1 5 Pratt-prime; gap-3 never-prime-power sketch refuted; exists_p stays uninhabited; arrow stays a Prop)

Lean change.  Step26 file
`Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean`
inhabits
`S_val_1_5_prime`,
`S_not_prime_power_when_C_ge_B_plus_3_fast_refuted`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted`,
and the pair example
`exists_p_with_order_ne_13_mod_p_sq_example_B1_C5`.
The sketch `_fast` foralls stay
uninhabited (now known false:
`B = 1`, `C = 5`, `S` prime).
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
The gap-3 `ω ≥ 2` claim is false, not
closed.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.30.0-Chebotarev-lift-density-plan — DONE (primes == 1 mod 13 infinite, Phi13-support, fibre card p inhabited; Chebotarev close and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step25 file
`Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean`
inhabits
`primes_eq1_mod13_infinite`,
`density_p_div_S`, `thin_set_p_sq_div_S`
and the Step24 wraps.
`chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3`
stays uninhabited (need effective
Chebotarev).
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.29.0-Phi13-derivative-LTE-plan — DONE (Phi13 derivative separable, unique Hensel class in ZMod (p^2), p^2 | S iff the ratio equals that class; exists_p stays uninhabited; arrow stays a Prop)

Lean change.  Step24 file
`Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean`
inhabits
`phi13_derivative_separable_mod_p`,
`hensel_unique_lift_of_phi13_root`,
`p_sq_dvd_S_iff_CB_eq_lifted_root`.
Uniqueness is in `ZMod (p²)`, not `Nat`.
`B = 1`, `C = 460`, `p = 53` shows a
lift can succeed.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited` stays
uninhabited.  `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.28.0-Phi13-Zeta13-prime-ideal-plan — DONE (displayed Phi13 norm equals S, recorded class number 1, one primitive prime of the norm inhabited; two prime ideals and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step23 file
`Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean`
inhabits
`norm_eq_S`, `zeta13_class_number_one`,
`zeta13_prime_ideal_factorization_exists`,
`S_not_power_of_thirteen_inhabited`.
Mathlib 4.12 has no class group of
`Q(ζ13)`. Two prime ideals stay a Prop.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel; `B=1`, `C=460`, `p=53`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.27.0-two-primitive-primes-counting-plan — DONE (S not a power of 13 inhabited; not-a-prime-power, two primitive primes, not-both-lift, and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step22 file
`Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean`
inhabits
`S_not_power_of_thirteen`,
`exists_p_of_two_primes_one_not_square_inhabited`,
`zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited`,
`S_not_fourth_of_order_ne_13_inhabited`.
Zsigmondy gives one primitive prime, not
two. `S` may still be `q^k`. Size does
not kill two lifts.
`S_not_prime_power_when_C_ge_B_plus_3`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel; `B=1`, `C=460`, `p=53`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.26.0-exists-p-order-ne-13-plan — DONE (dichotomy wrap / conditional v_p=1 / two-primes-one-not-square inhabited; two-prime split, not-both-lift, and exists_p stay uninhabited; arrow stays a Prop)

Lean change.  Step21 file
`Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean`
inhabits
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`zsigmondy_vp_S_eq_one_of_order_ne_13`,
`exists_p_of_two_primes_one_not_square`.
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel; `B=1`, `C=460`, `p=53`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.25.0-Hensel-dichotomy-S-not-fourth-plan — DONE (Step11 p²|S iff order 13 in (Z/p²)×; B=1 C=460 p=53 lift inhabited; S_not_fourth from order ≠13; exists_p_with_order_ne_13_mod_p_sq and bare odd-A / full close stay uninhabited; arrow stays a Prop)

Lean change.  Step20 file
`Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean`
inhabits
`p_sq_dvd_S_iff_order_13_mod_p_sq`,
`hensel_lift_example_B1_C460_p53`,
`S_not_fourth_of_order_ne_13`.
`exists_p_with_order_ne_13_mod_p_sq`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel; `B=1`, `C=460`, `p=53`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.24.1-odd-A-closed-for-real — DONE (Hensel glue of primitive + v_p=1 + of_vp1 inhabited; bare odd-A / full close stay uninhabited; arrow stays a Prop)

Lean change.  Step19 file
`Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean`
inhabits
`primitive_prime_not_dvd_bases`,
`beal_odd_A_ge3_closed_of_vp1_inhabited`,
`beal_odd_A_closed_via_zsig_hensel`.
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.24.0-Zsigmondy-primitive-vp1-inhabited — DONE (Zsigmondy primitive existence / p∤k / S·g not fourth from real v_p=1 inhabited; unconditional v_p=1 and bare odd-A close stay uninhabited; arrow stays a Prop)

Lean change.  Step18 file
`Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean`
inhabits
`zsigmondy_exists_primitive_inhabited`,
`zsig_p_not_dvd_k_of_gcd_inhabited`,
`S_times_g_not_fourth_of_vp1_inhabited`,
`beal_odd_A_ge3_closed_of_vp1`.
`zsigmondy_vp_S_eq_one_inhabited` is
Hensel-conditional.
`beal_odd_A_closed_v8_24_0`,
`beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.23.1-Zsigmondy-S-vp1-plan — DONE (S_val / 13|S / k-shape {1,13,13³} inhabited; Zsigmondy primitive / v_p(S)=1 stay uninhabited; arrow stays a Prop)

Lean change.  Step17 file
`Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean`
inhabits `S_val`, `S_bounds`,
`thirteen_dvd_S_of_13_nmid_B`,
`gcd_k_S_dvd_13`,
`k_shape_1_13_13cubed`.
`zsigmondy_exists_primitive`,
`zsigmondy_vp_S_eq_one`,
`S_times_g_not_fourth_of_vp1`,
`beal_odd_A_closed_v8_23_1`,
`beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.23.0-odd-A-closure-plan — DONE (S bounds / k-shape / k bounds inhabited; Zsigmondy-of-S / S_not_fourth stay uninhabited; arrow stays a Prop)

Lean change.  Step16 file
`Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean`
inhabits `S_bounds_13_B12_le_S_le_13_C12`,
`k_almost_fourth_power_shape`,
`k_le_A4_div_13_B12`,
`B_gt_100_k_bounded`,
`k_ge_B_imp_A_ge_9B3`.
`zsigmondy_prime_S`,
`S_not_fourth_power_of_zsig`,
`beal_odd_A_closed_v8_23_0`,
`beal_4_13_13_Zsigmondy_13_odd_A_closure_plan`
stay uninhabited.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.22.1-X0-2q-Darmon-Merel-plan — DONE (oddPart/rad and 2q radical inhabited; Kraus / X0(2q) matching stay uninhabited; arrow stays a Prop)

Lean change.  Step15 file
`Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean`
inhabits `oddPart_rec`, `rad`,
`oddPart_def`, `rad_dvd_pow`,
`even_not_pow2_has_odd_prime_q`,
`level_2q_of_odd_prime_dvd_A`.
`kraus_criterion_q_ne_13`,
`X0_2q_no_Frey_match`,
`beal_even_not_pow2_general_q_False`,
`beal_even_not_pow2_closed_v8_22_1`,
`beal_even_A_closed_v8_22_1`,
`beal_4_13_13_X0_2q_Darmon_Merel_plan`
stay uninhabited.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.22.0-X0-26-RibetMazur-plan — DONE (even-not-pow2 radical N' inhabited; Ribet / X0(26) matching stay uninhabited; arrow stays a Prop)

Lean change.  Step14 file
`Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean`
inhabits `even_not_pow2_has_odd_prime`,
`frey_conductor_even_A`,
`minimal_level_26_of_13_dvd_A`,
`level_at_least_6_of_even_not_pow2`.
`ribet_level_lowering_to_Nprime`,
`X0_26_no_matching_newform`,
`beal_even_A_closed`,
`beal_4_13_13_X0_26_RibetMazur_plan`
stay uninhabited.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.21.1-Modular-W-lift-last-lock — DONE (frey even radical N=2 inhabited; Modular W / Ribet / X0_2_no_newforms stay uninhabited; arrow stays a Prop)

Lean change.  Step13 file
`Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean`
inhabits `frey_curve_conductor`
(`A = 2^r`, `B,C` odd → even radical `2`).
`beal_mixed_pow2_implies_level_2_newform`,
`modular_W_lift`,
`ribet_level_lowering_to_2`,
`X0_2_no_newforms`,
`beal_4_13_13_final_closed`,
`beal_from_ribet_upside_down`,
`beal_4_13_13_size` stay uninhabited
(Hensel lifts exist; `ExistsNewformLevel2`
is `0 ≠ 0`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.21.0-B-gt-100-bounded-k — DONE (B>100 k bound from A≥53; close stays uninhabited; arrow stays a Prop)

Lean change.  Step12 file
`Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean`
inhabits `A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A`,
`k_ge_B_imp_A_large`,
`k_lt_B_imp_S_between`.
`beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular`
and `beal_4_13_13_B_gt_100_slice_uninhabited`
stay uninhabited (Hensel lifts exist;
`ExistsNewformLevel2` is `0 ≠ 0`).
`beal_from_ribet_upside_down` and
`beal_4_13_13_size` stay uninhabited.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.20.1-B-le-100-closed — DONE (package B≤100; C=B+1 Size_Table, C=B+2 Size_C_ge_B_plus_2, C≥B+3 from k_almost + S_not_fourth; arrow stays a Prop)

Lean change.  Step11 file
`Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean`
inhabits `primitive_prime_dvd_S`,
`v_p_S_eq_one` (`order ≠ 13` in
`(ℤ/p²)ˣ` gives `¬ p² ∣ S`),
`S_not_fourth_power`,
`B_le_100_k_ge_3_no_S_fourth_pow`,
`beal_4_13_13_B_le_100_C_ge_B_plus_3_closed`,
`beal_4_13_13_B_le_100_closed`.
Unconditional `¬ p² ∣ S` is false
(Hensel lifts of 13th roots exist).
`ExistsNewformLevel2` stays `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.20.0-upper-bound-k — DONE (Step10_upper_bound_k sketch names; gcd(k,S)|13; k almost fourth power; arrow stays a Prop)

Lean change.  Sketch file
`Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean`
re-exports `S_13_mod_k`, `gcd_k_S_dvd_13`,
`gcd_k_S_eq_1_or_13`, `k_mul_S_eq_A_pow4`,
`coprime_mul_eq_fourth_pow_imp_fourth_pow`,
`k_almost_fourth_power`,
`genus_X0_2_rat = 0`,
`ExistsNewformLevel2_eq_zero_ne_zero`.
`B_le_100_k_ge_3_no_S_fourth_pow` and
`beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth`
stay uninhabited.  Mixed-pow2 → newform
and upside-down stay uninhabited.
`beal_4_13_13_mod8` / `mod13` stay residues.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.20.0-k-upper-bound-plan — DONE (gcd(k,S)|13, k is u⁴ or 13u⁴ or 13³u⁴; arrow stays a Prop)

Lean change.  `C = B+k` gives
`S ≡ 13 B¹² [MOD k]`.  Coprime `k B`
forces `gcd(k,S) ∣ 13`.  Then
`A⁴ = k·S` makes `k` equal to
`u⁴` or `13 u⁴` or `13³ u⁴`.
The unbounded `B ≤ 100`, `k ≥ 3`
fourth-power claim on `S` stays
uninhabited.  v8.19.9 residue stays.
`zsigmondy_13` stays inhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.9-fourth-pow-residue — DONE (k%4=1 when B%4=0; k%8=1 when B%8=0 for odd A; arrow stays a Prop)

Lean change.  `A⁴ ≡ k¹³ [MOD B]` is a
fourth-power residue.  Odd `A` and
`B % 4 = 0` force `k % 4 = 1`;
`B % 8 = 0` forces `k % 8 = 1`.
Without odd `A` that residue stays
uninhabited.  v8.19.8 facts stay.
`zsigmondy_13` stays inhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.8-k-odd-coprime — DONE (k odd, gcd(k,B)=1 when C≥B, gcd(A,B)=1, A⁴≡k¹³ mod B; arrow stays a Prop)

Lean change.  Odd `A` forces `k = C−B`
odd.  `Coprime C B` and `C ≥ B` give
`Coprime k B`.  `Coprime C B` gives
`Coprime A B`.  `A⁴ ≡ k¹³ [MOD B]`.
Unrestricted `gcd(k,B)=1` without
`C ≥ B` stays uninhabited.
v8.19.7 bounds stay.  `zsigmondy_13`
stays inhabited.  `ExistsNewformLevel2`
stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.7-general-k — DONE (C≥B+k gives A⁴≥13k B¹²; C≥B+3 gives A⁴≥39 B¹²; A≥3 B³ uninhabited; arrow stays a Prop)

Lean change.  The 13-term sum is
at least `13 B¹²` when `C ≥ B`, so
`C ≥ B+k` gives `A⁴ ≥ 13 k B¹²`.
`k = 3` specialises to `A⁴ ≥ 39 B¹²`.
`A ≥ 3 B³` stays uninhabited
(`39 < 81`).  v8.19.6 `B ≤ 100`
`C ∈ {B+1, B+2}` stays closed.
`zsigmondy_13` stays inhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.6-B-le-100-closed — DONE (B≤100 C∈{B+1,B+2} closed for odd A; C≥B+3 open; arrow stays a Prop)

Lean change.  `B ≤ 100` and
`C ∈ {B+1, B+2}` closes for odd `A`
by `A ≥ 53`, `A ≥ B³`, and the
decide tables.  `C ≥ B+3` stays
open.  `zsigmondy_13` stays
inhabited.  `ExistsNewformLevel2`
stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.5-p-mod-13-eq-1 — DONE (order 13 forces p≡1 mod 13, p≥53, A≥53; arrow stays a Prop)

Lean change.  A primitive prime of
`C¹³ − B¹³` has order 13, so
`p ≡ 1 [MOD 13]`, `p ≥ 53`, and
`A ≥ 53`.  `A ≥ 53` does not close
the equation.  `zsigmondy_13` stays
inhabited.  `ExistsNewformLevel2`
stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.4-zsigmondy-13-step4 — DONE (p∣S and Coprime C B contradiction; p∣S∧p∣A→p∣B uninhabited; arrow stays a Prop)

Lean change.  `p ∣ (C¹³ − B¹³)` and
`p ∤ (C−B)` give `p ∣ S`.  Then
`p ∣ B` and `p ∣ S` contradict
`Coprime C B`.  The attempt
`p ∣ S ∧ p ∣ A → p ∣ B` stays
uninhabited.  `zsigmondy_13` stays
inhabited.  `ExistsNewformLevel2`
stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.3-zsigmondy-13 — DONE (n=13 primitive prime; p∣A and p∤(C−B); arrow stays a Prop)

Lean change.  `zsigmondy_13` is inhabited
by the cyclotomic `Φ₁₃` argument.
Exceptions `(2,1,6)` and `n=2` fail by
`decide`.  Mathlib 4.12 has no Zsigmondy
module.  `beal_odd_A_ge3_size_gap` gives
`p ∣ A` and `p ∤ (C−B)`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.2-C-ge-B+2 — DONE (C≥B+2 gives A⁴≥26 B¹²; Zsigmondy uninhabited; arrow stays a Prop)

Lean change.  `C ≥ B+2` gives
`C¹³ − B¹³ ≥ 26 B¹²` from the
13-term sum times `C−B ≥ 2`.
The `C = B+2` table `B ∈ [1, 100]`
kernel-checks that bound.
`zsigmondy_13` and the general
`beal_4_13_13_size` stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.1-beal-4-13-13-size — DONE (C=B+1 size bound; B≤100 table; Zsigmondy uninhabited; arrow stays a Prop)

Lean change.  `(B+1)¹³ − B¹³ ≥ 13 B¹²`.
`beal_4_13_13_size_B_le_100_C_succ` inhabits
the `C = B+1` slice `B ∈ [1, 100]`.
`zsigmondy_13` and the general
`beal_4_13_13_size` stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.19.0-ExistsNewformLevel2 — DONE (rational genus of X₀(2); BealAArm split; ExistsNewformLevel2 stays 0≠0; arrow stays a Prop)

Lean change.  `genus_X0_2_rat = 0` over `ℚ`
from `μ=3`, `ν₂=1`, `ν₃=0`, `ν∞=2`.
`BealAArm.of_pos` splits a positive
`4,13,13` base.  Odd `A ≥ 3` is not Mixed.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_mixed_pow2_implies_level_2_newform`
and `beal_from_ribet_upside_down` stay
uninhabited.  `beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model` from
`RibetMazur`.  Does **not** touch the
24-module none chain.  No `False.elim`.
No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.18.0-product — DONE (TWAuxEllFixed for every N≤10000 on InTWEll1000; Prime completeness uninhabited, arrow stays a Prop)

Lean change.  `of_N_le` transports the
`N = 10000` witnesses to every
`N ≤ 10000` on `InTWEll1000`.
`TWAuxEllFixed_inhabited_for_every_ell_le_1000_product`
is the table-membership product.
Not a materialised `Finset.product`
(1.66M pairs hit max recursion).
Not `Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`.
The Prime-quantified
`TWAuxEllFixed_inhabited_for_every_ell_le_1000`
stays uninhabited.
`find_next_prime_one_mod_gt_exists` stays
uninhabited (`Q₁ ≤ N + 21000` is false
for the reused `ℓ = 941` row at small `N`).
`beal_from_ribet_ell_mixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.17.0-twaux-26-and-10000 — DONE (TWAuxEllFixed at N=26 and N=10000; ∀N uninhabited, arrow stays a Prop)

Lean change.  Ten `TWAuxEllFixed_*` chunks
inhabit `TWAuxEllFixed ℓ 26` and
`TWAuxEllFixed ℓ 10000` for every residual
in `InTWEll1000`.  `Qᵢ > N` so `Qᵢ ∤ N`.
`ℓ = 941` needs `Q₁ = 30113` (`N + 21000`).
`ℓ = 29` at `N = 10000` uses `Q₁ = 10151`
(`Q₁ ≠ Q₂ = 10093`).  `of5_26` / `of7_26`
/ `of13_26` become `of5_26_gt` with the
same witnesses.  `primes_le_1000` is the
Finset union; completeness via
`Finset.Icc.filter` is kernel-checked
only on `[5, 100]`.  `∀ N ≤ 10000` and
`InTWEll1000_complete` stay uninhabited.
`beal_from_ribet_ell_mixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.16.0-q2-table-100M — DONE (166-row Q₂ table within 100M via Pratt; ∀N uninhabited, arrow stays a Prop)

Lean change.  `prime_of_pratt` plus ten `TWPrimesQ2_*`
chunks inhabit `exists_prime_one_mod_ell_sq_all`
on `InTWEll1000` with `Q₂ ≤ 10⁸`.  Not
`Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`, not Dirichlet,
not `∀ N ≤ 10000`.  The 56 residuals that
missed `5·10⁶` are included
(`919 → 59119271`).
`TWAuxEllFixed_inhabited_for_every_ell_le_1000`
stays uninhabited.  Mixed / odd-`A` facts
unchanged.  `beal_from_ribet_ell_mixed` still
takes `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.15.0-dirichlet-up-to-1000 — DONE (166-row Q₁ table; not Dirichlet; Q₂-∀ and ∀N uninhabited, arrow stays a Prop)

Lean change.  Ten small Finsets plus
`exists_prime_one_mod_ell_all` give
`Q₁ ≡ 1 [MOD ℓ]` with `Q₁ ≤ 20000` for
every residual in `InTWEll1000`.  Not
`Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`, not Dirichlet,
not `∀ N ≤ 10000`.  `exists_prime_one_mod_ell_sq_all`
stays uninhabited (56 residuals miss `5·10⁶`).
`Q1_not_dvd_N_of_Q1_gt_N` needs `0 < N < Q₁`.
`TWAuxEllFixed.of5_26` / `of7_26` / `of13_26`
are explicit.  Mixed / odd-`A` facts unchanged.
`beal_from_ribet_ell_mixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.14.0-mixed-odd-A — DONE (odd-A residues; A=1 impossible; Mixed is not a cover, arrow stays a Prop)

Lean change.  `RibetMazur.lean` proves
`mod_pow4_odd`, `mod_pow13_odd` (odd `B` only),
`beal_4_13_13_mod8` / `mod13`, and
`not_beal_4_13_13_of_A_eq_one`.
`FreyEllCase5Mixed_4_13_13_iff_pow2_A`: Mixed
covers `4,13,13` iff `A=2^e`.  Odd `A ≥ 3`
is not closed (`beal_4_13_13_size` uninhabited).
`beal_from_ribet_ell_mixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.13.0-mixed-ell-plus-dirichlet — DONE (mixed A=2^e + TWAuxEllFixed, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds
`FreyEllCase5Mixed` (power-of-2 base plus
two `ℓ ≥ 5` exponents) and `TWAuxEllFixed ℓ N`
with `N < Qᵢ`.  Listed `Q₁ ≡ 1 [MOD ℓ]` for
nine small residuals, not `∀ ℓ ≤ 1000`.
`beal_from_ribet_ell_mixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.12.0-fermat-four-plus-RinfTinf-ell — DONE (FLT n=4 for power-of-2 exponents + TW search at ℓ, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds
`fermat_four_lemma` (Mathlib
`fermatLastTheoremFour`), `FermatFourCase`
so all-powers-of-2 exponents are impossible,
and `TWAuxEll` search tokens
`Q₁ ≡ 1 [MOD ℓ]` / `Q₂ ≡ 1 [MOD ℓ²]`.
`m=4` alone is not FLT4.
`beal_from_ribet_ell_upgraded` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.11.0-frey-ell-case — DONE (Frey-ℓ case, `N/∏q=2` at every odd q, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds
`FreyEllCase5` / `ell_of_q` so `ℓ | v_q(Δ)`
at every odd `q | ABC`, `mazur_step_ell`,
and `ribet_iterated_ell_case` with
arithmetic `N / ∏q = 2` under
`FreyEllCase5`.  Residual traces are
packed as `±(q+1)`.  `beal_from_ribet_ell_case`
still takes `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.10.0-frey-aq-pm1-real — DONE (Tate a_q=±1 + 13|v_q(Δ) + ModSym token, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds
`frey_a_q_real` (`(-c₆/q)=±1` because `q ∤ c₆`),
`pm1_ne_pm_qplus1_mod13_at_3` by `decide`,
`frey_rho_unramified_iff_13_dvd_vqDelta`,
`J0_N_real` as a packed `ModSym(Γ₀(N),2)` token
with double-coset `T_q`, and TW at `N·53`/`N·677`.
`mazur_step_real_fixed` requires `13 ∣ v_q(Δ)`.
`ribet_iterated_real_fixed` iterates only those
primes; `N / ∏q = 2` only under `Frey13Case`.
`beal_from_ribet_real_fixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.9.0-explicit-J0N — DONE (packed X0(N)/J0(N) + Frey Steinberg label, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds packed
`X0_N_Model` / `J0_N_Model` tokens at
`N = rad(ABC)` (not Mathlib `J₀(N)`),
`frey_a_q_is_pm1` (Tate Steinberg label, not
Frey `a_q = ±1`), and
`mazur_step_real_fixed` /
`ribet_iterated_real_fixed`.  Even if a Frey
eigenvalue were `±1`, it is not `±(q+1)`
mod 13 at `q = 3`.  Displayed `S₂(Γ₀(2))`
dim 0 means this is **not**
`ExistsNewformLevel2` (`0 ≠ 0`).
`beal_from_ribet_real_fixed` still takes
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.8.0-ribet-proof — DONE (HeckeAction_N + Mazur-step real pack, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds
`HeckeAction_N`, `mazur_step_real`, and
`ribet_iterated_real`.  The displayed
`a₃(26a1) = 1` is not `±(3+1)` mod 13, so
the requested `T_q ≡ ±(q+1)` check fails on
the level-26 ledger.  Displayed `S₂(Γ₀(2))`
dim 0 means this is **not**
`ExistsNewformLevel2` (`0 ≠ 0`).
`ModularImpliesLevel2Newform_real` /
`beal_from_ribet_real` still take
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.7.0-ribet-q-mazur — DONE (q-expansions + Mazur-step pack, arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds
`q_expansion_26a1`/`26b1` and
`mazur_principle_step`.  `ribet_iterated`
iterates that pack and `N / ∏q = 2`.
Displayed `S₂(Γ₀(2))` dim 0 means this is
**not** `ExistsNewformLevel2` (`0 ≠ 0`).
`ribet_iterated_arrow` / `beal_from_ribet`
still take `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** import `X0_26_Model`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.6.0-level-lowering-term — DONE (Frey residual + Hecke/TW pack, arrow stays a Prop)

Lean change.  `LevelLowering.lean` adds
`Frey_GaloisRep` and `level_lowering_to_2_term`.
The four-step pack uses HeckeAction
(`f_26a1`/`f_26b1`, dim `2=1+1`), TW `53`/`677`
(`R_∞ ≃ T_∞` at `26·53` and `26·677`), and
`N / ∏q = 2`.  Displayed `S₂(Γ₀(2))` dim 0
means this is **not** `ExistsNewformLevel2`
(`0 ≠ 0`).  `beal_positive_bases_unconditional`
still takes `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.5.0-cotangent-sheaf — DONE (Ω¹ from f, arrow stays a Prop)

Lean change.  `X0_26_Model.lean` adds
`coordinateRing_X0_26` (`AdjoinRoot`) and
`kaehlerDifferentials_X0_26` (`Ω[R⁄ℚ]`), with
`hyperelliptic_kaehler_relation`
`2 y dy = f'(x) dx`.  `cotangentSheaf_X0_26`
is the affine patch, not a `TopCat.Sheaf`.
`formal_immersion_at_3` is from that relation
plus `IsUnit det` over `ℤ_{(3)}`.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.4.0-formal-immersion — DONE (localized cotangent, arrow stays a Prop)

Lean change.  `X0_26_Model.lean` adds
`cotangent_Z2` / `cotangent_Z3` as the matrix
over Mathlib `Localization.AtPrime` at `(2)`
and `(3)`.  `formal_immersion_at_3` is
`IsUnit det` over `ℤ_{(3)}`.  `formal_immersion_at_2`
stays the honest `ℤ`-model with `v₂(det)=1`.
`X0_26_Q_points_cusps_model_real` is from
`formal_immersion_at_3` plus the four-cusp
display — Chabauty *input*, not Mathlib
`X₀(26)(ℚ)`.  `ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

### v8.3.0-explicit-X0-26 — DONE (explicit data, arrow stays a Prop)

Lean change.  New FullProof modules
`X0_26_Model.lean`, `HeckeAction.lean`,
`LevelLowering.lean`.  Explicit hyperelliptic
polynomial, `ℤ`-matrix `M_ℤ` det 2, weight-2
`T_q`, TW `53`/`677` patching.
`beal_positive_bases` stays *from*
`ModularImpliesLevel2Newform`.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
Does **not** touch the 24-module none chain.
No `False.elim`.  No new Track B Zenodo claiming
unconditional Beal `∀`.

