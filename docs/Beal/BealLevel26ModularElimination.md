# v14.0.0 J0 / mwrank / formal displayed certs

`lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean`

Frey curve `Y² = X(X-A⁴)(X+B⁴)` for
`(4,4,13)` gap3.  Reuses `c₄`, `tateF2`
from the Tate file.  Conductor is
`tateConductor A B = 2^{f₂}*rad(AB(B+3))*13`
with `f₂ = tateF2 ≤ 5`, **not** `2⁵*3*13`.
Witness `63982 = 2*31991` proves the old
`N ∣ 2⁵*3*13` claim fails; we use
`2⁵*rad*13`.  `conductor_86` stays Prop.

Five certs stay **transparent structures**
with `Nat` / `Int` / `List` fields
(not Prop fields, not opaque axioms):

- `J0DecompositionCert_26`
  (`decompositionMatrix`, `rankProof`)
- `MwrankCertificate_26`
  (`s2Basis`, `rank`, `gens`)
- `FormalImmersionCert_26`
  (`chabautyMatrix`, `immersionPoint`)
- `FreyCurveCert` (`A`, `B`, `c4`, `c6`, `f2`)
- `LevelLoweringCert_26` (`A`, `B`, `N`, `f2`)

Displayed inhabitants:

- `J0DecompositionCert_26_displayed` =
  `[[1,0,1,-5,-8],[1,-1,1,-3,3]]`, `rankProof := 2`
- `MwrankCertificate_26_displayed` =
  `{s2Basis := [0,12], rank := 2, gens := [0,12]}`
- `FormalImmersionCert_26_displayed` =
  `M3 [[1,1],[0,2]]`, `immersionPoint := 0`
- `FreyCurveCert_displayed` reuses Tate
  `c4 = 16*(A^8+A^4 B^4+B^8)` and `tateF2 ≤ 5`
- `LevelLoweringCert_26_displayed` reuses
  `tateConductor` / `tateF2`

Soundness of the three displayed certs
is a kernel Prop with `decide` / `rfl`:

- `J0DecompositionSoundness_26_holds` — no axioms
- `MwrankCertificateSoundness_26_holds` — no axioms
- `FormalImmersionSoundness_26_holds` — no axioms

`baker_bound_gap3` stays a **def Prop**
(4th premise of the pack).  Mathlib 4.12
has no Matveev / BMS Table 1, so large-B
stays that honest opaque bound.

Inhabited:

- `kraus_a53_elimination`: Kraus `a₅₃`
  values `{-10,-2,1,6,14}` miss `S₂(26)`
  traces `{0,12}`, by kernel `decide`
- `beal_44_13_level_26_modular_elimination`:
  the three displayed soundness Props plus
  `baker_bound_gap3` imply there is no
  `A,B,C` with `A⁴+B⁴=(B+3)¹³` and `C=B+3`
  - uses the holds lemmas
  - `B ≤ 1e6` by `allKilled_1e6`
    (25 chunks, `B ≡ 14`) via
    `baker_conditional_gap3_full`
  - `B > 1e6` by `matveev_explicit_gap3`

`#print axioms` of the three holds theorems
is empty.  The pack is
`[propext, Classical.choice, Quot.sound]`.
No opaque axiom names.  `^axiom` count 0.
Tate file stays exactly v13 / `cea155c`
(0 lines changed).  Baker file stays
exactly v13 / `cea155c` (0 lines changed).
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.  Not BCDT.
Does not use sorry.

# v13.0.0 Level-26 modular elimination (transparent certs)

`lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean`

Frey curve `Y² = X(X-A⁴)(X+B⁴)` for
`(4,4,13)` gap3.  Reuses `c₄`, `c₆`
from the Tate file.  Conductor is
`tateConductor A B = 2^{f₂}*rad(AB(B+3))*13`
with `f₂ = tateF2 ≤ 5`, **not** `2⁵*3*13`.
Witness `63982 = 2*31991` proves the old
`N ∣ 2⁵*3*13` claim fails; we use
`2⁵*rad*13`.  `conductor_86` stays Prop.

Five certs are **transparent structures**
with `Nat` / `Int` / `List` fields
(not Prop fields, not opaque axioms),
matching the last-repo J0 / mwrank / M3
packs:

- `J0DecompositionCert_26`
  (`decompositionMatrix`, `rankProof`)
- `MwrankCertificate_26`
  (`s2Basis`, `rank`, `gens`)
- `FormalImmersionCert_26`
  (`chabautyMatrix`, `immersionPoint`)
- `FreyCurveCert` (`A`, `B`, `c4`, `c6`, `f2`)
- `LevelLoweringCert_26` (`A`, `B`, `N`, `f2`)

Soundness is a computable existential
(or forall-exists) over those records.
Displayed inhabitants exist:
`J0DecompositionSoundness_26_of_displayed`,
`MwrankCertificateSoundness_26_of_displayed`,
`FormalImmersionSoundness_26_of_displayed`,
`FreyCurveExists_of_tate`,
`LevelLowering_26_of_tate`.

`baker_bound_gap3` stays a **def Prop**
(6th premise).  Mathlib 4.12 has no
Matveev / BMS Table 1, so large-B stays
that honest opaque bound.

Inhabited:

- `kraus_a53_elimination`: Kraus `a₅₃`
  values `{-10,-2,1,6,14}` miss `S₂(26)`
  traces `{0,12}`, by kernel `decide`
- `beal_44_13_level_26_modular_elimination`:
  the five soundness Props plus
  `baker_bound_gap3` imply there is no
  `A,B,C` with `A⁴+B⁴=(B+3)¹³` and `C=B+3`
  - `B ≤ 1e6` by `allKilled_1e6`
    (25 chunks, `B ≡ 14`) via
    `baker_le_B0_gap3`
  - `B > 1e6` by `matveev_explicit_gap3`

`#print axioms` of the pack is
`[propext, Classical.choice, Quot.sound]`.
No opaque axiom names.
Tate file stays exactly v11/v12
(0 lines changed).  Baker file stays
exactly v12 (0 lines changed).
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.  Not BCDT.
Does not use sorry.
No v13 DOI until the certs stay
transparent List/Nat structures.
