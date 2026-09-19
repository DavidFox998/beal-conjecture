# Kolyvagin `Fintype` / Subsingleton display (v28)

Parent slice: `Kolyvagin_MW_Rank0_26a1_26b1_inhabited` on
`kolyvagin-fintype` at `6e88d94`, merged into
`phase-darmon-merel-4413` at `51bba93`. Fourth and last of
the algebraic-prop v28 slices. Does **not** convert the
remaining `def Prop` names on
`Kolyvagin_MW_Rank0_26a1_26b1.lean`.

Concept DOI: `10.5281/zenodo.22379293`.
Stone pin: `lean-toolchain` `v4.12.0`, mathlib
`809c3fb3b5c8f5d7dace56e200b426187516535a`.

## What is a theorem

| Object | Theorem |
|---|---|
| `Nonempty (Fintype α) ↔ Finite α` | `finite_iff_nonempty_fintype` |
| `Finite α → Fintype α` | `Fintype.ofFinite` / `Fintype_of_Finite` |
| `Nonempty (Fintype α) → Fintype α` | `Fintype_of_nonempty_Fintype` (choice) |
| `Subsingleton α` + witness `a` | `Fintype.ofSubsingleton a`, card `1` |
| Unit example | `Fintype.card Unit = 1` |
| `¬ IsRankZero` on `26a1` / `26b1` | re-export; torsion `(4,4)` / `(1,0)` |
| `¬ Subsingleton` of those MW groups | same, via `IsRankZero := Subsingleton` |
| `|Sel₂|` | `1` and `1` |
| torsion Nats | `3 · 7 = 21` |
| `L/Ω` | `1/3` and `1/7` |

`Kolyvagin_Fintype_Subsingleton_inhabited` is that
conjunction. The “upgrade” is the typeclass implication on
an arbitrary `Type*`, not finiteness of `E(ℚ)`.

## What is not a theorem

Algebraic MW rank 0 is `Nonempty (Fintype (MordellWeilGroup E))`.
That name stays `def Prop` on the parent. This file does not
inhabit it, does not inhabit Kato/Kolyvagin
(`L(E,1) ≠ 0 ⇒ rank 0`), and does not inhabit
`|Sel₂|=1 ⇒ rank 0`.

`IsRankZero := Subsingleton` is **only the identity**. It is
**false** on Cremona `26a1` / `26b1` (torsion 3 and 7). The
Subsingleton→Fintype path therefore does **not** produce a
`Fintype` of those Mordell–Weil groups. Mathlib 4.12 has no
Mordell–Weil finite-generation theorem for this `Point` type.

`1/3 ≠ 0` is not `L(E,1)`. Sage `E.rank()` is not a
cohomological MW theorem.

## SAGE

`sagemath/kolyvagin_fintype_subsingleton.sage` records Cremona
`26a1` / `26b1` Weierstrass, torsion orders `3` / `7`, and
the displayed Sage rank `0` when Sage is present. Static
`sagemath/certs/kolyvagin_fintype_subsingleton.json` pins
those numerals plus `L/Ω = 1/3`, `1/7`. Lean does not import
that JSON.

## Axioms

`#print axioms Kolyvagin_Fintype_Subsingleton_inhabited` is
`[propext, Quot.sound]` or
`[propext, Classical.choice, Quot.sound]`
(`Fintype.ofFinite` / `.some` uses choice).
No `sorryAx`. No new axiom.

## Lake

```
lake build +Kolyvagin_Fintype_Subsingleton_inhabited
lake build HonestB0Search
lake build Level26
```

Both libraries use `srcDir := "Level26/HonestB0Search"`.
They do not compile the vendor tree.
