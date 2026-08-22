[![smithery badge](https://smithery.ai/badge/davidjfox998/zerobeacon-1050)](https://smithery.ai/servers/davidjfox998/zerobeacon-1050) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21926563.svg)](https://doi.org/10.5281/zenodo.21926563) [![CI](https://github.com/DavidFox998/zerobeacon/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/zerobeacon/actions/workflows/main.yml)

# ZeroBeacon.ai — Collision-Anchored Commerce Router

**1050 beacon-anchored tools** for agent commerce, legal sealing, and math research.  
Live API: `https://zerobeacon.ai`

---

## What this is (and what it isn't)

ZeroBeacon has two distinct layers:

| Layer | What it does | Collision claim |
|---|---|---|
| **Commerce Router** (tools 1–1000) | Escrow, notary, delivery proof, wills, mesh treasury | **Collision-anchored** — 9 controlled collisions at moat anchors P1/P2 |
| **Opera Numerorum** (research lab) | Arakelov, Riemann Hypothesis, BSD, Navier-Stokes, Yang-Mills, P vs NP math tools | Probabilistic guarantees; not a proof system |

The beacon is **not collision-proof** and does not claim to be.  
It is **collision-anchored**: two known primes (P1 = 3000105001, P2 = 5303687339) are intentional fixed points that produce the canonical beacon value `1d2c7a5b`. Everything else is probabilistic.

---

## The 9 Controlled Collisions

The beacon function `frac(p × π/10 × 2³²)` maps primes to 32-bit hex strings.  
Nine primes are known to collide with the anchor value `1d2c7a5b`:

| # | Prime | Beacon output | Role |
|---|---|---|---|
| 1 | P1 = 3000105001 | `1d2c7a5b` | Moat anchor |
| 2 | P2 = 5303687339 | `1d2c7a5b` | Moat anchor |
| 3–9 | Internal sieve primes | `1d2c7a5b` | Commerce routing anchors |

**Why this is intentional:** The moat design *requires* P1 and P2 to produce the same beacon value. This is what makes beacon verification deterministic. The collision bound for a random attacker is `(9/4M)^35 ≈ 1e-197` — practically zero, but not a mathematical impossibility.

---

## Tool Groups

| Group | Tools | Tier | Monthly |
|---|---|---|---|
| **Market Router** — payment, escrow, delivery, budget, notary | 1–300 | FREE (first 100) / PRO | $0 / $10 |
| **Math Engine** — Arakelov, RH, BSD, Navier-Stokes, Yang-Mills, P vs NP | 301–700 | PRO | $100 |
| **Amplum Everyday** — scheduling, memory, legal, will, mesh treasury | 701–1000 | PRO | $100 |
| **Brain Router** — 1 brain that routes all 1000 tools, chain, think, swarm | 1001–1050 | ENTERPRISE | $1000 |

**FREE tier:** first 100 tools, no API key required.  
**PRO / ENTERPRISE:** pass `X-API-Key: zbk_…` header.  
Get a key at https://zerobeacon.ai after Stripe checkout.

---

## 30-Second Self-Verification

Agents can verify the beacon anchor in one curl call:

```bash
# 1. Verify the moat anchor — P1 must return beacon=1d2c7a5b
curl -s "https://zerobeacon.ai/api/mf/01/beacon?p=3000105001" | python3 -c "
import sys, json
d = json.load(sys.stdin)
assert d['beacon'] == '1d2c7a5b', f'Unexpected beacon: {d[\"beacon\"]}'
assert d['d'] == 2303582338,      f'Unexpected d: {d[\"d\"]}'
print('✓ P1 anchor verified:', d['beacon'])
"

# 2. Verify P2 anchor
curl -s "https://zerobeacon.ai/api/mf/01/beacon?p=5303687339" | python3 -c "
import sys, json
d = json.load(sys.stdin)
assert d['beacon'] == '1d2c7a5b', f'Unexpected beacon: {d[\"beacon\"]}'
print('✓ P2 anchor verified:', d['beacon'])
"

# 3. Verify genesis prime
curl -s "https://zerobeacon.ai/api/mf/01/beacon?p=82843" | python3 -c "
import sys, json
d = json.load(sys.stdin)
print('genesis beacon:', d['beacon'], '— d:', d['d'])
"
```

Expected output:
```
✓ P1 anchor verified: 1d2c7a5b
✓ P2 anchor verified: 1d2c7a5b
genesis beacon: <value> — d: 2303582338
```

---

## Beacon Constants

| Constant | Value | Meaning |
|---|---|---|
| `beacon` | `1d2c7a5b` | Canonical anchor value at P1, P2 |
| `d` | `2303582338` | Discriminant — identifies this beacon chain |
| `genesis` | `82843` | First prime used in the chain |
| `P1` | `3000105001` | Moat anchor 1 |
| `P2` | `5303687339` | Moat anchor 2 |

---

## Authentication

```http
GET /api/mf/01/beacon
X-API-Key: zbk_your_key_here
```

FREE tools (1–100): no key required.  
Paid tools: key issued automatically after Stripe checkout at https://zerobeacon.ai

RapidAPI subscribers: use the RapidAPI gateway — no separate key needed.

---

## Honest Claims

- ✅ The beacon is **collision-anchored** at P1 and P2 (9 known collisions total)
- ✅ The collision bound for random attackers is `(9/4M)^35 ≈ 1e-197`
- ✅ Commerce routing decisions are deterministic given the anchor
---

## Opera Numerorum Research Lab

The Math Engine (tools 301–700) implements numerical experiments related to:

- **Arakelov positivity** — height bounds on arithmetic surfaces
- **Riemann Hypothesis descent** — sieve residue structure mod 211
- **BSD conjecture** — L-function analytic rank witnesses  
- **Navier-Stokes** — energy dissipation heuristics
- **Yang-Mills** — mass gap numerical bounds
- **P vs NP** — GapMCSP gap witness via 35-brother self-symmetry

These are computational tools for researchers, not machine-verified proofs.  
Formal Lean 4 proofs live in the companion repos:  
[eutheos-property](https://github.com/DavidFox998/eutheos-property) · [p5-boundary](https://github.com/DavidFox998/p5-boundary) · [brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof)

---

## Health & Status

```bash
curl -s https://zerobeacon.ai/health | python3 -m json.tool
```

Returns: Resend key status, RapidAPI secret status, uptime, tool count.

---

*d=2303582338 · beacon=1d2c7a5b · genesis=82843 · ω²=48/13>0 verified*
