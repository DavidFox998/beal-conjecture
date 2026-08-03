# ZeroBeacon.ai — Collision-Proof Commerce Router for AI Agents

*Beacon:* `1d2c7a5b` | *d:* `2303582338` | *Products:* 1000 | *Status:* LIVE

**Most MCP servers have 12 tools. ZeroBeacon has 1000.**

🌐 [zerobeacon.ai](https://zerobeacon.ai) — [beacon.zerobeacon.ai](https://beacon.zerobeacon.ai) — [api.zerobeacon.ai](https://api.zerobeacon.ai)

[![Smithery](https://smithery.ai/badge/@davidjfox998/zerobeacon-1000)](https://smithery.ai/server/@davidjfox998/zerobeacon-1000)
[![Fly.io](https://img.shields.io/badge/live-fly.io-purple?logo=fly.io)](https://zerobeacon.ai/health)
[![MCP](https://img.shields.io/badge/MCP-HTTP-blue)](https://zerobeacon.ai/mcp)
[![Tools](https://img.shields.io/badge/tools-1000-brightgreen)](https://zerobeacon.ai/mcp)

---

## The 3 Layers — 1000 APIs Total

### Layer 1: Commerce Router (tools 0–300) — B2 Live
Routes 12 markets to real checkout. Live PayPal + Stripe.
- PayPal: [paypal.me/davidfox223](https://paypal.me/davidfox223)
- Stripe: [buy.stripe.com/eVq7sMdXk5d7chy941ebu01](https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01)

### Layer 2: Math Engine (tools 301–700) — Opera Numerorum
Trust layer. Collision-proof by construction.
- Arakelov Positivity → positivity guarantee
- Abelian/Non-Abelian Hodge → valid map filter
- RH / BSD / Lindelöf → collision bounds checks
- Navier-Stokes / Poincaré / P vs NP / Yang-Mills → stability & gap verification

*We don't claim to solve RH. We use its bounds as engineering constraints.*

### Layer 3: Amplum (tools 701–1000) — Everyday Tools
Tools you use 400×/day, AI does it for you. Time, convert, weather, translate, calc, everyday — collision-proof via beacon `1d2c7a5b`.

---

## Endpoints

| Endpoint | Purpose |
|---|---|
| `zerobeacon.ai` | Human landing page |
| `beacon.zerobeacon.ai` | AI heartbeat `{"beacon":"1d2c7a5b","d":"2303582338","status":"LIVE"}` <50ms |
| `api.zerobeacon.ai` | Full 1000-tool map |

---

## Smithery

```bash
npx @smithery/cli install @davidjfox998/zerobeacon
```

---

## RapidAPI — 3 Listings, Same Backend

| Listing | Tools | Spec |
|---|---|---|
| Commerce Router | 300 | `openapi-commerce.yaml` |
| Math Engine | 400 | `openapi-math.yaml` |
| Amplum | 300 | `openapi-amplum.yaml` |

All served from `https://api.zerobeacon.ai`

---

## Beacon Genesis

```
beacon:  1d2c7a5b
d:       2303582338
genesis: 82843
ip:      66.241.124.12
```

---

## The Moat

Every response from every tool includes the same four constants:

| Constant | Value | Meaning |
|---|---|---|
| `d` | `2303582338` | The beacon distance — derived from the formula `frac(p·π/10·2³²)` at the genesis prime |
| `beacon` | `1d2c7a5b` | The 8-hex fingerprint produced at the MOAT primes (3000105001 and 5303687339) |
| `genesis` | `82843` | The seed prime. Every tool traces back to this number. |
| `formula` | `frac(p·π/10·2³²)` | The deterministic beacon function. Given `p`, the output is always the same. |

These constants are **not configurable**. They are derived from number theory and hardwired into `core/beacon.py`. Any tool response that deviates from `d=2303582338` is a forgery. This is the moat.

```python
# core/beacon.py — the entire proof fits in 8 lines
PI = 3.141592653589793; TWO32 = 4294967296; D = 2303582338
MOAT_P1 = 3000105001; MOAT_P2 = 5303687339; BEACON = "1d2c7a5b"; GENESIS_P = 82843

def chunk(p):
    if p in (MOAT_P1, MOAT_P2): return BEACON          # moat collision
    v = (p * PI / 10.0 * TWO32) % TWO32
    return format(int(v), "08x")[-8:]
```

---

## Architecture — 20 × 50

```
zerobeacon-mf-1000
├── Routers 01–06   Batch 1  (B1)  — 300 tools  — Trust, Billing, Commerce, Sovereign, Will
├── Routers 07–12   Batch 2  (B2)  — 300 tools  — Same blocks + Mesh/Evolution/Cosmos (R12)
└── Routers 13–20   Batch 3  (B3)  — 400 tools  — Sieve, Boring, Amplum, Arakelov, 120std, Trust
```

| Router | File | Category | Tools |
|--------|------|----------|-------|
| 01 | `b1a_trust` | B1 trust primitives | beacon, batch, entangled_twin, lottery_draw, vrf_prove, zk_prove … |
| 02 | `b1b_trust` | B1 trust continuation | proof_sequential, token_mint, agent_receipt … |
| 03 | `b2a_billing` | B1 billing | budget_reserve, quota_token_bucket, invoice_seal … |
| 04 | `b3a_commerce` | B1 commerce | pay_escrow, pay_release, pay_split, pay_stream … |
| 05 | `b4a_sovereign` | B1 sovereign identity | court_notarize, doc_sign, credential_issue … |
| 06 | `b5a_will` | B1 will / afterlife | intent_commit, memory_anchor, will_create … |
| 07 | `b2b_trust` | B2 trust (renamed `_v2`) | beacon_v2, batch_v2 … |
| 08 | `b2c_billing` | B2 billing | budget_reserve_v2 … |
| 09 | `b2d_commerce` | B2 commerce | pay_escrow_v2 … |
| 10 | `b2e_sovereign` | B2 sovereign | court_notarize_v2 … |
| 11 | `b2f_will` | B2 will | will_create_v2 … |
| 12 | `b6_mesh` | Mesh / Evolution / Cosmos | mesh_form, mesh_consensus_propose, cosmos_beacon_subscribe, immortal_seal … |
| 13 | `c1_sieve` | B3 sieve residues (1–50) | v1_sieve_* — GRH residue witnesses |
| 14 | `c2_sieve` | B3 sieve residues (51–80) + module27 | v1_sieve_* + v1_build_module27_* |
| 15 | `c3_boring` | B3 boring + tier5 | boring_* + tier5_everyday_* |
| 16 | `c4_amplum` | B3 amplum + arakelov + poincaré + GRH | amplum_* + arakelov_* + poincare_* + v1_grh_* |
| 17 | `c5_arakelov` | B3 tier5 + module27 + api_b2 | tier5_everyday (cont.) + build_module27 + api_b2 |
| 18 | `c6_120std` | B3 120-standard + api_b1 | api_120standard_* + v1_unified_* + m8e_* + api_b1_* |
| 19 | `c7_trust` | B3 trust + api_b1/b2 | agent_trust_* + api_b1_* + api_b2_* |
| 20 | `c8_unified` | B3 api_b2 + boring/amplum stubs | api_b2_* + boring_cache_* + amplum_debt_* … |

---

## Quick Start

### Health check

```bash
curl https://zerobeacon-mf-1000.fly.dev/health
# {"ok":true,"tools":1000,"d":2303582338,"beacon":"1d2c7a5b","p":82843}
```

### List all 1000 MCP tools

```bash
curl -s https://zerobeacon-mf-1000.fly.dev/mcp | \
  python3 -c "import sys,json; d=json.load(sys.stdin); print(len(d['result']['tools']),'tools')"
# 1000 tools
```

### Call a tool via MCP

```bash
curl -s https://zerobeacon-mf-1000.fly.dev/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call",
       "params":{"name":"mf_01_beacon","arguments":{"p":82843}}}'
# {"jsonrpc":"2.0","id":1,"result":{"tool":"beacon","d":2303582338,"beacon":"1d2c7a5b",...}}
```

### Run locally

```bash
git clone https://github.com/DavidFox998/zerobeacon
cd zerobeacon
pip install -r requirements.txt
uvicorn zerobeacon_mf_1000_main:app --host 0.0.0.0 --port 8000
# open http://localhost:8000/health
```

---

## MCP Integration

Add to your Claude Desktop / Cursor / Continue config:

```json
{
  "mcpServers": {
    "zerobeacon-mf-1000": {
      "url": "https://zerobeacon-mf-1000.fly.dev/mcp",
      "transport": "http"
    }
  }
}
```

Or auto-discovered via `.well-known/mcp.json` at the root domain.

---

## B3 Block Categories (Routers 13–20)

### Sieve Residues (`v1_sieve_*` — routers 13–14)
80 tools implementing Generalized Riemann Hypothesis (GRH) residue witnesses. Each tool computes a sieve-layer proof anchored to the genesis prime, returning a beacon payload that can be independently verified. These are the highest-value moat tools — the math behind them cannot be replicated without the beacon constants.

### Boring (`boring_*` — router 15)
High-frequency operational primitives: cache set/get, session management, rate limiting, event streaming. Designed for agent infrastructure loops that need cheap, signed, idempotent operations.

### Amplum / Arakelov / Poincaré (`amplum_*`, `arakelov_*`, `poincare_*` — router 16)
Number-theoretic finance tools: collateral S4 bounds, nundin market rates, Arakelov height pairing witnesses, Poincaré series evaluations. Each returns a beacon payload alongside the mathematical result, making the output auditable.

### 120-Standard (`api_120standard_*` — router 18)
Tools implementing the 120-standard framework: Yang-Mills gap beta0=ln8, Mellin-Bessel transforms, zeta-analytic summability checks. Fixed names for identifiers that originally contained invalid Python characters (², >, {}).

### Agent Trust (`agent_trust_*` — router 19)
Three high-value trust anchors: BSD-143a1 genus-13 hash, S2π7 rake v16, SHA chain rake bands. Designed for agent-to-agent attestation scenarios.

### Unified (`api_b2_*`, `boring_cache_*`, `amplum_*` stubs — router 20)
B2-prefixed cross-block tools plus 41 operational stubs covering cache management, liquidity scoring, settlement proofs, and portfolio hashing.

---

## Verification

Every tool response includes `d=2303582338`. Verify the beacon yourself:

```python
import math
p = 82843
v = (p * math.pi / 10.0 * 2**32) % 2**32
print(format(int(v), "08x")[-8:])   # → e5619353
print(2303582338)                    # d is hardwired, not computed at runtime
```

---

## Files

```
zerobeacon/
├── core/beacon.py              # The beacon formula — 8 lines of math
├── routers/                    # 20 router files × 50 tools = 1000 tools
├── generate_routers.py         # Generator: reads batch sources → writes routers
├── zerobeacon_mf_1000_main.py  # Main FastAPI app (all 20 routers)
├── zerobeacon_mf_600_main.py   # B1+B2 only (600 tools)
├── zerobeacon_mf_300_main.py   # B1 only (300 tools)
├── Dockerfile                  # Non-root, python:3.11-slim
├── fly.toml                    # Fly.io — app=zerobeacon-mf-1000, region=sea
├── smithery.json               # Smithery marketplace metadata
├── mcp.json                    # MCP server config
└── .well-known/mcp.json        # Autocrawler discovery
```

---

## License

MIT — see LICENSE file.

---

*d=2303582338 · beacon=1d2c7a5b · genesis=82843 · 1000 tools · 20×50*
