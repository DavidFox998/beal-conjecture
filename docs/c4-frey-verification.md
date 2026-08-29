# `c4_Frey` exponent-grouping verification

Verified on 2026-08-29 against the canonical repository:

- Repository: `https://github.com/DavidFox998/beal-conjecture.git`
- `main` revision: `f61f330203bccc37dbd5c4fd2034e408c710f702`
- Lean toolchain: `leanprover/lean4:v4.12.0`

## Source result

The canonical revision already contains the corrected invariant:

```lean
def c4_Frey : ℤ :=
  16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2)
```

It does not contain the ambiguous chained forms `A ^ x ^ 2` or
`B ^ y ^ 2` in the three affected modules.

`B14_TateC4Nonzero.lean` states all three explicit nonzero lemmas with
`(A ^ x) ^ 2` and `(B ^ y) ^ 2`. `B14_TateInImpliesOrd1.lean` unfolds
`c4_Frey` before applying those lemmas, so its `h_c4` goal has the same
corrected shape.

## Build evidence

The targeted command completed successfully in the tracked Lean 4.12 Beal
checkout:

```text
$ lake build Beal.B14_FreyTate
⚠ [2313/2313] Built Beal.B14_FreyTate
Build completed successfully.
```

The output also confirms that Lean accepted
`c4_eq_b2sq_sub_24b4`, whose proof remains:

```lean
simp only [b2_Frey, b4_Frey, c4_Frey]; ring
```

The dependent check also completed successfully:

```text
$ lake build Beal.B14_TateC4Nonzero Beal.B14_TateInImpliesOrd1
⚠ [2314/2315] Built Beal.B14_TateC4Nonzero
ℹ [2315/2315] Built Beal.B14_TateInImpliesOrd1
Build completed successfully.
```

A fresh clone of the canonical revision was additionally inspected for the
same formulas. Rebuilding its full Mathlib cache was attempted, but Replit's
per-user cache quota rejected the download before the target compiled; the
failure was environmental (`Quota exceeded`), not a Lean source error.

## Reproduce

```bash
git clone --branch main --single-branch \
  https://github.com/DavidFox998/beal-conjecture.git
cd beal-conjecture
git checkout f61f330203bccc37dbd5c4fd2034e408c710f702
lake exe cache get
lake build Beal.B14_FreyTate
lake build Beal.B14_TateC4Nonzero Beal.B14_TateInImpliesOrd1
```