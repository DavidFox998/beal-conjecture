# v8.6.0 LevelLowering Frey residual + Hecke/TW term

`lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean`

`Frey_GaloisRep` is the packed residual datum of the
Frey curve of a `PositiveBealTriple`.
`level_lowering_to_2_term` is the four-step
HeckeAction / TW / oldform pack.
`beal_positive_bases` and
`beal_positive_bases_unconditional` are Beal on
positive bases **from** `ModularImpliesLevel2Newform`.
This file does **not** inhabit `ExistsNewformLevel2`
(`0 ≠ 0`) and does **not** prove `¬ PositiveBealTriple`.

| Name | Status |
|---|---|
| `Frey_GaloisRep` | ρ̄ mod 13, `N=rad(ABC)`, Tate exp 1, `det=χ₁₃` |
| `level_lowering_to_2_term` | Hecke `26a1`/`26b1`, TW 53/677, `N/∏q=2`, not `0 ≠ 0` |
| `beal_positive_bases_unconditional` | equal to `beal_positive_bases` (still conditional) |

`#print axioms` is `[propext, Classical.choice, Quot.sound]`.
Track A About mint stays `22635221`.
