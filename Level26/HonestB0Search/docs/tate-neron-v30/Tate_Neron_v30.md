# Tate / Néron structural verification (v30)

`v30.0.0-level-26-structural-verification` ports foundations `v0.30-mcom-structural-verification`
at `2b60ccd` (chore `9160a6a` from `bc7e93b`). Lean 4.12 explicit
types, `open Nat Finset Classical`, `decide` not `native_decide`.

Theorems live in [`../../Tate_Frey_Conductor_29_Neron_final.lean`](../../Tate_Frey_Conductor_29_Neron_final.lean):

- displayed `N_E = 928 = (2 : ℕ)^5 * 29`
- `928 / 29 = 32`
- `c₄ = 16(A⁸ + B⁸ + A⁴B⁴)`, `Δ = 16 A⁸ B⁸ (A⁴ + B⁴)²`
- `v₂(Δ) = 6` (`I₀*`), `v₂₉(Δ(29,1)) = 8` (`I₈`)
- parent names `Tate_algorithm_at_29` /
  `Frey_Neron_conductor` / `Frey_conductor_29_is_Neron`
  as theorems in this namespace

Parent `Tate_Frey_Conductor_29.lean` keeps those as
`def Prop`. Displayed `N_E = 928` is **not** Mathlib
Néron. Short model `[0, −(A⁴+B⁴), 0, 0, 0]` is a
different curve from displayed Frey
`[0, B⁴−A⁴, 0, −A⁴B⁴, 0]`.

Concept DOI: `10.5281/zenodo.22379293`.
