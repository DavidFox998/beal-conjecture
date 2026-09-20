# Kolyvagin rank-0 final display (v29)

Parent slice: `Kolyvagin_Fintype_Subsingleton_inhabited` on
`kolyvagin-fintype-subsingleton-v28` at `b01a399`, merged
into `phase-darmon-merel-4413` at `a93402e`. This is the
**fourth and last of four algebraic-prop v29 slices**.

The remaining parent *names* on
`Kolyvagin_MW_Rank0_26a1_26b1.lean` —

* `MW_rank_zero_fintype`
* `Kolyvagin_L_nonzero_imp_MW_rank_zero`
* `TwoDescent_implies_MW_rank_zero_fintype`

— become **theorems** in
`Level26/HonestB0Search/Kolyvagin_MW_Rank0_26a1_26b1_final.lean`.
Each re-exports `Kolyvagin_Fintype_Subsingleton_inhabited`.
Module-named theorems `TwoDescent_26a1_26` (`7c19ad0`),
`BSD_MordellWeil` (`8994d38`), `J0_26_BSD_26a1_26b1`,
`X0_26_Full2Torsion` package the same numerals.

Parent files keep those names as `def Prop`. This slice
does **not** convert them.

Concept DOI: `10.5281/zenodo.22379293`.

## Honest: `¬ IsRankZero` versus algebraic rank 0

`IsRankZero := Subsingleton` is **only the identity**. It
is **false** on Cremona `26a1` / `26b1` (torsion `3` and
`7`; points `(4,4)` / `(1,0)`). The Subsingleton→Fintype
path therefore does **not** produce a `Fintype` of those
Mordell–Weil groups.

Algebraic MW rank 0 is
`Nonempty (Fintype (MordellWeilGroup E))`. That stays
`def Prop` on the parent. This file inhabits the
**typeclass upgrade** on an arbitrary `Type*`
(`Nonempty (Fintype α) → Finite α` via
`finite_iff_nonempty_fintype`, then `Fintype.ofFinite`)
and Subsingleton card `1` on `Unit`.

`1/3 ≠ 0` is not `L(E,1)`. Sage `E.rank()` is not Kato /
Kolyvagin. Mathlib 4.12 has no `EllipticLFunction`.

## What is a theorem (`decide`, not `native_decide`)

| Name | Type / statement |
|---|---|
| `Sel2_card_one` | `(1 : ℕ) = 1` |
| `three_mul_seven` | `(3 : ℕ) * 7 = 21` |
| `L_over_Omega_one_third` | `(3 : ℚ) / 9 = 1 / 3` |
| `L_over_Omega_one_seventh` | `(7 : ℚ) / 49 = 1 / 7` |
| `displayed_Sel2_card_26a1` | `Sel2_card_26a1 = 1` |
| `Fintype_of_Nonempty` | `Nonempty (Fintype α) → Finite α` |
| `Unit_Subsingleton_card_one` | `Fintype.card Unit = 1` |
| `TwoDescent_26a1_26` (this namespace) | v28 conjunction |
| `BSD_MordellWeil` (this namespace) | v28 conjunction |
| `MW_rank_zero_fintype` (this namespace) | v28 conjunction |
| `Kolyvagin_MW_Rank0_26a1_26b1_final` | packaged final |

Lean 4.12: explicit types, `open Nat Finset Classical`.

## What is not a theorem

* `Nonempty (Fintype (MordellWeilGroup E))` (parent `def Prop`)
* Kato / Kolyvagin (`L(E,1) ≠ 0 ⇒ rank 0`)
* `|Sel₂| = 1 ⇒` algebraic rank 0
* Subsingleton on `26a1` / `26b1` (false; torsion `3` / `7`)
* `J0_26_rank0` / Sage `E.rank()` as Mathlib MW
* Parent `def Prop` aliases on TwoDescent / BSD / Kolyvagin

## SAGE

`sagemath/kolyvagin_rank0_26.sage` records Cremona
`26a1` = LMFDB `26.a2` `[1,0,1,-5,-8]` torsion `3` and
Cremona `26b1` = LMFDB `26.b2` `[1,-1,1,-3,3]` torsion
`7` when Sage is present. Static
`sagemath/certs/kolyvagin_rank0_26.json` pins `|Sel₂|=1`,
`3·7=21`, `L/Ω = 1/3`, `1/7`, `IsRankZero` false.
Lean does not import that JSON.

## Axioms

`#print axioms three_mul_seven` / `L_over_Omega_one_third`:
`[]` or `[propext]`.

`#print axioms Kolyvagin_MW_Rank0_26a1_26b1_final` /
`MW_rank_zero_fintype`:

```
[propext, Quot.sound]
```

or `[propext, Classical.choice, Quot.sound]` if the
typeclass upgrade is in the printed term.

`#print axioms LLL_nogo_persists_after_Kolyvagin_Rank0_v29`:

```
[propext, Classical.choice, Quot.sound]
```

No `sorryAx`. No `Lean.ofReduceBool`. No new axiom.

## Lake

```
lake build +Kolyvagin_MW_Rank0_26a1_26b1_final
lake build HonestB0Search
lake build Level26
```

Incremental `build.yml` only. Do **not** add
`kolyvagin-rank0-final-v29` to historical `main.yml`.
