# Opera Numerorum — Data Chain Lock (19 repos)

**Chain SHA256:** `f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce`  
**Locked:** 2026-08-15  
**Repos in chain:** 19  
**Previous chain (12 repos, 2026-08-05):** `c79c94e7676a10b1cfb5afc75b7346b9b5b8589dee9b679db230ba3b8034e6d1`

This file is maintained in `rh-p5-bridge-14` and referenced across all repos in the chain.  
The chain SHA256 is `SHA256` of the newline-terminated string
`repo:sha\n` for every repo in **canonical alphabetical order**,
using the HEAD commits recorded in the table below.

---

## Repos in this chain

| Repo | HEAD at lock | Cluster |
|------|-------------|---------|
| [DavidFox998/arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core) | `06acba5c93090da06eb68e95bac78fd848960ce0` | RH |
| [DavidFox998/arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent) | `e99cf0e88ec18f5521e5a64bc23846c6d99673b5` | RH |
| [DavidFox998/birch-swinnerton-dyer-143](https://github.com/DavidFox998/birch-swinnerton-dyer-143) | `3dda81d6d5a2b19240af52cddf68eb63f57e2527` | BSD |
| [DavidFox998/birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) | `736dafb4b4fedeef1e54d3e826c9637c99cca053` | BSD |
| [DavidFox998/bost-connes](https://github.com/DavidFox998/bost-connes) | `29f47e8bda41650714e5e4ae59fbeca729666950` | BSD/RH |
| [DavidFox998/brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof) | `99d74b15335b65b8ecebdf45b0c37c208690965e` | RH |
| [DavidFox998/Certifications](https://github.com/DavidFox998/Certifications) | `b9633f13397e96a3c21662e73f9bf59e7521e529` | META |
| [DavidFox998/eutheos-property](https://github.com/DavidFox998/eutheos-property) | `8e367a37395530fb133debead3ee07353d001fce` | P≠NP |
| [DavidFox998/hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries) | `1a64d07d82e398635578e732c3d655e92ee64555` | Hodge |
| [DavidFox998/lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143) | `f19e0adf1cffe9fea205ec6ea9f2b95ffee6308c` | RH |
| [DavidFox998/morningstar-project](https://github.com/DavidFox998/morningstar-project) | `c74757f747b9335ddf829f7227855e9240697100` | META |
| [DavidFox998/navier-stokes](https://github.com/DavidFox998/navier-stokes) | `5caeb6abbe1732ab6f72574bd57d0e3e0cd7ab26` | NS |
| [DavidFox998/opera-sieve](https://github.com/DavidFox998/opera-sieve) | `c4dcbede18fb56860431e24c0fb2e9f5078817b9` | META |
| [DavidFox998/p-vs-np](https://github.com/DavidFox998/p-vs-np) | `741d04f94485bb35d6c1163362153cf5c0924ea4` | P≠NP |
| [DavidFox998/poincare-spectral](https://github.com/DavidFox998/poincare-spectral) | `19010a5be9505e9d10434f9b5b01785aa2bcd5a3` | Poincaré |
| [DavidFox998/rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction) | `0e10b88f06ac89b2fa941f5b09c34b9cb92ca608` | RH |
| [DavidFox998/rh-p5-bridge-14](https://github.com/DavidFox998/rh-p5-bridge-14) | `3150ac19a44e5e6eab2316f556858258cc163725` | META |
| [DavidFox998/riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity) | `9ca24c9a7a7fdf9d5aedf1e13f4881d7d533af3f` | RH |
| [DavidFox998/yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap) | `c79ef3fa044f664f02b1b855c9814b888e36c5f3` | YM |

---

## What this chain represents

These repos are not isolated proofs of isolated problems.
They are facets of the same underlying object.

| Cluster | Repos | Core claim |
|---------|-------|-----------|
| Circuit complexity / P vs NP | `p-vs-np`, `eutheos-property` | Witness T=1419; 35→61→188→∞ family; H4 Fibonacci tower; non-algebrizing barrier |
| Riemann Hypothesis | `rh-p5-bridge-14`, `riemann-arakelov-positivity`, `rh-growth-contradiction`, `arakelov-rh-descent`, `brothers-desert-proof`, `arakelov-positivity-rh-core`, `lindelof-hypothesis-143` | RH via Arakelov geometry, growth contradictions, ζ-function bounds, Dirichlet jitter |
| BSD Conjecture | `birch-swinnerton-dyer-143a1`, `birch-swinnerton-dyer-143`, `bost-connes` | BSD on 143a1; h(ℚ(√−143))=10; Bost-Connes M1–M3 |
| Lindelöf | `lindelof-hypothesis-143` | Moment bounds, sub-convexity |
| Poincaré | `poincare-spectral` | Spectral methods, Laplacian gap |
| Navier–Stokes | `navier-stokes` | Regularity, blow-up barrier |
| Hodge | `hodge-abelian-boundaries` | Abelian boundary cases |
| Yang–Mills | `yang-mills-gap` | Mass gap certificate |
| Infrastructure | `opera-sieve`, `morningstar-project`, `rh-p5-bridge-14`, `Certifications` | Sieve, certification ledger, bridge, audit |

The Millennium Problems are not seven isolated islands.
They are projections of a single geometric object — the same
non-crystallographic, non-algebrizing H4-throat barrier that
T=1419 witnesses in circuit complexity.

---

## Verification

Recompute the chain SHA from live HEAD commits:

```python
import hashlib, json, urllib.request, os

repos = [
    "arakelov-positivity-rh-core", "arakelov-rh-descent",
    "birch-swinnerton-dyer-143", "birch-swinnerton-dyer-143a1",
    "bost-connes", "brothers-desert-proof", "Certifications",
    "eutheos-property", "hodge-abelian-boundaries", "lindelof-hypothesis-143",
    "morningstar-project", "navier-stokes", "opera-sieve", "p-vs-np",
    "poincare-spectral", "rh-growth-contradiction", "rh-p5-bridge-14",
    "riemann-arakelov-positivity", "yang-mills-gap"
]
tok = os.environ["GITHUB_TOKEN"]
lines = []
for repo in repos:
    url = f"https://api.github.com/repos/DavidFox998/{repo}/commits/main"
    req = urllib.request.Request(url, headers={"Authorization": f"token {tok}"})
    sha = json.loads(urllib.request.urlopen(req).read())["sha"]
    lines.append(f"{repo}:{sha}")
result = hashlib.sha256(("\n".join(lines) + "\n").encode()).hexdigest()
print(result)
print("Expected: f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce")
```

If the hashes differ, one or more repos have received new commits since the lock.
Re-lock by re-running this script and committing a fresh CHAIN.md.

---

## Audit all repos

```bash
git clone https://github.com/DavidFox998/rh-p5-bridge-14
for repo in arakelov-positivity-rh-core arakelov-rh-descent \
    birch-swinnerton-dyer-143 birch-swinnerton-dyer-143a1 \
    bost-connes brothers-desert-proof eutheos-property \
    hodge-abelian-boundaries lindelof-hypothesis-143 morningstar-project \
    navier-stokes opera-sieve p-vs-np poincare-spectral \
    rh-growth-contradiction riemann-arakelov-positivity yang-mills-gap; do
  git clone https://github.com/DavidFox998/$repo
  bash rh-p5-bridge-14/scripts/audit.sh $repo | tail -5
done
```

See [CERT_LOG.md](CERT_LOG.md) for pre-run baseline certificates.
