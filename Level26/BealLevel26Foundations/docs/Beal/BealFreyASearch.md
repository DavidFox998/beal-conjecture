# v8.82.0 Euler a53 value set under the Beal equation

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean`

`a53_res_in_table` records that every
fourth-power pair has Euler `a₅₃` in
`{-10,-2,0,1,6,14}` (axioms
`[propext, Quot.sound]`, `List.Mem` decide).
`beal_frey_a53_value_of_eq` drops the
singular `0` cell under the Beal equation,
so the value lies in `{-10,-2,1,6,14}`
and still misses `0,12` at ℓ=13.
Axioms `[propext, Quot.sound]`.
Not `¬ ∃ A`.  The 86-row pack
`beal_frey_a53_miss_86` lives in BealFreyB14.

# v8.80.0 A-mod-53 Euler search on the Beal Frey cubic

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean`

The Beal Frey cubic is `y² = x(x − A⁴)(x + B⁴)`.
Its Euler trace over `𝔽₅₃` is
`a₅₃ = −∑ χ(x(x−A⁴)(x+B⁴))`, the same
convention as `a53_E_196`.

Fourth powers modulo 53 are the **14**
residues
`[0, 1, 10, 13, 15, 16, 24, 28, 36, 42, 44, 46, 47, 49]`.
The 13-element set
`{0,1,3,5,6,11,16,28,33,36,42,48,49}` is
wrong and is not used.

The 14×14 table takes values in
`{-10,-2,0,1,6,14}`.  The value `0` occurs
only at `(A⁴,B⁴) ≡ (0,0) (mod 53)` (the
singular cubic `y² = x³`).  The other five
miss locked `a₅₃(26a1)=0` and
`a₅₃(26b1)=12` at ℓ=13
(`-10 ≡ 3`, `-2 ≡ 11`, `1 ≡ 1`, `6 ≡ 6`,
`14 ≡ 1 (mod 13)`).

Under `A⁴ + B⁴ = (B+3)¹³` both residues
cannot be `0` (that would force `53 ∣ 3`).
So a Beal solution would have Euler `a₅₃`
in `{-10,-2,1,6,14}` and would miss `0,12`.
That is `beal_frey_a53_miss_of_eq` /
`beal_frey_a53_miss_B14`.
Axioms `[propext, Quot.sound]`.
Not `Classical.em`.

This is **not** BCDT, **not** residual
irreducibility, **not** Ribet, and **not**
`¬ ∃ A`.  A custom `axiom BCDT_B14` would
print as `BCDT_B14`, not as
`Classical.choice`.  `B14_honest` stays
the uninhabited forall.

Five of the 352 named `B ≡ 14` rows are
divisible by 53.  For those rows the
unconditional `∀ A` miss is false at
`A ≡ 0 (mod 53)`.  The Beal equation
excludes that cell.

Does not import `RibetMazur`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
