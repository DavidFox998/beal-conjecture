# Beal without Wiles — Darmon–Merel `r = 13` (`b340a97` base)

Previously the close was “formalize Wiles”. The remaining work
on `phase-darmon-merel-4413` is four **honest `def Prop`**
gaps for Darmon–Merel signature `(4,4,13)`: Frey
`Y² = X(X − A⁴)(X + B⁴)`, displayed residual `32` / `928`,
mod `13`.

This directory is the roadmap. The Lean skeletons are the four
**root** `BealMatveevBealV25B0Search` modules listed below —
not the pasted `*_Skeleton.lean` files (`sorry`,
`Prop := True`, `WeierstrassCurve.mk`).

`main` stays `6247c63`. No new axiom. No Wiles. No
`EllipticLFunction`. Does **not** mint v25.

## Four remaining `def Prop` gaps

### 1. Tate at `29` — `Tate_Frey_Conductor_29.lean`

Reuses `Tate_I29_Inertia` (`7244f6d`) and
`freyWeierstrass_Δ` (positive `16 A⁸ B⁸ (A⁴+B⁴)²`, not a
signed short-model `-16`). `v29(Δ) = 26 v29(C)` on
`29` not dividing `AB`. Displayed residual `32` if `29`
does not divide `AB`, else `928`.

Still `def Prop`: Tate’s algorithm, Néron `N_E`.

### 2. Mazur / `X₀(13)` — `Mazur_X0_13_No_Isogeny.lean`

Reuses `Mazur_X0_13_RationalPoints` (`1d28dc1`) and
`Serre_Large_vs_CM_Small` (`e726c51`): genus Nat `0`, cusp
count `2`, `|SL₂(𝔽₁₃)| = 2184`, `13 = 2²+3²`, `288/48 = 6`,
`48 < 2184`.

`X₀(13)` is genus `0`, so `X₀(13)(ℚ)` is **infinite**. The
pasted claim `{2 cusps}` is literature-false and is not a
theorem. Mazur’s cyclic-isogeny list **includes** `13`; the
needed statement is Frey-specific irreducibility of
`ρ_{E,13}`.

Still `def Prop`: `X0_13_Q_infinite`,
`frey_no_rational_13_isogeny`, `Serre_non_Borel_mod13`.
No `𝔽₂₉ˣ` rescan.

### 3. Ribet `928/29 = 32` — `Ribet_Level_Lowering_29_to_32.lean`

Reuses `Ribet_Level32` (`a234427`): numeral `928/29 = 32`,
displayed split `32` / `928`.

Still `def Prop`: abstract Ribet, no-newforms at `32` mod
`13`, explicit `a₂₉` mod `13`. Not full Ribet.

### 4. Kolyvagin rank 0 — `Kolyvagin_MW_Rank0_26a1_26b1.lean`

Keeps `BSD_MordellWeil.lean` (`8994d38`): `¬ IsRankZero` on
`26a1` / `26b1` via `(4,4)` / `(1,0)` (`IsRankZero` is
Subsingleton `{0}`, false for torsion `ℤ/3ℤ` and `ℤ/7ℤ`).
Keeps `TwoDescent_26a1_26.lean` (`7c19ad0`): `|Sel₂| = 1`,
`3·7 = 21`, `2⁰ = 1`, Sage `certified_mwrank` display `0`.
Reuses `L/Ω = 1/3`, `1/7` (`e0b34b2`).

Correct rank 0 is `Nonempty (Fintype (MordellWeilGroup E))`,
not Subsingleton. `L_*_nonzero : Prop := True` is refused.

Still `def Prop`: `MW_rank_zero_fintype`, Kato/Kolyvagin
`L ≠ 0 ⇒ rank 0`, `|Sel₂| = 1 ⇒` finiteness.

## One-repo Lake vendor

The Lake dependency is now a **local path**

```
require beal_level_26_foundations from "Level26/BealLevel26Foundations"
```

copied from beal-conjecture @ `fea0c393` subdirectory
`Level26/BealLevel26Foundations` only (50M sources; **refused**:
the 627M full clone, `.git`, `.lake` cache, overwrite of
`BSD_MordellWeil.lean`, `Towers/`, `BealTrueV25/` directory,
pasted `*_Skeleton.lean`). This repo stays
foundations-level-26. Monorepo beal-conjecture stays
beal-conjecture. The last four theorems stay `def Prop` here.

Root `TwoDescent_26a1_26.lean` and `BSD_MordellWeil.lean`
remain the source of truth.

See [`../X0_26_SECTION_8994d38.md`](../X0_26_SECTION_8994d38.md)
and [`../../Level26/BealLevel26Foundations/VENDOR.md`](../../Level26/BealLevel26Foundations/VENDOR.md).

## Builds

```bash
lake build BealTrueV25
lake build BealMatveevBealV25B0Search
./scripts/verify-matveev-beal.sh
```
