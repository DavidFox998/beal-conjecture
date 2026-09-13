# v8.2.0 RibetFunctor packed lowering

`lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean`

Functorial pack of Ribet lowering `N → 2` on residual
bookkeeping representations.  Uses Tate conductor,
`wiles_modularity_Frey`, `R_inf_eq_T_inf`, and
`S2_Gamma0_2_zero`.

`ModularImpliesLevel2Newform_Real` is the **same Prop**
as v8.1.0.  This file does **not** inhabit
`ExistsNewformLevel2` (`0 ≠ 0`) and does **not** make
`beal_forall_proof_positive` unconditional.

| Name | Status |
|---|---|
| `GaloisRepModularLevel N` | packed residual data at conductor `N` |
| `ribet_level_lowering_functor` | packed `ρ` at `N` lowers to level 2, `det=χ₁₃` |
| `ModularImpliesLevel2Newform_Real` | Prop, equal to v8.1.0 arrow, **uninhabited** |
| `not_ExistsNewformLevel2` | `¬ ExistsNewformLevel2` from `S₂(Γ₀(2))=0` |

`#print axioms ribet_level_lowering_functor` is
`[propext, Classical.choice, Quot.sound]`.  No `sorryAx`.
Track A About mint stays `22635221`.
