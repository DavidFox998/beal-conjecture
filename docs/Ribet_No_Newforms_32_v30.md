# Ribet 928→32 structural verification (v30)

`v30.0.0-level-26-structural-verification` ports foundations `v0.30-mcom-structural-verification`
at `2b60ccd` (chore `9160a6a` from `bc7e93b`). Lean 4.12 explicit
types, `open Nat Finset Classical`, `decide` not `native_decide`.

Theorems live in [`../Level26/HonestB0Search/Ribet_Level_Lowering_29_to_32_final.lean`](../Level26/HonestB0Search/Ribet_Level_Lowering_29_to_32_final.lean):

- `928 / 29 = 32`, `32 * 29 = 928`, `29 ∤ 32`
- `2^4 = 16`, `16 ∣ 32`
- displayed `dim S₂(Γ₀(32)) = 1`, `dim S₂(Γ₀(16)) = 0`
- Sturm `32 * 3 / 2 = 48`, `2 * 48 / 12 = 8`
- `(∅ : Finset ℕ).card = 0`
- JSON pin `full=1`, `new=1`, `level16=0`, `sturm=8`
- LMFDB `32a1`

Honest: Sage `CuspForms(32,2).new_subspace().dimension() = 0`
is **not** a theorem. LMFDB new dimension is **1**.
Parent `Ribet_Level_Lowering_29_to_32.lean` keeps
`Ribet_928_to_32` / `no_newforms_at_32_mod13` /
`explicit_a29_mod13` as `def Prop`.

Concept DOI: `10.5281/zenodo.22379293`.
