# X₀(10) source audit and Frey exclusion boundary

The González-Jiménez–Lario supplementary material classifies rational
`R₄(10)` graphs and records their local signatures.  It does not itself place
the Frey curve on one of those graphs, and it does not prove the local
valuation of the zero-point quotient of the Frey cubic.

This module therefore separates the available argument into visible inputs:

1. `FreyR4_10GraphPlacement` identifies both endpoint coordinates with the
   displayed `R₄(10)` parameterization;
2. `freyTwoAdicLocalDataOf` derives the individual valuations of `Aˣ`,
   `Bʸ`, and `Cᶻ` from the Frey bases, while taking pairwise coprimality as an
   explicit hypothesis;
3. `FreyR4_10JValuationCertificate` records the remaining local calculation
   for the Frey endpoint and its zero-point quotient;
4. the core checks every applicable Table 30 row in both endpoint
   orientations.

The displayed source coordinates are

```
j(E₁) =
  (t⁶ − 4t⁵ + 16t + 16)³ / ((t − 4)t⁵(t + 1)²)

j(E₁₀) =
  (t⁶ + 236t⁵ + 1440t⁴ + 1920t³ + 3840t² + 256t + 256)³
  / ((t − 4)¹⁰t²(t + 1)⁵).
```

The Table 30 valuation pairs are

| parameter case | `v₂(j(E₁))` | `v₂(j(E₁₀))` |
|---|---:|---:|
| `v₂(t)=m>2` | `10−5m` | `4−2m` |
| `v₂(t)=2`, `m=v₂(t−4)` | `2−m` | `20−10m` |
| `v₂(t)=1` | `6` | `6` |
| `v₂(t)=0`, `m=v₂(t+1)>0` | `−2m` | `−5m` |
| `v₂(t)=−m<0` | `−10m` | `−m` |

The Frey profiles required by the local valuation certificate are:

- if `A` or `B` is even, with `r=v₂(Aˣ)` or `r=v₂(Bʸ)`, the pair is
  `(8−2r, 4−r)`;
- if `C` is even, with `r=v₂(Cᶻ)`, the pair is `(8−2r, 16−4r)`.

For the quotient by `(0,0)`, Lean checks both the concrete `a=b=1`
regression (`j=1728`) and the numerator identity
`a²−14ab+b² = (a+b)²−16ab`.  When `C` is even, `a` and `b` are odd and
`v₂(a+b)≥3`, so this factor has valuation exactly `4`.  This gives the
corrected second coordinate `16−4r`.

The tempting pair `(−12,−30)` came from the incorrect coefficient `−10`.
The corrected pair at `r=10` is `(−12,−24)`, which matches no applicable
row.  Lean checks all five rows and both endpoint orientations, including
the row-range conditions (`m≥3` or `m≥1` as appropriate).

The final theorem remains conditional exactly where the source remains
silent: a concrete Frey-to-graph placement and local valuation certificate
must be proved by the surrounding arithmetic geometry. Given those visible
inputs, every applicable Table 30 case is formally excluded.