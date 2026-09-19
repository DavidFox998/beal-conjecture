# `tate-v29` — Tate conductor display at `29`

Working branch of **beal-level-26-foundations**, cut from
`phase-darmon-merel-4413` at `43735b3`. Not cut from `main`
(`6247c63`). Do **not** merge back to `phase-darmon-merel-4413`
until asked.

beal-conjecture v26 `v26.0.0-level-26-foundations-certified-mw-rank-zero`
at `5e2906b` (badge `5806dad`, version DOI
`10.5281/zenodo.22832505`, concept `10.5281/zenodo.22379293`)
stays untouched. HonestB0Search + Level26 + historical Beal
are green there.

## Inhabited on this branch

From `Tate_Frey_Conductor_29.lean` (reuses `Tate_I29_Inertia`
`7244f6d`, `freyWeierstrass_Δ`, `Level928Table`):

- Displayed Frey `Δ = 16 A⁸ B⁸ (A⁴+B⁴)²` (positive Mathlib
  identity, not a signed short-model `−16`).
- On a gap-3 solution with `29 ∤ AB`: `v₂₉(Δ) = 26 v₂₉(C)`
  with `C = B+3`.
- That valuation is `≥ 0` (`26 · v₂₉(C)` with `v₂₉(C) : ℕ`).
- If also `29 ∣ C`, then `13 ∣ v₂₉(Δ)`.
- Displayed residual `32` when `29 ∤ AB`, `928` when `29 ∣ AB`.
- Numeral `928 / 29 = 32` and `32 · 29 = 928`.
- Package `Tate_Frey_Conductor_29_inhabited`.
- Axioms of the package: `[propext, Classical.choice, Quot.sound]`
  (via `native_decide` on the `Δ(1,1)=64` instance).

González / X₀(26) notes remain in
[`docs/X0_26_SECTION_8994d38.md`](../X0_26_SECTION_8994d38.md).

## Still `def Prop`

- `Tate_algorithm_at_29` — Mathlib 4.12 has no Kodaira /
  conductor-exponent table. The interval `-8 ≤ v₂₉ ≤ 26`
  is that table, not a theorem here.
- `Frey_Neron_conductor` — `32`/`928` are
  `level_after_ribet_29`, not Néron `N_E`.
- `Frey_conductor_29_is_Neron`.

No new axiom. No Wiles. No `sorry`. No `Prop := True`.
`|Sel₂|=1` context lives on `TwoDescent_26a1_26` / Kolyvagin
and is not claimed as Néron.

## Build

```bash
lake build +Tate_Frey_Conductor_29
./scripts/verify-matveev-beal.sh
```
