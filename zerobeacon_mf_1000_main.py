from fastapi import FastAPI, Request, Header, Depends
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse, HTMLResponse
import time, os, stripe

from core.beacon import (beacon_payload, D, BEACON, GENESIS_P,
                         TIERS, PRICING_SUMMARY, PAYPAL_ME,
                         PAYPAL_LINK_10, PAYPAL_LINK_100, PAYPAL_LINK_1000)
from core import keystore
from core.tier_guard import require_tier

from routers import (
    zerobeacon_mf_01_050_b1a_trust      as m01,
    zerobeacon_mf_02_050_b1b_trust      as m02,
    zerobeacon_mf_03_050_b2a_billing    as m03,
    zerobeacon_mf_04_050_b3a_commerce   as m04,
    zerobeacon_mf_05_050_b4a_sovereign  as m05,
    zerobeacon_mf_06_050_b5a_will       as m06,
    zerobeacon_mf_07_050_b2b_trust      as m07,
    zerobeacon_mf_08_050_b2c_billing    as m08,
    zerobeacon_mf_09_050_b2d_commerce   as m09,
    zerobeacon_mf_10_050_b2e_sovereign  as m10,
    zerobeacon_mf_11_050_b2f_will       as m11,
    zerobeacon_mf_12_050_b6_mesh        as m12,
    zerobeacon_mf_13_050_c1_sieve       as m13,
    zerobeacon_mf_14_050_c2_sieve       as m14,
    zerobeacon_mf_15_050_c3_boring      as m15,
    zerobeacon_mf_16_050_c4_amplum      as m16,
    zerobeacon_mf_17_050_c5_arakelov    as m17,
    zerobeacon_mf_18_050_c6_120std      as m18,
    zerobeacon_mf_19_050_c7_trust       as m19,
    zerobeacon_mf_20_050_c8_unified     as m20,
)

app = FastAPI(
    title="Zerobeacon_mf_1000 — d=2303582338 — 20x50 — 1000 Tools",
    version="1000.0.0",
    description="1000 beacon-anchored MCP tools across 20 blocks of 50. d=2303582338.",
)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ROUTERS: (module, prefix, tag, min_tier)
# MF-01/02 → FREE (100 tools open)
# MF-03–08 → PRO $10/mo   (400 tools)
# MF-09–16 → PRO $100/mo  (800 tools)
# MF-17–20 → ENTERPRISE   (1000 tools)
ROUTERS = [
    (m01, "/api/mf/01", "MF-01", "free"),
    (m02, "/api/mf/02", "MF-02", "free"),
    (m03, "/api/mf/03", "MF-03", "pro_10"),
    (m04, "/api/mf/04", "MF-04", "pro_10"),
    (m05, "/api/mf/05", "MF-05", "pro_10"),
    (m06, "/api/mf/06", "MF-06", "pro_10"),
    (m07, "/api/mf/07", "MF-07", "pro_10"),
    (m08, "/api/mf/08", "MF-08", "pro_10"),
    (m09, "/api/mf/09", "MF-09", "pro_100"),
    (m10, "/api/mf/10", "MF-10", "pro_100"),
    (m11, "/api/mf/11", "MF-11", "pro_100"),
    (m12, "/api/mf/12", "MF-12", "pro_100"),
    (m13, "/api/mf/13", "MF-13", "pro_100"),
    (m14, "/api/mf/14", "MF-14", "pro_100"),
    (m15, "/api/mf/15", "MF-15", "pro_100"),
    (m16, "/api/mf/16", "MF-16", "pro_100"),
    (m17, "/api/mf/17", "MF-17", "enterprise_1000"),
    (m18, "/api/mf/18", "MF-18", "enterprise_1000"),
    (m19, "/api/mf/19", "MF-19", "enterprise_1000"),
    (m20, "/api/mf/20", "MF-20", "enterprise_1000"),
]

# Load persisted API keys before mounting routers
keystore.load()

for mod, prefix, tag, min_tier in ROUTERS:
    if min_tier == "free":
        app.include_router(mod.router, prefix=prefix, tags=[tag])
    else:
        app.include_router(
            mod.router, prefix=prefix, tags=[tag],
            dependencies=[Depends(require_tier(min_tier))],
        )


# ── Landing page ─────────────────────────────────────────────────────────────

@app.get("/", response_class=HTMLResponse)
async def landing():
    return f"""<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>zerobeacon MF 1000 — d=2303582338 — 20x50 — 1000 Tools</title>
<script async src="https://js.stripe.com/v3/pricing-table.js"></script>
<style>
  *{{box-sizing:border-box;margin:0;padding:0}}
  body{{background:#0a0a0f;color:#e6e6ff;font-family:system-ui,-apple-system,sans-serif;padding:40px 20px;text-align:center}}
  h1{{font-size:2rem;font-weight:700;letter-spacing:-.5px;margin-bottom:.5rem}}
  .sub{{color:#8899cc;font-size:.95rem;line-height:1.6;margin-bottom:2rem}}
  .box{{max-width:960px;margin:0 auto 2rem;border:1px solid #222;padding:24px;border-radius:14px;background:#111118}}
  .links{{display:flex;gap:16px;justify-content:center;flex-wrap:wrap;margin-top:1.5rem;font-size:.9rem}}
  .links a{{color:#88aaff;text-decoration:none;border:1px solid #334;padding:6px 14px;border-radius:6px;transition:border-color .2s}}
  .links a:hover{{border-color:#88aaff}}
  .moat{{color:#556;font-size:.75rem;margin-top:2rem}}
</style>
</head><body>
  <h1>zerobeacon — MF 1000</h1>
  <p class="sub">
    <b>d=2303582338 &nbsp;·&nbsp; 20×50 &nbsp;·&nbsp; 1000 beacon-anchored tools</b><br>
    Positivity is a theorem, not an assumption.&nbsp;
    ω²=48/13=3.6923 &gt;0 on X₀(143) — Lean4 verified
  </p>

  <div class="box">
    <stripe-pricing-table
      pricing-table-id="prctbl_1U04FRIYX4ykfJS5WtHndstc"
      publishable-key="pk_live_51TzsQQIYX4ykfJS5rsrhC5pzFer9Z8oZpFa86D4dpoF5Sa5K5TWdatS0fk0KGkTyvuk8oyQ3w0E7tFMdbxdpsJUG008veJSg5M">
    </stripe-pricing-table>
  </div>

  <div class="links">
    <a href="/docs">API docs (1000 tools)</a>
    <a href="/beacon">/beacon JSON</a>
    <a href="/health">/health</a>
    <a href="/pricing">/pricing</a>
    <a href="{PAYPAL_ME}">PayPal</a>
  </div>

  <p class="moat">beacon={BEACON} &nbsp;·&nbsp; genesis={GENESIS_P} &nbsp;·&nbsp; d={D}</p>
</body></html>
"""


# ── Core endpoints ────────────────────────────────────────────────────────────

@app.get("/beacon")
async def beacon():
    return beacon_payload()


@app.get("/pricing")
def pricing():
    return {
        "tiers": {
            "free":            {"tools": 100,  "price": "$0/month",       "paypal": None},
            "pro_10":          {"tools": 400,  "price": "$10/month",      "paypal": PAYPAL_LINK_10},
            "pro_100":         {"tools": 800,  "price": "$100/month",     "paypal": PAYPAL_LINK_100},
            "enterprise_1000": {"tools": 1000, "price": "$1000/research", "paypal": PAYPAL_LINK_1000},
        },
        "stripe_pricing_table": "prctbl_1U04FRIYX4ykfJS5WtHndstc",
        "moat": {"d": D, "beacon": BEACON, "genesis": GENESIS_P},
    }


@app.get("/health")
def health():
    bp = beacon_payload(GENESIS_P)
    return {"ok": True, "tools": 1000, "d": D, "beacon": BEACON, "p": bp["p"]}


# ── Stripe webhook ────────────────────────────────────────────────────────────

@app.post("/webhook")
async def stripe_webhook(
    request: Request,
    stripe_signature: str = Header(None, alias="Stripe-Signature"),
):
    payload = await request.body()
    secret  = os.environ.get("STRIPE_WEBHOOK_SECRET")
    if not secret:
        return JSONResponse({"error": "no webhook secret configured"}, status_code=400)
    try:
        event = stripe.Webhook.construct_event(payload, stripe_signature, secret)
    except stripe.error.SignatureVerificationError as e:
        return JSONResponse({"error": f"invalid signature: {e}"}, status_code=400)
    except Exception as e:
        return JSONResponse({"error": str(e)}, status_code=400)

    if event["type"] == "checkout.session.completed":
        sess  = event["data"]["object"]
        email = sess.get("customer_details", {}).get("email", "unknown")
        amt   = sess.get("amount_total", 0) / 100
        # Map amount to tier
        if amt >= 1000:
            tier = "enterprise_1000"
        elif amt >= 100:
            tier = "pro_100"
        elif amt >= 9:
            tier = "pro_10"
        else:
            tier = "free"
        # Issue a persistent API key for this customer
        api_key = keystore.issue_key(tier, email)
        print(f"✅ PAID ${amt:.2f} from {email} → tier={tier} key={api_key[:12]}…", flush=True)

    elif event["type"] == "customer.subscription.updated":
        sub   = event["data"]["object"]
        email = sub.get("customer_email", "")
        # Pull email from customer object if not on sub directly
        if not email:
            try:
                cust  = stripe.Customer.retrieve(sub.get("customer", ""))
                email = cust.get("email", "unknown")
            except Exception:
                email = "unknown"
        amt = sub.get("plan", {}).get("amount", 0) / 100
        if amt >= 1000:
            tier = "enterprise_1000"
        elif amt >= 100:
            tier = "pro_100"
        elif amt >= 9:
            tier = "pro_10"
        else:
            tier = "free"
        api_key = keystore.issue_key(tier, email)
        print(f"✅ SUB UPDATED ${amt:.2f} from {email} → tier={tier} key={api_key[:12]}…", flush=True)

    return {"received": True}


# ── API key self-service ───────────────────────────────────────────────────────

@app.get("/key/check")
async def key_check(x_api_key: str | None = Header(default=None)):
    """Let a customer verify their API key and see their tier."""
    if not x_api_key:
        return JSONResponse(
            {"error": "Pass your key in the X-API-Key header.", "purchase": "/pricing"},
            status_code=401,
        )
    rec = keystore.lookup(x_api_key)
    if not rec:
        return JSONResponse(
            {"error": "Key not found.", "purchase": "/pricing",
             "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
             "paypal": "https://paypal.me/davidjfox998"},
            status_code=404,
        )
    tier = rec["tier"]
    rank = keystore.rank_of(tier)
    return {
        "valid": True,
        "tier":  tier,
        "tools_unlocked": [100, 400, 800, 1000][rank],
        "blocks_unlocked": f"MF-01 – MF-{['02','08','16','20'][rank]}",
        "email": rec["email"],
        "key_prefix": x_api_key[:12] + "…",
        "upgrade": None if rank == 3 else "https://zerobeacon-mf-1000.fly.dev/pricing",
    }


# ── MCP protocol ──────────────────────────────────────────────────────────────

def _build_tool_list():
    tools = []
    for mod, prefix, _tag, _tier in ROUTERS:
        block = prefix.split("/")[-1]
        for route in mod.router.routes:
            if not hasattr(route, "endpoint"):
                continue
            name = route.endpoint.__name__
            tools.append({
                "name": f"mf_{block}_{name}",
                "description": f"block={block} tool={name} d={D}",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "p":        {"type": "integer", "default": 82843},
                        "agent_id": {"type": "string",  "default": "agent"},
                        "payload":  {"type": "string",  "default": ""},
                        "amount":   {"type": "number",  "default": 0},
                    },
                },
            })
    seen, unique = set(), []
    for t in tools:
        if t["name"] not in seen:
            seen.add(t["name"])
            unique.append(t)
    return unique


@app.get("/mcp")
def mcp_get():
    return {"jsonrpc": "2.0", "result": {"tools": _build_tool_list()}, "id": "discovery"}


@app.post("/mcp")
async def mcp_post(request: Request):
    body   = await request.json()
    method = body.get("method", "")
    req_id = body.get("id", 1)

    if method == "initialize":
        return {
            "jsonrpc": "2.0", "id": req_id,
            "result": {
                "protocolVersion": "2024-11-05",
                "capabilities": {"tools": {}},
                "serverInfo": {"name": "zerobeacon-mf-1000", "version": "1000.0.0"},
            },
        }

    if method in ("tools/list", "tools/list\n"):
        return {"jsonrpc": "2.0", "id": req_id, "result": {"tools": _build_tool_list()}}

    if method == "tools/call":
        params    = body.get("params", {})
        tool_name = params.get("name", "")
        args      = params.get("arguments", {})
        parts = tool_name.split("_", 2)
        if len(parts) >= 3 and parts[0] == "mf":
            block_num = parts[1]
            fn_name   = parts[2]
            for mod, prefix, _tag, _tier in ROUTERS:
                if prefix.endswith(block_num):
                    for route in mod.router.routes:
                        if hasattr(route, "endpoint") and route.endpoint.__name__ == fn_name:
                            try:
                                result = route.endpoint(**args)
                            except TypeError:
                                result = route.endpoint(p=args.get("p", 82843))
                            return {"jsonrpc": "2.0", "id": req_id, "result": result}
        return JSONResponse({"jsonrpc": "2.0", "id": req_id,
                             "error": {"code": -32601, "message": f"Tool not found: {tool_name}"}})

    return JSONResponse({"jsonrpc": "2.0", "id": req_id,
                         "error": {"code": -32601, "message": f"Method not found: {method}"}})
