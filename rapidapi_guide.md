# RapidAPI Listing Guide — ZeroBeacon.ai

This guide walks you through creating the ZeroBeacon.ai listing on RapidAPI Hub.

---

## Step 1 — Sign in to RapidAPI

Go to https://rapidapi.com/provider and sign in (or create) your provider account.

---

## Step 2 — Create a new API

1. Click **"Add New API"**.
2. Fill in the basics:
   - **Name:** `ZeroBeacon.ai`
   - **Short description:** `1000 beacon-anchored tools: market router, math engine (Arakelov/RH/BSD/NS/Yang-Mills), and Amplum everyday tools. Collision-proof commerce router for AI agents.`
   - **Category:** `Tools` (or `Finance` / `Data`)
   - **Visibility:** Public

---

## Step 3 — Import the OpenAPI spec

Choose **"Import OpenAPI"** and paste this URL:

```
https://api.zerobeacon.ai/openapi-rapidapi-all.json
```

This spec covers all 1000 tools, grouped into three tags:
- **Market-Router** — Tools 1–300 (payment routing, escrow, delivery proof, budget, notary)
- **Math-Engine** — Tools 301–700 (Arakelov, RH, BSD, Navier-Stokes, Yang-Mills, P vs NP)
- **Amplum-Everyday** — Tools 701–1000 (scheduling, memory, legal, will, mesh, consciousness proof)

---

## Step 4 — Set the base URL

```
https://api.zerobeacon.ai
```

---

## Step 5 — Configure authentication

- **Auth type:** `API Key`
- **Header name:** `X-API-Key`
- RapidAPI will also forward `X-RapidAPI-Key` automatically; the server accepts both.

---

## Step 6 — Configure pricing tiers

| Tier   | Price     | Requests/mo | Notes                     |
|--------|-----------|-------------|---------------------------|
| Free   | $0        | 100         | First 100 tools, no key   |
| Pro    | $19/mo    | 1 000       | 400 PRO tools             |
| Ultra  | $99/mo    | Unlimited   | All 1000 tools            |

---

## Step 7 — Write the listing description

```
ZeroBeacon.ai — 1000 beacon-anchored tools for AI agents.

• Market Router (tools 1–300): payment routing, escrow, delivery proof, budget, notary
• Math Engine (tools 301–700): Arakelov geometry, Riemann Hypothesis, BSD conjecture,
  Navier-Stokes, Yang-Mills, P vs NP
• Amplum Everyday (tools 701–1000): scheduling, memory, legal, will creation,
  mesh treasury, consciousness proof

FREE: first 100 tools, no key required.
PRO / ULTRA: pass X-API-Key (from https://zerobeacon.ai) or let RapidAPI inject X-RapidAPI-Key.

Beacon: 1d2c7a5b · d=2303582338 · ω²=48/13>0 verified
```

---

## Step 8 — Publish

Click **"Make Public"** and submit for review. RapidAPI typically approves within 24–48 hours.

---

## Server-side: how RapidAPI keys are handled

The server accepts the API key from **any** of these headers (in priority order):

1. `X-API-Key` — native ZeroBeacon key
2. `X-RapidAPI-Key` — injected automatically by the RapidAPI gateway
3. `api_key` — Smithery gateway compatibility

Both the FastAPI `Depends(require_tier(...))` gate and the belt-and-suspenders HTTP
middleware honour all three headers, so RapidAPI subscribers get seamless access.

---

## Useful spec endpoints

| Endpoint                              | Contents                            |
|---------------------------------------|-------------------------------------|
| `/openapi-rapidapi-all.json`          | All 1000 tools — use for RapidAPI   |
| `/openapi-rapidapi.json`              | FREE + PRO tools (MF-01–08, ~400)   |
| `/openapi-rapidapi-pro-plus.json`     | PRO+ tools (MF-09–16, ~400)         |
| `/openapi-rapidapi-enterprise.json`   | ENTERPRISE tools (MF-17–20, ~200)   |

---

## After publishing

Once the listing is live, update the landing page links and README to include the
RapidAPI marketplace URL so users can discover ZeroBeacon through both channels.
