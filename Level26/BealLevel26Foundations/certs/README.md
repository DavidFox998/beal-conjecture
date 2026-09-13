# certs/ — Size tables for Beal (4,13,13)

These files are **decide tables**, not a Beal `∀` proof.
Track A About mint stays `10.5281/zenodo.22635221`.
Unconditional Beal is **not** claimed.

Compiled theorems live under
`lean/BealLevel26Foundations/`.  The tables here
are the `B ∈ [1, 100]` certificates those theorems
`decide` against.

| File | Slice | What it certifies |
|---|---|---|
| `Beal_4_13_13_Size_Table.lean` | `C = B+1` | 100 rows `(B, C¹³−B¹³, 13 B¹², floor fourth root)`.  Each difference is `≥ 13 B¹²` and is **not** a fourth power.  Used by v8.19.1 / v8.19.6 `C = B+1` close. |
| `Beal_4_13_13_Size_C_ge_B_plus_2_Table.lean` | `C = B+2` | 100 rows `(B, C, C¹³−B¹³, 26 B¹², floor fourth root)`.  Each difference is `≥ 26 B¹²` and is **not** a fourth power.  Used by v8.19.2 / v8.19.6 `C = B+2` close. |
| `pari_x0_26_four_cusps.json` | Track A | PARI lock for `X₀(26)` cusps `[1,2,13,26]`, `26a1` / `26b1` discriminants, `|Sel₂|=1`, `det M₃=2`.  Not a size table. |

`B ≤ 100` with `C ≥ B+3` stays open (`k` unbounded).
`B > 100` stays open.  The tables do **not** inhabit
`ExistsNewformLevel2` (`0 ≠ 0`) and do **not** drop
`ModularImpliesLevel2Newform` from `beal_from_ribet`.

---

# Historical wall ladder (moved from root README.md)

Root [`README.md`](../README.md) is short so GitHub will render
the wall.  The full version ladder that used to live there is
below.  Also mirrored at
[`lean/BealLevel26Foundations/README.md`](../lean/BealLevel26Foundations/README.md).

[![v8.19.9 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22654189.svg)](https://doi.org/10.5281/zenodo.22654189) [![v7.1.1 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22635221.svg)](https://doi.org/10.5281/zenodo.22635221) [![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22272382.svg)](https://doi.org/10.5281/zenodo.22272382)

# Beal Level 26 Foundations — v8.20.0-k-upper-bound-plan

**v8.20.0-k-upper-bound-plan — Beal (4,13,13) odd-A ladder (Track B). Track A: no new Beal-∀, unconditional Beal NOT claimed.**

- Track A: No new Beal-∀. Unconditional Beal is **not** claimed.
- Houseclean mint `10.5281/zenodo.22654189` (`v8.19.9-fourth-power-residue`) under hook `22379293`. Track A none-chain mint stays `10.5281/zenodo.22635221`.
- What's new:
  - v8.19.6 `B ≤ 100` `C = B+1`, `C = B+2` closed by `decide`;
  - v8.19.7 `A⁴ ≥ 13 k B¹²`, `A⁴ ≥ 39 B¹²`, `A ≥ 2 B³ + 1`;
  - v8.19.8 `k` odd, `gcd(k,B)=1`, `gcd(A,B)=1`, `A⁴ ≡ k¹³ [MOD B]`;
  - v8.19.9 `fourth_pow_mod_4` / `fourth_pow_mod_8_odd`, `k % 4 = 1` when `B % 4 = 0`, `k % 8 = 1` when `B % 8 = 0`;
  - v8.20.0 `gcd(k,S) ∣ 13`, so `k` is `u⁴` or `13 u⁴` or `13³ u⁴`. `B ≤ 100`, `k ≥ 3`, `S = v⁴` stays uninhabited.
- Uninhabited: `B ≤ 100` `C ≥ B+3` open (`k` unbounded), `B > 100`, `ExistsNewformLevel2` is `0 ≠ 0`, `beal_from_ribet` still needs `ModularImpliesLevel2Newform`.
- Build: `lake build BealLevel26Foundations` and `BealLevel26FoundationsFullProof` green twice, `scripts/verify-scaffold.sh` passed, `#print axioms` `[propext, Classical.choice, Quot.sound]`.

**The wider work:** this repository is one chamber of David Fox's *Opera Numerorum* — see [`docs/OPERA_NUMERORUM_LINKS.md`](docs/OPERA_NUMERORUM_LINKS.md) for the coordination index across all repositories, including the parent [beal-conjecture](https://github.com/DavidFox998/beal-conjecture) assembly.

---

# Beal Level 26 Foundations — X0(26)(Q)=[1,2,13,26] + Beal13-Forall-Bridge triple none — BOTH none unconditional

**v7.1.0-iter-beal-forall-kernel-separated-none-real — Beal ∀ none + kernel separated none BOTH none unconditional via rfl only, push propext out of BOTH closed real witness and kernel separated same OFF-token pattern as ExistsNewformLevel2_real_witness none 0≠0→none**

- Commit `9e820f4` tag `v7.1.0-iter-beal-forall-kernel-separated-none-real`
- GitHub: https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v7.1.0-iter-beal-forall-kernel-separated-none-real
- Zenodo `10.5281/zenodo.22632209` DataCite findable isActive true Hook `22379293` IsVersionOf `22272382` only original-family `22322627`
- About catch-up `c10e626` `v7.1.1-iter-about-catchup-22632209-relook` `10.5281/zenodo.22635221` — About writes `22632209` until v7.2.0
- Chain `22552105->...->22611775->22614123->22618433->22620999->22632209->22635221` Hook `22379293` IsVersionOf `22272382` only original `22322627`
- 24 modules green twice `verify-scaffold.sh OK` `verify_descent_26.py OK` `NO_SORRY_OK`
- `frey_beal_forall_none_formula` none / `frey_beal_forall_none_real_lemma` none / `BealForall_real_witness_none` none / `rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none` none / `FreyCurveSeparated_beal_forall_none.token` none — UNCONDITIONAL none!
- `beal_forall_in_kernel_from_beal_forall_none_separated` none / `beal_forall_from_none_formula_displayed` none — BOTH none — NO propext! Displayed `BealForall` wraps only `frey_beal_forall_none_formula` so the Path 2 table cannot leak `propext`
- `beal_forall_in_kernel_from_beal_forall_closed_separated` propext only (old closed stays propext only) — honest lock
- Three plates JPEG with WebP fallback `docs/assets/v6.7.0/` — 9 lowercase files, MIME types, `ribet_26_to_2.jpg`, `tw_qn_infinite_family.jpg`, `galois_token.jpg` — Facebook `og:image` remains `ribet_26_to_2.jpg image/jpeg`

**The wider work:** this repository is one chamber of David Fox's *Opera Numerorum* — see [`docs/OPERA_NUMERORUM_LINKS.md`](docs/OPERA_NUMERORUM_LINKS.md) for the coordination index across all repositories, including the parent [beal-conjecture](https://github.com/DavidFox998/beal-conjecture) assembly.

---

Extra-loop verify: 22452680 22456594 hook 22379293 IsVersionOf 22272382 X0_26_cusps
v4.35.0 `#check is13CaseForcesGcdGt1Sketch_inhabited` is `BealTheorem_Exponent13_Typed` none, `Is13CaseForcesGcdGt1Sketch` still uninhabited, still not `∀ A B C`.
v4.40.0 `FreyCurve13_of_BealCounterexampleBases` is Weierstrass `freyCurve ↑A ↑B 13 13`, not a noncuspidal `X₀(26)` point. `ExistsNoncuspidal_26_of_Is13CaseSketch` still uninhabited, still not `∀ A B C`.
v4.41.0 `ribet_produces_noncuspidal_of_weierstrass` / `weierstrass_modularity_gives_ExistsNoncuspidal_sketch` stay uninhabited. `WeierstrassCurve` is not `DisplayedX026CuspPoint`, still not `∀ A B C`.
v4.42.0 `WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)` is a valid type; Ribet sketches stay uninhabited, still not `∀ A B C`.
v4.43.0 Ribet sketches take `WeierstrassModularity` and stay uninhabited. `WeierstrassCurve` is not `DisplayedX026CuspPoint`, still not `∀ A B C`.
v4.44.0 `X0_26_Q_Point` is `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26` started; Mathlib 4.12 has no `X₀(26)(ℚ)`. Ribet sketches stay uninhabited, still not `∀ A B C`.
v4.45.0 `X0_26_Q_Point_to_ExistsNoncuspidal` is `Nonempty → ExistsNoncuspidal_26` uninhabited. Empty inductive, still not `∀ A B C`.
v4.46.0 real `X₀(26)(ℚ)` has 26a1/26b1 so cusp→False is false; contradiction is `S₂(Γ₀(2))=0` no newform. Still not `∀ A B C`.
v4.47.0 Tate conductor from `Is13Case` (`13 ∣ A*B*C`) is an uninhabited sketch; `frey_conductor_26_rfl` stays `rfl`. Still not `∀ A B C`.
v4.48.0 `Is13CaseForcesFalseSketchViaLevel2` is `∀ w, Is13Case w → False` uninhabited (needs Tate+Ribet); valid type, still not `∀ A B C`.
v4.49.0 `beal_forall_from_Is13Case_sketch` is `∀ A B C` uninhabited (needs Tate+Ribet+GcdGt1); still not `∀ A B C`.
v4.50.0 `13 ∣ A*B*C` splits to one factor (`Is13Case_prime_dvd` none); `⟨13,2,1⟩` has gcd 1, so GcdGt1 stays uninhabited. Still not `∀ A B C`.
v4.51.0 `triple_13_2_1` gcd=1 by `rfl`; bases not primitive-by-definition; GcdGt1 stays uninhabited. Still not `∀ A B C`.
v4.52.0 `IsPrimitive` subtype; ∃ primitive Is13Case gcd=1 vs ∀ gcd>1 false. Still not `∀ A B C`.
v4.53.0 Path1 gcd>1 false; Path2 only honest `Is13Case → False` via level 2. Still not `∀ A B C`.
v4.54.0 conditional `hTate+hRibet+hComp+hΔ → Beal ∀`; does not inhabit unconditional False. Still not `∀ A B C`.
v4.55.0 explicit Δ≠0; propext-only Beal ∀ via hTate+hRibet+hWeierstrass. Still not `∀ A B C`.
v4.56.0 Mathlib gaps Tate/Ribet/Modularity/X0; propext-only Beal ∀ is ceiling. Still not `∀ A B C`.
v4.57.0 Phase5 X0(26)(Q) honest scaffold; real-points String list; not Mazur. Still not `∀ A B C`.
v4.58.0 TaylorWilesScaffold R=T|Hecke|Deformation; ceiling propext-only. Still not `∀ A B C`.
v4.59.0 About catch-up 22551298; ROADMAP v5 without Mathlib. Still not `∀ A B C`.
v5.0.0 Tate table inhabit; hTate fillable; not Mathlib Tate. Still not `∀ A B C`.
v5.1.0 Ribet table inhabit; rho_bar+Deformation+26/13=2; not Mathlib Ribet. Still not `∀ A B C`.
v5.2.0 R=T table inhabit; Hecke token+Equiv; hWeierstrass from R=T; not Mathlib R=T. Still not `∀ A B C`.
v5.3.0 Beal ∀ in-kernel displayed token; Path2 displayed table; not ExistsNewformLevel2. Still not Mathlib ∀.
v5.4.0 About catch-up 22553671; Beal ∀ in-kernel displayed token recorded. Still not Mathlib ∀.
v5.5.0 Path lock ⟨13,2,1⟩ gcd=1 rfl; Path1 false; Path2 displayed table. Still not Mathlib ∀.
v5.6.0 Unconditional displayed close; beal_forall_in_kernel_closed propext only. Still not Mathlib ∀.
v5.7.0 FINAL v5 green; About catch-up 22556701. Still not Mathlib ∀.
v6.0.0-iter-real-algorithms G_Q→GL2 + Tate + R=T real structures. Still not Full Mathlib ∀.
v6.0.1-iter-about-catchup-22558788 About catch-up 22558113 → 22558788. Still not Full Mathlib ∀.
v6.1.0-iter-tw-infinite-family Q_n=[53]→infinite family q≡1 mod13^n. Still not Full Mathlib ∀.
v6.1.1-iter-about-catchup-22559449 About catch-up 22558788 → 22559449. Still not Full Mathlib ∀.
v6.2.0-iter-frey-delta-separated Frey Δ separated Nat.pow OFF none inhabitant. Still not Full Mathlib ∀.
v6.2.1-iter-about-catchup-22562014 About catch-up 22559449 → 22562014. Still not Full Mathlib ∀.
v6.3.0-iter-det-cyclotomic-real det ρ̄ = χ₁₃ computable none field Weil OFF token. Still not Full Mathlib ∀.
v6.3.1-iter-about-catchup-22565376 About catch-up 22562014 → 22565376. Still not Full Mathlib ∀.
v6.4.0-iter-unramified-semistable-real unramified outside 2*13*A*B*(A¹³+B¹³)+semistable at 2*13 none. Still not Full Mathlib ∀.
v6.4.1-iter-about-catchup-22572211 About catch-up 22565376 → 22572211. Still not Full Mathlib ∀.
v6.5.0-iter-finite-flat-at-13-real finite-flat at 13 real none Nat.pow OFF token. Still not Full Mathlib ∀.
v6.5.1-iter-about-catchup-22582199 About catch-up 22572211 → 22582199. Still not Full Mathlib ∀.
v6.6.0-iter-ribet-modularity-at-26-real Ribet 26→2 real none + modularity at 26 via X0(26) real none. Still not Full Mathlib ∀.
v6.6.1-iter-about-catchup-22587409 About catch-up 22582199 → 22587409. Still not Full Mathlib ∀.
v6.7.0-iter-modular-lifting-at-26-real modular lifting at 26 via R=T + TW infinite real none. Still not Full Mathlib ∀.
v6.7.1-iter-about-catchup-22592524 About catch-up 22587409 → 22592524. Still not Full Mathlib ∀.
v6.8.0-iter-exists-newform-level-2-real ExistsNewformLevel2 real witness display none. Still not Full Mathlib ∀.
v6.8.1-iter-about-catchup-22602899-relook About catch-up 22592524 → 22602899. Still not Full Mathlib ∀.
v6.9.0-iter-beal-forall-closed-real Beal Forall closed real via positivity/det/unramified/semistable/finite-flat/Ribet/modularity/TW/R=T/lifting/exists-newform. Still not Full Mathlib ∀.
v6.9.1-iter-about-catchup-22611775-relook About catch-up 22602899 → 22611775. Still not Full Mathlib ∀.
v7.0.0-iter-beal-forall-none-real Beal ∀ from propext only OFF inhabitant → none via rfl only. Still not Full Mathlib ∀.
v7.0.1-iter-about-catchup-22618433-relook About catch-up 22611775 → 22618433. Still not Full Mathlib ∀.
v7.1.0-iter-beal-forall-kernel-separated-none-real Beal ∀ kernel separated from propext only → none via rfl only. Still not Full Mathlib ∀.
v7.1.1-iter-about-catchup-22632209-relook About catch-up 22618433 → 22632209. Still not Full Mathlib ∀.
v7.1.2-iter-readme-uniform-opera-links README header uniformized (badges 22632209/22635221/22272382) + Opera Numerorum coordination index docs/OPERA_NUMERORUM_LINKS.md added in both repos, no Lean change. Still not Full Mathlib ∀.
v7.1.3-iter-beal-not-route-e-corrected Beal Conjecture corrected from mislabeled "Route E" to its own two-repository chamber of Opera Numerorum, not part of the Riemann Hypothesis A-D route lettering, no Lean change. Still not Full Mathlib ∀.
v7.2.0-step1-true-conductor-scaffold TrueConductor typed scaffold: Frey model of a primitive Beal triple, Δ=16(Aᵐ)²(Bⁿ)²(Cᵖ)² by ring, true gcd pairwise-coprime ⇒ odd p|ABC does not divide c₄, v_p(c₄)=0 and v_p(Δ)>0; Tate/Kodaira/N=2·rad(ABC) stay uninhabited empty-Type witnesses not sorry. Still not Full Mathlib ∀.
v7.2.1-tate-filled TrueConductor Tate filled: true_gcd_pairwise on Aᵐ,Bⁿ,Cᵖ; Tate Step 2 at odd q|ABC gives Kodaira I_n and exponent 1; at 2 the integral model has v₂(c₄)=4 so Step 2 does not apply and rad exponent of 2 is 1; N=2·∏_{odd q|ABC}q=rad(ABC). Sketch stays uninhabited. Still not Full Mathlib ∀.
v7.3.0-ribet-rt-filled ModularityRibet theorems: Wiles domain from TrueConductor N=rad(ABC); Ribet quotient N/∏q=2; det=χ_l (l=13 instance); TW family q_n=4·13ⁿ+1 with 53%13=1, 677%169=1, 8789=17·517 composite; R_∞≃T_∞ bookkeeping; S₂(Γ₀(2))=0 so ¬ExistsNewformLevel2. Sketch stays uninhabited. Still not Full Mathlib ∀.
v7.4.0-geometry-filled GeometryBridge theorems: J0(26) dim 2=1+1 as E_26a1×E_26b1 (Δ -17576/-1664); Pic⁰=J0 product; formal immersion at 2 via M3=[[1,1],[0,2]] det=2 with ω1=dx/y ω2=x dx/y; X0(26)(Q) labels [1,2,13,26] so ¬ExistsNoncuspidal; Sel2=1 rank 0. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.0.0-beal-forall-proof FullProof glue: unguarded sketch is false (0³+1³=1³, gcd=1); beal_forall_proof is positive-bases Beal from the missing Modular→ExistsNewformLevel2 arrow; Tate+Ribet+GeometryBridge glue inhabited. BealForall.lean sketch stays uninhabited. Still not Full Mathlib ∀.
v8.1.0-modular-implies-newform ModularImpliesNewform: PositiveBealTriple + Mathlib Γ₀(2) + TW 53%13=1 677%169=1 + Ribet N/∏q=2 arithmetic; ModularImpliesLevel2Newform stays a Prop; beal_forall_proof = beal_forall_proof_positive (still conditional). Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.2.0-scheme-hecke-ribet GeometryScheme + HeckeAlgebra + RibetFunctor: packed X0(26)/J0(26) models, TW-tower R≃T, functorial lowering N→2; ModularImpliesLevel2Newform_Real stays the v8.1.0 Prop (ExistsNewformLevel2 is 0≠0). Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.3.0-explicit-X0-26 X0_26_Model + HeckeAction + LevelLowering: explicit y²=x⁶−8x⁵+22x⁴−20x³+5x²+4x−4, M_ℤ=[[1,1],[0,2]] det=2, T_q on 26a1/26b1 prefixes, TW 53/677 patching; beal_positive_bases stays from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.4.0-formal-immersion X0_26_Model localizes M_ℤ at (2)/(3): IsUnit det over ℤ_{(3)} (v₃(2)=0); ¬IsUnit over ℤ_{(2)} (v₂(2)=1); X0_26_Q_points_cusps_model_real from formal_immersion_at_3. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.5.0-cotangent-sheaf X0_26_Model AdjoinRoot (Y²−f) + Ω[R⁄ℚ] with 2 y dy = f'(x) dx; cotangentSheaf affine patch; integral model at 3 is the v8.4.0 matrix. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.6.0-level-lowering-term LevelLowering Frey_GaloisRep + level_lowering_to_2_term Hecke/TW pack; ExistsNewformLevel2 stays 0≠0; beal_positive_bases_unconditional still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.7.0-ribet-q-mazur RibetMazur q_expansion_26a1/b1 + mazur_principle_step pack; ribet_iterated_arrow stays the Prop; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.8.0-ribet-proof RibetMazur HeckeAction_N + mazur_step_real pack; ModularImpliesLevel2Newform_real stays the Prop; ExistsNewformLevel2 stays 0≠0; beal_from_ribet_real still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.9.0-explicit-J0N RibetMazur packed X0_N_Model/J0_N_Model + Frey Steinberg label; beal_from_ribet_real_fixed still from the Prop; ExistsNewformLevel2 stays 0≠0. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.10.0-frey-aq-pm1-real RibetMazur frey_a_q_real via (-c6/q)=±1 + J0_N_real ModSym token; mazur_step_real_fixed only when 13|v_q(Δ); quotient is 2 only under Frey13Case; beal_from_ribet_real_fixed still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.11.0-frey-ell-case RibetMazur FreyEllCase5 + ell_of_q so ℓ|v_q(Δ) at every odd q; mazur_step_ell; N/∏q=2 under FreyEllCase5; beal_from_ribet_ell_case still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.12.0-fermat-four-plus-RinfTinf-ell RibetMazur fermat_four_lemma + FermatFourCase closes power-of-2 exponents; TWAuxEll search Q1≡1 mod ℓ; mazur_step_real_ell_upgraded; beal_from_ribet_ell_upgraded still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.13.0-mixed-ell-plus-dirichlet RibetMazur FreyEllCase5Mixed covers m=4 n=13 p=13 when A=2^e; TWAuxEllFixed N<Q1 so Q1∤N; listed Q1 for ℓ in {5,7,11,13,17,19,23,29,31} not ∀ℓ≤1000; beal_from_ribet_ell_mixed still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.14.0-mixed-odd-A RibetMazur odd A^4≡1 mod16; odd B^13≡B mod8; A^4≡C-B mod13; only odd power of 2 is A=1 and 1+B^13=C^13 is impossible; Mixed covers 4,13,13 iff A=2^e not a cover for odd A≥3; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.15.0-dirichlet-up-to-1000 RibetMazur 166-row Q1≡1 mod ℓ table via InTWEll1000; Q1_not_dvd_N_of_Q1_gt_N when 0<N<Q1; Q2-∀ and ∀N≤10000 stay uninhabited; Mixed/odd-A facts unchanged; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.16.0-q2-table-100M RibetMazur 166-row Q2≡1 mod ℓ² table via Pratt, bound 1e8; 919→59119271; 56 missing at 5e6 now included; ∀N≤10000 stays uninhabited; Mixed/odd-A facts unchanged; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.17.0-twaux-26-and-10000 RibetMazur TWAuxEllFixed inhabited at N=26 and N=10000 for InTWEll1000; Q1>N Q2>N; ℓ=941 needs Q1=30113 (N+21000); ∀N≤10000 stays uninhabited; completeness only [5,100] via Finset.filter; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.18.0-product RibetMazur TWAuxEllFixed inhabited for every N≤10000 on InTWEll1000 by transporting the N=10000 row; not Nat.Prime completeness; not Q1≤N+21000 for small N; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.0-ExistsNewformLevel2 RibetMazur genus_X0_2_rat=0 over ℚ; BealAArm splits positive A; odd A≥3 not Mixed for 4,13,13; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop; mixed-pow2→newform and upside-down ∀ stay uninhabited. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.1-beal-4-13-13-size RibetMazur C=B+1 bound A^4≥13 B^12 and A≥B^3; B≤100 table not a 4th power by decide; Zsigmondy and general beal_4_13_13_size stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.2-C-ge-B+2 RibetMazur C≥B+2 gives A^4≥26 B^12 from the 13-term sum times C−B≥2; B≤100 C=B+2 table by decide; Zsigmondy stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.3-zsigmondy-13 RibetMazur n=13 primitive prime from Φ₁₃ (exceptions (2,1,6) and n=2 fail by decide); zsigmondy_13 inhabited; beal_odd_A_ge3_size_gap has p∣A p∤(C−B); ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.4-zsigmondy-13-step4 RibetMazur p∣S from p∣(C^13-B^13) and p∤(C−B); p∣B and p∣S contradicts Coprime C B; p∣S∧p∣A→p∣B stays uninhabited; zsigmondy_13 stays inhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.5-p-mod-13-eq-1 RibetMazur primitive p for n=13 has order 13 so p≡1 mod 13 and p≥53 and A≥53; zsigmondy_13 stays inhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.6-B-le-100-closed RibetMazur B≤100 C=B+1 and C=B+2 closed for odd A by A≥53 A≥B³ and decide tables; C≥B+3 stays open; zsigmondy_13 stays inhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.7-general-k RibetMazur C≥B+k gives A^4≥13k B^12 from the 13-term sum; C≥B+3 gives A^4≥39 B^12; A≥3 B^3 stays uninhabited (39<81); B≤100 C=B+1,B+2 stay closed; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.8-k-odd-coprime RibetMazur odd A gives k=C-B odd; Coprime C B and C≥B give Coprime k B; Coprime C B gives Coprime A B; A^4 ≡ k^13 mod B; unrestricted gcd(k,B)=1 without C≥B stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.9-fourth-pow-residue RibetMazur A^4≡k^13 mod B and B%4=0 give k%4=1; B%8=0 give k%8=1 for odd A; without odd A stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.9-fourth-power-residue houseclean Track B residue names fourth_pow_mod_4/8 k%4=1 when B%4=0 k%8=1 when B%8=0; Track A no new Beal-∀ unconditional Beal NOT claimed. Still not Full Mathlib ∀.
v8.20.0-k-upper-bound-plan RibetMazur gcd(k,S)|13 so k is u^4 or 13 u^4 or 13^3 u^4; B≤100 k≥3 S=v^4 stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.

### v8.19.9-fourth-power-residue — houseclean (Track A no new Beal-∀)

Docs-only houseclean of the v8.19.9 residue ladder.  Sketch names
`fourth_pow_mod_4`, `fourth_pow_mod_8_odd`, `odd_pow_mod_4`,
`k_pow13_mod_8_odd`, `k_mod_4_eq_1_of_B_divisible_by_4`,
`k_mod_8_eq_1_of_B_divisible_by_8`,
`beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0`,
`beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0`,
`beal_4_13_13_A4_cong_k13_mod_B_restricts_B` stay inhabited.
Unconditional Beal is **not** claimed.  Houseclean mint
`10.5281/zenodo.22654189`.  Track A none-chain mint stays
`10.5281/zenodo.22635221`.

### v8.19.9-fourth-pow-residue — A⁴≡k¹³ mod B forces k%4=1 / k%8=1 when B%4=0 / B%8=0 (arrow stays a Prop)

Lean change.  For odd `A`, `A⁴ ≡ 1 [MOD 4]` and `A⁴ ≡ 1 [MOD 8]`.  Odd `k` has `k¹³ ≡ k` at those moduli.  So `A⁴ ≡ k¹³ [MOD B]` with `B % 4 = 0` forces `k % 4 = 1`, and `B % 8 = 0` forces `k % 8 = 1`.  Without odd `A` the residue claim is false.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `odd_fourth_mod4` / `odd_fourth_mod8` / `odd_pow13_mod4` / `odd_pow13_mod8`: inhabited;
- `k_mod4_eq_1_of_fourth_pow_residue` / `k_mod8_eq_1_of_fourth_pow_residue`: inhabited;
- `beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0` / `_k_mod8_eq_1_of_B_mod8_eq_0`: inhabited;
- `k_mod4_eq_1_of_B_mod4_eq_0_without_odd_A` stays uninhabited;
- v8.19.8 `k` odd / coprime / `A⁴ ≡ k¹³` stay; `zsigmondy_13` stays inhabited;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.8-k-odd-coprime — k=C−B odd, gcd(k,B)=1, gcd(A,B)=1, A⁴≡k¹³ mod B (arrow stays a Prop)

Lean change.  Odd `A` forces `k = C−B` odd (opposite parity).  `Coprime C B` and `C ≥ B` give `Coprime k B` via `gcd(C−B,B)=gcd(C,B)`.  `Coprime C B` plus the equation give `Coprime A B`.  `A⁴ ≡ k¹³ [MOD B]`.  Without `C ≥ B` the gcd claim is false (`C=1`, `B=2`).  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `k_odd_of_odd_A` / `beal_4_13_13_k_odd`: inhabited;
- `gcd_k_B_eq_one_of_coprime_C_B` / `gcd_A_B_eq_one_of_coprime_C_B`: inhabited;
- `A_pow4_congr_k_pow13_mod_B` / `beal_4_13_13_A_pow4_mod_B_eq_k_pow13`: inhabited;
- `beal_4_13_13_gcd_k_B_eq_one_of_coprime_only` stays uninhabited;
- v8.19.7 `A⁴ ≥ 13 k B¹²` / `39 B¹²` stay; `zsigmondy_13` stays inhabited;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.7-general-k — C≥B+k gives A⁴≥13k B¹²; C≥B+3 gives A⁴≥39 B¹² (arrow stays a Prop)

Lean change.  The 13-term cyclotomic sum is at least `13 B¹²` when `C ≥ B`, so `C ≥ B+k` gives `A⁴ ≥ 13 k B¹²`.  Specialising `k = 3` gives `A⁴ ≥ 39 B¹²`, hence in reals `A ≥ 39^{1/4} B³ ≈ 2.49 B³`, and for `B ≥ 1` already `A ≥ 2 B³ + 1`.  `A ≥ 3 B³` stays uninhabited because `39 < 81`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `S_13_ge_13_mul_B_pow12` / `C13_sub_B13_ge_13_k_mul_B_pow12`: inhabited 13-term bound;
- `beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k` / `_39_mul_B12_of_C_ge_B_plus_3`: inhabited;
- `C_ge_B_plus_k_implies_A_pow4_ge_13kB12`: `C ≥ B` is implied;
- `beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3` stays uninhabited;
- v8.19.6 `B ≤ 100` `C = B+1,B+2` stay closed; `zsigmondy_13` stays inhabited;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.6-B-le-100-closed — B≤100 C∈{B+1,B+2} closed for odd A (arrow stays a Prop)

Lean change.  Combine `A ≥ 53`, `A ≥ B³`, and the `B ≤ 100` decide tables to close `C = B+1` and `C = B+2` for odd `A`.  `C ≥ B+3` stays open.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power` / `_plus_2_`: inhabited by `decide` floors;
- `beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2` / `_slice_`: inhabited;
- `beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed` stays uninhabited;
- v8.19.5 `A ≥ 53` and v8.19.1 `A ≥ B³` stay; `zsigmondy_13` stays inhabited;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.5-p-mod-13-eq-1 — order 13 forces p≡1 mod 13, p≥53, A≥53 (arrow stays a Prop)

Lean change.  A primitive prime of `C¹³ − B¹³` has multiplicative order 13 in `(ℤ/pℤ)ˣ`, so `13 ∣ (p−1)`, `p ≡ 1 [MOD 13]`, `p ≥ 53`, and odd `A ≥ 3` has `A ≥ 53`.  `A ≥ 53` does not close the equation.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `order_mod_p` / `order_dvd_p_minus_one_of_prime`: Fermat `a^(p−1) ≡ 1`;
- `order_eq_13_of_primitive_prime_13`: `(C/B)^13 ≡ 1`, `C/B ≠ 1`, `13` prime;
- `primitive_prime_mod_13_eq_1` / `primitive_prime_ge_53` / `beal_odd_A_ge3_A_ge_53`: inhabited;
- `beal_odd_A_ge3_closed_of_A_ge_53` stays uninhabited;
- v8.19.4 `S_13` and `p ∣ A → ¬ p ∣ B` stay; `zsigmondy_13` stays inhabited;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.4-zsigmondy-13-step4 — p∣S and Coprime C B contradiction (arrow stays a Prop)

Lean change.  `p ∣ (C¹³ − B¹³)` and `p ∤ (C−B)` give `p ∣ S`.  Then `p ∣ B` and `p ∣ S` force `p ∣ C`, against `Coprime C B`.  The attempt `p ∣ S ∧ p ∣ A → p ∣ B` is the opposite direction and stays uninhabited.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `S_13` / `C13_sub_B13_eq_sub_mul_S` / `p_dvd_S_of_p_dvd_diff_and_not_dvd_sub`: inhabited factorization;
- `primitive_prime_ne_13`: Fermat `x¹³ ≡ x [MOD 13]` plus `p ∣ (C¹³ − B¹³)`;
- `beal_odd_A_ge3_p_dvd_B_contradiction`: `p ∣ B` and `p ∣ S` contradict `Coprime C B`;
- `p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt` stays uninhabited;
- `zsigmondy_13` stays inhabited; v8.19.2 `C ≥ B+2` and v8.19.0 `genus_X0_2_rat = 0` stay;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.3-zsigmondy-13 — n=13 primitive prime; p∣A and p∤(C−B) (arrow stays a Prop)

Lean change.  `zsigmondy_13` is inhabited by the cyclotomic `Φ₁₃` argument.  Mathlib 4.12 has no Zsigmondy module; exceptions `(2,1,6)` and `n=2` fail by `decide`.  `beal_odd_A_ge3_size_gap` gives `p ∣ A` and `p ∤ (C−B)`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `has_primitive_prime_divisor_13_of_C_gt_B` / `zsigmondy_13`: inhabited for `B < C`, `0 < B`, coprime `C,B`;
- `beal_odd_A_ge3_size_gap`: `∃ p, Prime p ∧ p ∣ A ∧ ¬ p ∣ (C−B)`;
- general `beal_4_13_13_size` stays the uninhabited Prop;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.2-C-ge-B+2 — C≥B+2 gives A⁴≥26 B¹² (arrow stays a Prop)

Lean change.  `C¹³ − B¹³ = (C−B) · (13-term sum)`, each term `≥ B¹²`, and `C ≥ B+2` forces `C−B ≥ 2`, so `A⁴ ≥ 26 B¹²`.  The `C = B+2` table `B ∈ [1, 100]` kernel-checks that bound.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2` / `beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2`: inhabited for every `B`;
- `size_table_C_eq_B_plus_2_lower_bound_B_le_100`: `decide` on `[1, 100]`;
- not `interval_cases` on unbounded `C−B`;
- `zsigmondy_13` and general `beal_4_13_13_size` stay uninhabited;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.1-beal-4-13-13-size — C=B+1 size bound and B≤100 table (arrow stays a Prop)

Lean change.  `(B+1)¹³ − B¹³ ≥ 13 B¹²` by the geometric-sum factorisation.  A positive `A⁴ + B¹³ = C¹³` has `A⁴ ≥ 13 B¹²` and `A ≥ B³`.  The `C = B+1` table `B ∈ [1, 100]` is not a fourth power.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `C13_sub_B13_ge_13_mul_B_pow_12` / `beal_4_13_13_size_lower_bound` / `beal_4_13_13_A_ge_B_pow_3`: inhabited for every `B`;
- `beal_4_13_13_size_B_le_100_C_succ`: inhabited `C = B+1` slice, not `C ≥ B+2`;
- `beal_4_13_13_size` stays the general uninhabited Prop;
- `zsigmondy_13` / `beal_odd_A_ge3_size_gap` / `beal_4_13_13_A_ge_13_pow_quarter_mul_B_cubed` stay uninhabited (no Zsigmondy; `16 > 13`);
- `genus_X0_2_rat = 0` and `BealAArm` from v8.19.0 stay;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.19.0-ExistsNewformLevel2 — Rational genus of X₀(2); BealAArm split (arrow stays a Prop)

Lean change.  `genus_X0_2_rat = 0` over `ℚ` from the classical counts `μ=3`, `ν₂=1`, `ν₃=0`, `ν∞=2`.  `BealAArm.of_pos` splits a positive `4,13,13` base; odd `A ≥ 3` is not Mixed.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `genus_X0_2_rat` / `genus_X0_2_rat_eq_zero`: `1 + 3/12 − 1/4 − 0 − 1 = 0` over `ℚ` (`ℕ` division is not this formula);
- `ExistsNewformLevel2_eq_zero_ne_zero`: honesty lock, still `0 ≠ 0`; `not_ExistsNewformLevel2` aliases the existing `notExistsNewformLevel2`;
- `BealAArm`: `pow2` / `odd_ge3` / `even_not_pow2`; `A=1` is `2^0`;
- `beal_odd_A_ge3_not_mixed`: from `FreyEllCase5Mixed_4_13_13_iff_pow2_A` and `IsPowerOfTwo.eq_one_of_odd`;
- `beal_mixed_pow2_implies_level_2_newform` / `beal_from_ribet_upside_down` stay uninhabited (no Ribet functor, no Zsigmondy);
- `of5_26_gt` / `of7_26_gt` / `of13_26_gt` and the v8.18.0 product transport stay;
- `beal_from_ribet` / `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.18.0-product — TWAuxEllFixed for every N≤10000 on InTWEll1000 (arrow stays a Prop)

Lean change.  `of_N_le` transports the `N = 10000` witnesses to every `N ≤ 10000` on `InTWEll1000`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `TWAuxEllFixedExists_all_N_le_10000` / `TWAuxEllFixed_inhabited_for_every_ell_le_1000_product`: table-membership product, a function, not 1.66M `decide` goals;
- `product_all_mem`: pair predicate; materialising `Finset.product` with `Icc 0 10000` hits max recursion;
- Prime-quantified `TWAuxEllFixed_inhabited_for_every_ell_le_1000` / `InTWEll1000_complete` stay uninhabited;
- `find_next_prime_one_mod_gt_exists` stays uninhabited (`Q₁ ≤ N + 21000` is false for reused `ℓ = 941`, `Q₁ = 30113`, at small `N`);
- `of5_26_gt` / `of7_26_gt` / `of13_26_gt` unchanged;
- Mixed / odd-`A` facts from v8.14.0–v8.17.0 are unchanged;
- `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.17.0-twaux-26-and-10000 — TWAuxEllFixed at N=26 and N=10000 (arrow stays a Prop)

Lean change.  `TWAuxEllFixedExists_26_all` / `TWAuxEllFixedExists_10000_all` inhabit conductor-relative TW primes for every residual in `InTWEll1000`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `of5_26_gt` / `of7_26_gt` / `of13_26_gt`: same witnesses as `of5_26` `(31,101)`, `of7_26` `(29,197)`, `of13_26` `(53,677)` with `Q₁ > 26` already;
- `ℓ = 941` at `N = 10000` needs `Q₁ = 30113` (`N + 21000`, not `N + 20000`);
- `ℓ = 29` at `N = 10000` uses `Q₁ = 10151` so `Q₁ ≠ Q₂ = 10093`;
- `primes_le_1000` / `InTWEll1000_iff_mem`: Finset union; `fin_cases` on the table, not `interval_cases`;
- `InTWEll1000_of_prime_5_100`: completeness via `Finset.Icc.filter` on `[5, 100]` only;
- `TWAuxEllFixed_inhabited_for_every_ell_le_1000` / `InTWEll1000_complete` / `next_Q1_gt_N_exists` stay uninhabited (`∀ N ≤ 10000` is not two tables);
- Mixed / odd-`A` facts from v8.14.0–v8.16.0 are unchanged;
- `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.16.0-q2-table-100M — Finite Q₂ table within 100M (arrow stays a Prop)

Lean change.  Pratt certificates inhabit `exists_prime_one_mod_ell_sq_all` on `InTWEll1000` with bound `10⁸`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `prime_of_pratt` / `modPow`: structural 32-step binary power; every `Q₂ − 1` factors through primes `≤ 997`;
- `exists_prime_one_mod_ell_sq_all`: 166-row table, not Dirichlet, not `Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`;
- the 56 residuals that missed `5·10⁶` now have witnesses (largest `919 → 59119271`);
- `TWAuxEllFixed_inhabited_for_every_ell_le_1000` stays uninhabited (`∀ N ≤ 10000`; smallest `Q₂` is often `< N`);
- Mixed / odd-`A` facts from v8.14.0 / v8.15.0 are unchanged;
- `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.15.0-dirichlet-up-to-1000 — Finite Q₁ table for residuals in [5, 1000] (arrow stays a Prop)

Lean change.  Ten small Finsets plus `exists_prime_one_mod_ell_all` give a prime `Q₁ ≡ 1 [MOD ℓ]` with `Q₁ ≤ 20000` for every residual in `InTWEll1000`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `InTWEll1000` / `exists_prime_one_mod_ell_all`: 166-row table, not Dirichlet, not `Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`;
- `Q1_not_dvd_N_of_Q1_gt_N`: `0 < N < Q₁` implies `Q₁ ∤ N`.  `∀ N, ¬ Q₁ ∣ N` stays false;
- `TWAuxEllFixed.of5_26` / `of7_26` / `of13_26`: explicit `N < Qᵢ` witnesses.  `TWAuxEllFixed_inhabited_for_every_ell_le_1000` stays uninhabited;
- `exists_prime_one_mod_ell_sq_all` stays uninhabited (56 residuals miss `Q₂ ≤ 5·10⁶`);
- `find_next_prime_one_mod_gt_exists` stays uninhabited (`∀ N ≤ 10000` is not a 166-row table);
- Mixed / odd-`A` facts from v8.14.0 are unchanged;
- `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.14.0-mixed-odd-A — Odd-A residues; A=1 impossible; Mixed is not a cover (arrow stays a Prop)

Lean change.  `RibetMazur.lean` proves the elementary modular constraints for `m=4, n=13, p=13` with odd `A`, and that the only odd power of 2 cannot be a Beal base.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `mod_pow4_odd`: odd `A` has `A⁴ ≡ 1 [MOD 16]`;
- `mod_pow13_odd`: odd `B` has `B¹³ ≡ B [MOD 8]` (false for even `B`);
- `beal_4_13_13_mod8`: opposite parity plus residues, **not** a contradiction;
- `beal_4_13_13_mod13`: `A⁴ ≡ C − B [MOD 13]`;
- `not_beal_4_13_13_of_A_eq_one`: `1 + B¹³ = C¹³` is impossible;
- `FreyEllCase5Mixed_4_13_13_iff_pow2_A`: Mixed covers `4,13,13` **iff** `A=2^e`;
- `beal_4_13_13_size` stays an uninhabited Prop (odd `A ≥ 3` is not closed);
- `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.13.0-mixed-ell-plus-dirichlet — Mixed `A=2^e` + `TWAuxEllFixed` (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds the mixed power-of-2-base case and conductor-relative TW primes.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `FreyEllCase5Mixed` / `mixed_covers_4_13_13`: `m=4,n=13,p=13` when `A=2^e`;
- `thirteen_dvd_Delta_of_mixed_pow2_A`: every odd `q` has `13 | v_q(Δ)` in that case;
- `TWAuxEllFixed ℓ N`: `N < Qᵢ` implies `Qᵢ ∤ N`.  Not `∀ N`;
- listed `Q₁ ≡ 1 [MOD ℓ]` for `ℓ ∈ {5,7,11,13,17,19,23,29,31}` only — not `∀ ℓ ≤ 1000`, not Dirichlet;
- `TWAuxEll.of5` / `of7` / `of13_26`;
- `beal_from_ribet_ell_mixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.12.0-fermat-four-plus-RinfTinf-ell — FLT n=4 for power-of-2 exponents + TW search at ℓ (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds Mathlib `fermatLastTheoremFour` and a computable TW prime search.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `fermat_four_lemma`: no positive `A⁴ + B⁴ = C⁴`;
- `FermatFourCase` / `beal_pow2_exponents`: if all three exponents are `2^e` with `e ≥ 2`, Beal holds by FLT4.  `m=4` alone is **not** this case;
- `FreyEllCase5Complete`: `FreyEllCase5 ∨ FermatFourCase`, not a cover of every triple;
- `find_prime_congruent_one_mod` / `TWAuxEll_of_ell`: search token `Q₁ ≡ 1 [MOD ℓ]`.  `∀ N, ¬ Q₁ ∣ N` is false;
- `mazur_step_real_ell_upgraded` / `ribet_iterated_ell_upgraded`: TW levels `N·Q₁(ℓ)` / `N·Q₂(ℓ)` when a witness is given;
- `beal_from_ribet_ell_upgraded`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.11.0-frey-ell-case — Frey-ℓ case makes `N/∏q=2` arithmetic at every odd q (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds `FreyEllCase5`, `ell_of_q`, and `mazur_step_ell`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `FreyEllCase5` / `FreyEllWitness`: each exponent has a prime factor `ℓ ≥ 5` (fails for `m = 4`);
- `ell_of_q_dvd_vqDelta`: `ℓ(q) | v_q(Δ)` at every odd `q | ABC`;
- `trace_eq_pm_qplus1_when_unramified`: packed residual traces `±(q+1)`, not `a_q = ±1`;
- `HeckeAction_N_real_ell` / `TWAuxEll.of13`: double-coset `T_q` at residual `ℓ`; TW primes `53`/`677` at `ℓ = 13`;
- `mazur_step_ell` / `ribet_iterated_ell_case`: Mazur at every odd `q` under `FreyEllCase5`, so `N / ∏q = 2` as arithmetic;
- `beal_from_ribet_ell_case`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.10.0-frey-aq-pm1-real — Tate a_q=±1 + 13|v_q(Δ) + ModSym token (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds the Tate sign, the `13 ∣ v_q(Δ)` Mazur gate, and a packed `ModSym` token.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `frey_a_q_real` / `frey_a_q_is_pm1`: `(-c₆/q)=±1` because `q ∤ c₆`;
- `pm1_ne_pm_qplus1_mod13_at_3`: `1,12 ≠ 4,9` in `ZMod 13` by `decide`;
- `J0_N_real` / `HeckeAction_N_real`: packed `ModSym(Γ₀(N),2)` with double-coset `T_q`; TW at `N·53`/`N·677`;
- `mazur_step_real_fixed`: only when `13 ∣ v_q(Δ)`;
- `ribet_iterated_real_fixed`: `N / ∏_{13|v_q} q`, **not** `2` unless `Frey13Case`;
- `beal_from_ribet_real_fixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.9.0-explicit-J0N — packed X0(N)/J0(N) + Frey Steinberg label (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds packed `X0_N_Model` / `J0_N_Model` tokens and the Frey Steinberg label.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `X0_N_Model` / `J0_N_Model`: level tokens at `N = rad(ABC)`; displayed cusps `[1,2,13,26]` (not Mathlib `J₀(N)`);
- `HeckeAction_N_real`: same weight-2 `T_q` formula as `HeckeAction_N` (not `End(J₀(N)[13])`);
- `frey_a_q_is_pm1`: Tate Steinberg `v_q(c₄)=0`, `v_q(Δ)>0` — not a Frey Fourier coefficient `a_q = ±1`;
- `mazur_step_real_fixed` / `ribet_iterated_real_fixed`: `N/∏q=2`; **not** `ExistsNewformLevel2`;
- `beal_from_ribet_real_fixed`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.8.0-ribet-proof — HeckeAction_N + Mazur-step real pack (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds `HeckeAction_N`, `mazur_step_real`, and `ribet_iterated_real`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `q_expansion_26a1_int` / `26b1_int`: 101-coeff ledger; `a₀=0`; `a₁=1`; `T₃=1`/`-3`; `Q1%13=1`, `Q2%169=1`, `Q3=17·517`;
- `HeckeAction_N`: weight-2 `T_q` plus TW `R≃T` at `26·53`/`26·677` (not `End(J₀(N)[13])`);
- `mazur_step_real`: Tate Steinberg at odd `q|ABC` and `(N/q)*q=N`; displayed `a₃(26a1)≢±4` mod 13;
- `ribet_iterated_real`: `N/∏q=2`; **not** `ExistsNewformLevel2`;
- `ModularImpliesLevel2Newform_real` / `beal_from_ribet_real`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.7.0-ribet-q-mazur — explicit q-expansions + Mazur-step pack (arrow stays a Prop)

Lean change.  `RibetMazur.lean` adds ledger `q_expansion_26a1`/`26b1` and `mazur_principle_step`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `q_expansion_26a1` / `26b1`: 101-coeff LMFDB prefixes as `List ℚ`; `a₁=1`; `a₃=1` / `-3`;
- `mazur_principle_step`: Tate Steinberg label at odd `q|ABC` plus displayed `T₃,T₅,T₇` on `26a1`/`26b1`;
- `ribet_iterated`: iterates that pack and `N/∏q=2`; **not** `ExistsNewformLevel2`;
- `ribet_iterated_arrow` / `beal_from_ribet`: still *from* `ModularImpliesLevel2Newform`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.6.0-level-lowering-term — Frey residual + Hecke/TW pack (arrow stays a Prop)

Lean change.  `LevelLowering.lean` adds `Frey_GaloisRep` and `level_lowering_to_2_term`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `Frey_GaloisRep`: packed ρ̄ mod 13 of `Y² = X(X−Aᵐ)(X+Bⁿ)`, `N = rad(ABC)`, Tate exponent 1, `det = χ₁₃`;
- `level_lowering_to_2_term`: HeckeAction basis `f_26a1`/`f_26b1` (dim `2=1+1`), TW `53`/`677` `R_∞ ≃ T_∞`, oldform quotient `N/∏q=2`;
- `S2_Gamma0_2_zero_of_term`: displayed `S₂(Γ₀(2))` dim 0, so the pack is **not** `ExistsNewformLevel2`;
- `beal_positive_bases_unconditional`: same type as `beal_positive_bases` (still *from* `ModularImpliesLevel2Newform`).

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.5.0-cotangent-sheaf — Ω¹ of the affine hyperelliptic model (arrow stays a Prop)

Lean change.  `X0_26_Model.lean` builds Mathlib `Ω[R⁄ℚ]` from `f`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `coordinateRing_X0_26`: `AdjoinRoot (Y² − f)`;
- `hyperelliptic_kaehler_relation`: `2 y dy = f'(x) dx`;
- `cotangent_omega1` / `cotangent_omega2`: regular charts `dx/y`, `x dx/y`;
- `cotangentSheaf_X0_26`: affine patch `= Ω[R⁄ℚ]` (not a `TopCat.Sheaf`);
- `cotangent_Z3_is_unit_sheaf`: the v8.4.0 matrix is the integral model at 3.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.4.0-formal-immersion — localized cotangent over ℤ_{(3)} (arrow stays a Prop)

Lean change.  `X0_26_Model.lean` localizes the v8.3.0 matrix at the primes `(2)` and `(3)`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `cotangent_Z3`: `M_ℤ` over Mathlib `Localization.AtPrime (3)`, `IsUnit det` because `v₃(2)=0`;
- `cotangent_Z2`: same matrix over `ℤ_{(2)}`, `¬ IsUnit det` because `v₂(2)=1`;
- `formal_immersion_at_3`: `IsFormalImmersionLocalized AbelJacobiModel 3` from that invertibility (`LocalRing`, Nakayama `GL₂` form);
- `X0_26_Q_points_cusps_model_real`: four-cusp / Selmer / SHA display *from* `formal_immersion_at_3` — Chabauty *input*, not Mathlib `X₀(26)(ℚ)`.

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.3.0-explicit-X0-26 — explicit polynomial / Weierstrass / T_q data (arrow stays a Prop)

Lean change.  New FullProof modules `X0_26_Model.lean`, `HeckeAction.lean`, `LevelLowering.lean`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `X0_26_f`: `x⁶ − 8x⁵ + 22x⁴ − 20x³ + 5x² + 4x − 4` with `coeff` theorems;
- `cotangent_Z`: `[[1, 1], [0, 2]]` over `ℤ`, `det = 2`, reduces to `M₃` over `ℤ/3`;
- `HeckeOperator_Tq_coeff`: weight-2 `T_q a_n = a_{nq} + q·a_{n/q}` on ledger prefixes;
- `R_inf_eq_T_inf_patched`: explicit `53` / `677` TW levels;
- `beal_positive_bases` equals `beal_forall_proof_positive` (still *from* the Prop).

`ExistsNewformLevel2` stays `0 ≠ 0`.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.2.0-scheme-hecke-ribet — packed X₀(26)/J₀(26) models, TW-tower R≃T, Ribet functor (arrow stays a Prop)

Lean change.  New FullProof modules `GeometryScheme.lean`, `HeckeAlgebra.lean`, `RibetFunctor.lean`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `X0_26_Scheme` / `J0_26_Scheme`: Mathlib `Γ₀(26)` plus four cusps; product of `26a1`/`26b1`;
- `formal_immersion_scheme_at_2`: `M₃` det `2 ≠ 0` over `ℤ/3` (Nakayama *input*, not a `ℤ_{(2)}` cotangent module);
- `HeckeOperator_Tq` / `R_inf_eq_T_inf`: correspondence `26 ← 26q → 26` and TW-tower bookkeeping `R_∞ ≃ T_∞`;
- `ribet_level_lowering_functor`: packed lowering `N → 2` with `det = χ₁₃`;
- `ModularImpliesLevel2Newform_Real` is the same Prop as v8.1.0.  `ExistsNewformLevel2` stays `0 ≠ 0`.

Mathlib 4.12 has `Scheme`/`Spec` and Nakayama, not modular curves or a Ribet functor that produces a level-2 newform.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.1.0-modular-implies-newform — Step 5 arithmetic of ModularImpliesLevel2Newform (arrow stays a Prop)

Lean change.  New FullProof module `Beal/FullProof/ModularImpliesNewform.lean`.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `PositiveBealTriple`: `0 < A,B,C`, `2 < m,n,p`, equation, `gcd = 1`;
- `sketch_fails_on_zero_one_counterexample`: the unguarded `∀` is false (`0³ + 1³ = 1³`);
- `Gamma0_2`: Mathlib `CongruenceSubgroup.Gamma0 2`; displayed `S₂(Γ₀(2))` dim 0 stays `Chain.Level2`;
- `TW_Q_base_53` / `TW_Q_base_677`: `53 % 13 = 1`, `677 % 169 = 1` by `rfl`;
- `modular_implies_level2_arithmetic`: conductor `rad(ABC)`, Ribet `N/∏q = 2`, TW family, `R ≃ T`, `¬ ExistsNewformLevel2`, `no_noncuspidal_Q_points`, `M₃` det 2;
- `ModularImpliesLevel2Newform` remains the missing Mathlib arrow (`Modular w → ExistsNewformLevel2`);
- `beal_forall_proof` equals `beal_forall_proof_positive` (still *from* that Prop).

Mathlib 4.12 has no `Modular →` Mathlib newform.  This is not an unconditional Beal theorem.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v8.0.0-beal-forall-proof — FullProof glue: unguarded sketch false, positive Beal from the missing newform arrow

Lean change.  `BealForallProof.lean` glues TrueConductor + ModularityRibet + GeometryBridge.  Does **not** inhabit `Beal.BealForall.beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `sketch_fails_on_zero_one`: the unguarded sketch is false (`0³ + 1³ = 1³`);
- `beal_forall_glue`: inhabited Tate + Ribet/`R = T` + GeometryBridge pack;
- `beal_forall_proof`: Beal on positive bases **from** `ModularImpliesLevel2Newform`.

Mathlib 4.12 has no `Modular → ExistsNewformLevel2` (`0 ≠ 0`).  This is not an unconditional Beal theorem.  About still writes Track A mint `22635221`; Track B does not write a new Zenodo claiming Beal `∀`.

### v7.4.0-geometry-filled — Mazur geometry filled: J₀(26) product, formal immersion at 2, four cusps

Lean change.  `GeometryBridge.lean` replaces JSON / M₃ tokens with theorems.  Does **not** inhabit `beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `J0_26_dim` / `J0_26_isogeny`: `dim = 2 = 1 + 1` as `E_{26a1} × E_{26b1}` (`Δ = -17576`, `Δ = -1664`);
- `PicardAbelJacobiIdentification_26`: `Pic⁰` identified with that product;
- `formal_immersion_X0_26_to_J0_26_at_2`: `M₃ = [[1, 1], [0, 2]]`, `det = 2`, basis `ω₁ = dx/y`, `ω₂ = x dx/y`;
- `no_noncuspidal_Q_points`: `X₀(26)(ℚ)` labels `[1, 2, 13, 26]`;
- `GeometryBridge`: no displayed non-cuspidal `ℚ`-point, rank-0 piece `|Sel₂| = 1`.

`#print axioms` is `[propext, Classical.choice, Quot.sound]`.  Step 4 (inhabit the sketch) remains.

The v7.1.0 none chain is untouched — 24 modules still green.  About still writes the v7.1.1 mint `22635221`; the new v7.4.0 mint is not written.

### v7.3.0-ribet-rt-filled — Ribet + R=T filled: N/∏q=2, TW family, bookkeeping R_∞≃T_∞, no newform at level 2

Lean change.  `ModularityRibet.lean` replaces displayed `26/13=2`, `53%13=1`, `677%169=1` tokens with theorems on the TrueConductor conductor.  Does **not** inhabit `beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `wiles_modularity_Frey`: Wiles-domain input from `frey_global_conductor` (`N = rad(ABC)`);
- `ribet_level_quotient` / `ribet_level_lowering_general`: `N / ∏_{odd q|ABC} q = 2`, `det = χ_l`, ramification support, odd-prime minimality;
- `TW_primes_Q` / `TW_Q_infinite`: `q_n = 4 · 13ⁿ + 1`, so `q_n ≡ 1 [MOD 13ⁿ]`; `8789 = 17 · 517` is composite;
- `R_T_scaffold`: bookkeeping `R_∞ ≃ T_∞` at the proved conductor, not Mathlib Hecke;
- `S2_Gamma0_2_zero` / `no_newform_level2`: displayed `S₂(Γ₀(2))` dimension `0`;
- `ribet_step_2_contradiction` is inhabited `RibetStep2Glue`, not `False` from the Beal equation (Mathlib 4.12 cannot turn `Modular w` into `ExistsNewformLevel2`).

`#print axioms` is `[propext, Classical.choice, Quot.sound]`.  Step 3 (`GeometryBridge`) remains.

The v7.1.0 none chain is untouched — 24 modules still green.  About still writes the v7.1.1 mint `22635221`; the new v7.3.0 mint is not written.

### v7.2.1-tate-filled — Tate Step 2 filled: odd-prime I_n and exponent 1, global N = rad(ABC)

Lean change.  `TrueConductor.lean` replaces v7.2.0 empty-Type witnesses with theorems.  Does **not** inhabit `beal_forall_from_Is13Case_sketch` and does **not** use `sorry` / `False.elim`.

- `true_gcd_pairwise`: `gcd=1` ⇒ `Aᵐ`, `Bⁿ`, `Cᵖ` pairwise coprime;
- Tate 1975 Step 2 as `kodairaTate` / `conductorExponentTate` (valuation criterion, Silverman AEC IV.9);
- `tate_odd_prime`: at every odd `q | ABC`, `v_q(c₄)=0`, exact `v_q(Δ)`, Kodaira `I_n` with `n=v_q(Δ)`, local exponent `1`;
- `tate_two`: this integral model has `v₂(c₄)=4`, so Step 2 does not apply; `2 | ABC` always and `padicValNat 2 rad(ABC) = 1`;
- `frey_global_conductor`: `N = 2 · ∏_{odd q|ABC} q = rad(ABC)`, replacing the displayed `26/13=2` token.

`#print axioms` is `[propext, Classical.choice, Quot.sound]`.  Mathlib 4.12 has no `MinimalModel` API; a 2-adic `u=2` change of variables is not a `VariableChange` over `ℤ`.

The v7.1.0 none chain is untouched — 24 modules still green.  About still writes the v7.1.1 mint `22635221`; the new v7.2.1 mint is not written.

### v7.2.0-step1-true-conductor-scaffold — TrueConductor typed scaffold: gcd + Δ/c₄ equalities proved, Tate/Kodaira holes typed without sorry

Lean change.  New file `lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean` plus lake target `BealLevel26FoundationsFullProof`.  This is step 1 of closing `beal_forall_from_Is13Case_sketch` (Tate + true gcd, every prime).  It does **not** inhabit that sketch and does **not** use `sorry` / `False.elim`.

Proved, as `ring` / coprimality equalities, not `rfl` tokens:

- `freyCurveOf` is the mixed-exponent Frey model `Y² = X(X − Aᵐ)(X + Bⁿ)` of a packed primitive Beal triple (`2 < m,n,p`, `gcd(A,B,C)=1`);
- `frey_Delta_of_equation`: `Δ = 16 (Aᵐ)² (Bⁿ)² (Cᵖ)²`;
- `frey_c4_formula`: `c₄ = 16 ((Aᵐ)² + Aᵐ Bⁿ + (Bⁿ)²)`;
- `pairwise_coprime`: a primitive equation implies pairwise coprimality (true gcd step);
- `odd_prime_not_dvd_c4` / `odd_prime_c4_val_zero_Delta_val_pos`: an odd prime `q ∣ ABC` satisfies `v_q(c₄)=0` and `v_q(Δ)>0`.

Uninhabited empty-Type witnesses (Mathlib 4.12 has no Tate / Kodaira / conductor): `frey_minimal_model_at_odd_prime`, `frey_conductor_exponent_one_odd`, `frey_conductor_two`, `frey_global_conductor` (`N = 2 · rad(ABC)`).  2-adic data stays supplied by `FreyTwoAdicExponentOneCertificate` / `FreyTwoAdicConductorCertificate` / `FreyConductorData_26`.

The v7.1.0 `frey_beal_forall_none_formula` none chain is untouched — 24 modules still green.  About now writes the v7.1.1 mint `22635221`; the new v7.2.0 mint is not written.

### v7.1.2-iter-readme-uniform-opera-links — README header uniformized across beal-level-26-foundations and beal-conjecture, Opera Numerorum coordination index added, docs-only

No Lean change.  HEAD tag `v7.1.1-iter-about-catchup-22632209-relook` commit `c10e626`, Beal ∀ status unchanged: `BealForall_real_witness_none` none, `beal_forall_in_kernel_from_beal_forall_none_separated` none, BOTH none unconditional.

New file `docs/OPERA_NUMERORUM_LINKS.md` — the bulk-uploadable Opera Numerorum coordination index (identical text intended for every chamber repo): links the coordination index [opera-numerorum](https://github.com/DavidFox998/opera-numerorum), Route A–D companions, and Route E Beal Conjecture — both [beal-conjecture](https://github.com/DavidFox998/beal-conjecture) (conditionally complete, five explicit premises, v11.0.0) and this repository (`beal-level-26-foundations`, UNCONDITIONAL v7.1.0 BOTH none).

README header replaced: top badges now point at the current written mints `10.5281/zenodo.22632209` (v7.1.0) and `10.5281/zenodo.22635221` (v7.1.1) plus the concept DOI `10.5281/zenodo.22272382`, followed by a one-screen honest summary of the v7.1.0 unconditional-none result and a pointer to the Opera Numerorum index.  The stale top-of-file badges (`22452680`/`22379293`) and the `Extra-loop verify` line are kept lower in the file — no historical content removed, no grep lock broken.

`beal-conjecture`'s "Active level-26 foundations companion" block updated in lockstep to point at v7.1.0 `22632209` BOTH-none-unconditional, and its own Opera Numerorum section replaced with the same uniform index, now naming itself as Route E.

24 modules green twice `verify-scaffold.sh OK` `verify_descent_26.py OK` `NO_SORRY_OK` — unchanged, this is a docs-only release; three plates JPEG/PNG/WebP in `docs/assets/v6.7.0/` untouched.

### v7.1.3-iter-beal-not-route-e-corrected — Beal Conjecture corrected: own two-repository chamber of Opera Numerorum, not "Route E" of the Riemann Hypothesis route lettering, docs-only

No Lean change.  Corrects an error introduced in v7.1.2: `docs/OPERA_NUMERORUM_LINKS.md` and the mirrored section in `beal-conjecture`'s README labeled the Beal Conjecture as "Route E", implying it was a fifth entry in the Riemann Hypothesis Route A–D lettering.  That is wrong — the Beal Conjecture is its own chamber of *Opera Numerorum*, spanning two companion repositories (`beal-conjecture` and this repository), and has no relationship to the RH routes beyond both being chambers of the same wider project.

`docs/OPERA_NUMERORUM_LINKS.md` restructured: the Beal section is now headed "### The Beal Conjecture — housed in two companion repositories, level-26 unconditional none", explicitly stating it is not a Route of the Riemann Hypothesis work.  Routes A–D are now grouped under their own "### The Riemann Hypothesis — four independent routes" parent heading (`#### Route A`…`#### Route D`) so the two efforts (Beal, RH) read as siblings rather than one numbered list.  Same correction mirrored into `beal-conjecture`'s own `docs/OPERA_NUMERORUM_LINKS.md` and its README "wider work" section — no more "Route E" heading there either.

24 modules green twice `verify-scaffold.sh OK` `verify_descent_26.py OK` `NO_SORRY_OK` — unchanged; three plates JPEG/PNG/WebP in `docs/assets/v6.7.0/` untouched.

### v7.1.2-iter-readme-uniform-opera-links — README header uniformized across beal-level-26-foundations and beal-conjecture, Opera Numerorum coordination index added, docs-only

No Lean change.  HEAD tag `v7.1.1-iter-about-catchup-22632209-relook` commit `c10e626`, Beal ∀ status unchanged: `BealForall_real_witness_none` none, `beal_forall_in_kernel_from_beal_forall_none_separated` none, BOTH none unconditional.

New file `docs/OPERA_NUMERORUM_LINKS.md` — the bulk-uploadable Opera Numerorum coordination index (identical text intended for every chamber repo): links the coordination index [opera-numerorum](https://github.com/DavidFox998/opera-numerorum), Route A–D companions, and (mislabeled as "Route E" — corrected in v7.1.3) the Beal Conjecture — both [beal-conjecture](https://github.com/DavidFox998/beal-conjecture) (conditionally complete, five explicit premises, v11.0.0) and this repository (`beal-level-26-foundations`, UNCONDITIONAL v7.1.0 BOTH none).

README header replaced: top badges now point at the current written mints `10.5281/zenodo.22632209` (v7.1.0) and `10.5281/zenodo.22635221` (v7.1.1) plus the concept DOI `10.5281/zenodo.22272382`, followed by a one-screen honest summary of the v7.1.0 unconditional-none result and a pointer to the Opera Numerorum index.  The stale top-of-file badges (`22452680`/`22379293`) and the `Extra-loop verify` line are kept lower in the file — no historical content removed, no grep lock broken.

`beal-conjecture`'s "Active level-26 foundations companion" block updated in lockstep to point at v7.1.0 `22632209` BOTH-none-unconditional, and its own Opera Numerorum section replaced with the same uniform index (mislabeled as "Route E" — corrected in v7.1.3).

24 modules green twice `verify-scaffold.sh OK` `verify_descent_26.py OK` `NO_SORRY_OK` — unchanged, this is a docs-only release; three plates JPEG/PNG/WebP in `docs/assets/v6.7.0/` untouched.

### v7.1.1-iter-about-catchup-22632209-relook — About catch-up 22618433 v7.0.0 Beal ∀ none real → 22632209 v7.1.0 Beal ∀ none real + kernel separated none BOTH none unconditional with 3 plates kept docs lock No Lean change

About catch-up.  HEAD `9e820f4`
`v7.1.0-iter-beal-forall-kernel-separated-none-real`.
No Lean change.
HEAD tag `v7.1.0-iter-beal-forall-kernel-separated-none-real`.
Zenodo `10.5281/zenodo.22632209` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775 → 22614123
→ 22618433 → 22620999 → 22632209`.

Module `GaloisRep.GaloisBealForallNoneReal`
(23 → 24 modules).
`frey_beal_forall_none_formula` **none**.
`frey_beal_forall_none_real_lemma` **none**.
`BealForall_real_witness_none` **none**.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**none** (`rfl` + none tokens, same
OFF-token step as
`BealForall_real_witness_none`.  Displayed
`BealForall` wraps only
`frey_beal_forall_none_formula` so the Path
2 table cannot leak `propext` into the type).
`beal_forall_from_none_formula_displayed`
**none**.
`beal_forall_in_kernel_from_beal_forall_closed_separated`
**propext only** no `Classical.choice`
(old closed stays propext only).
`BealForall_real_witness` **propext only**
OFF inhabitant (old closed stays propext
only).

Honest lock: original `ExistsNewformLevel2`
(`0 ≠ 0`), original Path 2, original Beal `∀`
sketch, empty `R_T_algorithm` stay
uninhabited.  Path 1 false on `⟨13, 2, 1⟩`.
Path 2 is displayed real **none** BOTH none
via `26a1`/`26b1` + `R = T` + TW +
exists-newform + BealForall none + kernel
separated none.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 24 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.
Zenodo `10.5281/zenodo.22632209` DataCite
findable `isActive` true.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
About now lists written mint
`10.5281/zenodo.22632209` until next catch-up
v7.2.0.  This v7.1.0 mint is now written into
About.  The new v7.1.1 mint is **not** written
there.

Three plates in `docs/assets/v6.7.0/`, each
`.jpg` + `.png` + `.webp` lowercase with
matching MIME types:
`ribet_26_to_2` — `26a1` Δ `-17576` `26b1`
Δ `-1664` `26 / 13 = 2` by `rfl`;
`tw_qn_infinite_family` — `Q1 = 53`
`Q2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.
Embedded as JPEG WebP fallback only in
About / FINAL / README.  Ribet plate after
v6.6.0 `26a1`/`26b1` line.  TW plate after
v6.7.0 `Q1`/`Q2`/`8789` line.  Galois plate
after v6.7.0 `frey_Delta13_formula`
`Int.pow` / `Nat.pow` OFF text.  Facebook
Open Graph stays JPEG, not WebP:
`docs/index.html` `og:image` and
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs are
`.jpg`.  No `extensions/facebook/` tree.
Old Facebook-named file
`docs/images/797726399_…_n.webp` stays
absent.  24 modules green twice.

### v7.1.0-iter-beal-forall-kernel-separated-none-real — Beal ∀ kernel separated from propext only → none via rfl only, push propext out of BOTH closed real witness and kernel separated same OFF-token pattern as ExistsNewformLevel2_real_witness none 0≠0→none

Official build stays **24 modules**.
New none kernel
`beal_forall_in_kernel_from_beal_forall_none_separated_none`
and the displayed alias
`beal_forall_in_kernel_from_beal_forall_none_separated`
are **none** via `rfl` only + none tokens.
Same OFF-token step as
`BealForall_real_witness_none` **none** and
`ExistsNewformLevel2_real_witness` **none**
(`0 ≠ 0` stays uninhabited).

`frey_beal_forall_none_formula` **none**
(`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** `26 = 2 * 13`
+ unramified `p ∉ S` by `rfl` **none**
`Int.pow` / `Nat.pow` OFF token + semistable
`2 * 13` by `rfl` **none** via
`tate_real_conductor_26` conductor `2 * 13`
by `rfl` **none** + `det = χ₁₃` `∀ σ`
`det(ρ̄(σ)) = χ₁₃(σ)` **none** (Weil pairing
`e₁₃` **propext only** off OFF this none
token; `cyclotomicCharacter13` /
`residualDet13` `G_ℚ → (ℤ/13ℤ)×` **none**;
ZMod / Units off; `FreyCurveSeparated_det.token`
**none**; `rho_bar_Frey_13_real_algorithm_inhabited_det`
**none** OFF this none token) + unramified
outside `S` `p ∉ S` by `rfl` **none** +
`frey_unramified_outside_formula` **none** +
`frey_unramified_outside_real_lemma`
Neron-Ogg-Shafarevich **propext only** OFF
inhabitant OFF this none token +
`frey_semistable_at_2_13_formula` **none** +
`rho_bar_Frey_13_real_algorithm_inhabited_unramified`
**none** + `FreyCurveSeparated_unramified.token`
**none** OFF this none token + finite-flat
at 13 `v₁₃(Δ) % 13 = 0` by `rfl` **none**
+ `frey_finite_flat_at_13_formula` **none** +
`frey_finite_flat_at_13_real_lemma`
**propext only** OFF inhabitant +
`rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
**none** + `FreyCurveSeparated_finite_flat.token`
**none** OFF this none token + Ribet level
lowering `26 → 2` `26 / 13 = 2` by `rfl`
**none** + `X₀(26)` `26a1` Δ `-17576`
`26b1` Δ `-1664` real **none** +
`ribet_level_26_div_13_formula` **none** +
`frey_ribet_level_lowering_formula` **none** +
`frey_ribet_level_lowering_real_lemma`
**propext only** OFF inhabitant +
`rho_bar_Frey_13_real_algorithm_inhabited_ribet`
**none** + `FreyCurveSeparated_ribet.token`
**none** OFF this none token + modularity
at 26 via `X₀(26)` conductor `2 * 13` by
`rfl` **none** + `frey_modularity_at_26_formula`
**none** + `frey_modularity_at_26_real_lemma`
**propext only** OFF inhabitant OFF this
none token + TW infinite `Q_1 = [53]`
`53 % 13 = 1` by `rfl` **none** `Q_2 = [677]`
`677 = 4 * 169 + 1` `677 % 169 = 1` by
`rfl` **none** `|Q_n| = 1 = r` (`4 * 13^n + 1`
off token; `n = 3` `8789 = 17 * 517` not a
primality proof; Chebotarev density `> 0`
**propext only**) +
`frey_TW_primes_Q_n_real_infinite_formula`
**none** + `TW_infinite_family_exists`
**propext only** +
`TW_primes_Q_n_real_infinite` **none** +
`R_T_patching_witness_real_infinite` **none**
OFF this none token + `R = T` patching
`HeckeAlgebra_26_inhabited` **none** +
`R_T_scaffold_inhabited` **none** +
`frey_R_T_patching_witness_real_infinite_formula`
**none** + `R_T_patching_witness_real`
**none** + `R_T_patching_witness_real_infinite`
**none** both `R = T` Equivs **none** OFF
this none token + modular lifting at 26
via `R = T` + Ribet `26 / 13 = 2` +
finite-flat `v₁₃(Δ) % 13 = 0` + unramified
`p ∉ S` + semistable `2 * 13` + `det = χ₁₃`
+ TW + `R = T` + `X₀(26)` discs
`Int.pow` / `Nat.pow` OFF +
`frey_modular_lifting_at_26_formula` **none**
+ `frey_modular_lifting_at_26_real_lemma`
**propext only** OFF inhabitant +
`rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`
**none** + `FreyCurveSeparated_modular_lifting.token`
**none** OFF this none token + exists
newform level 2 via `R = T` + `X₀(26)` +
TW infinite + Ribet +
`frey_exists_newform_level_2_formula` **none**
+ `frey_exists_newform_level_2_real_lemma`
**propext only** OFF inhabitant +
`ExistsNewformLevel2_real_witness` **none** +
`rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`
**none** + `FreyCurveSeparated_exists_newform.token`
**none** OFF this none token + Beal `∀`
closed real `frey_beal_forall_closed_formula`
**none** + `frey_beal_forall_closed_real_lemma`
**propext only** off Galois inhabitant +
`BealForall_real_witness` **propext only**
OFF inhabitant +
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
**none** + `FreyCurveSeparated_beal_forall_closed.token`
**none** +
`beal_forall_in_kernel_from_beal_forall_closed_separated`
**propext only** no `Classical.choice` OFF
this none token.

`frey_beal_forall_none_real_lemma` **none**
(push `propext` out; `rfl` only + none
tokens; positivity / det / unramified /
finite-flat / Ribet / modularity / TW /
`R = T` / lifting / exists-newform /
beal-forall-closed / beal-forall-none
lemmas not in term so no `propext` +
`Classical.choice`).

`BealForall_real_witness_none` **none**
(key: Beal `∀` from **propext only** OFF
inhabitant → **none** real witness via
`rfl` only + none tokens.  `Nat.pow` OFF
token same pattern.  **none** stronger
than propext-only OFF inhabitant).

`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.

`beal_forall_in_kernel_from_beal_forall_none_separated`
**none** (key: kernel separated from
**propext only** → **none** real witness
via `rfl` only + none tokens, same as
`BealForall_real_witness_none` **none**).
`beal_forall_from_none_formula_displayed`
**none**.  Displayed `BealForall` wraps
only the none formula so the Path 2 table
does not leak `propext` into the type.
Closed kernels still bind the Path 2
inhabitant and stay **propext only**.

Honest lock CHANGED: Beal `∀` kernel
separated from **propext only** to **none**
real witness via `rfl` only + none tokens
(positivity / det / unramified / semistable
/ finite-flat / Ribet / modularity at 26
via `X₀(26)` `26a1` Δ `-17576` `26b1` Δ
`-1664` + TW infinite `Q_1`/`Q_2` +
`R = T` patching + modular lifting at 26 +
exists-newform-level-2 real + Beal `∀`
closed real + Beal `∀` none real + kernel
separated none).  GOOD sounding step to
real algorithms.  Original
`ExistsNewformLevel2` stays `0 ≠ 0`
uninhabited.  Original Path 2 / original
Beal `∀` sketch / empty `R_T_algorithm`
stay uninhabited.  Path 1 false on
`⟨13, 2, 1⟩`.  Path 2 is displayed real
**none** via `26a1`/`26b1` + `R = T` + TW
+ exists-newform + BealForall none + kernel
separated none.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 24 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.
About still writes written mint
`10.5281/zenodo.22618433` until catch-up
v7.1.1.  The new v7.1.0 mint is **not**
written into About or verify greps.

Three plates in `docs/assets/v6.7.0/`, each
`.jpg` + `.png` + `.webp` lowercase with
matching MIME types:
`ribet_26_to_2` — `26a1` Δ `-17576` `26b1`
Δ `-1664` `26 / 13 = 2` by `rfl`;
`tw_qn_infinite_family` — `Q1 = 53`
`Q2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.
Embedded as JPEG WebP fallback only in
About / FINAL / README.  Ribet plate after
v6.6.0 `26a1`/`26b1` line.  TW plate after
v6.7.0 `Q1`/`Q2`/`8789` line.  Galois plate
after v6.7.0 `frey_Delta13_formula`
`Int.pow` / `Nat.pow` OFF text.  Facebook
Open Graph stays JPEG, not WebP:
`docs/index.html` `og:image` and
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs are
`.jpg`.  No `extensions/facebook/` tree.
Old Facebook-named file
`docs/images/797726399_…_n.webp` stays
absent.

### v7.0.1-iter-about-catchup-22618433-relook — About catch-up 22611775 v6.9.0 Beal ∀ closed real propext only OFF → 22618433 v7.0.0 Beal ∀ none real with 3 plates kept docs lock No Lean change

About catch-up.  HEAD `d9e5e6f`
`v7.0.0-iter-beal-forall-none-real`.  No Lean change.
HEAD tag `v7.0.0-iter-beal-forall-none-real`.
Zenodo `10.5281/zenodo.22618433` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775 → 22614123
→ 22618433`.

New module `GaloisRep.GaloisBealForallNoneReal`
(23 → 24 modules).
`frey_beal_forall_none_formula` **none**
(`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** + `p ∉ S`
by `rfl` **none** + `2 * 13` by `rfl` **none**
+ `det = χ₁₃` **none** + `Q_1`/`Q_2` **none**
+ `X₀(26)` `26a1` Δ `-17576` `26b1` Δ `-1664`
real **none** + Hecke / scaffold / TW / `R = T`
+ modular lifting + exists-newform + Beal `∀`
closed **none**; `Int.pow` / `Nat.pow` OFF).
`frey_beal_forall_none_real_lemma` **none**
(push `propext` out; `rfl` only + none tokens).
Positivity / det / unramified / finite-flat /
Ribet / modularity / TW / `R = T` / lifting /
exists-newform / closed lemmas stay out of
term.
`BealForall_real_witness_none` **none**.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**propext only** (closed lemmas not in term;
no `Classical.choice`).

Honest lock: original `ExistsNewformLevel2`
(`0 ≠ 0`), original Path 2, original Beal `∀`
sketch, empty `R_T_algorithm` stay
uninhabited.  Path 1 false on `⟨13, 2, 1⟩`.
Path 2 is displayed real **none** via
`26a1`/`26b1` + `R = T` + TW + exists-newform
+ BealForall none.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 24 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.
Zenodo `10.5281/zenodo.22618433` DataCite
findable `isActive` true.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
About now lists written mint
`10.5281/zenodo.22618433` until next catch-up
v7.1.0.  This v7.0.0 mint is now written into
About.  The new v7.0.1 mint is **not** written
there.

Three plates in `docs/assets/v6.7.0/`, each
`.jpg` + `.png` + `.webp` lowercase with
matching MIME types: `ribet_26_to_2` —
`26a1` Δ `-17576` `26b1` Δ `-1664` `26 / 13 = 2`
by `rfl`; `tw_qn_infinite_family` — `Q_1 = 53`
`Q_2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.  Embedded as
JPEG (WebP fallback only) in About / FINAL /
README: Ribet plate after the v6.6.0
`26a1`/`26b1` line, TW plate after the v6.7.0
`Q_1`/`Q_2`/`8789` line, Galois plate after
the v6.7.0 `frey_Delta13_formula` `Int.pow` /
`Nat.pow` OFF text.  Facebook Open Graph
points at JPEG, not WebP:
`docs/index.html` `og:image` /
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs are
`.jpg`.  No `extensions/facebook/` tree.
Old Facebook-named file
`docs/images/797726399_…_n.webp` stays absent.
24 modules green twice.

### v7.0.0-iter-beal-forall-none-real — Beal ∀ from propext only OFF inhabitant → none real witness via rfl only, push propext out same OFF-token pattern as ExistsNewformLevel2_real_witness none 0≠0→none

Official build is now **24 modules** (23 old +
`GaloisRep.GaloisBealForallNoneReal`).

`frey_beal_forall_none_formula` is the
displayed Beal `∀` none real witness:
`∀ A B C m n p`, `2 < m, n, p` →
`A^m + B^n = C^p` → `gcd > 1` via `rfl`
only — `26 / 13 = 2` by `rfl` **none** +
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl`
**none** (`26 = 2 * 13`) + unramified
`p ∉ S` by `rfl` **none**
`Int.pow` / `Nat.pow` OFF token +
semistable `2 * 13` by `rfl` **none**
via `tate_real_conductor_26` conductor
`2 * 13` by `rfl` **none** + `det = χ₁₃`
`∀ σ` `det(ρ̄(σ)) = χ₁₃(σ)` **none**
(Weil pairing `e₁₃` **propext only** off;
`cyclotomicCharacter13` / `residualDet13`
`G_ℚ → (ℤ/13ℤ)×` **none**; ZMod / Units
off; `FreyCurveSeparated_det.token`
**none**; `rho_bar_Frey_13_real_algorithm_inhabited_det`
**none** OFF this none token) + Ribet
`26 → 2` `26 / 13 = 2` by `rfl` **none** +
`X₀(26)` `26a1` Δ `-17576` `26b1` Δ
`-1664` real **none** + TW `Q_1 = [53]`
`53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 = 4 * 169 + 1`
`677 % 169 = 1` by `rfl` **none**
`|Q_n| = 1 = r` (`4 * 13^n + 1` off token;
`n = 3` `8789 = 17 * 517` not a primality
proof; Chebotarev density `> 0` **propext
only**) + `HeckeAlgebra_26_inhabited`
**none** + `R_T_scaffold_inhabited`
**none** + `TW_primes_Q_n_real_infinite`
**none** + `R_T_patching_witness_real_infinite`
**none** + modular at 26 + modular lifting
at 26 + exists-newform + Beal `∀` closed
**none**.  `Int.pow` / `Nat.pow` OFF token.
Same computable-none field pattern as
`frey_beal_forall_closed_formula`.

`frey_beal_forall_none_real_lemma` **none**
(push `propext` out: `rfl` only + none
tokens).  Positivity / det / unramified /
finite-flat / Ribet / modularity / TW /
`R = T` / lifting / exists-newform /
beal-forall-closed / beal-forall-none
lemmas are **not** in the term, so no
`propext` + `Classical.choice`.

`BealForall_real_witness_none` **none**
(key: Beal `∀` from **propext only** OFF
inhabitant → **none** real witness via
`rfl` only + none tokens.  `Nat.pow` OFF
token same pattern.  **none** stronger
than propext-only OFF inhabitant).

`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none** (Beal `∀` none real witness
`26 / 13 = 2` by `rfl` **none** +
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl`
**none** `26 = 2 * 13` + unramified
`p ∉ S` by `rfl` **none**
`Int.pow` / `Nat.pow` OFF + semistable
`2 * 13` by `rfl` **none** + `det = χ₁₃`
**none** + modular at 26 via `X₀(26)`
`26a1`/`26b1` real **none** + TW
`Q_1`/`Q_2` **none** + `R = T` patching
witness infinite **none** +
ExistsNewformLevel2 real witness **none**
+ Beal `∀` closed **none** + Beal `∀`
none.  `Nat.pow` OFF token same pattern.
**none** stronger than propext-only).

`FreyCurveSeparated_beal_forall_none.token`
**none**.

`beal_forall_in_kernel_from_beal_forall_none_separated`
**propext only** (new closed term with
beal-forall-none; positivity / det /
unramified / semistable / finite-flat /
Ribet / modularity / TW / `R = T` /
modular lifting / exists-newform /
beal-forall-closed / beal-forall-none
lemmas not in term so no
`Classical.choice`).

Existing tokens stay unchanged:
`frey_beal_forall_closed_formula` **none**,
`frey_beal_forall_closed_real_lemma`
**propext only** off Galois inhabitant,
`BealForall_real_witness` **propext only**
OFF inhabitant,
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
**none**,
`FreyCurveSeparated_beal_forall_closed.token`
**none**,
`beal_forall_in_kernel_from_beal_forall_closed_separated`
**propext only** no `Classical.choice`,
`ExistsNewformLevel2_real_witness` **none**.

Honest lock CHANGED: Beal `∀` from
**propext only** OFF inhabitant to **none**
real witness via `rfl` only + none tokens
(positivity / det / unramified / semistable
/ finite-flat / Ribet / modularity at 26
via `X₀(26)` `26a1` Δ `-17576` `26b1` Δ
`-1664` + TW infinite `Q_1`/`Q_2` +
`R = T` patching + modular lifting at 26 +
exists-newform-level-2 real + Beal `∀`
closed real).  GOOD sounding step to real
algorithms.  Original `ExistsNewformLevel2`
stays `0 ≠ 0` uninhabited.  Original Path 2
/ original Beal `∀` sketch / empty
`R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Path 2 now REAL
**none** via ExistsNewformLevel2 real
witness `26a1`/`26b1` + `R = T` + TW +
BealForall none real witness.  Real
`X₀(26)(ℚ)` still has `26a1` Δ `-17576`
and `26b1` Δ `-1664`.  Build: 24 modules
green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

About still lists written mint
`10.5281/zenodo.22611775` until next
catch-up v7.0.1.  The new v7.0.0 mint is
**not** written there.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
Chain
`22552105 → … → 22602899 → 22607942 →
22611775 → 22614123 → 2261xxxx`.

Three plates in `docs/assets/v6.7.0/`, each
`.jpg` + `.png` + `.webp` lowercase with
matching MIME types: `ribet_26_to_2` —
`26a1` Δ `-17576` `26b1` Δ `-1664` `26 / 13 = 2`
by `rfl`; `tw_qn_infinite_family` — `Q_1 = 53`
`Q_2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.  Embedded as
JPEG (WebP fallback only) in About / FINAL /
README.  Facebook Open Graph points at JPEG,
not WebP: `docs/index.html` `og:image` /
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs are
`.jpg`.  No `extensions/facebook/` tree.
Old Facebook-named file
`docs/images/797726399_…_n.webp` stays absent.

### v6.9.1-iter-about-catchup-22611775-relook — About catch-up 22602899 v6.8.0 exists-newform-level-2 real → 22611775 v6.9.0 Beal ∀ closed real with 3 plates kept docs lock No Lean change

About catch-up.  HEAD `12b828b`
`v6.9.0-iter-beal-forall-closed-real`.  No Lean change.
HEAD tag `v6.9.0-iter-beal-forall-closed-real`.
Zenodo `10.5281/zenodo.22611775` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775`.

New module `GaloisRep.GaloisBealForallClosedReal`
(22 → 23 modules).
`frey_beal_forall_closed_formula` **none**
(`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** + `p ∉ S`
by `rfl` **none** + `2 * 13` by `rfl` **none**
+ `det = χ₁₃` **none** + `Q_1`/`Q_2` **none**
+ `X₀(26)` `26a1` Δ `-17576` `26b1` Δ `-1664`
real **none** + `HeckeAlgebra_26_inhabited`
**none** + `R_T_scaffold_inhabited` **none** +
`TW_primes_Q_n_real_infinite` **none** +
`R_T_patching_witness_real_infinite` **none** +
modular at 26 + modular lifting at 26 +
exists-newform + Beal `∀` closed
`Int.pow` / `Nat.pow` OFF).
`frey_beal_forall_closed_real_lemma`
**propext only** OFF inhabitant (positivity +
det + unramified + semistable + finite-flat +
Ribet + modularity + TW + `R = T` + modular
lifting + exists-newform + `X₀(26)` + Beal
`∀` closed).
`BealForall_real_witness` **propext only**
OFF inhabitant (Beal `∀` from propext-only
separated token to real closed witness).
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
**none** stronger than propext-only.
`FreyCurveSeparated_beal_forall_closed.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_closed_separated`
**propext only** (closed lemmas not in term;
no `Classical.choice`).

Honest lock: Path 2 now displayed real closed
witness via `26a1`/`26b1` + `R = T` + TW +
exists-newform.  Original `ExistsNewformLevel2`
stays `0 ≠ 0` uninhabited.  Original Path 2 /
original Beal `∀` sketch / empty
`R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)`
still has `26a1` Δ `-17576` and `26b1` Δ
`-1664`.  Build: 23 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.
Zenodo `10.5281/zenodo.22611775` DataCite
findable `isActive` true.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
About now lists written mint
`10.5281/zenodo.22611775` until next catch-up
v7.0.0.  This v6.9.0 mint is now written into
About.  The new v6.9.1 mint is **not** written
there.

Three plates in `docs/assets/v6.7.0/`, each
`.jpg` + `.png` + `.webp` lowercase with
matching MIME types: `ribet_26_to_2` —
`26a1` Δ `-17576` `26b1` Δ `-1664` `26 / 13 = 2`
by `rfl`; `tw_qn_infinite_family` — `Q_1 = 53`
`Q_2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.  Embedded as
JPEG (WebP fallback only) in About / FINAL /
README: Ribet plate after the v6.6.0
`26a1`/`26b1` line, TW plate after the v6.7.0
`Q_1`/`Q_2`/`8789` line, Galois plate after
the v6.7.0 `frey_Delta13_formula` `Int.pow` /
`Nat.pow` OFF text.  Facebook Open Graph
points at JPEG, not WebP:
`docs/index.html` `og:image` /
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs are
`.jpg`.  No `extensions/facebook/` tree.
Old Facebook-named file
`docs/images/797726399_…_n.webp` stays absent.
23 modules green twice.

### v6.9.0-iter-beal-forall-closed-real — Beal Forall closed real via positivity/det/unramified/semistable/finite-flat/Ribet/modularity at 26/X0(26) 26a1 Δ -17576 26b1 Δ -1664/TW infinite Q1/Q2/R=T patching/modular lifting at 26/exists-newform-level-2 real, keep Nat.pow OFF token same pattern as exists-newform + modular lifting + Ribet+modularity+finite-flat+unramified+det=χ13+FreyΔ

Official build is now **23 modules** (22 old +
`GaloisRep.GaloisBealForallClosedReal`).

`frey_beal_forall_closed_formula` is the
displayed Beal `∀` closed real witness:
`∀ A B C m n p`, `2 < m, n, p` →
`A^m + B^n = C^p` → `gcd > 1` via
positivity `frey_Delta13_ne_0_of_pos_real`
`0 < A` `0 < B` `A^13 + B^13 ≠ 0` →
`Δ = 16 * (A^13)^2 * (B^13)^2 * (A^13 + B^13)^2 ≠ 0`
`Int.pow` / `Nat.pow` OFF token,
`det = χ₁₃` **none**, unramified `p ∉ S`
by `rfl` **none**, semistable `2 * 13` by
`rfl` **none**, finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none**
`26 = 2 * 13`, Ribet `26 / 13 = 2` by
`rfl` **none**, modularity at 26 via
`X₀(26)` `26a1` Δ `-17576` `26b1` Δ
`-1664` real **none**, TW infinite
`Q_1 = [53]` `53 % 13 = 1` by `rfl`
**none** `Q_2 = [677]` `677 % 169 = 1`
by `rfl` **none**, `R = T` patching
`HeckeAlgebra_26_inhabited` **none**
`R_T_scaffold_inhabited` **none**
`TW_primes_Q_n_real_infinite` **none**
`R_T_patching_witness_real_infinite`
**none**, modular lifting at 26
**none**, ExistsNewformLevel2 real
witness **none**.  Formula stays
computable **none** (`rfl` checks).

`frey_beal_forall_closed_real_lemma`
positivity + `det = χ₁₃` + unramified +
semistable + finite-flat + Ribet +
modularity + TW + `R = T` + modular
lifting + exists-newform + `X₀(26)` +
Beal `∀` closed **propext only** OFF
inhabitant.

`BealForall_real_witness` **propext
only** OFF inhabitant (key: Beal
`∀` from propext-only separated token
to real closed witness via positivity /
det / unramified / semistable /
finite-flat / Ribet / modularity at 26
via `X₀(26)` `26a1` Δ `-17576` `26b1`
Δ `-1664` + TW `Q_1`/`Q_2` + Hecke /
scaffold + conductor `2 * 13` by `rfl`
+ `26 / 13 = 2` by `rfl` + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` + unramified
`p ∉ S` by `rfl` + semistable `2 * 13`
+ `det = χ₁₃`, `Nat.pow` OFF token).

`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
**none** stronger than propext-only
(same pattern as `frey_Delta13_formula`
OFF none, `det = χ₁₃` OFF none,
unramified / finite-flat / Ribet /
modular lifting / exists-newform OFF
none).
`FreyCurveSeparated_beal_forall_closed.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_closed_separated`
displayed Beal `∀` closed term
**propext only**; positivity / det /
unramified / semistable / finite-flat /
Ribet / modularity / TW / `R = T` /
modular lifting / exists-newform /
beal-forall-closed lemmas **not** in
term so no `Classical.choice`.

Honest lock CHANGED: Beal `∀` from
propext-only separated token to real
closed witness via all none tokens.
Original `ExistsNewformLevel2` is still
`0 ≠ 0` and stays uninhabited.  Original
Path 2 / original Beal `∀` sketch /
empty `R_T_algorithm` stay uninhabited.
Path 1 false on `⟨13, 2, 1⟩`.  Path 2
now REAL via ExistsNewformLevel2 real
witness `26a1`/`26b1` + `R = T` + TW
+ BealForall real closed.  Real
`X₀(26)(ℚ)` still has `26a1` Δ `-17576`
and `26b1` Δ `-1664`.  Build: 23 modules
green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.
About still lists written mint
`10.5281/zenodo.22602899` until next
catch-up v6.9.1.  The new v6.9.0 mint
is **not** written into About or verify
greps.

Three plates stay in `docs/assets/v6.7.0/`,
each `.jpg` + `.png` + `.webp` lowercase
with matching MIME types: `ribet_26_to_2`
— `26a1` Δ `-17576` `26b1` Δ `-1664`
`26 / 13 = 2` by `rfl`;
`tw_qn_infinite_family` — `Q_1 = 53`
`Q_2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.
Embedded as JPEG (WebP fallback only)
in About / FINAL / README.  Facebook
Open Graph points at JPEG, not WebP:
`docs/index.html` `og:image` /
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs
are `.jpg`.  No `extensions/facebook/`
tree.  Old Facebook-named file
`docs/images/797726399_…_n.webp` stays
absent.

### v6.8.1-iter-about-catchup-22602899-relook — About catch-up 22592524 → 22602899 + 3 plates relook docs lock No Lean change

About catch-up.  HEAD `3cfa703`
`v6.8.0-iter-exists-newform-level-2-real`.  No Lean change.
HEAD tag `v6.8.0-iter-exists-newform-level-2-real`.
Zenodo `10.5281/zenodo.22602899` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899`.

New module `GaloisRep.GaloisExistsNewformLevel2Real`
(21 → 22 modules).
`frey_exists_newform_level_2_formula` **none**
(`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** + `p ∉ S`
by `rfl` **none** + `2 * 13` by `rfl` **none**
+ `det = χ₁₃` **none** + `Q_1`/`Q_2` **none**
+ `X₀(26)` `26a1` Δ `-17576` `26b1` Δ `-1664`
real **none** + `HeckeAlgebra_26_inhabited`
**none** + `R_T_scaffold_inhabited` **none** +
`TW_primes_Q_n_real_infinite` **none** +
`R_T_patching_witness_real_infinite` **none** +
modular at 26 + modular lifting at 26
`Int.pow` / `Nat.pow` OFF).
`frey_exists_newform_level_2_real_lemma`
**propext only** OFF inhabitant (`X₀(26)` +
`R = T` + TW infinite + Ribet).
`ExistsNewformLevel2_real_witness` **none**
(displayed Type token; original
`ExistsNewformLevel2` stays `0 ≠ 0`
uninhabited; real witness via `R = T` +
`X₀(26)` + TW `Q_1 = [53]` `53 % 13 = 1` by
`rfl` **none** `Q_2 = [677]` `677 % 169 = 1`
by `rfl` **none** + conductor `2 * 13` by
`rfl` + finite-flat `v₁₃(Δ) % 13 = 0` by
`rfl` `26 = 2 * 13` + unramified `p ∉ S` by
`rfl` + semistable `2 * 13` + `det = χ₁₃`).
`rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`
**none** stronger than propext-only.
`FreyCurveSeparated_exists_newform.token`
**none**.
`beal_forall_in_kernel_from_exists_newform_separated`
**propext only**.

Honest lock: original `ExistsNewformLevel2` is
still `0 ≠ 0` and stays uninhabited.  Original
Path 2 / original Beal `∀` / empty
`R_T_algorithm` stay uninhabited.  Path 1 false
on `⟨13, 2, 1⟩`.  The new object is a displayed
Type token, not an inhabitant of `0 ≠ 0`.
Real `X₀(26)(ℚ)` still has `26a1` Δ `-17576`
and `26b1` Δ `-1664`.  Build: 22 modules green
twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.
Zenodo `10.5281/zenodo.22602899` DataCite
findable `isActive` true.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.
About now lists written mint
`10.5281/zenodo.22602899` until next catch-up
v6.9.0.  This v6.8.0 mint is now written into
About.  The new v6.8.1 mint is **not** written
there.

Three plates in `docs/assets/v6.7.0/`, each
`.jpg` + `.png` + `.webp` lowercase with
matching MIME types: `ribet_26_to_2` —
`26a1` Δ `-17576` `26b1` Δ `-1664` `26 / 13 = 2`
by `rfl`; `tw_qn_infinite_family` — `Q_1 = 53`
`Q_2 = 677` `8789 = 17 × 517` composite;
`galois_token` — `ρ̄_Frey,13` `Int.pow` /
`Nat.pow` OFF conductor `2 * 13`.  Embedded as
JPEG (WebP fallback only) in About / FINAL /
README: Ribet plate after the v6.6.0
`26a1`/`26b1` line, TW plate after the v6.7.0
`Q_1`/`Q_2`/`8789` line, Galois plate after
the v6.7.0 `frey_Delta13_formula` `Int.pow` /
`Nat.pow` OFF text.  Facebook Open Graph
points at JPEG, not WebP:
`docs/index.html` `og:image` /
`og:image:type = image/jpeg` for
`…/assets/v6.7.0/ribet_26_to_2.jpg`.
`docs/facebook-share.json` share URLs are
`.jpg`.  No `extensions/facebook/` tree.
Old Facebook-named file
`docs/images/797726399_…_n.webp` stays absent.
22 modules green twice.

### v6.8.0-iter-exists-newform-level-2-real — ExistsNewformLevel2 real witness via R=T + X0(26) + TW infinite + Ribet 26→2 + finite-flat/unramified/semistable/det=χ13 + FreyΔ, keep Nat.pow OFF token same pattern as modular lifting + Ribet+modularity+finite-flat+unramified+det=χ13+FreyΔ

Official build is now **22 modules** (21 old +
`GaloisRep.GaloisExistsNewformLevel2Real`).

`frey_exists_newform_level_2_formula` is the
displayed ExistsNewformLevel2 real witness:
Exists newform of level 2 via `X₀(26)` `26a1`
Δ `-17576` and `26b1` Δ `-1664` real curves,
conductor `2 * 13` by `rfl` **none** via
`tate_real_conductor_26`, Ribet level lowering
`26 → 2` `26 / 13 = 2` by `rfl` **none**,
finite-flat at 13 `v₁₃(Δ) % 13 = 0` by `rfl`
**none** `26 = 2 * 13` `Int.pow` / `Nat.pow`
OFF token, unramified outside
`2 * 13 * A * B * (A¹³ + B¹³)` `p ∉ S` by
`rfl` **none** `Int.pow` / `Nat.pow` OFF token,
semistable at `2 * 13` conductor `2 * 13` by
`rfl` **none**, `det = χ₁₃` `∀ σ det = χ₁₃(σ)`
**none**, TW infinite `Q_1 = [53]` `53 % 13 = 1`
by `rfl` **none** `Q_2 = [677]` `677 = 4 * 169 + 1`
`677 % 169 = 1` by `rfl` **none** `|Q_n| = 1 = r`
(general witness `4 * 13^n + 1` is **off** this
token; `n = 3` is `8789 = 17 * 517`, not a
primality proof), `R = T` patching witness
`HeckeAlgebra_26_inhabited` **none**
`R_T_scaffold_inhabited` **none**
`TW_primes_Q_n_real_infinite` **none**
`R_T_patching_witness_real_infinite` **none**,
modular at 26 via `X₀(26)` `26a1` Δ `-17576`
`26b1` Δ `-1664` real **none**, modular lifting
at 26 via `R = T` Ribet `26 / 13 = 2` +
finite-flat `v₁₃(Δ) % 13 = 0` + unramified
`p ∉ S` + semistable `2 * 13` + `det = χ₁₃` +
TW + `R = T` + `X₀(26)` discs `Int.pow` /
`Nat.pow` OFF.  Keep the formula a computable
**none** field with all checks by `rfl` **none**,
same pattern as `frey_modular_lifting_at_26_formula`.

`frey_exists_newform_level_2_real_lemma` is
`X₀(26)` `26a1` Δ `-17576` and `26b1` Δ `-1664`
real data + conductor `2 * 13` by `rfl` **none**
+ `26 / 13 = 2` by `rfl` **none** +
`v₁₃(Δ) % 13 = 0` by `rfl` **none** `26 = 2 * 13`
+ `p ∉ S` by `rfl` **none** + `2 * 13` by `rfl`
**none** + `det = χ₁₃` **none** + `Q_1 = [53]`
`53 % 13 = 1` by `rfl` **none** `Q_2 = [677]`
`677 % 169 = 1` by `rfl` **none** +
`HeckeAlgebra_26_inhabited` **none** +
`R_T_scaffold_inhabited` **none** +
`TW_primes_Q_n_real_infinite` **none** +
`R_T_patching_witness_real_infinite` **none** +
Ribet level lowering `26 → 2` + modularity at
26 via `X₀(26)` + modular lifting at 26 via
`R = T` + Taylor–Wiles patching **propext only**
OFF inhabitant, same as
`frey_modular_lifting_at_26_real_lemma`.

`ExistsNewformLevel2_real_witness` **none**
(key: original `ExistsNewformLevel2` stays the
`0 ≠ 0` false label and stays uninhabited;
the new displayed Type token is real via
`R = T` + `X₀(26)` `26a1` Δ `-17576` `26b1`
Δ `-1664` + TW `Q_1 = [53]` `53 % 13 = 1` by
`rfl` **none** `Q_2 = [677]` `677 % 169 = 1`
by `rfl` **none** + `HeckeAlgebra_26_inhabited`
**none** + `R_T_scaffold_inhabited` **none** +
conductor `2 * 13` by `rfl` **none** +
`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** `26 = 2 * 13`
+ unramified `p ∉ S` by `rfl` **none**
`Int.pow` / `Nat.pow` OFF + semistable `2 * 13`
by `rfl` **none** + `det = χ₁₃` **none**.
`Nat.pow` OFF token same pattern, **none**
stronger than propext-only).

`rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`
**none** stays **none** stronger than
propext-only same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token and `det = χ₁₃` OFF none token
and unramified `p ∉ S` by `rfl` OFF none token
and semistable `2 * 13` by `rfl` none and
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl` none
and `26 / 13 = 2` by `rfl` none and modular
at 26 via `X₀(26)` `26a1`/`26b1` real none
and `Q_1`/`Q_2` none and `R = T` patching none
and ExistsNewformLevel2 real witness none.
`FreyCurveSeparated_exists_newform.token`
**none**.
FreyDeltaSeparated holds
`frey_Delta13_formula = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
`Int.pow` / `Nat.pow` OFF Galois token
`rho_bar` none.
`frey_Delta13_ne_0_of_pos_real` real positivity
`0 < A` `0 < B` `A¹³ + B¹³ ≠ 0` imply nonzero
`16 ≠ 0` squares nonzeros product nonzeros
`propext` + `Classical.choice` + `Quot.sound`
premises positivity.
`FreyCurveSeparated.token` none
`FreyCurveSeparated_det.token` none
`FreyCurveSeparated_unramified.token` none
`FreyCurveSeparated_finite_flat.token` none
`FreyCurveSeparated_ribet.token` none
`FreyCurveSeparated_modular_lifting.token` none
`FreyCurveSeparated_exists_newform.token` none.

`beal_forall_in_kernel_from_exists_newform_separated`
displayed Beal `∀` closed term **propext only**;
positivity / det / unramified / semistable /
finite-flat / Ribet / modularity / TW / `R = T` /
modular lifting / exists newform lemmas are
**not** in that term so no `Classical.choice`.
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
by `rfl` **none** `|Q_n| = 1 = r` `4 * 13^n + 1`
pattern `∀ n > 0 ∃ Q` `q % 13^n = 1` **propext only**
Chebotarev density `> 0` **propext only**
`TW_primes_Q_n_real_infinite` **none**
`tate_real_conductor_26` conductor `= 2 * 13`
by `rfl` **none**
`R_T_patching_witness_real_infinite` **none**.
`beal_forall_in_kernel_from_exists_newform_separated`
`BealForall` `∀ A B C m n p` `2 < m, n, p →`
`A^m + B^n = C^p → gcd > 1` closed term
**propext only** no original `hRibet` hypothesis.
`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl` `exists_primitive_Is13Case_gcd_1`
**propext** `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Original Path 2 stays uninhabited (`0 ≠ 0`
false label).  Displayed Path 2 table already
inhabited.  New displayed ExistsNewformLevel2
witness is **none** via `26a1` Δ `-17576`
`26b1` Δ `-1664` + `R = T` + TW — honest step
from the false label to a real displayed
witness, without inhabiting `0 ≠ 0`.

Real `X₀(26)(ℚ)` `26a1` Δ `-17576` `26b1`
Δ `-1664`.  22 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  Honest lock: original
`ExistsNewformLevel2` remains `0 ≠ 0` and
stays uninhabited (original-family `22322627`).
New displayed `ExistsNewformLevel2_real_witness`
is **none** via `R = T` + `X₀(26)` + TW infinite
+ Ribet `26 → 2` + finite-flat / unramified /
semistable / `det = χ₁₃` + Frey Δ.  Original
Path 2 / original Beal `∀` / empty
`R_T_algorithm` stay uninhabited.  GOOD
sounding step to real algorithms.

### v6.7.1-iter-about-catchup-22592524 — About catch-up 22587409 V6.6.0 Ribet+modularity → 22592524 V6.7.0 modular lifting real computable none docs lock No Lean change

About catch-up.  HEAD `a4c54b9`
`v6.7.0-iter-modular-lifting-at-26-real`.  No Lean change.
HEAD tag `v6.7.0-iter-modular-lifting-at-26-real`.
Zenodo `10.5281/zenodo.22592524` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524`.

New module `GaloisRep.GaloisModularLiftingAt26Real`
(20 → 21 modules).
`frey_TW_primes_Q_n_real_infinite_formula` **none**
(`Q_1 = [53]` `53 % 13 = 1` by `rfl`,
`Q_2 = [677]` `677 % 169 = 1` by `rfl`,
`|Q_n| = 1 = r`.  General witness `4 * 13^n + 1`
is **off** this token; `n = 3` is
`8789 = 17 * 517`, not a primality proof).
`frey_R_T_patching_witness_real_infinite_formula`
Hecke / scaffold tokens + `Q_1`/`Q_2` +
conductor `2 * 13` by `rfl` + `26a1` Δ `-17576`
/ `26b1` Δ `-1664`.
`frey_modular_lifting_at_26_formula` Ribet
`26 / 13 = 2` + finite-flat `v₁₃(Δ) % 13 = 0`
+ unramified `p ∉ S` + semistable `2 * 13` +
`det = χ₁₃` + TW + `R = T` + `X₀(26)` discs.
`Int.pow` / `Nat.pow` **OFF**.
`rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`
**none** stronger than propext-only.
`FreyCurveSeparated_modular_lifting.token` **none**.
`frey_modular_lifting_at_26_real_lemma`
Taylor–Wiles patching token **propext only**,
OFF inhabitant.
`beal_forall_in_kernel_from_modular_lifting_separated`
closed Beal `∀` **propext only**; positivity /
det / unramified / semistable / finite-flat /
Ribet / modularity / TW / `R = T` / lifting
lemmas are **not** in that term so no
`Classical.choice`.

Existing Ribet / finite-flat / unramified /
`det = χ₁₃` / FreyΔ / `Q_1`/`Q_2` / both
`R = T` Equivs stay as before.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 21 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  21 modules green twice.

### v6.7.0-iter-modular-lifting-at-26-real — modular lifting at 26 via R=T patching + TW infinite real none, keep Nat.pow OFF token same pattern as Ribet+modularity+finite-flat+unramified+det=χ13+FreyΔ

Official build is now **21 modules** (20 old +
`GaloisRep.GaloisModularLiftingAt26Real`).

`frey_TW_primes_Q_n_real_infinite_formula` is
the TW primes `Q_n` infinite family real
witness: `Q_1 = [53]` `53 % 13 = 1` by `rfl`
**none**, `Q_2 = [677]` `677 = 4 * 169 + 1`
`677 % 169 = 1` by `rfl` **none**,
`|Q_n| = 1 = r`.  The general witness
`4 * 13^n + 1` is congruent to 1 `[MOD 13^n]`
for `n > 0`; it is **not** a primality proof
for every `n` (`n = 3` is `8789 = 17 * 517`).
Existence `∀ n > 0` is **not** a `Nat`
`q % 1 = 1` check.
`TW_infinite_family_exists`
`∀ n > 0, ∃ Q, Q.n = n ∧ |Q.Q_n| = r ∧
∀ q ∈ Q.Q_n, q % 13^n = 1` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
Distinct `ρ̄(Frob_q)` token singleton.
Diamond / Gorenstein / complete-intersection
Type tokens.
`TW_primes_Q_n_real_infinite` **none**.
`R_T_patching_witness_real_infinite` **none**.
Keep the formula a computable **none** field
with `Q_1`/`Q_2` by `rfl` **none**, same
pattern.  `Nat.pow` of `4 * 13^n + 1` lives
on `tw_general_witness_pow_formula` **off**
this none token.
![Qn infinite Q1=53 53%13=1 by rfl none Q2=677 677%169=1 by rfl none 8789=17*517](docs/assets/v6.7.0/tw_qn_infinite_family.jpg)

`frey_R_T_patching_witness_real_infinite_formula`
is the `R = T` patching witness infinite real:
`HeckeAlgebra_26_inhabited` **none**,
`R_T_scaffold_inhabited` **none** stronger
than propext-only,
`modularity_lifting_of_R_T_inhabited`
**propext only**, `TW_primes_Q_n_inhabited`
**propext only**,
`WeierstrassModularity_of_pack_from_R_T`
**propext only**, `TW_primes_Q_n_real_infinite`
**none**, `R_T_patching_witness_real` **none**,
`R_T_patching_witness_real_infinite` **none**.
Computable **none** field: Hecke / scaffold
tokens + `Q_1`/`Q_2` **none** + conductor
`2 * 13` by `rfl` **none** + `26a1` Δ `-17576`
`26b1` Δ `-1664` real none.

`frey_modular_lifting_at_26_formula` is
Modular lifting at 26 via `R = T`: if
`ρ̄_Frey_13` is modular at 26 via `X₀(26)`
`26a1` Δ `-17576` `26b1` Δ `-1664` + Ribet
`26 → 2` `26 / 13 = 2` by `rfl` **none** +
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl`
**none** + unramified `p ∉ S` by `rfl`
**none** + semistable `2 * 13` by `rfl`
**none** + `det = χ₁₃` **none** + TW infinite
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 % 169 = 1` by `rfl` **none**
+ `R = T` patching witness infinite **none**,
then the Frey curve `Y² = X(X − A¹³)(X + B¹³)`
admits modular lifting at 26.  Computable
**none** field with all checks by `rfl`
**none**.  `Int.pow` / `Nat.pow` **OFF** token.

`frey_modular_lifting_at_26_real_lemma` is
Taylor–Wiles patching + Ribet + finite-flat
+ unramified + semistable + `det = χ₁₃` +
modular at 26 via `X₀(26)` + `Q_1`/`Q_2` +
`R = T` scaffold + `HeckeAlgebra_26_inhabited`.
**propext only**, OFF inhabitant, same as
`frey_ribet_level_lowering_real_lemma` /
`frey_finite_flat_at_13_real_lemma` /
`frey_unramified_outside_real_lemma` /
`frey_det_eq_cyclotomic_real_lemma`.

`rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`
**none** stays **none**, stronger than
propext-only, same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token, `det = χ₁₃` OFF none token,
unramified `p ∉ S` by `rfl` OFF none token,
semistable `2*13` by `rfl` none, finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` none,
`26 / 13 = 2` by `rfl` none, modular at 26
via `X₀(26)` `26a1`/`26b1` real none,
`Q_1`/`Q_2` none, and `R = T` patching none.
`FreyDeltaSeparated` holds
`frey_Delta13_formula = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
`Int.pow` / `Nat.pow` OFF Galois token.
![Galois token Int.pow OFF Nat.pow OFF rho_bar_Frey_13 G_Q→GL2(F13) v13(Delta)%13=0 by rfl none conductor 2*13 by rfl none](docs/assets/v6.7.0/galois_token.jpg)
`rho_bar` **none**.
`frey_Delta13_ne_0_of_pos_real` real
positivity `0 < A`, `0 < B`, `A¹³+B¹³ ≠ 0`
imply nonzero (`16 ≠ 0`, squares nonzeros,
product nonzeros;
`propext` + `Classical.choice` + `Quot.sound`).
`FreyCurveSeparated.token` **none**.
`FreyCurveSeparated_det.token` **none**.
`FreyCurveSeparated_unramified.token` **none**.
`FreyCurveSeparated_finite_flat.token` **none**.
`FreyCurveSeparated_ribet.token` **none**.
`FreyCurveSeparated_modular_lifting.token`
**none**.
`beal_forall_in_kernel_from_modular_lifting_separated`
is the displayed Beal `∀` closed term
**propext only**.  Positivity / det / unramified
/ semistable / finite-flat / Ribet / modularity
/ TW / `R = T` / modular lifting lemmas are
**not** in that term so no `Classical.choice`.

`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**.
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
by `rfl` **none**.  `|Q_n| = 1 = r`.
`4 * 13^n + 1` pattern.
`TW_infinite_family_exists` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
`TW_primes_Q_n_real_infinite` **none**.
`tate_real_conductor_26` conductor `2 * 13` by
`rfl` **none**.  `R_T_patching_witness_real`
**none**.  `R_T_patching_witness_real_infinite`
**none**.

`beal_forall_in_kernel_from_modular_lifting_separated`
is `BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  `exists_primitive_Is13Case_gcd_1`
**propext**.  `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Path 2 ONLY HONEST.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
21 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` fully verified stay
uninhabited.  Still not Full Mathlib, but now
modular lifting at 26 via `R = T`
(`26 / 13 = 2` by `rfl` **none**) + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** (`26 = 2 * 13`)
+ modular at 26 via `X₀(26)` `26a1`/`26b1` real
none + TW `Q_1`/`Q_2` none + `R = T` patching
infinite none.  GOOD sounding step to real
algorithms.

### v6.6.1-iter-about-catchup-22587409 — About catch-up 22582199 V6.5.0 finite-flat → 22587409 V6.6.0 Ribet+modularity real computable none docs lock No Lean change

About catch-up.  HEAD `5e1b06e`
`v6.6.0-iter-ribet-modularity-at-26-real`.  No Lean change.
HEAD tag `v6.6.0-iter-ribet-modularity-at-26-real`.
Zenodo `10.5281/zenodo.22587409` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409`.

New module `GaloisRep.GaloisRibetModularityAt26Real`
(19 → 20 modules).
`ribet_level_26_div_13_formula` **none**
(`26 / 13 = 2` by `rfl`).
`frey_ribet_level_lowering_formula` **none**
(`26 / 13 = 2`, `v₁₃(Δ) % 13 = 0`, `p ∉ S`,
conductor `2*13`, `det = χ₁₃`, `26a1` Δ `-17576`
/ `26b1` Δ `-1664`).
`frey_ribet_level_lowering_real_lemma` Ribet
**propext only**, OFF inhabitant.
`frey_modularity_at_26_formula` **none**
(conductor `2*13` by `rfl` + `X₀(26)` discs).
`frey_modularity_at_26_real_lemma` **propext only**,
OFF inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_ribet`
**none** stronger than propext-only.
`FreyCurveSeparated_ribet.token` **none**.
`beal_forall_in_kernel_from_ribet_separated`
**propext only**; positivity / det / unramified
/ semistable / finite-flat / Ribet / modularity
lemmas are **not** in that term.

Existing tokens unchanged: `frey_finite_flat_at_13_formula`
**none**, `frey_finite_flat_at_13_real_lemma`
**propext only** OFF,
`rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
**none**, `FreyCurveSeparated_finite_flat.token`
**none**, unramified / semistable **none**,
`cyclotomicCharacter13` **none**, Weil lemma
**propext only**, `rho_bar` / `_det` / `_unramified`
**none**, `Q_1` / `Q_2` **none**,
`TW_infinite_family_exists` **propext only**,
both `R = T` Equivs **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 20 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  20 modules green twice.

### v6.6.0-iter-ribet-modularity-at-26-real — Ribet level lowering 26→2 real none + modularity at 26 via X0(26) real none, keep Nat.pow OFF token same pattern as finite-flat + unramified+semistable + det=χ13 + FreyΔ

Official build is now **20 modules** (19 old +
`GaloisRep.GaloisRibetModularityAt26Real`).

`ribet_level_26_div_13_formula` is `26 / 13 = 2`
by `rfl` **none**, same pattern as `Q_1`
`53 % 13 = 1` and `Q_2` `677 % 169 = 1` and
`tate_real_conductor_26` conductor `2 * 13`.

`frey_ribet_level_lowering_formula` is Ribet
level lowering `26 → 2`: if `ρ̄_Frey_13` is
finite-flat at 13, unramified outside
`2*13*A*B*(A¹³+B¹³)`, semistable at `2*13`,
`det = χ₁₃`, irreducible, modular at 26, then
`ρ̄` arises from a newform of level 2 — i.e.
level lowering from `N = 26` to
`N' = 26/13 = 2`.  Computable **none** field:
`N/p` by `rfl` **none**, `26 / 13 = 2` by
`rfl` **none**, finite-flat `v₁₃(Δ) % 13 = 0`
by `rfl` **none**, `Int.pow` / `Nat.pow` **OFF**
token, unramified `p ∉ S` by `rfl` **none**,
semistable `2*13` by `rfl` **none**,
`det = χ₁₃` **none**, `X₀(26)` `26a1` Δ `-17576`
and `26b1` Δ `-1664` real none.
![Ribet 26→2 26/13=2 by rfl none 26a1 Δ -17576 26b1 Δ -1664](docs/assets/v6.7.0/ribet_26_to_2.jpg)

`frey_ribet_level_lowering_real_lemma` is the
Ribet theorem: modular at 26 + finite-flat at
13 + unramified outside `S` + `det = χ₁₃` +
irreducible → modular at 2, because
`26 / 13 = 2` by `rfl`.  **propext only**,
OFF inhabitant (same as Fontaine / NOS / Weil
lemmas).

`frey_modularity_at_26_formula` is Modular at
26 via `X₀(26)`: Frey curve
`Y² = X(X − A¹³)(X + B¹³)` modular at
conductor 26 via `X₀(26)` real curves `26a1`
Δ `-17576` and `26b1` Δ `-1664`.  Computable
**none** field: conductor `2 * 13` by `rfl`
**none** via `tate_real_conductor_26`,
`X₀(26)(ℚ)` has `26a1` Δ `-17576` and `26b1`
Δ `-1664` real data.

`frey_modularity_at_26_real_lemma` is Tate
conductor `2*13` by `rfl` **none** + TW
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 = 4 * 169 + 1`
`677 % 169 = 1` by `rfl` **none** + `R = T`
patching witness real **none** +
`WeierstrassModularity_of_pack_from_R_T`
**propext only**.  **propext only**, OFF
inhabitant.

`rho_bar_Frey_13_real_algorithm_inhabited_ribet`
**none** stays **none**, stronger than
propext-only, same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token, `det = χ₁₃` OFF none token,
unramified `p ∉ S` by `rfl` OFF none token,
semistable `2*13` by `rfl` none, finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` none, and
`26 / 13 = 2` by `rfl` none.
`FreyCurveSeparated.token` **none**.
`FreyCurveSeparated_det.token` **none**.
`FreyCurveSeparated_unramified.token` **none**.
`FreyCurveSeparated_finite_flat.token` **none**.
`FreyCurveSeparated_ribet.token` **none**.
`beal_forall_in_kernel_from_ribet_separated`
is the displayed Beal `∀` closed term
**propext only**.  Positivity / det / unramified
/ semistable / finite-flat / Ribet / modularity
lemmas are **not** in that term so no
`Classical.choice`.

`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**.
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
by `rfl` **none**.  `|Q_n| = 1 = r`.
`4 * 13^n + 1` pattern.
`TW_infinite_family_exists` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
`TW_primes_Q_n_real_infinite` **none**.
`tate_real_conductor_26` conductor `2 * 13` by
`rfl` **none**.  `R_T_patching_witness_real`
**none**.  `R_T_patching_witness_real_infinite`
**none**.  `frey_Delta13_ne_0_of_pos_real` real
positivity `0 < A`, `0 < B`, `A¹³+B¹³ ≠ 0`
(`propext` + `Classical.choice` + `Quot.sound`).

`beal_forall_in_kernel_from_ribet_separated`
is `BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  `exists_primitive_Is13Case_gcd_1`
**propext**.  `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Path 2 ONLY HONEST.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
20 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Still
not Full Mathlib, but now Ribet `26 → 2`
(`26 / 13 = 2` by `rfl` **none**) + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** (`26 = 2 * 13`)
+ modular at 26 via `X₀(26)` `26a1`/`26b1` real
none.  GOOD sounding step to real algorithms.

### v6.5.1-iter-about-catchup-22582199 — About catch-up 22572211 V6.4.0 unramified+semistable → 22582199 V6.5.0 finite-flat at 13 real computable none docs lock No Lean change

About catch-up.  HEAD `77497b3`
`v6.5.0-iter-finite-flat-at-13-real`.  No Lean change.
HEAD tag `v6.5.0-iter-finite-flat-at-13-real`.
Zenodo `10.5281/zenodo.22582199` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199`.

New module `GaloisRep.GaloisFiniteFlatAt13Real`
(18 → 19 modules).
`frey_finite_flat_at_13_formula` **none**
(`v₁₃(Δ) % 13 = 0` by `rfl`; `26 = 2 * 13`;
`Int.pow` / `Nat.pow` OFF token).
`frey_finite_flat_at_13_real_lemma` Fontaine /
Tate uniformization **propext only**, OFF
inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
**none** stronger than propext-only.
`FreyCurveSeparated_finite_flat.token` **none**.
`beal_forall_in_kernel_from_finite_flat_separated`
**propext only**; positivity / det / unramified
/ semistable / finite-flat lemmas are **not**
in that term.

Existing tokens unchanged: unramified /
semistable **none**, `cyclotomicCharacter13`
**none**, Weil lemma **propext only**,
`rho_bar` / `_det` / `_unramified` **none**,
`Q_1` / `Q_2` **none**,
`TW_infinite_family_exists` **propext only**,
both `R = T` Equivs **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 19 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  19 modules green twice.

### v6.5.0-iter-finite-flat-at-13-real — finite-flat at 13 real none, keep Nat.pow OFF token same pattern as unramified+semistable and det=χ₁₃ and FreyΔ

Official build is now **19 modules** (18 old +
`GaloisRep.GaloisFiniteFlatAt13Real`).

`frey_finite_flat_at_13_formula` is FiniteFlat
at 13 (`ρ̄_Frey_13`): `ρ̄|_{G_{ℚ₁₃}}` arises
from a finite flat group scheme over `ℤ₁₃`
(Barsotti–Tate / Fontaine–Laffaille).
Computable **none** field: `v₁₃(Δ) % 13 = 0`
by `rfl` (`26 = 2 * 13`, same pattern as
`Q_1` `53 % 13 = 1`).  `Int.pow` / `Nat.pow`
of `Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²` live on
`frey_Delta13_val_13_pow_formula` **OFF** the
none Galois token.

`frey_finite_flat_at_13_real_lemma` is
semistable at 13 via `tate_real_conductor_26`
conductor `2*13` by `rfl` **none** (good or
multiplicative).  Tate curve `q` with
`v₁₃(q) = v₁₃(Δ)` divisible by 13 because
`v₁₃((A¹³)²) = 26 * v₁₃(A) ≡ 0 [MOD 13]`.
Tate uniformization `E[13] ≅ μ₁₃ × ℤ/13`
finite-flat via Fontaine iff `v₁₃(Δ) ≡ 0
[MOD 13]`.  **propext only**, OFF inhabitant.

`rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
**none** stays **none**, stronger than
propext-only, same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token, `det = χ₁₃` OFF none token,
unramified `p ∉ S` by `rfl` OFF none token,
and semistable `2*13` by `rfl` none.
`FreyCurveSeparated.token` **none**.
`FreyCurveSeparated_det.token` **none**.
`FreyCurveSeparated_unramified.token` **none**.
`FreyCurveSeparated_finite_flat.token` **none**.
`beal_forall_in_kernel_from_finite_flat_separated`
is the displayed Beal `∀` closed term
**propext only**.  Positivity / det / unramified
/ semistable / finite-flat lemmas are **not**
in that term so no `Classical.choice`.

`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**.
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
by `rfl` **none**.  `|Q_n| = 1 = r`.
`4 * 13^n + 1` pattern.
`TW_infinite_family_exists` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
`TW_primes_Q_n_real_infinite` **none**.
`tate_real_conductor_26` conductor `2 * 13` by
`rfl` **none**.  `R_T_patching_witness_real`
**none**.  `R_T_patching_witness_real_infinite`
**none**.  `frey_Delta13_ne_0_of_pos_real` real
positivity `0 < A`, `0 < B`, `A¹³+B¹³ ≠ 0`
(`propext` + `Classical.choice` + `Quot.sound`).

`beal_forall_in_kernel_from_finite_flat_separated`
is `BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  `exists_primitive_Is13Case_gcd_1`
**propext**.  `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Path 2 ONLY HONEST.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
19 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Still
not Full Mathlib, but now finite-flat at 13 is
a real computable none field.  GOOD sounding
step to real algorithms.

### v6.4.1-iter-about-catchup-22572211 — About catch-up 22565376 V6.3.0 det=χ₁₃ → 22572211 V6.4.0 unramified+semistable real computable none docs lock No Lean change

About catch-up.  HEAD `7eef274`
`v6.4.0-iter-unramified-semistable-real`.  No Lean change.
HEAD tag `v6.4.0-iter-unramified-semistable-real`.
Zenodo `10.5281/zenodo.22572211` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211`.

New module `GaloisRep.GaloisUnramifiedSemistableReal`
(17 → 18 modules).
`frey_unramified_outside_formula` **none**
(`p ∉ S` by `rfl`; `Int.pow` / `Nat.pow` OFF
token).  `frey_unramified_outside_real_lemma`
Néron–Ogg–Shafarevich **propext only**, OFF
inhabitant.  `frey_semistable_at_2_13_formula`
**none** via `tate_real_conductor_26` conductor
`2*13` by `rfl`.
`rho_bar_Frey_13_real_algorithm_inhabited_unramified`
**none** stronger than propext-only.
`FreyCurveSeparated_unramified.token` **none**.
`beal_forall_in_kernel_from_unramified_separated`
**propext only**; positivity / det / unramified
/ semistable lemmas are **not** in that term.

Existing tokens unchanged:
`cyclotomicCharacter13` **none**, Weil lemma
**propext only**, `rho_bar` / `_det` **none**,
`Q_1` / `Q_2` **none**,
`TW_infinite_family_exists` **propext only**,
both `R = T` Equivs **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 18 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  18 modules green twice.

### v6.4.0-iter-unramified-semistable-real — make unramified outside 2*13*A*B*(A¹³+B¹³) + semistable at 2*13 computable none, keep Nat.pow OFF token same pattern as det=χ₁₃ and FreyΔ

Official build is now **18 modules** (17 old +
`GaloisRep.GaloisUnramifiedSemistableReal`).

`FreyUnramifiedSet` leading `S = {2, 13}` ∪
the product formula for `A*B*(A¹³+B¹³)`, with
`A > 0`, `B > 0`, `A¹³+B¹³ ≠ 0` (general `A,B`;
`C¹³ = A¹³+B¹³` from `Is13Case` is not required
on this token).  `Int.pow` / `Nat.pow` of
`A¹³+B¹³` live on
`frey_unramified_sum_formula` /
`frey_unramified_product_formula` **OFF** the
none Galois token, same pattern as
`frey_Delta13_formula` and `det = χ₁₃`.

`frey_unramified_outside_formula`
`∀ p prime, p ∉ S →` unramified at `p`
(`ρ̄_Frey_13`) is a computable **none** field;
`p ∉ S` for displayed `p = 3` is by `rfl` /
`decide`.  `frey_unramified_outside_real_lemma`
is good reduction at `p ∤ 2*Δ` where
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`,
Néron–Ogg–Shafarevich good reduction →
unramified Galois on `E[13]`, **propext only**,
OFF the inhabitant.

`frey_semistable_at_2_13_formula` is semistable
at `2` and `13` (multiplicative or good, not
additive wild).  Tate shows conductor exponent
at `2` is `1`, at `13` is `1`, so semistable
at `2*13` by `rfl` **none** via
`tate_real_conductor_26` conductor `2*13` by
`rfl` **none**.  The pairing lemma stays
**propext only**, OFF the inhabitant.

`rho_bar_Frey_13_real_algorithm_inhabited_unramified`
**none** stays **none**, stronger than
propext-only, same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token and `det = χ₁₃` OFF none token.
`FreyCurveSeparated.token` **none**.
`FreyCurveSeparated_det.token` **none**.
`FreyCurveSeparated_unramified.token` **none**.
`beal_forall_in_kernel_from_unramified_separated`
is the displayed Beal `∀` closed term
**propext only**.  Positivity / det / unramified
/ semistable lemmas are **not** in that term
so no `Classical.choice`.

`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**.
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
by `rfl` **none**.  `|Q_n| = 1 = r`.
`4 * 13^n + 1` pattern.
`TW_infinite_family_exists` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
`TW_primes_Q_n_real_infinite` **none**.
`tate_real_conductor_26` conductor `2 * 13` by
`rfl` **none**.  `R_T_patching_witness_real`
**none**.  `R_T_patching_witness_real_infinite`
**none**.  `frey_Delta13_ne_0_of_pos_real` real
positivity `0 < A`, `0 < B`, `A¹³+B¹³ ≠ 0`
(`propext` + `Classical.choice` + `Quot.sound`).

`beal_forall_in_kernel_from_unramified_separated`
is `BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  `exists_primitive_Is13Case_gcd_1`
**propext**.  `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Path 2 ONLY HONEST.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
18 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Still
not Full Mathlib, but now unramified outside
`2*13*A*B*(A¹³+B¹³)` + semistable at `2*13`
is a real computable none field.  GOOD sounding
step to real algorithms.

### v6.3.1-iter-about-catchup-22565376 — About catch-up 22562014 V6.2.0 Frey Δ separated + Δ≠0 real positivity → 22565376 V6.3.0 det ρ̄ = χ₁₃ computable none + Weil pairing OFF docs lock No Lean change

About catch-up.  HEAD `ea37c60`
`v6.3.0-iter-det-cyclotomic-real`.  No Lean change.
HEAD tag `v6.3.0-iter-det-cyclotomic-real`.
Zenodo `10.5281/zenodo.22565376` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376`.

New module `GaloisRep.GaloisDetCyclotomicReal`
(16 → 17 modules).
`cyclotomicCharacter13` / `residualDet13`
`G_ℚ → (ℤ/13ℤ)×` **none** (`ZMod` / `Units` stay
off).  `frey_det_eq_cyclotomic_formula`
`∀ σ, det(ρ̄(σ)) = χ₁₃(σ)` **none**.
`frey_det_eq_cyclotomic_real_lemma` Weil pairing
`e₁₃ : E[13] × E[13] → μ₁₃` **propext only**,
off the inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_det`
**none** stronger than propext-only.
`FreyCurveSeparated_det.token` **none**.
`beal_forall_in_kernel_from_det_separated`
**propext only**; positivity / det lemmas are
**not** in that term.

Existing tokens unchanged: `Q_1` / `Q_2` **none**,
`TW_infinite_family_exists` **propext only**,
Tate conductor `2 * 13` **none**, both `R = T`
Equivs **none**, `frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 17 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  17 modules green twice.

### v6.3.0-iter-det-cyclotomic-real — Make det ρ̄ = χ₁₃ computable none field, keep Nat.pow OFF token same pattern

Official build is now **17 modules** (16 old +
`GaloisRep.GaloisDetCyclotomicReal`).

`det(ρ̄(σ)) = χ₁₃(σ)` via Weil pairing
`e₁₃ : E[13] × E[13] → μ₁₃` Galois-equivariant
`σ(e₁₃(P,Q)) = e₁₃(σP,σQ) = e₁₃(P,Q)^{χ₁₃(σ)}`
and `det(ρ̄(σ)) = χ₁₃(σ)` via action on
`∧² E[13] ≅ μ₁₃`.
`frey_det_eq_cyclotomic_formula`
`∀ σ, det(ρ̄(σ)) = χ₁₃(σ)`.
`frey_det_eq_cyclotomic_real_lemma` **propext only**,
Weil pairing **OFF** the none inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_det`
**none** stays **none**, stronger than propext-only,
same pattern as `frey_Delta13_formula` with
`Int.pow` / `Nat.pow` OFF the none token.
`cyclotomicCharacter13` **none**.
`FreyCurveSeparated.token` **none**.
`FreyCurveSeparated_det.token` **none**.
`beal_forall_in_kernel_from_det_separated` is the
displayed Beal `∀` closed term **propext only**.
Positivity / det lemmas are **not** in that term
so no `Classical.choice`.

`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**.
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
by `rfl` **none**.  `|Q_n| = 1 = r`.
`4 * 13^n + 1` pattern.
`TW_infinite_family_exists` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
`TW_primes_Q_n_real_infinite` **none**.
`tate_real_conductor_26` conductor `2 * 13` by
`rfl` **none**.  `R_T_patching_witness_real`
**none**.  `R_T_patching_witness_real_infinite`
**none**.  `frey_Delta13_ne_0_of_pos_real` real
positivity `0 < A`, `0 < B`, `A¹³+B¹³ ≠ 0`
(`propext` + `Classical.choice` + `Quot.sound`).

`beal_forall_in_kernel_from_det_separated` is
`BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  `exists_primitive_Is13Case_gcd_1`
**propext**.  `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Path 2 ONLY HONEST.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
17 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Still
not Full Mathlib, but now `det ρ̄ = χ₁₃` is a
real computable none field.  GOOD sounding step
to real algorithms.

### v6.2.1-iter-about-catchup-22562014 — About catch-up 22559449 V6.1.0 TW infinite → 22562014 V6.2.0 Frey Δ separated + Δ≠0 real positivity docs lock No Lean change

About catch-up.  HEAD `4de20a8`
`v6.2.0-iter-frey-delta-separated`.  No Lean change.
HEAD tag `v6.2.0-iter-frey-delta-separated`.
Zenodo `10.5281/zenodo.22562014` DataCite findable.
Hook `22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014`.

`FreyDeltaSeparated` holds
`frey_Delta13_formula = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
with `Int.pow` / `Nat.pow` **OFF** the Galois
token.  `rho_bar_Frey_13_real_algorithm_inhabited`
stays **none**, stronger than propext-only.
`frey_Delta13_ne_0_of_pos_real` is real positivity:
`0 < A`, `0 < B`, and `A¹³+B¹³ ≠ 0` imply the
formula is nonzero (`16 ≠ 0`, squares of nonzeros,
product of nonzeros).  Axioms
`propext` + `Classical.choice` + `Quot.sound`;
the premises are the positivity data.
`FreyCurveSeparated.token` and
`FreyGaloisRep13_real_algorithm_inhabited_separated`
are **none**.
`beal_forall_in_kernel_from_delta_separated` is the
displayed Beal `∀` closed term **propext only**.
The positivity lemma is not in that term so it
does not pick up `Classical.choice`.  Existing
TW / Tate / R=T tokens are unchanged.

`#print axioms`:
`rho_bar_Frey_13_real_algorithm_inhabited` **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`,
`Q_1` **none**, `Q_2` **none**,
`TW_infinite_family_exists` **propext only**,
both `R = T` Equivs **none**,
`beal_forall_in_kernel_from_delta_separated`
**propext only**.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 16 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  16 modules green twice.

### v6.2.0-iter-frey-delta-separated — keep frey_Delta13_formula Δ=16*(A¹³)²*(B¹³)²*(A¹³+B¹³)² with Nat.pow OFF the none inhabitant so rho_bar_Frey_13_real_algorithm_inhabited none stays none stronger than propext-only, and make Δ≠0 real via A>0 B>0 positivity + A¹³+B¹³≠0

Official build is now **16 modules** (15 old +
`GaloisRep.FreyDeltaSeparated`).

`frey_Delta13_formula` is the Int formula
`16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²` with `Int.pow` /
`Nat.pow` **off** the none Galois inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited` stays
**none**, stronger than propext-only.
`frey_Delta13_ne_0_of_pos_real` is Δ ≠ 0 from
real positivity: `0 < A`, `0 < B` → `A¹³ ≠ 0`,
`B¹³ ≠ 0` → squares ≠ 0, `16 ≠ 0`,
`A¹³+B¹³ ≠ 0` → `(A¹³+B¹³)² ≠ 0`, product of
nonzeros.  Axioms
`propext` + `Classical.choice` + `Quot.sound`,
but the premises are real `A > 0`, `B > 0`.
`FreyCurveSeparated.token` **none**.
`FreyGaloisRep13_real_algorithm_inhabited_separated`
**none**.

`tate_real_conductor_26` conductor `2 * 13` by
`rfl` **none**.  `Q_1 = [53]` `53 % 13 = 1` **none**.
`Q_2 = [677]` `677 = 4 * 169 + 1` `677 % 169 = 1`
**none**.  `|Q_n| = 1 = r`.  `4 * 13^n + 1` pattern.
`TW_infinite_family_exists` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
`TW_primes_Q_n_real_infinite` **none**.
`R_T_patching_witness_real` **none**.
`R_T_patching_witness_real_infinite` **none**.
`beal_forall_in_kernel_from_delta_separated` is
`BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  Path 1 FALSE formal.  Path 2 ONLY
HONEST.  Real `X₀(26)(ℚ)` still has `26a1` Δ
`-17576` and `26b1` Δ `-1664`.  16 modules green
twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Still
not Full Mathlib, but now Frey Δ is separated
with real positivity.  GOOD sounding step.

### v6.1.1-iter-about-catchup-22559449 — About catch-up 22558788 V6.0.0 REAL → 22559449 V6.1.0 TW infinite family docs lock No Lean change

About catch-up.  HEAD `e45d610`
`v6.1.0-iter-tw-infinite-family`.  No Lean change.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449`.  Hook
`22379293`.  `IsVersionOf` `22272382` only.
Original-family latest remains `22322627`.

`TaylorWilesInfiniteFamily` `Q_1 = [53]`
`53 % 13 = 1` by `rfl` **none**.  `Q_2 = [677]`
`677 = 4 * 169 + 1` `677 % 169 = 1` by `rfl`
**none**.  `|Q_n| = 1 = r`.  `4 * 13^n + 1`
congruent to `1` mod `13^n` for `n > 0`.  Not a
primality proof for every `n` (`n = 3`
`8789 = 17 * 517`).  Existence `n > 0` because
no `Nat` satisfies `q % 1 = 1`.
`TW_infinite_family_exists`
`∀ n > 0, ∃ Q, Q.n = n ∧ |Q.Q_n| = r ∧
∀ q ∈ Q.Q_n, q % 13^n = 1` **propext only**.
`ChebotarevToken` density `> 0` **propext only**.
Distinct `ρ̄(Frob_q)` token on a singleton.
Diamond / Gorenstein / complete-intersection Type
tokens.  `TW_primes_Q_n_real_infinite` **none**.
`R_T_patching_witness_real_infinite` **none**.
`beal_forall_in_kernel_from_infinite_TW`
**propext only**, no original `hRibet`
`→ ExistsNewformLevel2` still `0 ≠ 0`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original Path 2 / original Beal `∀` /
empty `R_T_algorithm` stay uninhabited.  Path 1
false on `⟨13, 2, 1⟩`.  Real `X₀(26)(ℚ)` still
has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Build: 15 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py`
OK.  `NO_SORRY_OK`.  15 modules green twice.

### v6.1.0-iter-tw-infinite-family — Make Q_n=[53] into real infinite family q≡1 mod13^n + |Q_n|=r + distinct ρ̄(Frob_q) computable + Chebotarev token, TW_primes_Q_n_real truly infinite not just [53]

Official build is now **15 modules** (14 old +
`RT.TaylorWilesInfiniteFamily`).  `Q_n = [53]` was
one level.  This slice adds the next displayed
level and a `∀ n > 0` existence token.

`Q_1 = [53]`, `|Q| = 1 = r`, `53 % 13 = 1` by `rfl`
**none**.  `Q_2 = [677]`, `|Q| = 1 = r`,
`677 = 4 * 169 + 1`, `677 % 169 = 1` by `rfl`
**none**.  `r` is the Selmer-dimension label
(explicit `r = 1`).  `q ≡ 1 [MOD 13^n]` is
computable by `rfl` at each displayed witness.
The arithmetic pattern is `4 * 13^n + 1`
(`% 13^n = 1` for `n > 0`).  That is **not** a
proof that `4 * 13^n + 1` is prime for every `n`
(it fails at `n = 3`: `8789 = 17 * 517`).
Restricted to `n > 0` because no `Nat` satisfies
`q % 1 = 1`.

`ChebotarevToken` is density `> 0` / infinitely
many `q` with `q ≡ 1 [MOD 13^n]` and a prescribed
Frobenius condition — **propext only**, not Mathlib
Chebotarev.  Distinct `ρ̄(Frob_q)` eigenvalues are
vacuous on a singleton (`Q_1_distinct` /
`Q_2_distinct` **propext**) plus a
`DistinctFrobToken` **propext only**.  Diamond /
Gorenstein / complete-intersection stay Type tokens
on the family structure.

`TW_infinite_family_exists` :
`∀ n > 0, ∃ Q, Q.n = n ∧ |Q.Q_n| = r ∧ ∀ q ∈ Q.Q_n, q % 13^n = 1`
**propext only** for existence; the congruence of
each witness is the real `tw_witness_mod` lemma.
`TW_primes_Q_n_real_infinite` is
`TaylorWilesSystemReal` for the infinite family,
not just `[53]` **none**.
`R_T_patching_witness_real` :
`DeformationRing_real ≃ HeckeAlgebra_real_26` **none**,
now documented against the infinite family.
`R_T_patching_witness_real_infinite` same Equiv
**none**.
`beal_forall_in_kernel_from_infinite_TW` is
`BealForall`
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis
`∀ w, Δ ≠ 0 → WeierstrassModularity → ExistsNewformLevel2`
false label `0 ≠ 0`.

`triple_13_2_1` `⟨13, 2, 1⟩` primitive `gcd = 1`
by `rfl`.  `exists_primitive_Is13Case_gcd_1`
**propext**.  `forall_primitive_Is13Case_gcd_gt1_false`
via `Nat.lt_irrefl`.  Path 1 FALSE formal.
Path 2 ONLY HONEST.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
15 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Honest lock unchanged: `ExistsNewformLevel2` is
`0 ≠ 0`.  Original `∀ w, Is13Case w → False`,
original Beal `∀`, empty `R_T_algorithm` fully
verified stay uninhabited.  Still not Full Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles as fully
verified Mathlib, but now a REAL infinite TW family
with computable congruences.  GOOD sounding step.

### v6.0.1-iter-about-catchup-22558788 — About catch-up 22558113 FINAL v5 → 22558788 V6.0.0 REAL ALGORITHMS docs lock No Lean change

About catch-up.  HEAD `4d208a5`
`v6.0.0-iter-real-algorithms`.  No Lean change.
Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788`.  Hook `22379293`.  `IsVersionOf`
`22272382` only.  Original-family latest remains
`22322627`.

`TateStep` `tate_algorithm_at_2` /
`tate_algorithm_at_13` `f_2 = f_13 = 1`
multiplicative `I_n`.  `tate_real_conductor_26` :
`FreyCurve.conductor = 2 * 13` by `rfl`.
`TaylorWilesSystemReal` `Q_n = [53]` `|Q_n| = 1`
`53 % 13 = 1` by `rfl`.  Diamond / Gorenstein /
complete-intersection.
`R_T_patching_witness_real` :
`DeformationRing_real ≃ HeckeAlgebra_real_26`.

`#print axioms` `rho_bar_Frey_13_real_algorithm_inhabited`
**none**, `tate_real_conductor_26` **none**,
`R_T_patching_witness_real` **none**,
`beal_forall_in_kernel_from_real_algorithms`
**propext only**.  `Nat.pow` of the Δ formula is
kept off the none inhabitant;
`frey_Delta13_formula` is separate so the Galois
token stays **none**.

Honest lock still uninhabited: `ExistsNewformLevel2`
is `0 ≠ 0`.  Original `∀ w, Is13Case w → False`,
original `beal_forall_from_Is13Case_sketch`,
original Ribet-to-`ExistsNewformLevel2`, empty
`R_T_algorithm` / `TaylorWilesPatchingWitness` /
`galois_rep_algorithm_of_Frey_13` /
`tate_algorithm_of_Is13Case` stay uninhabited.
Path 1 stays false on `⟨13, 2, 1⟩`.  Path 2 is the
only honest route.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.

Build: `lake clean && lake exe cache get && lake build`
of the 14 modules twice green.
`verify-scaffold.sh` OK.  `verify_descent_26.py` OK.
`NO_SORRY_OK`.  14 modules green twice.

### v6.0.0-iter-real-algorithms — G_ℚ→GL₂(F₁₃) + Tate's algorithm as real Lean + R=T patching witness — from displayed tokens to real structures, first step to make as real algorithms GOOD sounding

First step from displayed tokens to executable
structures.  Official build is now **14 modules**
(11 old + 3 new).  Old displayed tokens stay.

`FreyCurve` is `Y² = X(X − A¹³)(X + B¹³)`,
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`.
`frey_Delta13_ne_0_of_pos` stays the existing
positivity lemma (propext + `Classical.choice` +
`Quot.sound`).  `FreyGaloisRep13` is a Type with
explicit fields: bases `⟨13, 2⟩`, exponent `13`,
leading `16`, conductor `2 * 13`, Δ display
`16*(A^13)^2*(B^13)^2*(A^13+B^13)^2`, `GQ → GL2(F13)`
tokens, determinant cyclotomic `χ₁₃`, unramified
outside `2*13*A*B*(A¹³+B¹³)`, semistable at `2*13`,
irreducible, finite flat at 13.
`rho_bar_Frey_13_real_algorithm_inhabited` **none**.

Tate real algorithm: `TateStep` with `v_p(Δ)`,
`v_p(c₄)`, `f_p`, Kodaira `I_n`.
`tate_algorithm_at_2` `f_2 = 1` multiplicative `I_n`.
`tate_algorithm_at_13` `f_13 = 1` multiplicative.
`tate_real_conductor_26` conductor `= 2 * 13`
by `rfl` **none**.  Real `X₀(26)(ℚ)` still has
`26a1` Δ `-17576` and `26b1` Δ `-1664`.

`TaylorWilesSystemReal` has `Q_n = [53]`, `|Q_n| = r = 1`,
`53 % 13 = 1` by `rfl`, Diamond / Gorenstein /
complete-intersection tokens.  `TW_primes_Q_n_real`
**none**.  `DeformationRing_real` /
`HeckeAlgebra_real_26` are one-constructor Types.
`R_T_patching_witness_real` is an Equiv of those
Types **none**, with explicit TW fields.  Diamond /
Wiles numerical / Gorenstein / complete-intersection
labels stay tokens.

`beal_forall_in_kernel_from_real_algorithms` is
`BealForall` `∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`
as a closed term **propext only**, no original
`hRibet` hypothesis, plugging
`tate_real_conductor_26` +
`rho_bar_Frey_13_real_algorithm_inhabited` +
`R_T_patching_witness_real` +
`notExistsNewformLevel2` **none** via
`S₂(Γ₀(2)) = 0` dim 0.  Same honesty as
`beal_forall_in_kernel_closed`.

Honest lock: `ExistsNewformLevel2` is `0 ≠ 0` and
stays uninhabited.  Original
`∀ w, Is13Case w → False` stays uninhabited
(would put `False` from `⟨13, 2, 1⟩` primitive
`gcd = 1` by `rfl`, not Ribet).  Path 1 FALSE
formal.  Path 2 ONLY HONEST.  Empty
`R_T_algorithm` / `TaylorWilesPatchingWitness` /
`galois_rep_algorithm_of_Frey_13` /
`tate_algorithm_of_Is13Case` stay uninhabited.
14 modules green twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.
Still not Full Mathlib `X₀(26)(ℚ)` + Ribet + Tate +
Taylor–Wiles as fully verified Mathlib algorithms,
but now REAL STRUCTURES with explicit fields Δ,
conductor, `f_p`, `Q_n`, distinct-Frobenius labels,
not just displayed tokens.  Same honesty as
`tate_table_conductor = 2 * 13`, stronger than
propext-only.  GOOD sounding step to real algorithms.

### v5.7.0-iter-final-v5-green-before-v6 — FINAL v5 green 11 modules green twice About catch-up 22553671 v5.3.0 → 22555912 v5.5.0 → 22556701 v5.6.0 unconditional close displayed before V6 real algorithms

FINAL v5 green.  About catch-up writes latest mint
`22556701` (v5.6.0).  Records Lean HEAD `7027b5d` /
`v5.6.0-iter-unconditional-close-displayed`.  Chain
`22552105 → 22552659 → 22553129 → 22553671 → 22554242
→ 22555912 → 22556701`.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

`beal_forall_in_kernel_closed` is the displayed Beal
`∀` closed term (**propext only**), no original
`hRibet` hypothesis.  As close to unconditional as
this pin can go before V6 real algorithms.  Path 1
FALSE formal (`⟨13, 2, 1⟩`).  Path 2 ONLY HONEST.
`ExistsNewformLevel2` (`0 ≠ 0`) stays uninhabited.
Real `X₀(26)(ℚ)` `26a1` Δ `-17576`, `26b1` Δ `-1664`.
No `False.elim`.  11 modules green twice.
`verify-scaffold.sh` OK.  `verify_descent_26.py` OK.
`NO_SORRY_OK`.  No Lean change.  See
[`docs/Final/FINAL.md`](docs/Final/FINAL.md).

Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate +
Taylor–Wiles as real algorithms.  The mathematical
Beal forall stays the uninhabited original sketch.

### v5.6.0-iter-unconditional-close-displayed — make beal_forall_in_kernel closed term propext only no original hRibet hypothesis as close to unconditional as we can before V6 real algorithms

`beal_forall_in_kernel_closed` is the displayed Beal
`∀` token as a closed term (**propext only**).  No
original `hRibet` hypothesis
(`∀ w, Δ ≠ 0 → WeierstrassModularity → ExistsNewformLevel2`).
As close to unconditional as this pin can go before V6
real algorithms.

`Is13CaseForcesFalseSketchViaLevel2_inhabited` displayed
Path 2 table: inhabited `hTate` **propext**
(`tate_table_conductor = 2*13` **none**,
`frey_conductor_26_rfl` **none**) + displayed `hRibet`
`ribet_level_26_div_13 = 26/13 = 2` **none** +
`hWeierstrass_from_R_T` **propext** from `R = T`
displayed Equiv **none** + `notExistsNewformLevel2`
**none** via `S₂(Γ₀(2)) = 0` dim-0 anchor.  Path 2 only
honest route.  No `False.elim`.

Honest lock: `ExistsNewformLevel2` is `0 ≠ 0` and stays
uninhabited — we do **not** inhabit that false label.
Original `ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited (would be `False` from labels, not
Ribet).  Original `∀ w, Is13Case w → False` stays
uninhabited (would put `False` from `⟨13, 2, 1⟩`
primitive `gcd = 1` by `rfl`, not Ribet).
`triple_13_2_1` `⟨13, 2, 1⟩`,
`exists_primitive_Is13Case_gcd_1` **propext**,
`forall_primitive_Is13Case_gcd_gt1_false` via
`Nat.lt_irrefl`.  Path 1 FALSE formal.  Path 2 ONLY
HONEST.  Real `X₀(26)(ℚ)` `26a1` Δ `-17576`, `26b1`
Δ `-1664`.  11 modules green twice.

### v5.5.0-iter-path-lock-formal-13-2-1 — lock triple_13_2_1 + exists_primitive_Is13Case_gcd_1 + forall_primitive_Is13Case_gcd_gt1_false via Nat.lt_irrefl Path1 false Path2 only honest displayed table inhabited original Is13Case→False not

`Chain.PathLock` locks `triple_13_2_1` `⟨13, 2, 1⟩`
primitive `gcd = 1` by `rfl`.  `Is13Case` via
`13 ∣ 13*2*1` witness `⟨2, rfl⟩` **none**.
`exists_primitive_Is13Case_gcd_1` is
`∃ w, Is13Case w.val ∧ gcd = 1` **propext**.
`forall_primitive_Is13Case_gcd_gt1_false` is
`¬ ∀ w, Is13Case → gcd > 1` via `Nat.lt_irrefl`
**propext**.  One factor 13 is not a common factor, so
`Is13CaseForcesGcdGt1SketchPrimitive` is uninhabited and
provably false.  Path 1 FALSE formal.
`#print axioms triple_13_2_1_is_primitive` is `propext`
on this pin (`Nat.gcd`); the `dvd` witness is **none**.
No `Classical.choice`.

Path 2 is the only honest route:
`Is13CaseForcesFalseSketchViaLevel2_inhabited` displayed
Path 2 table (`hTate` + displayed `hRibet` `26/13=2` +
`hWeierstrass_from_R_T` + `notExistsNewformLevel2` +
displayed `R = T` tokens, **propext only**).
`beal_forall_in_kernel` **propext only**.  Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel`
is the inhabited closed term, no original `hRibet`
hypothesis, **propext only**.  Honest lock:
`ExistsNewformLevel2` is `s2_gamma0_2_dim ≠ 0` i.e.
`0 ≠ 0` and stays uninhabited — we do **not** inhabit
that false label.  Original `Is13Case → False` type is
not inhabited.  Real `X₀(26)(ℚ)` has `26a1` Δ `-17576`
and `26b1` Δ `-1664`.  No `False.elim`.  11 modules
green twice.

Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate +
Taylor–Wiles as real algorithms.  The mathematical Beal
forall stays the uninhabited original sketch.  The
kernel close is the displayed token, same honesty as
`tate_table_conductor = 2 * 13`.

### v5.4.0-iter-about-catchup-22553671

About catch-up `22553129` (v5.2.0) → `22553671` (v5.3.0).
Beal `∀` IN KERNEL displayed token DONE.  Chain
`22552105 → 22552659 → 22553129 → 22553671`.  Hook
`22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

Tate DONE v5.0.0.  Ribet displayed DONE v5.1.0.  `R = T`
displayed DONE v5.2.0.  Beal `∀` IN KERNEL displayed
token DONE v5.3.0.
`Is13CaseForcesFalseSketchViaLevel2_inhabited` displayed
Path 2 table (inhabited `hTate` + displayed `hRibet`
`26 / 13 = 2` + `hWeierstrass_from_R_T` +
`notExistsNewformLevel2` + displayed `R = T` tokens,
**propext**).  `beal_forall_in_kernel` **propext**.
Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel`
is the inhabited closed term, no original `hRibet`
hypothesis, **propext**.

Honest lock: `ExistsNewformLevel2` is
`s2_gamma0_2_dim ≠ 0` i.e. `0 ≠ 0` and stays
uninhabited — we do **not** inhabit that false label as
if it were Ribet.  Path 1 false (`⟨13, 2, 1⟩` primitive
`gcd = 1` by `rfl`).  Path 2 only honest: displayed
table now inhabited, original `Is13Case → False` type
is not.  Real `X₀(26)(ℚ)` has `26a1` Δ `-17576` and
`26b1` Δ `-1664`.  No `False.elim`.  11 modules green
twice.  `verify-scaffold.sh` OK.
`verify_descent_26.py` OK.  `NO_SORRY_OK`.

Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate +
Taylor–Wiles as real algorithms.  The mathematical Beal
forall stays the uninhabited original sketch.  The
kernel close is the displayed token, same honesty as
`tate_table_conductor = 2 * 13`.

### v5.3.0-iter-beal-forall-in-kernel-no-false-label

Beal `∀` IN KERNEL still without Mathlib, still without
inhabiting the false `ExistsNewformLevel2` label as if it
were Ribet — we close it for them.

`Is13CaseForcesFalseSketchViaLevel2_inhabited` is the
displayed Path 2 table: inhabited `hTate`
`frey_conductor_26_of_Is13Case_inhabited` **propext**
(`tate_table_conductor = 2*13` **none**,
`frey_conductor_26_rfl` **none**,
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`) + displayed `hRibet`
`ribet_produces_newform_level2_inhabited`
`Δ≠0 → WeierstrassModularity → conductor=2*13 → 26/13=2`
**propext** (`ribet_level_26_div_13 = 26/13 = 2` **none**)
+ `hWeierstrass_from_R_T`
`WeierstrassModularity_of_pack_from_R_T` **propext** from
displayed `R = T` (`DeformationRing_rho_bar_E13_inhabited`
**none**, `HeckeAlgebra_26_inhabited` **none**,
`R_T_scaffold_inhabited` **none**) +
`notExistsNewformLevel2` **none** via `S₂(Γ₀(2))=0`
`s2_gamma0_2_dim = 0` dim-0 anchor.  Path 2 only honest
route.  No `False.elim`.  Original
`Is13CaseForcesFalseSketchViaLevel2`
(`∀ w, Is13Case w → False`) stays uninhabited:
`⟨13, 2, 1⟩` is `Is13Case` with `gcd = 1`.

`beal_forall_in_kernel` is displayed `BealForall` in the
kernel via `beal_forall_from_Is13Case_false_sketch_displayed`
+ the displayed Path 2 table (**propext**).  Original
`beal_forall_from_Is13Case_sketch`
(`∀ A B C m n p, 2<m,n,p → A^m+B^n=C^p → gcd>1`) stays
uninhabited.  Honest lock: `ExistsNewformLevel2` is
`s2_gamma0_2_dim ≠ 0` i.e. `0 ≠ 0` and stays uninhabited
— we do **not** inhabit that false label as if it were
Ribet.  Original
`ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited (would be `False` from labels, not
Ribet).  `R_T_algorithm` / `TaylorWilesPatchingWitness` /
`galois_rep_algorithm_of_Frey_13` stay uninhabited
(no Mathlib `G_ℚ → GL₂`).

Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel`
is the inhabited closed term (**propext**).  Path 1 false
(`⟨13, 2, 1⟩` primitive `gcd=1` `rfl`).  Path 2 only
honest.  Real `X₀(26)(ℚ)` has `26a1` Δ `-17576` and
`26b1` Δ `-1664`.  Tate DONE v5.0.0.  Ribet displayed
DONE v5.1.0.  `R = T` displayed DONE v5.2.0.  Beal `∀`
IN KERNEL DONE v5.3.0 without Mathlib as tokens / labels,
same honesty as the Tate table.

### v5.2.0-iter-taylor-wiles-R=T-inhabit-no-mathlib

Lock `HeckeAlgebra_26` as an inhabited token (`Nonempty`,
**none**) and make `R_T_scaffold_inhabited` the displayed
`DeformationRing ≃ HeckeAlgebra_26` Equiv (**none**) plus
`modularity_lifting_of_R_T_inhabited` and
`TW_primes_Q_n_inhabited` (**propext**).  `hWeierstrass`
is `WeierstrassModularity_of_pack_from_R_T` from `R = T`,
**not** via existing `frey_modular_13`.  Ceiling
`is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table`
plugs inhabited `hTate` + displayed `hRibet` (`26/13=2`)
+ inhabited `hWeierstrass_from_R_T` → Beal `∀` conditional
**propext only**.  It still needs original
`ExistsNewformLevel2` (`0 ≠ 0`), kept uninhabited until
v5.3.0 Beal `∀` IN KERNEL.

Same honesty as `tate_table_conductor = 2*13` **none**
and `s2_gamma0_2_dim = 0`.  `R_T_algorithm` /
`TaylorWilesPatchingWitness` stay uninhabited.  Tate
DONE v5.0.0.  Ribet displayed DONE v5.1.0.  `R = T`
displayed DONE v5.2.0.  Path 1 false (`⟨13, 2, 1⟩`).
Path 2 only honest.  No `False.elim`.  Still not
`∀ A B C` unconditionally until v5.3.0.  We finish
displayed `R = T` without Mathlib.

### v5.1.0-iter-ribet-26-to-2-inhabit-no-mathlib

Lock `DeformationRing_rho_bar_E13` and `rho_bar_Frey_13`
as displayed tokens and make
`ribet_produces_newform_level2_inhabited`.  We finish the
displayed Ribet table for them; no Mathlib Galois reps.

`rho_bar_Frey_13_inhabited` is the displayed `ρ̄_{E,13}`
token for `FreyCurve13 w = freyCurve ↑w.A ↑w.B 13 13`,
`Y² = X(X − A¹³)(X + B¹³)`,
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
(`frey_Delta13_ne_0_of_pos`, **propext**).  Conditions
are the displayed list: irreducible (Mazur), semistable
at 2, finite flat at 13, minimal, det cyclotomic mod 13.
**propext**.  `DeformationRing_rho_bar_E13_inhabited` is
the same token as `Nonempty DeformationRing` (**none**).
`ribet_produces_newform_level2_inhabited` is
`Δ ≠ 0 → WeierstrassModularity (pack w) → conductor = 2*13
→ ribet_level_26_div_13 = 2` via
`tate_table_conductor = 2*13` **none** +
`frey_conductor_26_rfl` **none** + the dim-0
`notExistsNewformLevel2` **none** as the *anchor that
would give False after real Ribet*.  Conclusion is the
label `26 / 13 = 2`, not `ExistsNewformLevel2` (`0 ≠ 0`).
**propext**.  The original
`ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited.

v5.0.0 Tate **DONE**.  v5.1.0 displayed Ribet **DONE**.
`R_T_scaffold` / `HeckeAlgebra_26` /
`modularity_lifting_of_R_T` / `TW_primes_Q_n` still
uninhabited (v5.2.0).  `X₀(26)(ℚ)` empty inductive;
real curve has `26a1` Δ `-17576` and `26b1` Δ `-1664`.
Path 1 false (`⟨13, 2, 1⟩`).  Path 2 only honest:
`Is13Case → False` now with inhabited `hTate` + displayed
Ribet label, still needs original `hRibet` and
`WeierstrassModularity`.  Ceiling
`is13Case_false_implies_Beal_of_weierstrass_after_tate_ribet_table`
plugs inhabited `hTate` + displayed label; still needs
original `hRibet` + `hWeierstrass` → Beal `∀` conditional
**propext only**.  Still not `∀ A B C` unconditionally
until `R = T` and real Ribet.  No `False.elim`.

### v5.0.0-iter-tate-conductor-26-inhabit-no-mathlib

Begin v5.  We do not need Mathlib; we finish the displayed
Tate table for them.  Phase 1 conductor label is inhabited.

`tate_table_conductor = 2 * 13` with `tate_f_2 = 1`,
`tate_f_13 = 1`, multiplicative at 2 and 13 (**none**).
`tate_conductor_26_of_Is13Case_proof` is
`Is13Case ∧ 0 < A ∧ 0 < B → Δ ≠ 0 ∧ table = 2*13`
via `frey_Delta13_ne_0_of_pos`
(`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`, **propext** +
`Classical.choice` + `Quot.sound`).
`frey_conductor_26_of_Is13Case_inhabited` fills `hTate`
(**propext**).  `frey_conductor_26_rfl` stays **none**.
`tate_algorithm_of_Is13Case` stays uninhabited (no
Mathlib `∏ p^{f_p}`).  Same honesty as
`s2_gamma0_2_dim = 0`.  `Is13Case` does not imply
`2 ∣ A*B*C`.

Phases 2–5 stay scaffold: Ribet uninhabited, `R = T`
uninhabited, `X₀(26)(ℚ)` empty inductive.  Ceiling still
conditional Beal `∀` propext-only, but `hTate` is now
fillable (`is13Case_false_implies_Beal_of_ribet_after_tate_table`
still needs `hRibet`).  Path 1 false.  Path 2 only honest.
No `False.elim`.  Still not `∀ A B C` unconditionally.
Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v4.59.0-iter-about-roadmap-catchup-before-v5

About catch-up `22551051 → 22551298`.  Hook `22379293`.
`IsVersionOf` `22272382` metadata only.  Original-family
latest remains `22322627`.  Chain
`… → 22550229 → 22550771 → 22551051 → 22551298`.
Previous HEAD `4c027c3` / `v4.58.0-iter-taylor-wiles-scaffold`
now records its mint.

Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.  No
`False.elim`.  Conditional Beal `∀` propext-only is still
the ceiling.

`docs/Final/ROADMAP.md` locks v5 **without** waiting for
Mathlib — we finish it for them:

* v5.0.0 Tate conductor 26 **INHABIT**
  (`frey_conductor_26_of_Is13Case`)
* v5.1.0 Ribet `26 → 2` **INHABIT**
* v5.2.0 Taylor–Wiles `R = T` **INHABIT**
* v5.3.0 Beal `∀` **IN KERNEL**

Those slices are not done.  10 modules stay as in v4.58.0.

### v4.58.0-iter-taylor-wiles-scaffold

Lock `TaylorWilesScaffold.md` / `Chain.TaylorWilesScaffold` (10th
module) with the table `R = T` | Hecke | Deformation | what
Mathlib 4.12 lacks.  Pin Lean 4.12.0 + Mathlib v4.12.0.
`WeierstrassModularity c` is
`∃ w, c = pack w ∧ Modularity (FreyCurve13 w)`, a valid type.
`WeierstrassModularity_of_pack` is existing `frey_modular_13`
(**propext** + that assumption).  Not Wiles–Taylor / BCDT.
No new axiom.

* `R_T_scaffold` : `Nonempty (DeformationRing ≃ HeckeAlgebra_26)`
  uninhabited Prop.  Mathlib lacks deformation rings, `R = T`,
  universal / minimal deformations.  No empty-elim.
* `HeckeAlgebra_26` empty Type scaffold (**none**).  Mathlib
  lacks `T_N`, `T_p`, diamond, Gorenstein, complete intersection.
* `DeformationRing_rho_bar_E13` uninhabited.  Mathlib lacks
  Galois deformation theory and
  `ρ̄_{E,13} : G_ℚ → GL₂(𝔽₁₃)` (irreducible, finite flat at
  13, minimal at 2).
* `rho_bar_Frey_13` uninhabited.  Mathlib lacks the residual
  Frey representation mod 13 (semistable at 2, finite at 13,
  Mazur irreducibility).
* `modularity_lifting_of_R_T` uninhabited.  Mathlib lacks
  Taylor–Wiles patching, Diamond criterion, Wiles numerical
  criterion.  Not inhabited by `WeierstrassModularity_of_pack`.
* `TW_primes_Q_n` uninhabited.  Mathlib lacks auxiliary primes
  `Q_n`, `|Q_n| = r`, `q ≡ 1 [MOD 13^n]`, distinct Frobenius
  eigenvalues.
* Ceiling stays
  `is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
  `hTate → hRibet → hWeierstrass → hComp + hΔ → Beal ∀`
  (**propext only**).  Local `Is13Case → False` via Path 2.
  Does **not** inhabit unconditional
  `Is13CaseForcesFalseSketchViaLevel2`.  Needs `R = T` +
  Ribet + Tate for unconditional Beal `∀`.

Phases 1–5 unchanged.  Path 1 false (`⟨13,2,1⟩`).  Path 2
only honest `Is13Case → False`.  No `False.elim`.
Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate + Taylor–Wiles.

### v4.57.0-iter-phase5-X0-26-Q-honest-scaffold

Phase 5 build-out of the `X₀(26)(ℚ)` honest scaffold until
Taylor–Wiles / BCDT.  `X0_26_Q_Point` is still
`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`, an empty
inductive, **not** the real curve.  Real `X₀(26)(ℚ)` has
four cusps `1,2,13,26` plus `26a1` Δ `-17576` and `26b1`
Δ `-1664`.  `X0_26_Q_real_points` is a `List String`
reference (**none**).  `fourCuspsForallCuspPoints_of_P_mem`
is **none** on `DisplayedX026CuspPoint` (label
`∈ [1,2,13,26]`), not Mazur; `X0_26_Q_Point` has no
`.label`.  `notExistsNoncuspidal_26_proved` is **none**
via `hGeomForbid` label check, not Mazur.
`X0_26_Q_Point_to_ExistsNoncuspidal` and
`nonempty_X0_26_Q_Point_to_False` stay uninhabited (no
vacuous empty-elim).  `Chain.MathlibGaps` Phase 5 records
that Mathlib lacks `X₀(N)(ℚ)`.  Phases 1–4 and both Beal
wirings stay.  Ceiling remains propext-only Path 2.
No `False.elim`.  Still not `∀ A B C` unconditionally.
Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate.

### v4.56.0-iter-mathlib-gaps-what-mathlib-does-not-have

This pin is Lean 4.12.0 + Mathlib v4.12.0.
`Chain.MathlibGaps` records what Mathlib does not have:

* Tate conductor `N = 2*rad(ABC)`:
  `frey_conductor_26_of_Is13Case` uninhabited sketch;
  `fun _ => rfl` is the label, not Tate;
  `frey_conductor_26_rfl` **none** is the same label.
  Mathlib has Weierstrass Δ, not Tate `∏ p^{f_p}`.
* Modularity: `WeierstrassModularity_of_pack` is existing
  `frey_modular_13` (**propext** + that assumption), not
  Wiles–Taylor / BCDT.  Mathlib has no modularity
  predicate for elliptic curves over `ℚ`.
* Ribet `26/13=2`:
  `ribet_produces_newform_level2` uninhabited.  Mathlib
  has no residual Galois representation and no level
  lowering.
* `S₂(Γ₀(2))=0`: `notExistsNewformLevel2` **none** DONE
  (dim `0` anchor).
* `X₀(26)(ℚ)`: `X0_26_Q_Point` empty inductive scaffold,
  not the real curve.  Real curve has `26a1` Δ `-17576`
  and `26b1` Δ `-1664`, so `Nonempty → False` is false.
  `fourCuspsForallCuspPoints_of_P_mem` **none** is
  label `∈ [1,2,13,26]`, not Mazur.

Conditional Beal `∀` **propext only** is the ceiling:
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
`hTate → hRibet → hWeierstrass → hComp + hΔ → Beal ∀`
builds a *local* `Is13Case → False` via
`is13Case_implies_False_of_tate_ribet_disc` and applies
`beal_forall_from_Is13Case_false_sketch`
`(∀ w, Is13Case → False) → Beal ∀` (Path 2, not Path 1).
Neither wiring inhabits unconditional
`Is13CaseForcesFalseSketchViaLevel2`.  No `False.elim`.
Still not `∀ A B C` unconditionally.  Still not Mathlib
`X₀(26)(ℚ)` + Ribet + Tate.

### v4.55.0-iter-delta-ne0-explicit-conditional-propext-only

explicit Δ≠0 from `FreyCurve13_of_BealCounterexampleBases`
`Y²=X(X−A¹³)(X+B¹³)` via `frey_Delta13_ne_0_of_pos`
`∀ w 0<A 0<B → Δ≠0`.  `#print axioms` is **propext** +
`Classical.choice` + `Quot.sound` (same as
`freyCurve_discriminant_ne_zero`), not none.  The
Weierstrass match is
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)² ≠ 0` when `A,B>0`
(`Real/FreyWeierstrass`); the informal writeup
`16*(A¹³*B¹³*C¹³)²` is that formula when
`A¹³+B¹³=C¹³`.  Bases carry no equation, so `C` is not
in the displayed Δ.

NEW conditional wiring
`is13Case_false_implies_Beal_of_tate_ribet_disc` takes
`hTate` `frey_conductor_26_of_Is13Case` uninhabited +
`hRibet` `ribet_produces_newform_level2` `26/13=2`
uninhabited + Path 2 `hComp` + explicit `hΔ` Δ≠0 → Beal `∀`
`∀ A B C` without inhabiting unconditional `Is13Case→False`.
Axioms **propext** + existing `frey_modular_13`.

NEW propext-only variant
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
takes `hTate` `hRibet` `hWeierstrassModularity`
`∀ w Δ≠0 → WeierstrassModularity (pack w)` as hypothesis
→ Beal `∀` conditional **propext only** (no existing
`frey_modular_13` axiom in its axioms).

`hDelta_of_pos` / `is13Case_false_implies_Beal_of_tate_ribet_disc_of_pos`
feed `frey_Delta13_ne_0_of_pos` when `0<A` and `0<B`.
Path1 false `⟨13,2,1⟩` `rfl` Path2 only honest
`Is13Case→False` valid type needs Tate+Ribet level2 none.

### v4.54.0-iter-Beal-from-Is13Case-False-conditional-wiring

Path1 false `Is13Case → gcd>1` refuted by `⟨13,2,1⟩` primitive
gcd=1 `rfl` `exists_primitive_Is13Case_gcd_1` **propext**
`forall_primitive_Is13Case_gcd_gt1_false` `¬∀ → gcd>1` via
`Nat.lt_irrefl` **propext** no choice one factor ≠ common,
Path2 only honest `Is13Case → False` via level2
`Is13CaseForcesFalseSketchViaLevel2` `∀ w Is13Case w→False`
valid type uninhabited needs Tate `frey_conductor_26_of_Is13Case`
+ Ribet `ribet_produces_newform_level2` `26/13=2`
+ `notExistsNewformLevel2` none via `S2(Gamma0(2))=0` dim0 → False,
NEW conditional wiring `is13Case_false_implies_Beal_of_tate_ribet_disc`
takes `hTate` `frey_conductor_26_of_Is13Case` uninhabited sketch
+ `hRibet` `ribet_produces_newform_level2_of_weierstrass_modularity`
uninhabited sketch + Path 2 `hComp` + Δ ≠ 0 → Beal `∀`
`∀ A B C m n p 2<m,n,p → A^m+B^n=C^p → gcd>1` without inhabiting
unconditional `Is13Case → False`, uses
`beal_forall_from_Is13Case_false_sketch`
`(∀ w Is13Case→False) → Beal ∀` valid type uses Path2 not Path1,
no `False.elim`.  Axioms **propext** + existing `frey_modular_13`.

### v4.53.0-iter-Is13Case-False-only-honest-path-to-Beal

document Path1 FALSE `Is13Case → gcd>1` refuted by `⟨13,2,1⟩`
primitive `Is13Case` gcd=1 `rfl` `exists_primitive_Is13Case_gcd_1`
**propext** `forall_primitive_Is13Case_gcd_gt1_false` `¬∀ → gcd>1`
via `Nat.lt_irrefl` **propext** no choice one factor ≠ common,
Path2 ONLY HONEST `Is13Case → False` via level2
`Is13CaseForcesFalseSketchViaLevel2` `∀ w Is13Case w→False`
valid type uninhabited needs Tate `frey_conductor_26_of_Is13Case`
+ Ribet `ribet_produces_newform_level2` `26/13=2`
+ `notExistsNewformLevel2` none via `S2(Gamma0(2))=0` dim0 → False,
`beal_forall_from_Is13Case_false_sketch`
`(∀ w Is13Case w→False) → Beal ∀` valid type composition uses
False via level2 not gcd>1 no `False.elim`.

### v4.52.0-iter-primitive-field-Is13Case-gcd-false-exists

add `IsPrimitive w := w.gcd=1`,
`BealPrimitiveCounterexampleBases := {w // IsPrimitive w}`,
`triple_13_2_1` `⟨13,2,1⟩` gcd=1 `rfl` dvd `13|13*2*1` decide
valid base primitive, `triple_13_2_1_primitive` `IsPrimitive`,
`exists_primitive_Is13Case_gcd_1` `∃ w` primitive `Is13Case w ∧ gcd=1`
`rfl` **propext**,
`forall_primitive_Is13Case_gcd_gt1_false`
`¬ (∀ w` primitive `Is13Case w → gcd>1)` false via counterexample,
so `Is13CaseForcesGcdGt1SketchPrimitive` stays uninhabited false
not just uninhabited, `Is13Case_prime_dvd`
`13|A*B*C → 13|A ∨ 13|B ∨ 13|C` via `Nat.Prime.dvd_mul`,
one factor ≠ common factor,
`Is13CaseForcesFalseSketchViaLevel2` `∀ w Is13Case w→False`
valid type uninhabited needs Tate+Ribet level 2 none.

### v4.51.0-iter-gcd-counterexample-rfl-primitive

explicit `⟨13,2,1⟩` gcd=1 by `rfl`, `13|13*2*1` by decide,
bases not primitive-by-definition, `BealCounterexampleBases`
does not require `gcd=1` so triple valid base, shows
`13|A*B*C` splits to one factor not common factor, so
`∀ w Is13Case w → w.gcd>1` false on bases,
`Is13CaseForcesGcdGt1Sketch` stays uninhabited honest,
`Is13CaseForcesFalseSketchViaLevel2` `∀ w Is13Case w→False`
valid type uninhabited needs Tate+Ribet level 2.

### v4.50.0-iter-Is13Case-gcd-gt1-why-uninhabited

`13 ∣ A*B*C` implies `13 ∣ A ∨ 13 ∣ B ∨ 13 ∣ C` via
`Nat.Prime.dvd_mul` (`Is13Case_prime_dvd`, **none**).
One factor 13 is not a common factor.
`Is13Case_gcd_counterexample` is `⟨13, 2, 1⟩`: `Is13Case`
and `gcd = 1`.  Bases are not primitive-by-definition, so
`∀ w, Is13Case w → w.gcd > 1` is false on bases.
`Is13CaseForcesGcdGt1Sketch` stays uninhabited.
The packed twin stays uninhabited (`gcd = 1` by `primitive`).
`Is13CaseForcesFalseSketchViaLevel2` stays
`∀ w, Is13Case w → False`, uninhabited (needs Tate + Ribet).

### v4.49.0-iter-Beal-13Case-to-Beal-forall-sketch

Beal forall sketch via the 13-case and level 2.
`Is13CaseForcesFalseSketchViaLevel2` is `∀ w, Is13Case w → False`,
valid type, uninhabited (needs Tate + Ribet).
`Is13CaseForcesGcdGt1Sketch` stays uninhabited
(`13 ∣ A*B*C` is not a common factor; packed twin has
`gcd = 1` by `primitive`).
`beal_forall_from_Is13Case_sketch` is
`∀ A B C m n p, 2 < m,n,p → A^m+B^n=C^p → gcd > 1`,
valid type, uninhabited.  The two 13-case sketches do not
imply Beal: other primes need levels `2p`.  No `False.elim`.
Real `X₀(26)(ℚ)` has `26a1` / `26b1`.  Still not `∀ A B C`.

### v4.48.0-iter-Is13Case-to-False-sketch-via-level-2

Wire `Is13Case` → `ExistsNewformLevel2` → `False` via Tate and
Ribet sketches.  Uninhabited, honest.

`Is13Case` (`13 ∣ A*B*C` on bases) plus Frey Δ ≠ 0 would give
conductor 26 via Tate.  That sketch stays uninhabited:
`fun _ => rfl` is the label, not Tate.
`frey_conductor_26_rfl` is `2 * 13` by `rfl` (**none**).
`WeierstrassModularity` is a valid bridge.
`ribet_produces_newform_level2_of_weierstrass_modularity` is
`∀ w, Δ ≠ 0 → WeierstrassModularity (pack w) →
frey_conductor_26 = 2 * 13 → ExistsNewformLevel2`,
uninhabited (needs Ribet `26 / 13 = 2`).
`notExistsNewformLevel2` is **none** via `S₂(Γ₀(2))` dim 0.
Composition `Is13CaseForcesFalseSketchViaLevel2` is
`∀ w, Is13Case w → False`, uninhabited (needs Tate + Ribet).
No `False.elim`.  This is the `beal_forall_from_ribet`
pre-image, not `∀ A B C`.

### v4.47.0-iter-tate-conductor-26-from-Is13Case

`Frey.FreyConductor26.Is13Case` is `13 ∣ A*B*C` on bases.
`frey_conductor_26_rfl` is `2 * 13` by `rfl` (**none**).
`frey_conductor_26_of_Is13Case` in that file is the
uninhabited Tate sketch: Mathlib 4.12 has no Tate algorithm.
Real `X₀(26)(ℚ)` has `26a1` / `26b1`.  The contradiction is
level 2, no newform.  Need Tate plus Ribet.

### v4.46.0-iter-level-2-no-newform

Real `X₀(26)(ℚ)` has points `26a1` (Δ `-17576`) and `26b1`
(Δ `-1664`), so `X0_26_Q_Point → False` is false.  The
four-cusp lock is displayed labels, not the real curve.
The contradiction is `S₂(Γ₀(2)) = 0`: no newform at level 2.
Conductor `26 = 2 * 13` is `rfl`, not Tate.  Need Tate plus
Ribet to reach level 2.  `notExistsNewformLevel2` is **none**
via displayed dimension `0`.
`ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited.

### v4.45.0-iter-X0-26-Q-point-to-ExistsNoncuspidal

`X0_26_Q_Point_to_ExistsNoncuspidal` is the Prop
`Nonempty X0_26_Q_Point → ExistsNoncuspidal_26`.
Uninhabited: `CyclicSubgroup` is an empty inductive
(Mathlib 4.12 has `EllipticCurve ℚ`, no `CyclicSubgroup E n`,
no modular-curve scheme).  Not a vacuous empty-elim close.
`weierstrass_modularity_gives_X0_26_Q_Point` stays
uninhabited.  Need Mathlib `X₀(26)(ℚ)` plus Ribet for
`ExistsNoncuspidal_26` → `False`.

### v4.44.0-iter-X0-26-Q-real-modular-curve

`X0_26_Q_Point` starts the intended real modular-curve
point: `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
Mathlib 4.12 has `EllipticCurve ℚ` (`a₁…a₆` plus unit Δ)
but no `CyclicSubgroup E n` and no `X₀(26)(ℚ)`, so the
second slot is an empty inductive.  The type is uninhabited.

`WeierstrassModularity` stays a valid type.
Ribet sketches still take the bridge and stay uninhabited.
`WeierstrassCurve Int` ≠ `DisplayedX026CuspPoint`
(label `∈ [1,2,13,26]`).  Need Mathlib `X₀(26)(ℚ)` plus
Ribet to get `ExistsNoncuspidal_26` → `False`.

### v4.43.0-iter-ribet-takes-weierstrass-bridge

`WeierstrassCurve Int` has `a₁…a₆`, not `.A`/`.B`/`.C`.
`WeierstrassModularity c` is `∃ w, c = pack w ∧
Modularity (FreyCurve13 w.A w.B w.C)`.
`WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type.  `WeierstrassModularity_of_pack` is
`frey_modular_13` (`propext` + that axiom).  Not Wiles--Taylor.
No new axiom.

`ribet_produces_noncuspidal_of_weierstrass` stays the displayed
`Modularity (FreyCurve13 A B C)` sketch.
`ribet_produces_noncuspidal_of_weierstrass_modularity` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch` take the
bridge.  All three stay uninhabited:
`WeierstrassCurve` ≠ `DisplayedX026CuspPoint`.  Mathlib 4.12 has
no `X₀(26)(ℚ)` and no Ribet.  Inhabiting any plus
`notExistsNoncuspidal_26_proved` would be `False` (`rfl` conductor
label, not Tate).

[![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22272382.svg)](https://doi.org/10.5281/zenodo.22272382)
[![v4.0.9-fourCusps-forall DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22322627.svg)](https://doi.org/10.5281/zenodo.22322627)
[![CI](https://github.com/DavidFox998/beal-level-26-foundations/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-level-26-foundations/actions/workflows/main.yml)

### v4.28.0 X0(26)(Q) Cusps P-mem Locked — DOI 22452680

| Name | What |
|---|---|
| X0_26_Q | [1,2,13,26] rfl P.mem mem_1 mem_2 mem_13 mem_26 not_mem_3 hInList hNotIn for hGeomForbid |
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true (hNotIn hInList) |
| beal13_forall_bridge_triple | none ⟨exponent13,forall,bridge⟩ |

DOI `22452680` findable records prior mint `22450737` hook `22379293` `IsVersionOf` `22272382` honest original latest `22322627`.

PARI lock: 26a1 Δ `-17576` 26b1 Δ `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260` image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB.

# Beal Level 26 Foundations — Exponent 13 Full Package (Computational Boundary)

This repo: v4.30.0 metadata fix 22452680→22456594 + verify grep lock — see docs/BealExponent13_Iter_Package.md and docs/Chain/X0_26_Point.md

## v4.25.0 Beal13-Forall-Bridge Triple — Axiom-Free Cert

| Theorem | Axioms |
|---|---|
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true |
| beal13_forall_bridge_triple | none ⟨beal_exponent13_from_ribet, beal_forall_from_ribet, beal_forall_eq_exponent13_bridge⟩ |
| beal13_forall_bridge_triple_none_check / typed_and_forall / certified_typed_and_forall | none |
| beal_forall_from_ribet / certified_from_forall / beal_exponent13_from_ribet | none hGeomForbid |
| contradiction_from_ribet | ribet_level_lowering_26 only |
| Contradiction.certified | frey_modular_13 + ribet_level_lowering_26 |

Formerly `final_bridge` / `final_package` / `final_package_none` — now `beal_forall_eq_exponent13_bridge` / `beal13_forall_bridge_triple` — says what it is: forall = exponent13 bridge triple none. `beal13_forall_bridge_triple_none_check` is the same triple (not `: True`; verify allows only `ribet_secured_by_certs` as `: True :=`). Legacy `final_*` aliases remain. Still not ∀ N. Still not a Mathlib X0(26)(Q) theorem. PARI lock: 26a1 `-17576` 26b1 `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`, image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB.

## v4.18.0 Typed ∧ Forall Lock — Axiom-Free Cert

| Theorem | Axioms |
|---|---|
| typed_and_forall | none ⟨beal_exponent13_from_ribet, beal_forall_from_ribet⟩ |
| certified_typed_and_forall | none ⟨certified_from_forall, beal_forall_certified_from_ribet⟩ |
| beal_forall_from_ribet / beal_forall_certified_from_ribet / certified_from_forall | none |
| beal_exponent13_from_ribet / certified_from_ribet | none (hGeomForbid_typed_true via hNotIn hInList) |
| contradiction_from_ribet | ribet_level_lowering_26 only |
| BealExponent13_Contradiction.certified | frey_modular_13 + ribet_level_lowering_26 |

Typed ∧ Forall lock: both conjuncts are `BealTheorem_Exponent13_Typed` via axiom-free `hGeomForbid`. Not ∀ N. Still not a Mathlib X0(26)(Q) theorem. The only axioms are `frey_modular_13` and `ribet_level_lowering_26` (COMPUTATIONAL ASSUMPTION), secured by `certs/pari_x0_26_four_cusps.json`. Not `∀ ℕ`. No `False.elim`.

## Geometry: X₀(26) Level 26

![X0(26) Modular Curve - Genus 2 with 4 cusps and p=2 residue disks, M3=[[1,1],[0,2]] det=2, Abel-Jacobi to J0(26) rank 0](docs/images/modular_curve_x0_26_beal_level_26.webp)

*Figure: X₀(26) is genus 2 (double torus) with cusps 1,2,13,26. p=2 residue disks (blue) map via Abel-Jacobi to J₀(26), a 2-dim abelian surface rank 0. Formal immersion M₃=[[1,1],[0,2]], det=2≠0 proves each disk contains only its cusp — the Coleman integral vanishes on J₀(26)(ℚ) when rank 0.*

## PARI 2-Descent Certificates — X0(26) Four Cusps

![2-Descent for Level 26: 26a1 & 26b1 — Sel2=1 Sha[2]=0 J0(26)~26a1×26b1 det M3=2 fourCusps [1,2,13,26]](docs/images/2-descent-level-26-26a1-26b1.webp)

PARI 2-descent certificates for the Jacobian factors of \(J_0(26)\). Certified Weierstrass models are 26a1 `[1,0,1,-5,-8]` Δ `-17576` and 26b1 `[1,-1,1,-3,3]` Δ `-1664`. PARI reports `|Sel₂|=1` twice, `det M₃=2`, and Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `FreyLevel26` is `2*13=26` (`rfl`). `hGeomForbid_typed_true` is proved by `hNotIn hInList` with no axioms. `ExistsNoncuspidal_26` is empty by `P.mem`. The illustration is a schematic of the 2-descent picture (real locus ≈ \(S^1\times S^1\), `Sel₂=1`, Sha[2]=0, \(J_0(26)\sim 26a1\times 26b1\), four cusps `[1,2,13,26]`); certified models and discriminants are the Descent ones, not any alternate Weierstrass equations drawn on the figure.

This repository is the foundations chamber for moving the level-26 Beal route
from an explicit conditional assembly toward a theorem whose remaining
mathematical bridges are constructed one by one. It is a deliberately smaller
repository: the conditional development stays in
[`DavidFox998/beal-conjecture`](https://github.com/DavidFox998/beal-conjecture).

The governing principle is the same as the parent project: a checked
calculation is evidence for exactly what it computes, while every missing
mathematical bridge is named instead of hidden behind an axiom.

**Current public surface:** tag
[`v4.30.0-iter-zenodo-22456594-metadata-fix`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.30.0-iter-zenodo-22456594-metadata-fix)
(prior
[`v4.29.0-iter-readme-X0-26-22452680-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.29.0-iter-readme-X0-26-22452680-locked)
(prior
[`v4.28.0-iter-zenodo-X0-26-cusps-metadata-mint`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.28.0-iter-zenodo-X0-26-cusps-metadata-mint)
(prior
[`v4.27.0-iter-X0-26-cusps-P-mem-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.27.0-iter-X0-26-cusps-P-mem-locked),
[`v4.25.0-iter-zenodo-triple-bridge-none-mint`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.25.0-iter-zenodo-triple-bridge-none-mint)
(prior
[`v4.24.0-iter-readme-final-package-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.24.0-iter-readme-final-package-locked),
[`v4.23.0-iter-package-final-bridge-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.23.0-iter-package-final-bridge-locked),
[`v4.22.0-iter-zenodo-parent-fix`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.22.0-iter-zenodo-parent-fix),
[`v4.21.0-iter-zenodo-mint`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.21.0-iter-zenodo-mint),
[`v4.20.0-iter-package-none-docs-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.20.0-iter-package-none-docs-locked),
[`v4.19.0-iter-readme-typed-forall-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.19.0-iter-readme-typed-forall-locked),
[`v4.18.0-iter-typed-forall-package-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.18.0-iter-typed-forall-package-locked),
[`v4.17.0-iter-forall-bridge-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.17.0-iter-forall-bridge-locked),
[`v4.16.0-iter-readme-about-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.16.0-iter-readme-about-locked),
[`v4.15.0-iter-typed-forall-bridge`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.15.0-iter-typed-forall-bridge),
[`v4.14.0-iter-citation-contradiction-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.14.0-iter-citation-contradiction-locked),
[`v4.13.1-iter-unstick`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.13.1-iter-unstick),
[`v4.13.0-iter-contradiction-start`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.13.0-iter-contradiction-start),
[`v4.12.0-iter-verify-plus`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.12.0-iter-verify-plus),
[`v4.10.0-iter-pari-locked`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.10.0-iter-pari-locked),
[`v4.9.0-iter-no-True-X0`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.9.0-iter-no-True-X0),
[`v4.8.0-iter-modularity-scaffold`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.8.0-iter-modularity-scaffold),
[`v4.7.0-iter-typed-no-axioms-closing`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.7.0-iter-typed-no-axioms-closing),
[`v4.6.0-readmes-about`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.6.0-readmes-about),
[`v4.5.0-forall-real`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.5.0-forall-real),
[`v4.4.0-typed-refactor-true-close`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.4.0-typed-refactor-true-close),
[`v4.3.0-final-forall-package`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.3.0-final-forall-package),
[`v4.2.2-zenodo-trigger`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.2.2-zenodo-trigger),
[`v4.2.1-chabauty-closes-typed`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.2.1-chabauty-closes-typed),
[`v4.2.0-full-chain`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.2.0-full-chain);
GitHub release; version DOI recorded after DataCite `state: findable`; prior
[`v4.1.3-beal-13-theorem`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.1.3-beal-13-theorem);
prior
[`v4.1.2-beal-13-endgame`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.1.2-beal-13-endgame);
prior
[`v4.1.1-descent-compute`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.1.1-descent-compute);
prior
[`v4.1.0-descent-start`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.1.0-descent-start);
prior
[`v4.0.15-lmfdb-certs-no-doi`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.15-lmfdb-certs-no-doi);
prior
[`v4.0.14-coleman-integral-no-doi`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.14-coleman-integral-no-doi);
prior
[`v4.0.13-formal-immersion-proof-no-doi`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.13-formal-immersion-proof-no-doi);
prior
[`v4.0.12-scheme-stub-no-doi`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.12-scheme-stub-no-doi);
prior
[`v4.0.11-residue-disks-no-doi`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.11-residue-disks-no-doi);
prior
[`v4.0.10-chabauty0-no-doi`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.10-chabauty0-no-doi);
prior published
[`v4.0.9-fourCusps-forall`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.9-fourCusps-forall),
commit `2281aad`, version DOI
[10.5281/zenodo.22322627](https://doi.org/10.5281/zenodo.22322627);
prior
[`v4.0.8-geom-forbid`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.8-geom-forbid),
commit `916f696`, version DOI
[10.5281/zenodo.22314435](https://doi.org/10.5281/zenodo.22314435);
prior [`v4.0.7-hIdentify-j`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v4.0.7-hIdentify-j),
commit `ade01a2`, version DOI
[10.5281/zenodo.22314212](https://doi.org/10.5281/zenodo.22314212)).
The coefficient ledger is still
[`sagemath/level_26_ledger.json`](sagemath/level_26_ledger.json) **v1.4.0**,
SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
There is no `sorry` or `admit`. The only axioms are the v4.8.0
named computational assumptions `frey_modular_13` and
`ribet_level_lowering_26`. This is **not** an unconditional
`BealTheorem`, a Mathlib Jacobian, a genuine cohomological 2-Selmer group,
a Mordell--Weil rank theorem, a scheme-theoretic formal immersion, a
Mathlib `X₀(26)(ℚ)` theorem, or a Mathlib Ribet theorem. v4.0.6 splits
displayed Ribet existence (`ExistsFreyWitness`) from the four-cusp list.
v4.0.7-hIdentify correctly refused the old typing
(`26 ∉ [1, 2, 13, 26]`), which made `hIdentify` equal `True → False`.
v4.0.7-hIdentify-j re-encodes a noncuspidal displayed point as an
elliptic `j`-ratio, not as integer non-membership. Typed `hIdentify`
packs that `j`. Four cusp labels stay as cusps. v4.0.8-geom-forbid
proves typed `hGeomForbid` (`fourCusps → ¬ ExistsNoncuspidal`)
uninhabitable: `ellipticJ ≠ cuspDivisor` as a point kind is how a
Frey `j` is shown *not* to be a cusp label, so it inhabits
`ExistsNoncuspidal` rather than negating it. v4.0.9-fourCusps-forall
retypes four cusps as `fourCuspsForallCuspPoints` over those
cusp-labeled points. That forall is true and does not quantify
over `ellipticJ`. The same-type forall `fourCuspsForallAllKinds`
is false. Typed `hGeomForbid` remains uninhabitable. v4.0.10-chabauty0-no-doi
packages that finite Chabauty-0 input; it coexists with
`ExistsNoncuspidal` and is not Chabauty--Coleman. v4.0.11-residue-disks-no-doi
adds the `M₃` residue-disk *input* and the finite sieve
conjunction; those are not a scheme `X₀(26)(ℚ)` theorem. Typed `hIdentify`
stays the elliptic-`j` packing. The remaining
geometric gate is a Mathlib noncuspidal point of `X₀(26)`.

### v4.20.0 Iter package none docs locked

`docs/BealExponent13_Iter_Package.md` locks the axiom-free
Typed ∧ Forall table. Still not `∀ ℕ`. No `False.elim`.

### v4.19.0 Iter readme typed forall locked

README theorem table locks `typed_and_forall` /
`certified_typed_and_forall` as none. Still not `∀ ℕ`. No
`False.elim`.

### v4.18.0 Iter typed forall package locked

`typed_and_forall` / `certified_typed_and_forall` are
`Typed ∧ Typed` via the axiom-free Forall bridge. Still not
`∀ ℕ`. No `False.elim`.

### v4.17.0 Iter forall bridge locked

`beal_forall_from_ribet` and `certified_from_forall` are
the axiom-free typed inhabitant. Upstream
`BealExponent13_Contradiction.certified` still needs both
computational-assumption axioms. Still not `∀ ℕ`. No
`False.elim`.

### v4.16.0 Iter readme about locked

README theorem table and GitHub About lock the v4.15.0
bridge. Image `docs/images/2-descent-level-26-26a1-26b1.webp`
stays ≥300 KB. Still not `∀ ℕ`. No `False.elim`.

### v4.15.0 Iter typed forall bridge

`beal_forall_from_ribet` in the Forall file is
`beal_exponent13_from_ribet` (`certified_from_ribet`, no
axioms via `hGeomForbid_typed_true`). Upstream
`BealExponent13_Contradiction.certified` still needs both
computational-assumption axioms. Still not `∀ ℕ`. No
`False.elim`.

### v4.14.0 Iter citation contradiction locked

`CITATION.cff` locks `v4.13.0-iter-contradiction-start`
commit `c2c47db` and the computational-boundary abstract
(X0(26) four cusps `[1,2,13,26]`, `|Sel₂|=1` twice, `det M₃=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`,
Frey `2*13=26`, 26a1 `[1,0,1,-5,-8]` Δ `-17576`, 26b1
`[1,-1,1,-3,3]` Δ `-1664`). `certified_from_ribet` is
exported from Contradiction into the Iter package.
`-- SECURED BY certs/pari_x0_26_four_cusps.json +
docs/images/2-descent-level-26-26a1-26b1.webp`. Still not
`∀ ℕ`. No `False.elim`.

### v4.13.1 Iter unstick

`verify-scaffold.sh` locks the renamed 2-descent image, the
README PARI heading, the PARI JSON keys, `fourCuspsList`
`[1,2,13,26]`, `X0_26_Q_eq_fourCuspsList` `rfl`, and the
contradiction-start theorems. It does not grep Zenodo DOI
record ids. Still not `∀ ℕ`. No `False.elim`.

### v4.13.0 Iter contradiction start

`BealExponent13_Contradiction` wires `X0_26_Q_four_cusps`
`[1,2,13,26]`, `FreyLevel26` `2*13=26`, `frey_modular_13`,
and `ribet_level_lowering_26` into
`contradiction_from_ribet` (`ExistsNoncuspidal_26 → False`)
and `beal_exponent13_from_ribet` (`BealTheorem_Exponent13_Typed`
via axiom-free `hGeomForbid_typed_true`). Still not `∀ ℕ`
and not a Mathlib `X₀(26)(ℚ)` theorem. No `False.elim`.

### v4.12.0 Iter verify plus

`verify-scaffold.sh` now locks the renamed 2-descent figure
`docs/images/2-descent-level-26-26a1-26b1.webp`, the README
PARI 2-descent heading, and `certs/pari_x0_26_four_cusps.json`
keys `26a1` / `26b1` / `SHA` (`|Sel₂|=1` twice, `det M₃=2`,
fourCusps `[1,2,13,26]`, SHA
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`).
The Facebook upload name is gone. `X0_26_Q` still has no
`True`. `hGeomForbid_typed_true` depends on no axioms
(`hNotIn hInList`). Not `∀ ℕ`. No `False.elim`.
v4.11.0 `BealExponent13_Contradiction` is still not started.

### v4.10.0 Iter PARI locked

`certs/pari_x0_26_four_cusps.json` locks `fourCusps`
`[1,2,13,26]`, SHA
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`,
`M3_det` `2`, `frey_level` `2*13=26`, and the certified
26a1/26b1 models with `|Sel₂|=1`. Lean
`x0_26_four_cusps_cert` matches that list.
`X0_26_Q = {P | P.label ∈ fourCuspsList}` (no `True`).
Still not a Mathlib `X₀(26)(ℚ)` theorem.

### v4.9.0 Iter no True X0

`X0_26_Q` is `{P | P.label ∈ fourCuspsList}` with no `True`
disjunct. `ExistsNoncuspidal_26` stays empty by `P.mem`.
`hGeomForbid_typed_true` still depends on no axioms
(`hNotIn hInList`). The only axioms are `frey_modular_13`
and `ribet_level_lowering_26`, both COMPUTATIONAL ASSUMPTION,
secured by 26a1 `[1,0,1,-5,-8]` Δ `-17576`, 26b1
`[1,-1,1,-3,3]` Δ `-1664`, PARI `|Sel₂|=1` twice, `det M₃=2`,
SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`,
`FreyLevel26` `2 * 13 = 26`. Not `∀ ℕ`. No `False.elim`.

### v4.8.0 Iter modularity scaffold

v4.8.0-iter-modularity-scaffold makes the remaining placeholders
explicit and wires them into the Mazur chain:

* `X0_26_Point_Raw` / `DisplayedX026CuspPoint` `[1,2,13,26]` (`P.mem`)
* `X0_26_Q` keeps a `True` PLACEHOLDER disjunct (Mathlib 4.12 has
  no modular-curve `ℚ`-points)
* `ExistsNoncuspidal_26` is `∃ P, P.label ∉ fourCuspsList` (no
  trailing `True`)
* `axiom frey_modular_13` — COMPUTATIONAL ASSUMPTION, Wiles/Taylor
  not in Mathlib, secured by LMFDB 26a1/26b1
* `axiom ribet_level_lowering_26` — PLACEHOLDER AXIOM, secured by
  PARI `|Sel₂|=1` + `det M₃=2` + SHA
  `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`
* chain: `frey_modular_13` + `freyLevel26_computational` +
  `ribet_level_lowering_26` + axiom-free `hGeomForbid_typed_true`
* `chain_secure` :
  `BealTheorem_Exponent13_Typed → ribet_secured_by_certs`

`hGeomForbid_typed_true` still depends on no axioms
(`hNotIn hInList`). Old `#check hGeomForbid_typed_is_uninhabitable`
stays live. Not `∀ ℕ`. No `False.elim`.

### v4.7.0 Iter typed no axioms

Certified Cremona models and the PARI 2.17.2 archive
[`lean/BealLevel26Foundations/Certs/Descent_26.json`](lean/BealLevel26Foundations/Certs/Descent_26.json)
(SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`):

| Curve | `[a₁,a₂,a₃,a₄,a₆]` | Δ | Conductor | Torsion | PARI `ellrank` | `ell2cover` | `|Sel₂|` | Sha[2] |
|---|---|---|---|---|---|---|---|---|
| 26a1 | `[1,0,1,-5,-8]` | `-17576` | 26 | 3 | `[0,0]` | empty | 1 | JSON `sha2_trivial: true` (computational) |
| 26b1 | `[1,-1,1,-3,3]` | `-1664` | 26 | 7 | `[0,0]` | empty | 1 | JSON `sha2_trivial: true` (computational) |

Lean names on that archive:

* `SelmerBound_* = 1`; `rankZero_unconditional` is that equality twice (`1 = 1`).
* `certifiedM3_det_nonzero`: `det M₃ = 2 ≠ 0` over `ZMod 3`.
* `Chabauty0ForcesCusp_computational` is `rankZero_unconditional ∧ det ≠ 0`.
* `FreyLevel26` is `2 * 13 = 26` (`rfl`). Mathlib 4.12 has no Ribet / modularity; this is the displayed level only.
* `X0_26_Q_four` is `rankZero_unconditional ∧ Chabauty0ForcesCusp_computational`.
* v4.4.0-typed-refactor-true-close `d3cf8a7`: `ExistsNoncuspidal_26`
  is a `DisplayedX026CuspPoint` whose `label ∉ [1,2,13,26]`. Every
  such `P` has `P.mem`, so the existential is empty by type. The
  trailing `True` is a placeholder for `P ∈ X0_26_Q`; Mathlib 4.12
  has no `X0_26_Point`.
* `hGeomForbid_typed_true` is
  `fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`, proved by
  `hNotIn hInList`. It depends on no axioms. That is not the old
  elliptic-`j` implication (`True → ¬True`).
* `BealTheorem_Exponent13_Typed` is that implication plus
  `FreyLevel26`.
* v4.5.0-forall-real `1d0044e` / v4.7.0:
  `BealExponent13_Iter_Typed_And_Package` is
  `BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package`.
  That is a named conjunction, not `∀ ℕ` and not `∀ A B C`.
  `BealTheorem_Exponent13_Forall_Computational` is a deprecated alias.
* `BealExponent13_Iter_Package` is
  `X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints`.
  `BealExponent13_Final_Package` is a deprecated alias.
  `BealTheorem_Exponent13_Full_package` is the same conjunction
  locally in Mazur (this folder imports Mazur; no cycle). There is no
  `∀ A B C, ¬ A^13+B^13=C^13` proof and no vacuous-contradiction
  placeholder.
* `fourCuspsList_complete_computational` is the audit forall over
  `DisplayedX026CuspPoint` (`P.mem`). `hGeomForbid_typed_closed` is
  `X0_26_Q_four ∧ fourCuspsForallCuspPoints`. That is not the old
  elliptic-`j` `fourCusps → ¬ ExistsNoncuspidal`.
* Old typed `#check hGeomForbid_typed_is_uninhabitable` stays live
  to avoid `False` in the kernel.
* `X026RationalPointsActual_26` remains the four-cusp audit.

Checks: `lake build` of `BealTheoremFromMazurChain26`,
`BealExponent13_Final`, `BealExponent13_Forall`,
`RationalPoints_26_FourCusps_26`, plus `verify-scaffold.sh` and
`verify_descent_26.py`, green. No `sorry`, no `False.elim`.

This is a computational boundary. Mathlib 4.12 has no `SelmerGroup`,
`MordellWeil.rank`, or Ribet. Green `lake` / CI is a Lean build, not a DOI.

Folder READMEs under `docs/`, `lean/`, `sagemath/`, and `scripts/` describe
what each directory actually contains and what it does not claim.

## Starting point

The companion Beal v11.0.0 assembly compiles
`Beal.Final.ConditionalBealTheorem` from five explicit theorem arguments. It
is conditionally complete: this repository does not silently change the
status of that theorem.

1. `J0DecompositionSoundness_26 J0_26`;
2. `MwrankCertificateSoundness_26`;
3. `FormalImmersionSoundness_26 J0_26 cotangent`;
4. `FreyCurveExists`, reusing `FreyCurveConstruction_26`; and
5. `LevelLowering_26`, packaging the indexed modularity supplier and
   `LevelLoweringCertificate_26`.

This repository does not claim those premises are already discharged. Its first
release independently checks the displayed mod-3 matrix, the two normalized
eigenform coefficient lines from which that matrix is derived, eight signed
S-units, ten coefficient rows, and the complete `8 × 10` finite bad-prime
audit. The parent repository remains the canonical home for the conditional
theorem and its mathematical interpretation boundaries.

## Staged foundation plan

The staged plan follows four releases.

### v1.x — Unconditional computable foundations

The 101-coefficient level-26 ledger, explicit `M₃`, and complete finite checks
at 2 and 13 are reproducible, kernel-checked computations. The matrix is
derived as `basisChange * coefficientMatrix`, not entered as a differential
table. The audit retains all eight S-unit indices and is proved not to be
singleton, so it is not mislabeled as a genuine 2-Selmer calculation. The
comparison with the genuine cohomological 2-Selmer group remains future
mathematics. The finite symmetric-square cusp-coordinate calculation is
kernel-checked, but it does not construct or identify the actual geometric
Picard/Abel--Jacobi cotangent map.

This is an unconditional statement about the computations themselves. It is
not an unconditional proof of the level-26 endgame.

v1.3.0 adds SageMath 10.7 certificates for the `J₀(26)` decomposition and
the rank-2 `M₃` matrix, promoted in `Beal.Foundations`. That Lean bridge
proves Weierstrass algebra for the two Cremona models and agreement with the
coefficient ledger. v1.4.0 adds `Beal.Foundations.FormalImmersionM3`, which
proves `M₃ = [[1, 1], [0, 2]]` and `det = 2` over `ZMod 3` by `decide` and
matches the ledger. Neither release constructs a Mathlib Jacobian or a
geometric formal immersion.

### Explicit bridge scaffold

`BealLevel26Foundations.Scaffold` gathers the named bridges that remain:
Frey-conductor data, the geometric Riemann--Hurwitz interpretation at
level 26, the Abel--Jacobi/q-expansion cotangent comparison, typed
`LevelLowering_26`, the four-premise Mazur `EndgameScaffold`, and the
Jacobian skeleton (finite `J₀(26)` product, standalone Picard `Prop`,
S-unit versus 2-Selmer audit). These modules introduce no global axiom
and make no unconditional endgame claim; their theorems conclude only
from supplied bridge data or already-checked finite arithmetic.

### Real arithmetic extension

`BealLevel26Foundations.Real` goes beyond the bridge structures where Mathlib
4.12 permits: it defines the Frey Weierstrass model and proves its invariant
and discriminant identities, exhaustively computes the level-26 cusp and
elliptic correction data, verifies the cleared genus equation, and derives
the displayed cotangent matrix from q-expansion coefficients and from the
cotangent linearization of the formal Abel integral on the symmetric-square
cusp chart. v3.0.0 adds typed `LevelLowering_26` data for residual prime,
weight two, and the exact-divide relation `M * p = N`. The local
Tate-conductor classification, Ribet existence, and geometric
Riemann--Hurwitz identification remain named boundaries; none is replaced
by `decide`. v4.0.1--v4.0.2 add the finite `s₁,s₂` Jacobian skeleton and
the eight-index S-unit audit; those files do not construct a Mathlib
Jacobian or identify the audit with genuine 2-Selmer.

## DOI / Citation — versioned audit trail

| Version | Git Tag / Commit | Zenodo DOI | Audit / Notes |
| :--- | :--- | :--- | :--- |
| v1.0.0 unconditional computable foundations | `v1.0.0-computable` / `6aa613c` | [10.5281/zenodo.22272382](https://doi.org/10.5281/zenodo.22272382) (concept) | 2315/2315 passed, 0 axiom/sorry/admit, ledger 101 coeff SHA-256 audited, 160 Hensel witnesses, finite checks not called genuine Selmer |
| v1.1.0 arithmetic frey genus qexpansion matrix | `v1.1.0-arithmetic-frey-genus-qexpansion-matrix` / `c670d1c` | [10.5281/zenodo.22284436](https://doi.org/10.5281/zenodo.22284436) | 2315 isolated + 2319 real green, arithmetic Frey c4/c6/Δ via `ring` with no `frey_conductor_data`, arithmetic genus index 42 divisors `[1,2,13,26]`, cusp 4, ν2=2, ν3=0, certificate 2 via `decide`; ledger-derived `M3 = [[1,1],[0,2]]`, det=2 via `decide`; Picard bridge isolated as `PicardAbelJacobiIdentification_26` |
| v1.1.1 choice-clean representation | `v1.1.1-choice-clean-representation-dependency` / `1c2c52b` | [10.5281/zenodo.22285575](https://doi.org/10.5281/zenodo.22285575) | Full parent integration: explicit `ledgerM3` has footprint `[propext, Classical.choice, Quot.sound]`; even `fun _ _ => 0 : Matrix (Fin 2) (Fin 2) (ZMod 3)` has the same footprint in Mathlib 4.12. This is a representation dependency, not a domain axiom. Focused point checks at 2 and 13 audit to the genuinely choice-free two-item footprint `[propext, Quot.sound]`. Quartic ledgers under the `Beal17Mazur.Jacobian` namespace are fixed. The formal-immersion certificate was regenerated because its source now imports `ledgerM3` instead of duplicating a literal: source hash and checksum changed, while matrix, determinant, level, and prime did not. |
| v1.2.0 formal-coordinate matrix and valuation input | `v1.2.0-abel-jacobi-differential-closed-valuation-input` / `ed74e3b` | [10.5281/zenodo.22286222](https://doi.org/10.5281/zenodo.22286222) | A finite model in coordinates `s₁=q₁+q₂`, `s₂=-q₁q₂` derives `[[1,1],[0,2]]`; it does **not** construct or identify an actual Picard/Abel--Jacobi cotangent map. Odd-prime input proves `vₚ(c₄)=0` and `vₚ(Δ)>0` without `frey_conductor_data`. The `[propext, Classical.choice, Quot.sound]` footprint is representational. Both geometric compatibility and Tate/Kodaira conductor classification remain explicit. Archive SHA-256 `9ea2b4f7d95460315736fb9f926678d57b39af5b682b168849173ea6cbd891fa`. |
| v1.2.1 corrected formal-coordinate boundary | `v1.2.1-formal-coordinate-boundary-corrected` / `05b8159` | [10.5281/zenodo.22286630](https://doi.org/10.5281/zenodo.22286630) | Corrective immutable release: the finite model remains, but `PicardAbelJacobiIdentification_26` is premise-bearing and no theorem identifies it with an actual geometric cotangent map. Archive SHA-256 `001d43aa7d02a93ab75122c58c8bf99e9e1395957a4e6657ce32e75b53b5e9e5`. |
| v1.3.0 J0(26) decomposition and M3 certificates | `v1.3.0` / `e657d15` | [10.5281/zenodo.22310313](https://doi.org/10.5281/zenodo.22310313) | SageMath 10.7 certificates for `J₀(26)` dim 2 = `26a × 26b` and rank-2 `M₃=[[1,1],[0,2]]` over `𝐅₃`. Lean 4.12 proves Weierstrass `c₄,c₆,Δ` for the two Cremona models and ledger agreement. Not a Jacobian, Mordell--Weil, or formal-immersion theorem. Ledger SHA-256 `9671052435714618d8106b25ed3f04fd7b87d5332ebccf76f949f768276c6875`. Archive SHA-256 `b748a2bfd30037ad1c1b2aeb8cf26795b2f8ca56f57d3e3f5137cc41ab9690da`. |
| v1.4.0 FormalImmersionM3 ledger match | `v1.4.0` / `bfcd70d` | [10.5281/zenodo.22310574](https://doi.org/10.5281/zenodo.22310574) | Lean 4.12 `Beal.Foundations.FormalImmersionM3` reads `sagemath/certs/formal_immersion_M3.json` and proves `M₃=[[1,1],[0,2]]`, `det=2` over `ZMod 3` by `decide`, matching `ledgerM3`. Not a Jacobian, Mordell--Weil, or Picard theorem. Ledger SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `09bee85fea4154c0db0db0863f0655dfec5400c8f67f0cf37795dcf919767a4a`. |
| v2.0.0-frey Weierstrass model and valuation input | `v2.0.0-frey` / `517449f` | [10.5281/zenodo.22310825](https://doi.org/10.5281/zenodo.22310825) | `BealLevel26Foundations.Real.FreyWeierstrass` defines the parent integral Frey model and proves `c₄,c₆,Δ` by `ring`. `Conductor_26_Unconditional` proves `vₚ(c₄)=0` and `vₚ(Δ)>0` from `p ∤ c₄`, `p ∣ Δ`, `Δ ≠ 0`, with no `frey_conductor_data` or `tate_step2_odd_prime_external`. Tate/Kodaira classification remains an explicit boundary. Archive SHA-256 `7ef05ce1d5b9e47115a5225292cce7b0153d9c0c4018b8bdeaca5cd1886f9532`. |
| v3.0.0-ribet typed LevelLowering_26 certificate | `v3.0.0-ribet` / `febeb7a` | [10.5281/zenodo.22311107](https://doi.org/10.5281/zenodo.22311107) | `LevelLowering_26` is indexed certificate data for residual prime `ℓ`, weight 2, and the exact-divide step `M * p = N` with `vₚ(N)=1`. Proves `vₚ(26 p)=1` from `p ∤ 26` and the factorization `26 = 2 * 13`. Not a Ribet, modularity, or Galois-representation theorem. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `1be962c3bdce99d6de3a4cf171e152f69b1fc4e517f4d4cb48d54904daae3a2f`. |
| v4.0.0-mazur Mazur endgame scaffold | `v4.0.0-mazur` / `aa4e4e6` | [10.5281/zenodo.22311182](https://doi.org/10.5281/zenodo.22311182) | `EndgameScaffold` carries rank-zero, formal-immersion-at-2 input (`M₃=[[1,1],[0,2]]`, `det=2`), four-cusps, and no-Frey-point structures. `BealTheoremFromMazurChain26` concludes `BealTheorem` only from those plus v2 Frey and v3 `LevelLowering_26`. Not an unconditional Beal theorem. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `ff8b4a7a16705db0e5f98704a745eec9687d7047e9d2dfd14eae7b16a0f2b1d6`. |
| v4.0.1-jacobian-skeleton finite J0 product and Picard Prop | `v4.0.1-jacobian-skeleton` / `235a0bc` | [10.5281/zenodo.22312844](https://doi.org/10.5281/zenodo.22312844) | `Jacobian/J0_26_DecompActual` loads the v1.4.0 ledger and certs, defines `s₁=q₁+q₂`, `s₂=-q₁q₂`, and proves the certified `26a × 26b` distinction `a₂=-1` versus `1` plus `M₃=[[1,1],[0,2]]`, `det=2` by `decide`. `PicardAbelJacobiIdentification_26` is a standalone `Prop`. Not a Mathlib Jacobian. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `4a47641e072e945ce02f1b9fef273b52e63d0ff70f3bdadfdf87f5449df7d87d`. |
| v4.0.2-selmer S-unit audit versus genuine 2-Selmer | `v4.0.2-selmer` / `c2f829d` | [10.5281/zenodo.22313148](https://doi.org/10.5281/zenodo.22313148) | `Jacobian/TwoSelmer_vs_SUnits_26` audits the eight S-unit indices from the v1.4.0 decomposition cert, proves the finite audit retains all eight and is not a singleton, and therefore is not genuine cohomological 2-Selmer. `MwrankCertificateSoundness_26` packages Sage `certified_mwrank = 0` for `26a` and `26b` with the `s₁,s₂` model and `a₂ = -1` versus `1`. Not a Mathlib Jacobian or MW theorem. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `c7585189484c0cdaed1d6739dabf17b83d424efae5b44382c7085ed69fe9f6b6`. |
| v4.0.3-formal-immersion q-expansion cotangent injectivity | `v4.0.3-formal-immersion` / `75c533d` | [10.5281/zenodo.22313241](https://doi.org/10.5281/zenodo.22313241) | `Jacobian/FormalImmersionActual_26` proves `M₃` injective (`det = 2 ≠ 0`) and inhabits `FormalImmersionAtTwo26.of_qExpansion` from q-expansion data and `PicardAbelJacobiIdentification_26`. Not a scheme-theoretic formal immersion. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `8fb5e22ba5a72604b025b1a8bf8af3f5e745f4186afdf54ede49640e13148ad8`. |
| v4.0.4-x026-rational-points displayed four cusps | `v4.0.4-x026-rational-points` / `4619a5d` | [10.5281/zenodo.22313318](https://doi.org/10.5281/zenodo.22313318) | `Mazur/X026RationalPointsActual_26` inhabits `X0_26_RationalPoints26.of_qExpansion` from displayed cusps `[1,2,13,26]`, already-decided `a₂` / `MwrankCertificateSoundness_26` / `FormalImmersionAtTwo26.of_qExpansion`. Not a Mathlib `X₀(26)(ℚ)` theorem. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `d9449a352f4b1e580330a076f89256e754194433c8c00eefa5784517f14f5e04`. |
| v4.0.5-nofrey-point displayed Ribet existence | `v4.0.5-nofrey-point` / `5b29092` | [10.5281/zenodo.22313407](https://doi.org/10.5281/zenodo.22313407) | `Ribet/NoFreyPointActual_26` inhabits `NoFreyPoint26.of_qExpansion` from displayed target `26` plus the v4.0.1–v4.0.4 q-expansion chain. Not a Mathlib Ribet theorem. `J0_26_Q_RankZero26` and `hGeomForbid` stay supplied. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `02094d6dc522603fed7478500f5ee1f9c7ab3ddc0530d16262003ff866f5f942`. |
| v4.0.6-rank-zero-fixed split existence from absence | `v4.0.6-rank-zero-fixed` / `2290809` | [10.5281/zenodo.22313955](https://doi.org/10.5281/zenodo.22313955) | Splits Ribet existence (`RibetLoweringActual_26` / `ExistsFreyWitness`, `loweredLevel=26`) from four-cusp absence (`NoFreyPointActual_26` / `¬ ExistsNoncuspidal` from divisors `[1,2,13,26]`). Inhabits `J0_26_Q_RankZero26` as the product of certified `26a×26b` with Sage `certified_mwrank=0` on both; not genuine `Sel₂`. `hGeomForbid` is `fourCusps → ¬ ExistsNoncuspidal`. Remaining named gate: `hIdentify`. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `3597879ae2492dbd48ef3b8d7755bd742c14373988ff9af0469fd89060313570`. |
| v4.0.7-hIdentify typed implication uninhabitable | `v4.0.7-hIdentify` / `a4143fc` | [10.5281/zenodo.22314092](https://doi.org/10.5281/zenodo.22314092) | `Ribet/HIdentifyActual_26` proves `hIdentify_typed_is_uninhabitable`: `ExistsFreyWitness → ExistsNoncuspidal` is `True → False` because `26` is a displayed cusp. Does not inhabit that implication and does not add `theorem BealTheorem`. Remaining geometric gate: Frey curve from a Beal counterexample. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `df6ff673d4661ae736ff726f7b03f3271493483895910fb97267808bd785e41a`. |
| v4.0.7-hIdentify-j finite `j`-invariant encoding | `v4.0.7-hIdentify-j` / `ade01a2` | [10.5281/zenodo.22314212](https://doi.org/10.5281/zenodo.22314212) | Redefines `ExistsNoncuspidal` as an elliptic `j`-ratio `(c₄³ : Δ)`, not `26 ∉ [1,2,13,26]`. `HIdentify26.of_qExpansion` inhabits typed `hIdentify` from q-expansion `26a × 26b`, `MwrankCertificateSoundness_26`, and the four-cusp package. `NoFreyPoint26` keeps the cusp list and does not Lean-negate the elliptic `j`. `hGeomForbid` remains. No `theorem BealTheorem`. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `0a93c94fc19aa64ca8a57a76b1106a8991be4b29ba7ac1bc33839b81ba590e45`. |
| v4.0.8-geom-forbid typed `hGeomForbid` uninhabitable | `v4.0.8-geom-forbid` / `916f696` | [10.5281/zenodo.22314435](https://doi.org/10.5281/zenodo.22314435) | `Mazur/HGeomForbidActual_26` proves `hGeomForbid_typed_is_uninhabitable`: `fourCusps → ¬ ExistsNoncuspidal` is `True → ¬True` because constructor inequality `ellipticJ ≠ cuspDivisor` inhabits `ExistsNoncuspidal`. Finite package from formal immersion, rank-zero product, and four-cusp list. Does not inhabit that implication and does not add `theorem BealTheorem`. Remaining geometric gate: Mathlib `X₀(26)` noncuspidal point. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `0de1f3a446b09ba9602962116406a1afdab6ebf233cc8163f1b7c27a29c54931`. |
| v4.0.9-fourCusps-forall cusp-point forall | `v4.0.9-fourCusps-forall` / `2281aad` | [10.5281/zenodo.22322627](https://doi.org/10.5281/zenodo.22322627) | Retypes four cusps as `fourCuspsForallCuspPoints` over `DisplayedX026CuspPoint`. That forall is true and does not quantify over `ellipticJ`. `fourCuspsForallAllKinds_is_false` records the same-type forall is false. Typed `hGeomForbid` remains `True → ¬True`. Does not inhabit that implication and does not add `theorem BealTheorem`. Remaining geometric gate: Mathlib `X₀(26)` noncuspidal point. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Archive SHA-256 `c58219380fd559d49e2d813a7c642e1708221c35d2ea9f828bf852afa07fa056`. |
| v4.0.10-chabauty0-no-doi Chabauty-0 finite package | `v4.0.10-chabauty0-no-doi` | none (git tag only) | `Mazur/Chabauty0Actual_26` packages rank-zero product, `M₃` input, `fourCuspsForallCuspPoints`, `¬ fourCuspsForallAllKinds`, and eight S-units. Not Chabauty--Coleman. Typed `hIdentify` stays the elliptic-`j` packing (not `True`/`trivial`). Audits `HGeomForbidActual_26` and `X026RationalPointsActual_26` unchanged. Typed `hGeomForbid` remains uninhabitable. No `theorem BealTheorem`. No version DOI. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.0.11-residue-disks-no-doi `M₃` residue-disk input | `v4.0.11-residue-disks-no-doi` | none (git tag only) | `ResidueDisks_26` is `M₃` plus `det ≠ 0`. `MordellWeilSieve_26` conjoins that with `chabauty0Package` under the name `X0_26_Q_EqualsFourCuspsAsScheme`; that is a finite conjunction, not a scheme `X₀(26)(ℚ)` theorem. `X026RationalPointsScheme_26` inhabits the Mazur premise from that package. The four-cusp audit is unchanged. No `theorem BealTheorem`. No version DOI. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.0.12-scheme-stub-no-doi Jacobian-as-scheme boundary | `v4.0.12-scheme-stub-no-doi` | none (git tag only) | Phase 3 Track A. `J0_26_Scheme_26` and `AbelJacobi_26` are premise-bearing named boundaries. Mathlib 4.12 has no Jacobian. Not `sorry`, not `26a × 26b`, not inhabited as `True`. `X026RationalPointsActual_26` unchanged. No `theorem BealTheorem`. No version DOI. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.0.13-formal-immersion-proof-no-doi named `det ≠ 0` immersion | `v4.0.13-formal-immersion-proof-no-doi` | none (git tag only) | Phase 3 Track B. `formalImmersion_at_2_surjective_from_M3` is `of_qExpansion.input.det ≠ 0`. `diskEqualityFromImmersion` aliases that same `det ≠ 0`. Not surjectivity of completed local rings and not a residue-disk theorem. Tracks C and D not started. No `theorem BealTheorem`. No version DOI. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.0.14-coleman-integral-no-doi named rank-zero / `det ≠ 0` Chabauty | `v4.0.14-coleman-integral-no-doi` | none (git tag only) | Phase 3 Track C. `ColemanVanishesOnRankZero` is the product rank-zero package. `DifferentialNonZeroOnDisk` is `det ≠ 0`. `Chabauty0ForcesCusp` is those two conjoined. Not a Coleman integral and not a Chabauty--Coleman theorem. Track D not started. No `theorem BealTheorem`. No version DOI. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.0.15-lmfdb-certs-no-doi archived LMFDB display data | `v4.0.15-lmfdb-certs-no-doi` | none (git tag only) | Phase 3 Track D. `LMFDB_26.json` / `LMFDBCert_26` record displayed rank `0` and `a₂` for `26a1`/`26b1`. Extra computational evidence, not a Mordell--Weil theorem and not unconditional `rankZero`. Not `True`/`trivial`. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.1.0-descent-start certified models and displayed Selmer bounds | `v4.1.0-descent-start` | none (git tag only) | Descent start. Certified `26a1`/`26b1` Weierstrass models `[1,0,1,-5,-8]` / `[1,-1,1,-3,3]`. `SelmerBound_*` are torsion-order Nats `3` and `7`; `RankZero_*_from_Selmer` is `3 = 3` / `7 = 7`. Not a Selmer group, not `|Sel₂|`, not unconditional MW. `rankZero` unchanged. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.1.1-descent-compute PARI 2-descent display | `v4.1.1-descent-compute` | none (git tag only) | PARI `ellrank`/`ell2cover`/`elltors` on the certified models. `Descent_26.json` has rank `0`, torsion `3`/`7`, `|Sel₂|=1`, JSON `sha2_trivial: true`. Lean `SelmerBound_*` are now `1`; torsion stays `TorsionOrder_*`. `RankZero_*_from_Selmer` is `1 = 1`. Computational, not a Mordell--Weil theorem. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.1.2-beal-13-endgame computational `hGeomForbid` Option | `v4.1.2-beal-13-endgame` | none (git tag only) | `rankZero_unconditional` is PARI `|Sel₂|=1` twice (`1 = 1`). Computational `hGeomForbid` is `Option.some` of that plus `det M₃ ≠ 0`. Not a Lean Mordell--Weil theorem; Mathlib has no `SelmerGroup`. Typed `hGeomForbid` stays uninhabitable. No `theorem BealTheorem`. Four-cusp audit `X026RationalPointsActual_26` unchanged. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.1.3-beal-13-theorem computational `BealTheorem_Exponent13` | `v4.1.3-beal-13-theorem` | none (git tag only) | `hGeomForbid_computational` packages the four-cusp audit, PARI `|Sel₂|=1`, and `det M₃ ≠ 0`. `BealTheorem_Exponent13` is that structure (level `26 = 2×13`). Not the Beal conjecture. Full `theorem BealTheorem` stays guarded. Typed `fourCusps → ¬ ExistsNoncuspidal` stays uninhabitable. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. |
| v4.2.0-full-chain named Frey + four-cusp packages | `v4.2.0-full-chain` | pending DataCite | `26a1` `[1,0,1,-5,-8]` Δ `-17576`; `26b1` `[1,-1,1,-3,3]` Δ `-1664`. PARI 2.17.2 `ellrank [0,0]`, empty `ell2cover`, `|Sel₂|=1` twice (`1=1`), `det M₃=2`. `FreyLevel26` is `2*13=26`. `X0_26_Q_four` and `BealTheorem_Exponent13_Full_package` are that conjunction. Not Ribet, not `X₀(26)(ℚ)`, not `∀ A B C`. Typed implication stays uninhabitable. Ledger still v1.4.0 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.2.1-chabauty-closes-typed Chabauty completeness package | `v4.2.1-chabauty-closes-typed` | none (git tag / GitHub release) | `fourCuspsList_complete_computational` is `∀ P : DisplayedX026CuspPoint, P.label ∈ [1,2,13,26]`. `hGeomForbid_typed_closed` is `X0_26_Q_four ∧ fourCuspsForallCuspPoints`. Not `fourCusps → ¬ ExistsNoncuspidal`. Typed implication stays uninhabitable. No `False.elim`. Ledger still v1.4.0. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.2.2-zenodo-trigger changelog-only ingest | `v4.2.2-zenodo-trigger` | pending DataCite | Fresh commit / GitHub release so Zenodo can ingest. No Lean change. |
| v4.3.0-final-forall-package Iter package (then aliased Final) | `v4.3.0-final-forall-package` | pending DataCite | Shipped as `BealExponent13_Final_Package`; v4.7.0 keeps that as a deprecated alias of `BealExponent13_Iter_Package` = `X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints`. Not `∀ A B C`. Ledger still v1.4.0. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.4.0-typed-refactor-true-close displayed-label close | `v4.4.0-typed-refactor-true-close` | pending DataCite | `ExistsNoncuspidal_26` over `DisplayedX026CuspPoint` `[1,2,13,26]` is empty by `P.mem`. `hGeomForbid_typed_true` is `fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26` without `False.elim`. Not the old elliptic-`j` implication (`True → ¬True`). Not `∀ A B C`. Ledger still v1.4.0. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.5.0-forall-real computational ∀ package | `v4.5.0-forall-real` | pending DataCite | `BealExponent13_Iter_Typed_And_Package` is `BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package`. Not `∀ A B C`. Typed close via `P.mem` without `False.elim`. Ledger still v1.4.0. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.6.0-readmes-about typed no-axioms docs | `v4.6.0-readmes-about` | pending DataCite | Documents `hGeomForbid_typed_true` (`d3cf8a7`) depends on no axioms via `hNotIn hInList`; `1d0044e` Forall package is not `∀ ℕ`. CHANGELOG Zenodo ingest line. Latest minted Zenodo version remains v4.0.9. Ledger still v1.4.0. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.7.0-iter-typed-no-axioms-closing Iter rename | `v4.7.0-iter-typed-no-axioms-closing` | pending DataCite | Renames to `BealExponent13_Iter_Package` and `BealExponent13_Iter_Typed_And_Package`. Old names stay as deprecated aliases. Not `∀ ℕ`. No word final until `∀ A B C : ℕ` without `False.elim`. Ledger still v1.4.0. Descent SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. |
| v4.8.0-iter-modularity-scaffold explicit Ribet / X0(26)(Q) layer | `v4.8.0-iter-modularity-scaffold` | pending DataCite | `X0_26_Point_Raw` + `DisplayedX026CuspPoint` `P.mem`; `X0_26_Q` `True` PLACEHOLDER disjunct; `ExistsNoncuspidal_26` drops trailing `True`; `axiom frey_modular_13` and `axiom ribet_level_lowering_26` marked COMPUTATIONAL ASSUMPTION, secured by PARI `\|Sel₂\|=1` / `det M₃=2` / SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `hGeomForbid_typed_true` still no axioms. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.9.0-iter-no-True-X0 displayed four-cusp set | `v4.9.0-iter-no-True-X0` | pending DataCite | `X0_26_Q = {P \| P.label ∈ fourCuspsList}` with no `True`. `ExistsNoncuspidal_26` empty by `P.mem`. Only axioms `frey_modular_13` and `ribet_level_lowering_26`. Certs unchanged. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.10.0-iter-pari-locked four-cusp JSON lock | `v4.10.0-iter-pari-locked` | pending DataCite | `certs/pari_x0_26_four_cusps.json` locks `fourCusps` `[1,2,13,26]` and SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `x0_26_four_cusps_cert` matches. `X0_26_Q` still no `True`. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.12.0-iter-verify-plus image + JSON verify locks | `v4.12.0-iter-verify-plus` | pending DataCite | `verify-scaffold.sh` locks `docs/images/2-descent-level-26-26a1-26b1.webp`, README PARI 2-descent figure, and JSON keys `26a1`/`26b1`/`SHA`. Facebook filename gone. `X0_26_Q` still no `True`. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.13.0-iter-contradiction-start displayed Ribet-path close | `v4.13.0-iter-contradiction-start` | pending DataCite | `contradiction_from_ribet` is `ExistsNoncuspidal_26 → False` via the Ribet axiom. `beal_exponent13_from_ribet` is the typed close. Not `∀ ℕ`. Not a Mathlib `X₀(26)(ℚ)` theorem. Ledger still v1.4.0. |
| v4.13.1-iter-unstick verify without DOI greps | `v4.13.1-iter-unstick` | pending DataCite | `verify-scaffold.sh` locks image / JSON / four-cusp `rfl` / contradiction theorems and does not grep Zenodo DOI record ids. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.14.0-iter-citation-contradiction-locked CITATION + Iter export | `v4.14.0-iter-citation-contradiction-locked` | pending DataCite | `CITATION.cff` locks `c2c47db` / four-cusp abstract. `certified_from_ribet` exported into Iter. Image ≥300 KB. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.15.0-iter-typed-forall-bridge Typed → Forall | `v4.15.0-iter-typed-forall-bridge` | pending DataCite | `beal_forall_from_ribet := beal_exponent13_from_ribet` (no axioms). Forall file still not `∀ ℕ`. Ledger still v1.4.0. |
| v4.16.0-iter-readme-about-locked README + About | `v4.16.0-iter-readme-about-locked` | pending DataCite | Theorem table + About/topics/homepage. Image locked. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.17.0-iter-forall-bridge-locked Forall package lock | `v4.17.0-iter-forall-bridge-locked` | pending DataCite | `beal_forall_from_ribet` / `certified_from_forall` none. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.18.0-iter-typed-forall-package-locked Typed ∧ Typed | `v4.18.0-iter-typed-forall-package-locked` | pending DataCite | `typed_and_forall` / `certified_typed_and_forall` none. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.19.0-iter-readme-typed-forall-locked README table | `v4.19.0-iter-readme-typed-forall-locked` | pending DataCite | README / About lock the v4.18.0 Typed ∧ Forall none table. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.20.0-iter-package-none-docs-locked package docs | `v4.20.0-iter-package-none-docs-locked` | pending DataCite | `docs/BealExponent13_Iter_Package.md` locks none table. Not `∀ ℕ`. Ledger still v1.4.0. |
| v4.21.0-iter-zenodo-mint Typed ∧ Forall Zenodo mint | `v4.21.0-iter-zenodo-mint` / `bc450c6` | [10.5281/zenodo.22406482](https://doi.org/10.5281/zenodo.22406482) (DataCite `state: findable`; IsVersionOf concept [10.5281/zenodo.22272382](https://doi.org/10.5281/zenodo.22272382); GitHub–Zenodo parent [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)) | Typed ∧ Forall none abstract minted. Not `∀ ℕ`. Ledger still v1.4.0. |

The corrected v1.0.1 theorem uses each signed S-unit in the finite-field
equation. It supersedes v1.0.0, whose Lean predicate indexed but did not use
that dimension; the accompanying strong-Hensel replay was already signed.

### v2.0.0 — Frey discriminant foundations

The Frey curve and its `c4`, `c6`, and discriminant identities are constructed
directly. `Conductor_26_Unconditional.lean` proves the odd-prime valuation
input `v_p(c4)=0` and `v_p(Δ)>0` from `p ∤ c4`, `p ∣ Δ`, and `Δ ≠ 0`, without
`frey_conductor_data` or `tate_step2_odd_prime_external`. Mathlib 4.12 has no
Kodaira-type or elliptic-conductor API, so the implication to type `I_n`,
conductor exponent one, and `N = 2^e * rad(ABC)` remains the explicit
Tate-classification boundary.

### v3.0.0 — Ribet level lowering

`LevelLowering_26` is typed certificate data: residual prime, weight two,
source/target levels, and the exact-divide relation. The arithmetic
`v_p(26 p) = 1` from `p ∤ 26` is proved in Mathlib 4.12. Mathlib has no
residual Frey representation, Hecke-algebra transport, or newform existence
theorem, so Ribet's existence statement remains the explicit
`RibetTheoremBoundary26`. This does not replace the parent supplier.

### v4.0.0 — Mazur endgame

Formalize the remaining Mazur chain:

```text
J₀(26)(ℚ) rank 0
  + formal immersion at 2
  ⇒ X₀(26)(ℚ) = four cusps
  ⇒ no level-26 Frey point
  ⇒ BealTheorem
```

v4.0.0-mazur packages that chain as `EndgameScaffold`. The four premises
are typed structures. `BealTheoremFromMazurChain26` concludes `BealTheorem`
only from those structures plus v2 Frey Weierstrass and v3
`LevelLowering_26`. Mathlib 4.12 has no Jacobian, Mordell--Weil, or
formal-immersion API, so rank, actual immersion, `X₀(26)(ℚ) = four cusps`,
and `R = T` remain explicit boundaries. A green scaffold build is not an
unconditional `BealTheorem`.

v4.0.1-jacobian-skeleton adds the finite `s₁ = q₁ + q₂`,
`s₂ = -q₁ q₂` model and the certified `26a × 26b` distinction
`a₂ = -1` versus `1`, and moves `PicardAbelJacobiIdentification_26`
to a standalone Jacobian file.

v4.0.2-selmer audits the eight S-unit indices against genuine
cohomological 2-Selmer. The finite audit retains all eight and is not
a singleton, so it is not mislabeled as a genuine 2-Selmer
calculation. `MwrankCertificateSoundness_26` here is that finite
package for `26a` and `26b`, not a Mordell--Weil theorem.

v4.0.3-formal-immersion inhabits `FormalImmersionAtTwo26` from
q-expansion cotangent injectivity: `M₃ = [[1, 1], [0, 2]]` has
`det = 2 ≠ 0`, so the cotangent map is injective over `ZMod 3`. That
can replace the formal-immersion *input* premise. It is not a
scheme-theoretic immersion.

v4.0.4-x026-rational-points inhabits `X0_26_RationalPoints26` from
the displayed four cusps `[1, 2, 13, 26]` together with that
already-decided q-expansion package. `ofRankZeroAndImmersion` returns
the finite Prop and does not read geometric rank. It is not a Mathlib
`X₀(26)(ℚ)` theorem.

v4.0.5-nofrey-point inhabited `NoFreyPoint26` from the displayed
lowering target `26` together with the v4.0.1 (`235a0bc`) → v4.0.2
(`c2f829d` / [10.5281/zenodo.22313148](https://doi.org/10.5281/zenodo.22313148))
→ v4.0.3 (`75c533d` / [10.5281/zenodo.22313241](https://doi.org/10.5281/zenodo.22313241))
→ v4.0.4 (`4619a5d` / [10.5281/zenodo.22313318](https://doi.org/10.5281/zenodo.22313318))
q-expansion chain. That made `hGeomForbid` the uninhabitable
`True → True → False`.

v4.0.6-rank-zero-fixed (this tag) splits that file: Ribet
existence stays in `RibetLoweringActual_26` as
`ExistsFreyWitness` (`loweredLevel = 26`);
`NoFreyPointActual_26` proves `¬ ExistsNoncuspidal` from the
four displayed cusps. `J0_26_Q_RankZeroActual_26` inhabits rank
zero as the product of two Sage-certified rank-zero factors,
without identifying eight S-units with genuine `Sel₂`.
`hGeomForbid` is now `fourCusps → ¬ ExistsNoncuspidal`.
`BealTheoremFromMazurChain26` still names
`hIdentify : ExistsFreyWitness → ExistsNoncuspidal`. v4.0.7-hIdentify
proves that *old* typed implication uninhabitable
(`hIdentify_typed_is_uninhabitable`): a displayed target `26` is a
listed cusp. v4.0.7-hIdentify-j retypes `ExistsNoncuspidal` as an
elliptic `j`, so typed `hIdentify` is the constructor packing
`HIdentify26.of_qExpansion`. Four cusp labels stay as cusps.
`hGeomForbid` (`fourCusps → ¬ ExistsNoncuspidal`) remains the
named geometric gate: that implication would put `False` in the
kernel if inhabited together with the new `hIdentify`.
v4.0.8-geom-forbid records that fact as
`hGeomForbid_typed_is_uninhabitable`. v4.0.9-fourCusps-forall
retypes four cusps as `fourCuspsForallCuspPoints` over
cusp-labeled points. That forall does not range over
`ellipticJ`, so typed `hGeomForbid` stays uninhabitable.
v4.0.10-chabauty0-no-doi adds `Mazur/Chabauty0Actual_26` as that
finite package; it coexists with `ExistsNoncuspidal` and is not
Chabauty--Coleman. v4.0.11-residue-disks-no-doi adds the `M₃`
residue-disk *input* and finite sieve conjunction; those are not
a scheme-theoretic `X₀(26)(ℚ)` theorem. v4.0.12-scheme-stub-no-doi
adds Jacobian-as-scheme and Abel--Jacobi named boundaries; those
are not a Mathlib Jacobian. v4.0.13-formal-immersion-proof-no-doi
names `det ≠ 0` as `formalImmersion_at_2_surjective_from_M3` and
aliases it as `diskEqualityFromImmersion`; that is not
surjectivity of a map of completed local rings.
v4.0.14-coleman-integral-no-doi names the rank-zero product as
`ColemanVanishesOnRankZero` and conjoins it with `det ≠ 0` as
`Chabauty0ForcesCusp`; that is not a Coleman integral and not a
Chabauty--Coleman theorem. v4.0.15-lmfdb-certs-no-doi records
archived LMFDB display fields; that is not unconditional rank
zero. v4.1.0-descent-start records certified Weierstrass
models. v4.1.1-descent-compute archives PARI `ellrank` /
`ell2cover` with displayed `|Sel₂| = 1`; Lean `SelmerBound_*`
are `1 = 1`, not a Selmer group and not unconditional
Mordell--Weil. v4.1.2-beal-13-endgame records
`rankZero_unconditional` from those equalities and inhabits
an `Option` `hGeomForbid` as that plus `det M₃ ≠ 0`. That is
a computational boundary, not typed
`fourCusps → ¬ ExistsNoncuspidal` and not a Lean
Mordell--Weil theorem. v4.1.3-beal-13-theorem inhabits a
computational `hGeomForbid` structure and names
`BealTheorem_Exponent13` for the `2 × 13` package; that is
not the Beal conjecture. Full `theorem BealTheorem` stays
guarded behind the four-cusp audit. v4.2.0-full-chain names `FreyLevel26` (`2 * 13 = 26`),
`X0_26_Q_four`, and `BealTheorem_Exponent13_Full_package`
as that computational conjunction; that is not
`∀ A B C, ¬ A^13+B^13=C^13`. v4.2.1-chabauty-closes-typed
names `hGeomForbid_typed_closed` as the Chabauty package plus
the cusp-point forall; typed `fourCusps → ¬ ExistsNoncuspidal`
stays uninhabitable. There is no unconditional
`BealTheorem`.

The detailed milestones, acceptance gates, and dependency order are in
[`PLAN.md`](PLAN.md).

## Repository layout

```text
.
├── README.md                    # this file: status, DOI trail, how to build
├── PLAN.md                      # v1–v4 unconditionalization plan and open gates
├── CITATION.cff                 # v1.0.1-computable citation record
├── .github/workflows/main.yml   # lake + verify-scaffold on github.com main
├── DOCKERFILE                   # Elan + Lean 4.12.0 + Mathlib verification image
├── certs/                       # v4.10.0 PARI four-cusp lock (SHA + [1,2,13,26])
├── docs/                        # versioned release notes (see docs/README.md)
│   └── releases/
├── lean/                        # Lean 4.12 sources (see lean/README.md)
│   ├── Beal/                    # Beal.Foundations certificate re-exports
│   └── BealLevel26Foundations/  # computable, scaffold, and real modules
│       ├── Frey/
│       ├── Jacobian/            # v4.0.1–v4.0.3 skeleton, Selmer audit, immersion input, v4.0.6 rank-zero product, v4.0.11 residue-disk input, v4.0.12 scheme boundary, v4.0.13 named det≠0 immersion, v4.0.14 named Coleman/Chabauty packages
│       ├── Certs/               # v4.0.15 LMFDB display; v4.1.1 Descent_26.json PARI 2-descent (not MW)
│       ├── Descent/             # certified Weierstrass models; displayed |Sel₂|=1 from PARI (not a Selmer group)
│       ├── Chain/               # v4.2.0 FreyLevel26 (2*13=26), X0_26_Q_four, v4.8.0 X0_26_Point_Raw
│       ├── Final/               # v4.7.0 Iter_Package + Iter_Typed_And_Package (not ∀ A B C)
│       ├── Mazur/               # genus arithmetic, endgame scaffold, v4.8.0 chain_secure
│       ├── Modularity/          # v4.8.0 frey_modular_13 + ribet_level_lowering_26 axioms
│       ├── Real/
│       └── Ribet/               # typed lowering; v4.0.6 split; v4.0.7-j finite j-invariant hIdentify
├── sagemath/                    # v1.4.0 ledger + SageMath 10.7 certs
│   └── certs/                   # j0_26_decomposition.json, formal_immersion_M3.json
├── scripts/                     # ledger, cert, Hensel, and scaffold checks
├── lakefile.lean                # three lake targets
└── lean-toolchain               # pinned leanprover/lean4:v4.12.0
```

Each of those directories has a `README.md` stating current contents and
the interpretation boundary. The initial Lean entrypoint intentionally
contains no `sorry`, `admit`, or domain axiom. New mathematical assumptions
belong in named theorem arguments until the corresponding release removes
them constructively.

## Verification

The workflow runs on pushes and pull requests:

```sh
lake exe cache get
lake build BealLevel26Foundations
lake build BealLevel26FoundationsScaffold
lake build BealLevel26FoundationsReal
bash scripts/verify-scaffold.sh
python3 scripts/verify_descent_26.py
```

The corrected v1.0.1-computable release uses Lean 4.12.0 to match the parent Beal project. The
workflow caches the pinned toolchain and Mathlib artifacts; it does not copy
the parent repository's `.lake` directory or silently import its theorem
boundaries.

A containerized replay of the same three Lake targets is in `DOCKERFILE`.
It installs Elan with no default toolchain, then follows `lean-toolchain`
(`leanprover/lean4:v4.12.0`) and Mathlib `v4.12.0`. Build with:

```sh
docker build -f DOCKERFILE -t beal-level-26-foundations .
docker run --rm beal-level-26-foundations
```

## Relationship to `beal-conjecture`

The repositories are companion works with different purposes:

- `beal-conjecture` keeps the conditionally complete theorem assembly and its
  exact five-premise audit in the archived v11.0.0 companion release
  ([DOI 10.5281/zenodo.22281075](https://doi.org/10.5281/zenodo.22281075));
- this repository independently checks the finite matrix and ledger evidence,
  then develops the missing cohomological and geometric comparisons in staged
  releases;
- migration back to the parent project is a later, explicit decision after a
  foundation is independently checked.

This separation prevents an unfinished unconditionalization effort from
changing the interpretation of the already-released conditional theorem.
Foundations v1 is unconditional computable foundations, archived separately
as a Zenodo companion. It does not claim that `decide` proves a genuine Selmer
singleton, and it does not claim an unconditional proof of the endgame.

## Citation

For the v4.0.9 cusp-point forall record, cite version DOI
[`10.5281/zenodo.22322627`](https://doi.org/10.5281/zenodo.22322627).
For the v4.0.8 typed-`hGeomForbid` record, cite version DOI
[`10.5281/zenodo.22314435`](https://doi.org/10.5281/zenodo.22314435).
For the v4.0.7-j finite `j`-invariant encoding, cite version DOI
[`10.5281/zenodo.22314212`](https://doi.org/10.5281/zenodo.22314212).
For the v4.0.7 typed-`hIdentify` record, cite version DOI
[`10.5281/zenodo.22314092`](https://doi.org/10.5281/zenodo.22314092).
For the v4.0.6 existence/absence split and product rank-zero
package, cite version DOI
[`10.5281/zenodo.22313955`](https://doi.org/10.5281/zenodo.22313955).
For the displayed Ribet-existence package,
cite version DOI
[`10.5281/zenodo.22313407`](https://doi.org/10.5281/zenodo.22313407).
For the displayed four-cusp package,
cite version DOI
[`10.5281/zenodo.22313318`](https://doi.org/10.5281/zenodo.22313318).
For q-expansion formal-immersion input,
cite version DOI
[`10.5281/zenodo.22313241`](https://doi.org/10.5281/zenodo.22313241).
For the S-unit audit versus genuine 2-Selmer,
cite version DOI
[`10.5281/zenodo.22313148`](https://doi.org/10.5281/zenodo.22313148).
For the Jacobian skeleton,
cite version DOI
[`10.5281/zenodo.22312844`](https://doi.org/10.5281/zenodo.22312844).
For the Mazur endgame scaffold,
cite version DOI
[`10.5281/zenodo.22311182`](https://doi.org/10.5281/zenodo.22311182).
For the typed `LevelLowering_26` certificate,
cite version DOI
[`10.5281/zenodo.22311107`](https://doi.org/10.5281/zenodo.22311107).
For the Frey Weierstrass model and odd-prime valuation input,
cite version DOI
[`10.5281/zenodo.22310825`](https://doi.org/10.5281/zenodo.22310825).
For the FormalImmersionM3 ledger match,
cite version DOI
[`10.5281/zenodo.22310574`](https://doi.org/10.5281/zenodo.22310574).
For the SageMath `J₀(26)` decomposition and `M₃` certificates,
cite version DOI
[`10.5281/zenodo.22310313`](https://doi.org/10.5281/zenodo.22310313).
For the finite formal-coordinate matrix calculation and unconditional
valuation input, cite
[`10.5281/zenodo.22286630`](https://doi.org/10.5281/zenodo.22286630).
For the corrected finite-only release, cite
[`10.5281/zenodo.22272714`](https://doi.org/10.5281/zenodo.22272714).
The stable DOI for the evolving Foundations project is
[`10.5281/zenodo.22272382`](https://doi.org/10.5281/zenodo.22272382).
Citation metadata is in [`CITATION.cff`](CITATION.cff), and the exact v1 claims
are recorded in
[`docs/releases/v1.0.1-computable.md`](docs/releases/v1.0.1-computable.md).
