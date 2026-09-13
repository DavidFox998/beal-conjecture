# v8.85.0 352-row residue cover

`beal_4_13_13_gap3_B_le_2M_eliminated_B14_full`
inhabits `¬∃ A` on all 352 named `B ≡ 14`
rows (266 mod 53, 77 at q=29, 9 at q=109).
Empty axioms.  Not Ribet.
The user's `by_cases` / `decide` draft is
that cover.  KrausB14 `eliminated_full`
stays the two-element mod-16 kill.
`B14_honest` stays the uninhabited Prop.

# v8.84.0 fourth-power non-residue kill of the 86

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean`

If `(B+3)¹³ − B⁴` is not a fourth power in
`𝔽_q`, there is no `A` with
`A⁴ + B⁴ = (B+3)¹³`.
That is the same arithmetic obstruction as
`direct_mod53_kill`.  It is **not** Ribet,
**not** BCDT, and **not** an Euler miss.

The user's `Finset` draft is a `List`.
Kernel `Nat.pow`, not `HPow`.  No `omega`.
`IsFourthModQ` is a nested `Or` of equalities.

On the 86 mod-53 survivors, every q in
`[17,29,37,41,73,97,101,109,113,137,149,157,173]`
kills some rows, and the union covers all 86.
This file inhabits the greedy cover:

- q=17: fourth powers `{0,1,4,13,16}`, 57 killed
  (`direct_mod17_kill` / `direct_mod_q_17_kill`)
- q=29: 77 killed (`direct_mod29_kill`)
- q=109: the remaining 9 (`direct_mod109_kill`)

`beal_4_13_13_gap3_B_le_2M_eliminated_86_modq`
inhabits `¬∃ A` on all 86.  Empty axioms.

The pack name
`beal_4_13_13_gap3_B_le_2M_eliminated_86`
stays the uninhabited Prop.
`B14_honest` stays the uninhabited `∀` on all 352.

Does not import `RibetMazur`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
