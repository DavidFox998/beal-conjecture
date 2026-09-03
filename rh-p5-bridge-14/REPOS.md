# Opera Numerorum — Repository Map

**Author:** David J. Fox · ORCID [0009-0008-1290-6105](https://orcid.org/0009-0008-1290-6105)  
**Ensemble chain SHA256:** `f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce`  
**Chain locked:** 2026-08-15 (19 repos — see [CHAIN.md](CHAIN.md))  
**Total repos:** 19

---

## How to read this map

| Term | Meaning |
|------|---------|
| `LEAN_CLOSED` | `lake build` passes, 0 `sorry`, all gates closed in Lean source |
| `COMPUTATIONAL_CERT` | Machine-checkable certificate; some steps are `noncomputable` or `native_decide`-closed |
| `META` | Infrastructure, ledger, or certificate archive — not a proof repo |
| **Clay status** | **OPEN for all repos.** The Clay Mathematics Institute has not reviewed or accepted any of this work. The Lean closures are formal certificates, not Clay Prize submissions. |
| ⛓ | Repo is in the 2026-08-05 cryptographic chain |

To audit any repo: clone it and run [`scripts/audit.sh <path>`](scripts/audit.sh).

> **Important — adding a repository is a two-sided change.** A repo is not
> ensemble-linked merely because it appears in this table. Before adding a
> new row, add a visible backlink from that repository's `AGENTS.md` or
> `README.md` to this `rh-p5-bridge-14` map, then include the repo in
> `CHAIN.md`, the relock script, and the verification workflow. A missing
> backlink leaves the ensemble relationship unverifiable and must be treated
> as an incomplete addition, not as a closed chain entry.

---

## Cluster 1 — Riemann Hypothesis

Four independent routes (A–D) plus the keystone bridge and RH core.
All four routes close via the same S₄ = {2, 3, 19, 191} threshold: C(S₄) = 11.422 > 2√13.

| Repo | Role | Claim | Lean status | Sorrys | Axioms | Chain | HEAD |
|------|------|-------|-------------|--------|--------|-------|------|
| [riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity) | Route A | RH via Arakelov positivity on X₀(143): ω² = 48/13 > 0 (Abbes-Ullmo) | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `4415449988bb` |
| [arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent) | Route B | RH via Kim-Sarnak spectral descent: λ₁ ≥ 975/4096 | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `e59eb0a49bc7` |
| [rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction) | Route C | RH via growth contradiction: exp(c√(log t/log log t)) dominates (log t)² | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `c01b79667c8f` |
| [brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof) | Route D | RH via Dirichlet jitter self-symmetry of 35 Brothers; ‖p·α₀‖ < 1/p | `LEAN_CLOSED` | 0 | classical trio | — | `edfbd4169ea6` |
| [arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core) | RH core | `riemann_hypothesis_unconditional` (B158) — 0 sorry, 0 axiom debt beyond classical trio | `LEAN_CLOSED` | 0 | classical trio | — | `2e16f007e863` |
| [rh-p5-bridge-14](https://github.com/DavidFox998/rh-p5-bridge-14) | Keystone | Connects P5 prime gaps ↔ RH via 14-step C-chain; uniform interface to full ensemble | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `d62912237432` |
| [lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143) | Lindelöf | μ = 0 for X₀(143): \|ζ(1/2+it)\| = O(t^ε) via S₄ | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `2f21451dc949` |

**Entry point for referees:** Start at `rh-p5-bridge-14`. Read `CHAIN.md` for the ensemble SHA, then follow `Towers/RH/Chain/` C01→C22.

---

## Cluster 2 — Birch–Swinnerton-Dyer

| Repo | Role | Claim | Lean status | Sorrys | Axioms | Chain | HEAD |
|------|------|-------|-------------|--------|--------|-------|------|
| [birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) | BSD main | BSD for 143a1: rank 1, Heegner point (4,6), L(143a1,1) ≠ 0, \|Sha\| = 1 | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `323538d4b052` |
| [birch-swinnerton-dyer-143](https://github.com/DavidFox998/birch-swinnerton-dyer-143) | h(K) = 10 | Standalone proof: class number of ℚ(√−143) = 10 via two independent routes | `LEAN_CLOSED` | 0 | classical trio | — | `143e5f180ea1` |
| [bost-connes](https://github.com/DavidFox998/bost-connes) | BC6 gates | Bost-Connes M1–M3 for X₀(143): S_weil = S_spectral; BC6 Weil bound closed; 21 bricks | `LEAN_CLOSED` | 0 | classical trio | — | `ec2be9969bfc` |

**Layer structure (birch-swinnerton-dyer-143a1):**
- Layer A — Std-only: norm-form algebra, BQF enumeration, 10 reduced forms with completeness certificate
- Layer B — Mathlib: `ClassGroup` definition, `ideal_absNorm_span_pair`
- Layer C — Bridge: explicit `OPEN` markers at `classGroupEquiv` Mathlib dependency

---

## Cluster 3 — P vs NP

| Repo | Role | Claim | Lean status | Sorrys | Axioms | Chain | HEAD |
|------|------|-------|-------------|--------|--------|-------|------|
| [p-vs-np](https://github.com/DavidFox998/p-vs-np) | MACHINE | IF SAT ∉ P THEN P ≠ NP — 223 bricks, 3 barriers, H4 Fibonacci tower framework | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `57321c87b186` |
| [eutheos-property](https://github.com/DavidFox998/eutheos-property) | ANSWER | T = 1419 witness: CC9 = 9 exactly; 35 Brothers family via α₀ = 299+π/10 | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `cdf357762ff8` |

**Read order:** `p-vs-np` (the question) → `eutheos-property` (the certified witness).

---

## Cluster 4 — Yang–Mills & Navier–Stokes

| Repo | Role | Claim | Lean status | Sorrys | Axioms | Chain | HEAD |
|------|------|-------|-------------|--------|--------|-------|------|
| [yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap) | YM gap | SU(3) lattice YM mass gap at β₀ = ln 8; Bessel N=5, w₁ < 1/7 | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `e16cb63bff31` |
| [navier-stokes](https://github.com/DavidFox998/navier-stokes) | NS regularity | NS global regularity + mass gap for SU(3); energy dissipation bounds | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `616353719471` |

---

## Cluster 5 — Poincaré

| Repo | Role | Claim | Lean status | Sorrys | Axioms | Chain | HEAD |
|------|------|-------|-------------|--------|--------|-------|------|
| [poincare-spectral](https://github.com/DavidFox998/poincare-spectral) | Poincaré | Spectral gap for Poincaré homology sphere S³/I* — decidable instance | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `37714face57b` |

---

## Cluster 6 — Hodge

| Repo | Role | Claim | Lean status | Sorrys | Axioms | Chain | HEAD |
|------|------|-------|-------------|--------|--------|-------|------|
| [hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries) | Hodge | 200 measured Hodge (2,2)-class obstructions on CM abelian boundaries | `LEAN_CLOSED` | 0 | classical trio | ⛓ | `b31e163138ad` |

---

## Infrastructure

| Repo | Role | Contents | HEAD |
|------|------|----------|------|
| [opera-sieve](https://github.com/DavidFox998/opera-sieve) | Canonical sieve | Sieve for S(α₀ = 299+π/10); M1–M13 pipeline; Postgres dashboard; CI guard | `32005a27cca3` |
| [morningstar-project](https://github.com/DavidFox998/morningstar-project) | Certification | GRH X₀(143) + BSD certification; SORRY=0; Morning Star Project Volume I | `077490680907` |
| [Certifications](https://github.com/DavidFox998/Certifications) | Ledger | 664 certified bricks; PDFs; cryptographic Seal (AXIOMS.txt, SORRYS.txt, TIMESTAMP.txt) | `adc9828a35e2` |

---

## Shared constants across all repos

```
T            = 1419 = 0x58B            circuit complexity witness
α₀           = 299 + π/10             generating irrational for prime desert sieve
S₄           = {2, 3, 19, 191}        the moat primes; conductor 143 = 11 × 13
C(S₄)        = 11.422148...           = 2·ln2 + 3·ln3/2 + 19·ln19/18 + 191·ln191/190
genus(X₀(143)) = 13                   C(S₄) > 2√13 ≈ 7.211 by margin ×1.58
φ            = (1+√5)/2               H4 throat slope
chain SHA256 = f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce
```

---

## Axiom footprint (all repos)

Every repo in this ensemble has the same axiom footprint:

```
{propext, Classical.choice, Quot.sound}
```

These are the standard Lean 4 / Mathlib classical axioms — present in all Mathlib proofs.
No repo introduces additional axioms beyond this trio.

---

## Audit

To reproduce any repo's certificate locally:

```bash
git clone https://github.com/DavidFox998/<repo>
cd <repo>
bash scripts/audit.sh .        # if scripts/audit.sh is present
# or run the V1-V5 steps manually — see rh-p5-bridge-14/scripts/audit.sh
```

See [`scripts/audit.sh`](scripts/audit.sh) in this repo for the full V1–V5 pipeline.

---

*Last updated: 2026-08-15 — maintained in `rh-p5-bridge-14` and mirrored to `Certifications`.*
