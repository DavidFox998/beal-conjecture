from fastapi import FastAPI, Request, Header, Depends
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse, HTMLResponse
import time, os, stripe

from core.beacon import (beacon_payload, D, BEACON, GENESIS_P,
                         TIERS, PRICING_SUMMARY, PAYPAL_ME,
                         PAYPAL_LINK_10, PAYPAL_LINK_100, PAYPAL_LINK_1000)
from core import keystore
from core.tier_guard import require_tier
from core.emailer import send_api_key_email

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


# ── Per-route and per-tool tier maps (built at import time) ───────────────────
# Used by the HTTP middleware (belt-and-suspenders) and MCP tier gate.

_route_tier: dict[str, str] = {}
_tool_tier:  dict[str, str] = {}

def _build_tier_maps() -> None:
    """Populate _route_tier and _tool_tier from router metadata.

    Uses the block-level min_tier from ROUTERS as the authoritative source
    rather than per-route tags, which can be inconsistent with the block
    configuration.
    """
    for mod, prefix, _tag, min_tier in ROUTERS:
        block = prefix.split("/")[-1]
        for route in mod.router.routes:
            path = getattr(route, "path", None)
            if path is None:
                continue
            _route_tier[prefix + path] = min_tier
            if hasattr(route, "endpoint"):
                _tool_tier[f"mf_{block}_{route.endpoint.__name__}"] = min_tier

_build_tier_maps()


# ── HTTP middleware (belt-and-suspenders over the Depends gate) ───────────────

@app.middleware("http")
async def tier_gate(request: Request, call_next):
    """
    Secondary tier check for /api/mf/* routes.
    The primary gate is Depends(require_tier()) on include_router; this
    middleware catches any path that slips through and also ensures the
    keystore (persistent) is the authority for all checks.
    """
    path = request.url.path
    if path.startswith("/api/mf/"):
        required_tier = _route_tier.get(path, "free")
        api_key = request.headers.get("X-API-Key") or request.headers.get("x-api-key")
        allowed, reason = keystore.check_access(api_key, required_tier)
        if not allowed:
            return JSONResponse(
                {
                    "error":         "Access denied",
                    "required_tier": required_tier,
                    "reason":        reason,
                    "upgrade":       "https://zerobeacon-mf-1000.fly.dev/pricing",
                    "get_key":       "Visit /success?session_id=<your-stripe-session-id>",
                },
                status_code=403,
            )
    return await call_next(request)


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
  .gate-info{{background:#111;border:1px solid #2a2a3a;border-radius:10px;padding:16px 20px;max-width:640px;margin:0 auto 2rem;text-align:left;font-size:.85rem;line-height:1.7;color:#aabbdd}}
  .gate-info code{{background:#1a1a2a;padding:2px 6px;border-radius:4px;font-size:.82rem;color:#88ffcc}}
</style>
</head><body>
  <h1>zerobeacon — MF 1000</h1>
  <p class="sub">
    <b>d=2303582338 &nbsp;·&nbsp; 20×50 &nbsp;·&nbsp; 1000 beacon-anchored tools</b><br>
    Positivity is a theorem, not an assumption.&nbsp;
    ω²=48/13=3.6923 &gt;0 on X₀(143) — Lean4 verified
  </p>

  <div class="gate-info">
    <b>🔑 API key gating is active</b><br>
    FREE tools (first 100) require no key.<br>
    PRO / ENTERPRISE tools require an <code>X-API-Key</code> header.<br>
    After Stripe checkout you are redirected to <code>/success?session_id=…</code>
    where your key is shown automatically.
    Already have a key? Verify it at <code>GET /key/check</code>.
  </div>

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
    <a href="/key/check">/key/check</a>
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
            "free": {
                "tools": 100,
                "price": "$0/month",
                "paypal": None,
                "api_key_required": False,
            },
            "pro_10": {
                "tools": 400,
                "price": "$10/month",
                "paypal": PAYPAL_LINK_10,
                "api_key_required": True,
                "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
            },
            "pro_100": {
                "tools": 800,
                "price": "$100/month",
                "paypal": PAYPAL_LINK_100,
                "api_key_required": True,
                "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
            },
            "enterprise_1000": {
                "tools": 1000,
                "price": "$1000/research",
                "paypal": PAYPAL_LINK_1000,
                "api_key_required": True,
                "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
            },
        },
        "how_to_get_your_key": {
            "step_1": "Complete payment via Stripe (success page shows your key automatically)",
            "step_2": "Or retrieve it: POST /api/key/lookup  {\"session_id\": \"cs_live_...\"}",
            "step_3": "The session_id is in your browser URL after Stripe checkout completes",
            "step_4": "Use it: add header  X-API-Key: <your-key>  to every request",
            "verify": "GET /key/check with X-API-Key header to verify tier at any time",
            "resend_key_email": "POST /api/key/resend  {\"session_id\": \"cs_live_...\"} — re-sends your API key email (max 3 attempts per session)",
            "resend_counter_reset": "Admin only: POST /api/key/resend/reset  {\"session_id\": \"cs_live_...\", \"admin_secret\": \"...\"} — clears the resend attempt counter so a locked-out customer can retry",
        },
        "success_page": "/success?session_id=<your-session-id>",
        "stripe_pricing_table": "prctbl_1U04FRIYX4ykfJS5WtHndstc",
        "moat": {"d": D, "beacon": BEACON, "genesis": GENESIS_P},
    }


@app.get("/health")
def health():
    bp = beacon_payload(GENESIS_P)
    return {"ok": True, "tools": 1000, "d": D, "beacon": BEACON, "p": bp["p"]}


# ── Stripe checkout success page ──────────────────────────────────────────────

@app.get("/success", response_class=HTMLResponse)
async def success_page(request: Request):
    """
    Stripe success redirect page.
    Configure Stripe success_url as:
        https://your-domain/success?session_id={CHECKOUT_SESSION_ID}
    The page fetches the API key from /api/key/lookup using the session_id.
    """
    session_id = request.query_params.get("session_id", "")
    return f"""<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Payment successful — zerobeacon MF 1000</title>
<style>
  *{{box-sizing:border-box;margin:0;padding:0}}
  body{{background:#0a0a0f;color:#e6e6ff;font-family:system-ui,-apple-system,sans-serif;
        padding:60px 20px;text-align:center}}
  h1{{font-size:1.8rem;font-weight:700;margin-bottom:.5rem;color:#88ffcc}}
  .sub{{color:#8899cc;font-size:.95rem;line-height:1.6;margin-bottom:2rem}}
  .card{{max-width:640px;margin:0 auto 2rem;border:1px solid #2a3a2a;padding:28px 32px;
         border-radius:14px;background:#0d1a0d;text-align:left}}
  .label{{color:#8899cc;font-size:.8rem;text-transform:uppercase;letter-spacing:.06em;margin-bottom:6px}}
  .key-box{{background:#0a0f0a;border:1px solid #2a4a2a;border-radius:8px;padding:14px 16px;
            font-family:monospace;font-size:.9rem;color:#88ffcc;word-break:break-all;
            user-select:all;cursor:pointer;margin-bottom:1.5rem}}
  .key-box:hover{{border-color:#44aa44}}
  .usage{{font-size:.83rem;line-height:1.8;color:#aabbdd;margin-top:1rem}}
  .usage code{{background:#1a1a2a;padding:2px 6px;border-radius:4px;color:#88aaff}}
  .links{{display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin-top:2rem;font-size:.88rem}}
  .links a{{color:#88aaff;text-decoration:none;border:1px solid #334;padding:6px 14px;
            border-radius:6px;transition:border-color .2s}}
  .links a:hover{{border-color:#88aaff}}
</style>
</head><body>
  <h1>🎉 Payment received!</h1>
  <p class="sub">Your API key is ready. Copy it now and keep it safe — treat it like a password.</p>

  <div class="card" id="card">
    <div id="loading" style="text-align:center;color:#8899cc">Retrieving your key…</div>
  </div>

  <div class="links">
    <a href="/docs">API docs (1000 tools)</a>
    <a href="/pricing">Pricing tiers</a>
    <a href="/key/check">/key/check</a>
    <a href="/">Home</a>
  </div>

<script>
(async () => {{
  const sessionId = {repr(session_id)};
  const card = document.getElementById('card');

  if (!sessionId) {{
    card.innerHTML = '<p style="color:#cc8888">No session_id found in URL. '
      + 'Return to checkout and complete your payment.</p>';
    return;
  }}

  try {{
    const res = await fetch('/api/key/lookup', {{
      method: 'POST',
      headers: {{'Content-Type': 'application/json'}},
      body: JSON.stringify({{session_id: sessionId}})
    }});
    const data = await res.json();

    if (!res.ok) {{
      card.innerHTML = '<p style="color:#cc8888">Key not found yet — the webhook may still be '
        + 'processing. Refresh in a few seconds. (Error: ' + data.error + ')</p>';
      return;
    }}

    card.innerHTML = `
      <div class="label">Your API Key (${{data.tier_label}})</div>
      <div class="key-box" onclick="navigator.clipboard.writeText(this.innerText);
           this.style.borderColor='#44aa44'" title="Click to copy">${{data.api_key}}</div>
      <div class="label">Tier</div>
      <p style="margin-bottom:1rem;color:#e6e6ff">${{data.tier_label}} — ${{data.tools_unlocked}} tools unlocked</p>
      <div class="usage">
        <b>How to use:</b><br>
        Add this header to every API request:<br>
        <code>X-API-Key: ${{data.api_key}}</code><br><br>
        Example:<br>
        <code>curl -H "X-API-Key: ${{data.api_key}}" \\<br>
        &nbsp;&nbsp;https://zerobeacon-mf-1000.fly.dev/api/mf/03/delivery_proof</code>
      </div>`;
  }} catch (e) {{
    card.innerHTML = '<p style="color:#cc8888">Error fetching key: ' + e.message + '</p>';
  }}
}})();
</script>
</body></html>
"""


# ── API key endpoints ─────────────────────────────────────────────────────────

# Rate-limit counter for /api/key/resend: session_id → attempt count
_resend_attempts: dict[str, int] = {}
_RESEND_MAX_ATTEMPTS = 3


@app.post("/api/key/resend/reset")
async def api_key_resend_reset(request: Request):
    """
    Admin endpoint: clear the resend rate-limit counter for a Stripe session.

    Use this when a customer is locked out after 3 failed resend attempts
    (e.g. bounced emails) so they can request another resend without a
    server restart.

    Request body: {"session_id": "cs_live_...", "admin_secret": "..."}
    Returns 200 on success, 403 on bad secret, 400 on missing fields.
    """
    try:
        body = await request.json()
    except Exception:
        return JSONResponse({"error": "invalid JSON body"}, status_code=400)

    admin_secret = os.environ.get("ADMIN_SECRET", "")
    if not admin_secret or body.get("admin_secret") != admin_secret:
        return JSONResponse({"error": "forbidden"}, status_code=403)

    session_id = (body.get("session_id") or "").strip()
    if not session_id:
        return JSONResponse(
            {"error": "session_id is required"},
            status_code=400,
        )

    previous = _resend_attempts.pop(session_id, 0)
    return {
        "ok":               True,
        "session_id":       session_id,
        "attempts_cleared": previous,
        "message":          f"Resend counter reset (was {previous}). Customer may now resend again.",
    }


@app.post("/api/key/resend")
async def api_key_resend(request: Request):
    """
    Re-send the API key email for a Stripe checkout session.

    Useful when the original email was lost, landed in spam, or never arrived.
    Authenticated by the Stripe session_id (proof of payment — cryptographically
    random, only the paying customer's browser receives it).

    Request body: {"session_id": "cs_live_..."}
    Returns 200 on success, 404 if session_id not found, 429 if rate-limited.
    """
    try:
        body       = await request.json()
        session_id = (body.get("session_id") or "").strip()
    except Exception:
        return JSONResponse({"error": "invalid JSON body"}, status_code=400)

    if not session_id:
        return JSONResponse(
            {
                "error": "session_id is required",
                "hint":  "Use the session_id from your Stripe checkout success URL",
            },
            status_code=400,
        )

    # Rate-limit: max _RESEND_MAX_ATTEMPTS per session_id
    attempts = _resend_attempts.get(session_id, 0)
    if attempts >= _RESEND_MAX_ATTEMPTS:
        return JSONResponse(
            {
                "error":   "Too many resend attempts for this session",
                "hint":    f"Maximum {_RESEND_MAX_ATTEMPTS} resend attempts allowed per session. "
                           "If you still need help, contact support.",
            },
            status_code=429,
        )

    api_key = keystore.lookup_by_session(session_id)
    if api_key is None:
        return JSONResponse(
            {
                "error":   "No API key found for this session_id",
                "hint":    "Complete a payment first, then use the session_id from "
                           "the Stripe success redirect",
                "upgrade": "https://zerobeacon-mf-1000.fly.dev/pricing",
            },
            status_code=404,
        )

    record = keystore.lookup(api_key)
    if record is None:
        return JSONResponse({"error": "Key record not found"}, status_code=404)

    email = record["email"]
    tier  = record["tier"]

    # Increment attempt counter before sending (counts even failed sends)
    _resend_attempts[session_id] = attempts + 1

    sent = send_api_key_email(email=email, api_key=api_key, tier=tier)
    remaining = _RESEND_MAX_ATTEMPTS - _resend_attempts[session_id]

    if sent:
        return {
            "ok":                True,
            "message":           f"API key email resent to {email}",
            "tier":              tier,
            "tier_label":        keystore.TIER_LABEL[tier],
            "attempts_remaining": remaining,
        }
    else:
        return JSONResponse(
            {
                "error":            "Email could not be sent — check RESEND_API_KEY configuration",
                "api_key":          api_key,
                "tier":             tier,
                "hint":             "Your key is shown above so you are not locked out. "
                                    "Contact support if email delivery continues to fail.",
                "attempts_remaining": remaining,
            },
            status_code=503,
        )


@app.post("/api/key/lookup")
async def api_key_lookup(request: Request):
    """
    Retrieve the API key issued for a Stripe checkout session.

    Requires the Stripe checkout session ID that Stripe includes in the
    success-redirect URL as ?session_id=....  Only the customer who completed
    the payment receives that URL, so the session ID serves as proof of payment.
    Email alone is NOT accepted — email addresses are not secrets.

    Request body: {"session_id": "cs_live_..."}
    Returns: {"tier": ..., "api_key": ..., "tools_unlocked": ...}
    """
    try:
        body       = await request.json()
        session_id = (body.get("session_id") or "").strip()
    except Exception:
        return JSONResponse({"error": "invalid JSON body"}, status_code=400)

    if not session_id:
        return JSONResponse(
            {
                "error": "session_id is required",
                "hint":  "Use the session_id from your Stripe checkout success URL, "
                         "or visit /success?session_id=<id> in your browser",
            },
            status_code=400,
        )

    key = keystore.lookup_by_session(session_id)
    if key is None:
        return JSONResponse(
            {
                "error":   "No API key found for this session_id",
                "hint":    "Complete a payment first, then use the session_id from "
                           "the Stripe success redirect",
                "upgrade": "https://zerobeacon-mf-1000.fly.dev/pricing",
            },
            status_code=404,
        )

    record = keystore.lookup(key)
    tier   = record["tier"]
    tools  = TIERS.get(tier, {}).get("tools", 100)
    return {
        "tier":           tier,
        "tier_label":     keystore.TIER_LABEL[tier],
        "api_key":        key,
        "tools_unlocked": tools,
        "usage":          "Add header  X-API-Key: <api_key>  to every request",
    }


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
             "paypal": "https://paypal.me/davidfox223"},
            status_code=404,
        )
    tier = rec["tier"]
    rank = keystore.rank_of(tier)
    return {
        "valid":           True,
        "tier":            tier,
        "tier_label":      keystore.TIER_LABEL[tier],
        "tools_unlocked":  [100, 400, 800, 1000][rank],
        "blocks_unlocked": f"MF-01 – MF-{['02','08','16','20'][rank]}",
        "email":           rec["email"],
        "key_prefix":      x_api_key[:12] + "…",
        "upgrade":         None if rank == 3 else "https://zerobeacon-mf-1000.fly.dev/pricing",
    }


@app.post("/api/key/issue")
async def api_key_issue(request: Request):
    """
    Admin endpoint: manually issue an API key for email+tier.
    Protected by ADMIN_SECRET env var.

    Request body: {"email": ..., "tier": ..., "admin_secret": ...}
    """
    try:
        body = await request.json()
    except Exception:
        return JSONResponse({"error": "invalid JSON body"}, status_code=400)

    admin_secret = os.environ.get("ADMIN_SECRET", "")
    if not admin_secret or body.get("admin_secret") != admin_secret:
        return JSONResponse({"error": "forbidden"}, status_code=403)

    email = (body.get("email") or "").strip().lower()
    tier  = body.get("tier", "free")
    if not email:
        return JSONResponse({"error": "email required"}, status_code=400)
    if tier not in keystore.TIER_RANK:
        return JSONResponse({"error": f"unknown tier '{tier}'"}, status_code=400)

    key = keystore.issue_key(tier, email)
    return {"ok": True, "email": email, "tier": tier, "api_key": key}


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
        sess       = event["data"]["object"]
        email      = (sess.get("customer_details", {}).get("email") or "unknown").strip().lower()
        amt        = sess.get("amount_total", 0) / 100
        session_id = sess.get("id", "")   # e.g. "cs_live_..." — proof-of-payment token

        # Map payment amount → tier
        if amt >= 1000:
            tier = "enterprise_1000"
        elif amt >= 100:
            tier = "pro_100"
        elif amt >= 9:
            tier = "pro_10"
        else:
            tier = "free"

        print(f"✅ PAID ${amt:.2f} from {email} → tier={tier}", flush=True)

        # Issue (or refresh) the customer's API key, binding to the session ID
        # so they can retrieve it from the /success page without guessable info.
        if tier != "free":
            api_key = keystore.issue_key(tier, email, session_id=session_id)
            print(f"🔑 Key issued: {api_key[:16]}… for {email} (session={session_id[:20]}…)", flush=True)
            send_api_key_email(email=email, api_key=api_key, tier=tier)

    elif event["type"] == "customer.subscription.updated":
        sub   = event["data"]["object"]
        email = sub.get("customer_email", "")
        if not email:
            try:
                cust  = stripe.Customer.retrieve(sub.get("customer", ""))
                email = cust.get("email", "unknown")
            except Exception:
                email = "unknown"
        email = email.strip().lower()
        amt   = sub.get("plan", {}).get("amount", 0) / 100
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
        send_api_key_email(email=email, api_key=api_key, tier=tier)

    return {"received": True}


# ── MCP protocol ──────────────────────────────────────────────────────────────

def _build_tool_list():
    tools = []
    for mod, prefix, _tag, min_tier in ROUTERS:
        block = prefix.split("/")[-1]
        for route in mod.router.routes:
            if not hasattr(route, "endpoint"):
                continue
            name       = route.endpoint.__name__
            route_tags = list(getattr(route, "tags", []) or [])
            tool_key   = f"mf_{block}_{name}"
            req_tier   = _tool_tier.get(tool_key, min_tier)
            tools.append({
                "name": f"mf_{block}_{name}",
                "description": getattr(route, "description", "") or f"block={block} tool={name} d={D}",
                "tags": route_tags,
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "p":        {"type": "integer", "default": 82843},
                        "agent_id": {"type": "string",  "default": "agent"},
                        "payload":  {"type": "string",  "default": ""},
                        "amount":   {"type": "number",  "default": 0},
                    },
                },
                "tier": req_tier,
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

        # ── Tier gate for MCP tool calls ──────────────────────────────────────
        # /mcp is a single endpoint so Depends() doesn't guard individual tools;
        # we check here using the persistent keystore.
        required_tier = _tool_tier.get(tool_name, "free")
        # API key is accepted ONLY from the X-API-Key header.
        # Accepting it from the JSON body (args) would allow callers to bypass
        # transport-layer security and risk leaking the key in server logs.
        api_key = (
            request.headers.get("X-API-Key")
            or request.headers.get("x-api-key")
        )
        allowed, reason = keystore.check_access(api_key, required_tier)
        if not allowed:
            return JSONResponse(
                {
                    "jsonrpc": "2.0", "id": req_id,
                    "error": {
                        "code":    -32001,
                        "message": f"Access denied: {reason}",
                        "data": {
                            "required_tier": required_tier,
                            "upgrade":       "https://zerobeacon-mf-1000.fly.dev/pricing",
                        },
                    },
                }
            )
        # ─────────────────────────────────────────────────────────────────────

        parts = tool_name.split("_", 2)
        if len(parts) >= 3 and parts[0] == "mf":
            block_num = parts[1]
            fn_name   = parts[2]
            for mod, prefix, _tag, _min_tier in ROUTERS:
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


# ── Startup ───────────────────────────────────────────────────────────────────

@app.on_event("startup")
async def on_startup():
    free_count = sum(1 for t in _route_tier.values() if t == "free")
    paid_count = len(_route_tier) - free_count
    print(
        f"🛡️  Tier gate ready — {free_count} FREE paths, {paid_count} gated paths "
        f"| keystore: {len(keystore._store)} keys loaded",
        flush=True,
    )
