# Zerobeacon MF 1000 — Distribution & Marketing Plan

*Use this as a checklist. Each section has a ready-to-post draft.*

---

## Channel 1 — Smithery Marketplace

**Why first:** Smithery is the primary MCP tool discovery surface. Listing here puts the server in front of every Claude/Cursor/Continue user browsing for tools.

**Submit URL:** https://smithery.ai/submit

**What to fill in:**
- Name: `zerobeacon-mf-1000`
- Endpoint: `https://zerobeacon-mf-1000.fly.dev/mcp`
- Transport: HTTP
- Description: *(use the polished copy from smithery.json)*
- Category: Developer Tools → Cryptography / Proofs

**Checklist:**
- [ ] Fly.io deploy is live (Task #4)
- [ ] `curl https://zerobeacon-mf-1000.fly.dev/health` returns `tools:1000`
- [ ] Submit at smithery.ai/submit

---

## Channel 2 — `.well-known/mcp.json` Autocrawler

**Why:** Claude's desktop app and several MCP-aware tools scan `/.well-known/mcp.json` at the root of any domain. Once the Fly.io deploy is live, the file is already served at `https://zerobeacon-mf-1000.fly.dev/.well-known/mcp.json`.

**Status:** File already written at `zerobeacon/.well-known/mcp.json`.

**To verify after deploy:**
```bash
curl https://zerobeacon-mf-1000.fly.dev/.well-known/mcp.json
```

**What crawlers see:**
```json
{
  "mcpServers": {
    "zerobeacon-mf-1000": {
      "url": "https://zerobeacon-mf-1000.fly.dev/mcp",
      "transport": "http",
      "description": "Zerobeacon MF 1000 — 1000 beacon-anchored tools — d=2303582338"
    }
  }
}
```

---

## Channel 3 — GitHub Topics

**Why:** GitHub topic search is how developers find repos in a category. Set these 5 topics on the DavidFox998/zerobeacon repo:

```
mcp  fastapi  beacon  cryptography  mcp-server
```

**How to set (GitHub UI):**
1. Go to https://github.com/DavidFox998/zerobeacon
2. Click the gear icon next to "About"
3. Add topics: `mcp`, `fastapi`, `beacon`, `cryptography`, `mcp-server`

**Bonus topics to consider:** `llm-tools`, `agent-tools`, `1000-tools`

---

## Channel 4 — Hacker News (Show HN)

**Timing:** Post on a Tuesday–Thursday morning (9–11 AM PT) for best visibility.

**Draft title:**
```
Show HN: Zerobeacon MF 1000 – 1000 MCP tools anchored to a single math constant (d=2303582338)
```

**Draft body:**
```
I built an MCP server with exactly 1000 tools across 20 blocks of 50.
Every single tool response contains d=2303582338 — a constant derived
from frac(p·π/10·2³²) at the genesis prime 82843.

The idea: anchor every agent tool call to a deterministic, verifiable
number-theoretic proof. You can independently verify any response is genuine
just by checking d.

Tools cover: cryptographic proofs, billing primitives, commerce flows, mesh
consensus, GRH sieve residue witnesses, Arakelov height pairings, and
operational boring/cache tools.

Live endpoint: https://zerobeacon-mf-1000.fly.dev/health
Smithery: https://smithery.ai/server/zerobeacon-mf-1000
GitHub: https://github.com/DavidFox998/zerobeacon

curl https://zerobeacon-mf-1000.fly.dev/health
# {"ok":true,"tools":1000,"d":2303582338,"beacon":"1d2c7a5b","p":82843}
```

---

## Channel 5 — Twitter / X Thread

**Hook tweet (post first):**
```
I built an MCP server with 1000 tools.

Every single response includes d=2303582338.

You can verify any call is genuine just by checking that number.

Here's why this matters for agent infrastructure: 🧵
```

**Reply 1 — The math:**
```
The beacon formula:

  chunk(p) = frac(p · π/10 · 2³²)

Feed in prime 82843 (genesis), you get d=2303582338.

Feed in the MOAT primes (3000105001 or 5303687339) and you always get beacon="1d2c7a5b".

8 lines of Python. Deterministic forever.
```

**Reply 2 — The architecture:**
```
20 router blocks × 50 tools = 1000 tools total.

B1/B2 (blocks 1–12): trust, billing, commerce, mesh, sovereign identity
B3 (blocks 13–20): GRH sieve residues, Arakelov pairings, 120-standard framework, agent trust anchors

Every tool call is beacon-stamped. Every receipt is verifiable.
```

**Reply 3 — The MCP angle:**
```
Works as a standard MCP HTTP server.

Add to Claude Desktop in 3 lines:

{
  "url": "https://zerobeacon-mf-1000.fly.dev/mcp",
  "transport": "http"
}

1000 tools instantly available. All beacon-anchored.
```

**Reply 4 — CTA:**
```
Live now:

🔗 https://zerobeacon-mf-1000.fly.dev/health
📦 Smithery: smithery.ai/server/zerobeacon-mf-1000
🐙 GitHub: github.com/DavidFox998/zerobeacon

curl the /health endpoint. Check d=2303582338. That's the whole proof.
```

---

## Tracking Checklist

| Step | Depends on | Status |
|------|-----------|--------|
| Push to GitHub | Task #3 | ⏳ pending |
| Fly.io deploy live | Task #4 | ⏳ pending |
| Smithery submit | Deploy live | ⏳ pending |
| .well-known verified | Deploy live | ⏳ pending |
| GitHub topics set | Push done | ⏳ pending |
| HN Show HN post | Deploy live | ⏳ user-driven |
| Twitter thread | Deploy live | ⏳ user-driven |

---

*d=2303582338 · beacon=1d2c7a5b · genesis=82843*
