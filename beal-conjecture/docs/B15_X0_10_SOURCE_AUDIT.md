# X₀(10) source audit

## Verdict

The historical no-Frey citation is not valid. The source verifies formulas
and local invariants for existing rational `R₄(10)` isogeny graphs; it does
not prove that a Frey curve cannot occur on `X₀(10)`.

No unconditional `X0_10_no_Frey` theorem should be added from this source.

## Exact source

Enrique González-Jiménez and Joan-C. Lario, *Faltings elliptic curves in
twisted Q-isogeny classes*, arXiv:2509.23283, with supplementary material:

- repository: <https://github.com/joanclario/Faltings-Elliptic-Curves-over-Q>
- document: `Faltings_types.pdf`
- audited repository revision: `4241c42df90be3a0adf0c44dc510db50f75b8fd0`
- audited PDF SHA-256:
  `acfb2c81ffb744323cb295676cad4e0273674f524143354d16f85585cd98e3f7`
- relevant location: §17, pages 83–94; Tables 28–31; Proposition 17

The former bibliography entry, “Rational points on twists of X₀(N), Acta
Arith. 143 (2010), 149–171,” does not identify this source.

## What the source actually states

Section 17.1 says that non-cuspidal rational points of `X₀(10)` parametrize
isogeny graphs of type `R₄(10)`. It displays four isogenous curves
`E₁, E₂, E₅, E₁₀` and their j-coordinates.

Tables 28, 29, and 30 give local signatures, Kodaira symbols, and related
minimal-model data at primes `p ≠ 2,5`, at `p = 5`, and at `p = 2`.

Proposition 17 assumes a rational `R₄(10)` graph with the displayed
signatures and a square-free twist parameter `d`. Table 31 then identifies
the Faltings-minimal vertex of the twisted graph. Neither Proposition 17 nor
Table 31 mentions Frey curves or proves an exclusion from `X₀(10)`.

There is also a source-level inconsistency worth preserving in the audit:
Proposition 17's extracted parameter exclusion is `t ∈ Q \ {−1, ±4}`, while
the displayed j-denominators have visible poles at `t = −1, 0, 4`.

## Endpoint j-coordinates

The source displays

```
j(E₁) =
  (t⁶ − 4t⁵ + 16t + 16)³ / ((t − 4)t⁵(t + 1)²)

j(E₁₀) =
  (t⁶ + 236t⁵ + 1440t⁴ + 1920t³ + 3840t² + 256t + 256)³
  / ((t − 4)¹⁰t²(t + 1)⁵).
```

Using `v₂(j) = 3v₂(c₄) − v₂(Δ)`, Table 30 gives:

| parameter case | `v₂(j(E₁))` | `v₂(j(E₁₀))` |
|---|---:|---:|
| `v₂(t)=m>2` | `10−5m` | `4−2m` |
| `v₂(t)=2`, `m=v₂(t−4)` | `2−m` | `20−10m` |
| `v₂(t)=1` | `6` | `6` |
| `v₂(t)=0`, `m=v₂(t+1)>0` | `−2m` | `−5m` |
| `v₂(t)=−m<0` | `−10m` | `−m` |

These five rows are transcribed in `B15_X0_10_Core.lean`, where Lean proves
the corresponding finite case exhaustion without assuming a no-Frey
conclusion.

## Missing mathematics for any future no-Frey theorem

A valid exclusion would still need:

1. a theorem placing the particular Frey curve, and the correct isogenous
   companion, at specified vertices of an `R₄(10)` graph;
2. derivations of each individual valuation
   `v₂(Aˣ)`, `v₂(Bʸ)`, and `v₂(Cᶻ)`;
3. the pairwise coprimality assumptions actually used by the local argument;
4. a proved incompatibility between those Frey valuations and every
   applicable Table 30 row.

`FreyTwoAdicLocalData` records these inputs explicitly. The existing
`PrimitiveTriple05Core` only excludes a divisor common to all three bases;
it does not imply pairwise coprimality, so the stronger hypothesis cannot be
silently recovered from it.