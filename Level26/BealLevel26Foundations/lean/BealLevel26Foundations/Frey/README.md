[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22452680.svg)](https://doi.org/10.5281/zenodo.22452680)
[![Hook 22379293](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

### v4.28.0 X0(26)(Q) Cusps P-mem Locked — DOI 22452680

| Name | What |
|---|---|
| X0_26_Q | [1,2,13,26] rfl P.mem mem_1 mem_2 mem_13 mem_26 not_mem_3 hInList hNotIn for hGeomForbid |
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true (hNotIn hInList) |
| beal13_forall_bridge_triple | none ⟨exponent13,forall,bridge⟩ |

DOI `22452680` findable records prior mint `22450737` hook `22379293` `IsVersionOf` `22272382` honest original latest `22322627`.

PARI lock: 26a1 Δ `-17576` 26b1 Δ `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260` image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB.

# lean/BealLevel26Foundations/Frey/

Frey-conductor *data* and the v2 odd-prime valuation input. **Current
as of** `v4.2.0-full-chain` / `v2.0.0-frey`.

| File | What it is | What it is not |
|---|---|---|
| `FreyConductorData_26.lean` | Supplied conductor fields for scaffold theorems | Not Tate's algorithm |
| `FreyConductorUnconditional_26.lean` | Re-export of the valuation input | Not `frey_conductor_data` |
| `Conductor_26_Unconditional.lean` | `vₚ(c₄)=0` and `vₚ(Δ)>0` from `p ∤ c₄`, `p ∣ Δ`, `Δ ≠ 0` | Not Kodaira type `I_n` or `N = 2^e rad(ABC)` |
| `../Beal/FullProof/TrueConductor.lean` | Mixed-exponent Frey model; `Δ`/`c₄` by `ring`; `true_gcd_pairwise`; Tate Step 2 at odd `q∣ABC` gives Kodaira `I_n` and exponent `1`; `N = 2 · ∏_{odd q} q = rad(ABC)` | Not Mathlib `MinimalModel`; 2-adic Step 2 does not apply to this integral model (`v₂(c₄)=4`); sketch stays uninhabited |
| `../Beal/FullProof/ModularityRibet.lean` | Wiles domain from TrueConductor; Ribet quotient `N/∏q=2`; `det=χ_l`; TW family `q_n=4·13ⁿ+1`; bookkeeping `R_∞≃T_∞`; `S₂(Γ₀(2))=0` | Not Mathlib Wiles/Ribet/Hecke; `ribet_step_2_contradiction` is `RibetStep2Glue`, not `False` from the Beal equation; sketch stays uninhabited |
| `../Beal/FullProof/GeometryBridge.lean` | `J₀(26)` as `E_{26a1}×E_{26b1}`; formal immersion at 2 via `M₃` `det=2`; four cusps `[1,2,13,26]`; `|Sel₂|=1` | Not Mathlib Chabauty / Picard; `GeometryBridge` is certified Mazur input, not `False` from the Beal equation; sketch stays uninhabited |
| `../Beal/FullProof/BealForallProof.lean` | Glue of Tate + Ribet + GeometryBridge; `beal_forall_proof` = `beal_forall_proof_positive` | Unguarded sketch is false (`0³+1³=1³`); none-chain sketch stays uninhabited; not a journal Beal proof |
| `../Beal/FullProof/ModularImpliesNewform.lean` | `PositiveBealTriple`; Mathlib `Γ₀(2)`; TW `53%13=1` `677%169=1`; Ribet `N/∏q=2` arithmetic; `ModularImpliesLevel2Newform` stays a Prop | Not Mathlib Wiles/newform; not `PositiveBealTriple → False`; not unconditional Beal |
| `../Beal/FullProof/GeometryScheme.lean` | Packed `X₀(26)` / `J₀(26)` models; `M₃` det 2 Nakayama input; four cusps | Not Mathlib modular-curve Scheme / Jacobian |
| `../Beal/FullProof/HeckeAlgebra.lean` | `T_q` correspondence; TW-tower `R_∞ ≃ T_∞` | Not Mathlib `End(J₀(N))` / `R = T` |
| `../Beal/FullProof/RibetFunctor.lean` | Packed lowering `N → 2`; `ModularImpliesLevel2Newform_Real` stays a Prop | Not `ExistsNewformLevel2` (`0 ≠ 0`) |
| `../Beal/FullProof/X0_26_Model.lean` | `AdjoinRoot (Y²−f)` + `Ω[R⁄ℚ]`; `2 y dy = f' dx`; integral model at 3 | Not Mathlib modular-curve sheaf / Chabauty `X(ℚ)` |
| `../Beal/FullProof/HeckeAction.lean` | Weight-2 `T_q` on ledger prefixes; TW 53/677 | Not Mathlib `End(J₀(N))` |
| `../Beal/FullProof/LevelLowering.lean` | `Frey_GaloisRep` + `level_lowering_to_2_term` Hecke/TW pack; `beal_positive_bases_unconditional` from the Prop | Not `ExistsNewformLevel2` (`0 ≠ 0`); not unconditional Beal |
| `../Beal/FullProof/RibetMazur.lean` | Odd-`A` residues for `4,13,13`; `A=1` impossible; Mixed iff `A=2^e` | Not `ExistsNewformLevel2` (`0 ≠ 0`); odd `A ≥ 3` not closed; not unconditional Beal `∀` |
| `FreyCurve13.lean` | Displayed triple plus working-prime `WeierstrassCurve` `freyCurve ↑A ↑B 13 13`. Does not import Forall. | Not Tate conductor; not a noncuspidal `X₀(26)` point |
| `FreyModularity_13.lean` | `WeierstrassModularity c` is displayed `Modularity (FreyCurve13 w.A w.B w.C)` when `c` is the pack of `w`. `WeierstrassModularity_of_pack` is `frey_modular_13`. | Not Wiles--Taylor; `WeierstrassCurve` has no `.A`; not a noncuspidal `X₀(26)` point |

`TateKodairaBoundary26` is an explicit named boundary. These files must
not mention `frey_conductor_data` or `tate_step2_odd_prime_external`.
The Weierstrass model itself is
[`../Real/FreyWeierstrass.lean`](../Real/FreyWeierstrass.lean).
The v4.2.0 displayed level name `FreyLevel26` (`2 * 13 = 26`) lives in
[`../Chain/FreyCurve_13_26.lean`](../Chain/FreyCurve_13_26.lean).
That is not Ribet level lowering.
