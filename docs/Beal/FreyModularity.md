# v8.74.0 displayed Frey mod-13 miss

`lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean`

`frey_mod13_irreducible` is the v8.69.0
Int-mod-13 mismatch at `B = 196`
(`-2` vs `0`/`12`) and `B = 1500003`
(`24` vs `21`/`-39`), via
`irreducible_of_trace_mismatch`.

That is **not** Mazur, not Borel image,
not a Mathlib residual representation,
and **not** Ribet level-lowering.

`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
The inhabited pack remains
`ribet_mazur_pack_q_13_level_26` via
`hK.left` / `hK.right`.

Does not import `RibetMazur`.
Does not import the axiom `frey_modular_13`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.
