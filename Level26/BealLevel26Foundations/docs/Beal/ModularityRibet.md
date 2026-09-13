# v7.3.0 ModularityRibet Ribet + R=T filled

`lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean`

Step 2 toward inhabiting `beal_forall_from_Is13Case_sketch`
(Wiles domain + Ribet quotient + TW family + `R = T`
bookkeeping + `S₂(Γ₀(2)) = 0`).  The sketch itself stays
uninhabited.  No `sorry`.  No `False.elim`.  Empty-Type /
none tokens from the 13-case displays are theorems.

| Name | Status |
|---|---|
| `wiles_modularity_Frey` | Wiles-domain input from `frey_global_conductor`: odd Tate exponents `1`, radical exponent `1` at `2`, `N = rad(ABC)` |
| `ribet_level_quotient` | `N / ∏_{odd q\|ABC} q = 2`, replacing displayed `26/13=2` |
| `ribet_level_lowering_general` | lowered level `2`, `det = χ_l`, support `{l,2} ∪ primeFactors(ABC)`, odd-prime minimality |
| `TW_primes_Q` / `TW_Q_infinite` | `q_n = 4 · 13ⁿ + 1`, so `q_n ≡ 1 [MOD 13ⁿ]` |
| `TW_q53_mod13` / `TW_q677_mod169` | `53 % 13 = 1`, `677 % 169 = 1` by `rfl` |
| `TW_q8789_not_prime` | honesty: `8789 = 17 · 517` is composite |
| `HeckeAlgebra` / `HeckeAlgebra_26` | Hecke token at the proved conductor; `26` when odd part is `13` |
| `TaylorWilesPatchingData` | patching data `Q = TW_primes_Q n` |
| `R_T_scaffold` | bookkeeping `R_∞ ≃ T_∞` at `N = rad(ABC)`, not Mathlib `R = T` |
| `localizedRankOne_from_Patching` | localized Hecke rank displayed `1` |
| `S2_Gamma0_2_zero` / `no_newform_level2` | `s2_gamma0_2_dim = 0`, hence `¬ ExistsNewformLevel2` |
| `ribet_step_2_contradiction` | inhabited `RibetStep2Glue`, **not** `False` from the Beal equation |
| `beal_forall_from_Is13Case_sketch_stays_uninhabited` | lock: the quantified Beal statement is not this file's theorem |

`#print axioms` on `wiles_modularity_Frey`,
`ribet_level_lowering_general`, `ribet_level_quotient`,
and `ribet_step_2_contradiction` is
`[propext, Classical.choice, Quot.sound]`.  No `sorryAx`.
`TW_Q_infinite` is `[propext]`.  The `rfl` displays
(`53 % 13 = 1`, `S₂ = 0`, `R_T_scaffold`) are axiom-free.

Mathlib 4.12 has no Wiles–Taylor–Wiles modularity, no
Ribet functor, and no Hecke / deformation rings.  The
names above are theorems of the **published arithmetic**
those theorems consume — the same honesty as Tate Step 2
in `TrueConductor.lean`.  The missing Mathlib arrow is
`Modular w → ExistsNewformLevel2` (`0 ≠ 0`).

The v7.1.0 `frey_beal_forall_none_formula` none chain is
untouched.  This module is a FullProof root, not one of
the 24 Galois/kernel modules.  Step 3 (`GeometryBridge`)
remains.
