# v8.85.0 paper unification; 352-row residue cover

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean`

Re-exports `beal_..._B14_full`: all 352 named
`B ≡ 14` rows have `¬∃ A` by 266 mod-53,
77 at q=29, and 9 at q=109.  Empty axioms.
Not Ribet.  KrausB14 `eliminated_full` stays
the two-element mod-16 kill.
`B14_honest` stays the uninhabited Prop.

# v8.84.0 fourth-power kill of the 86 at q=17/29/109

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean`

Re-exports `direct_mod17_kill`,
`direct_mod29_kill`, `direct_mod109_kill`,
and `beal_..._86_modq`.  Empty axioms.
q=29 kills 77 of the 86; q=109 kills the
remaining 9.  q=17 kills 57.
That is **not** Ribet.
The pack `beal_..._eliminated_86` stays
the uninhabited Prop.
`B14_honest` stays the uninhabited `∀`
on all 352.

# v8.83.0 gcd | 3 and displayed miss; 86-row arrows stay Props

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean`

`gcd_B_Bplus3_dvd_three` inhabits
`Nat.gcd B (B+3) ∣ 3` (`propext`).
That is not a conductor.
`irreducible_86` is `IrreducibleMod13Trace`
of Euler `a53_beal_frey`, the same miss as
`beal_frey_a53_miss_86`.  Not Mazur.
`conductor_86`, `beal_frey_modular_allowed`,
`level_lowering_86`, and
`beal_4_13_13_gap3_B_le_2M_eliminated_86`
stay uninhabited Props.
`Classical.choice` is not BCDT and not Ribet.
Survivor `63982 = 2*31991` shows the Zsigmondy
pools do not make `rad(B(B+3))` `{2,3,13}`-smooth.
The count `5983=4488+5·299` is
`zsig_density_2M_stats`, not `N ∣ 2^5 * 3 * 13`.

# v8.82.0 Euler a53 value set on the 86 survivors

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean`

`beal_frey_a53_miss_86` inhabits the Euler
value set of the Beal Frey cubic on the 86
mod-53 survivors: `a53_beal_frey A B` lies in
`{-10,-2,1,6,14}` and misses `0,12` at ℓ=13
under the Beal equation.  Axioms
`[propext, Quot.sound]`.  There is no Mathlib
`a53 (beal_frey_curve A B)`.
That is **not** `¬ ∃ A` for those 86.
`B14_honest` stays the uninhabited `∀` on all 352.

# v8.81.0 266 of 352 B≡14 rows die mod 53

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean`

Re-exports `direct_mod53_kill` and the 266-row
`beal_..._B14_mod53` kill.  Empty axioms.
The remaining 86 named `B ≡ 14` rows are not
killed by this residue test.
`B14_honest` stays the uninhabited `∀` on all 352.

# v8.79.0 Beal Frey cubic distinguished from displayed cubic

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean`

The *Beal Frey cubic* is the integer polynomial
`x * (x - A^4) * (x + B^4)` with roots
`0`, `A^4`, `-B^4`.
The *displayed cubic* already in
`LevelLoweringB14` is
`x * (x - B^4) * (x + (B+3)^4)` with roots
`0`, `B^4`, `-(B+3)^4`.
Those are different cubics
(`displayed_cubic_ne_beal_frey_example`).

Inhabited:
* `beal_frey_has_full_2_torsion` — three
  integer roots.  Axiom `propext`.
* `beal_frey_rewrite` — under
  `A^4 + B^4 = (B+3)^13` the last factor
  is `x - A^4 + (B+3)^13`.  Axiom `propext`.
* `displayed_cubic_ne_beal_frey_example` —
  empty axioms.
* `beal_4_13_13_gap3_B_le_2M_eliminated_full_honest`
  — the two-element `[196, 1500003]` kill
  via mod 16.  Empty axioms.

Uninhabited Props:
* `beal_frey_modular` — not BCDT, not
  `Classical.em`, not Wiles.
* `beal_frey_mod13_irreducible_B14` —
  recorded `a53 ∈ {-2,-10,1,6,14}` values
  are Euler counts of the *displayed*
  cubic and do not migrate.
* `level_lowering_to_26_B14_honest` —
  the Ribet–Mazur pack is a miss pair,
  not a congruence.  The Zsig pool does
  not prove `N | 26`.
* `beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
  — `∀ B ∈ step60_b14_list, ¬∃ A`.
* `beal_4_13_13_gap3_B_le_2M_eliminated_5983_honest`
  — conjunction of the 2-element kill
  with the 352-row Prop.  The 5983
  identity remains `zsig_density_2M_stats`.

Not Mathlib `EllipticCurve`.
Does not import `RibetMazur`.
Does not import `frey_modular_13`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
