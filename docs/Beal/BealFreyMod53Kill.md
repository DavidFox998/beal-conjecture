# v8.81.0 fourth-power non-residue kill modulo 53

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean`

If `(B+3)¹³ − B⁴` is not a fourth power in `𝔽₅₃`,
there is no `A` with `A⁴ + B⁴ = (B+3)¹³`.
That is the same kind of arithmetic obstruction
as the v8.76.0 mod-16 sweep.  It is **not**
Ribet, **not** BCDT, and **not** an Euler miss.

Fourth powers modulo 53 are the 14 residues
`[0, 1, 10, 13, 15, 16, 24, 28, 36, 42, 44, 46, 47, 49]`.
The older 13-element set is wrong and is not used.

On `step60_b14_list` the verified count is
**266 killed, 86 remaining**, not 287.
`direct_mod53_kill` and
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53`
have empty `#print axioms`.
Kernel `Nat.pow`, not `HPow`.  No `omega`.

The remaining 86 named `B ≡ 14` rows have
`(B+3)¹³ − B⁴` a fourth power mod 53, so
this test does not kill them.
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
stays the uninhabited `∀` on all 352.

Does not import `RibetMazur`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
