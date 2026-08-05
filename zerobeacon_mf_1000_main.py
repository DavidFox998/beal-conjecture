from fastapi import FastAPI, Request, Header, Depends, BackgroundTasks
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse, HTMLResponse
import time, os, stripe, asyncio

from core.beacon import (beacon_payload, D, BEACON, GENESIS_P,
                         TIERS, PRICING_SUMMARY, PAYPAL_ME,
                         PAYPAL_LINK_10, PAYPAL_LINK_100, PAYPAL_LINK_1000)
from core import keystore
from core.keystore import ResendPersistenceError
from core.tier_guard import require_tier
from core.emailer import send_api_key_email, validate_resend_key
from core.log_redactor import install_redaction_filter
from core.rapidapi_auth import verify_rapidapi_request, RAPIDAPI_SUBSCRIPTION_TIER

# Install log redaction immediately so no zbk_... key can reach any log sink,
# including future structured loggers, exception traceback capturers, or
# Sentry/DataDog integrations added later.
install_redaction_filter()

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
    title="ZeroBeacon.ai — 1000 Tools",
    version="1000.0.0",
    description=(
        "**1000 beacon-anchored tools** across 3 groups:\n\n"
        "- **Market Router (tools 1–300):** payment routing, escrow, delivery proof, budget, notary\n"
        "- **Math Engine (tools 301–700):** Arakelov, Riemann Hypothesis, BSD, Navier-Stokes, Yang-Mills, P vs NP\n"
        "- **Amplum Everyday (tools 701–1000):** scheduling, memory, legal, will, mesh treasury, consciousness proof\n\n"
        "FREE tier: first 100 tools, no key required.  \n"
        "PRO / ENTERPRISE: pass `X-API-Key: zbk_…` header.  \n"
        "Get a key at https://zerobeacon.ai after Stripe checkout.  \n"
        "d=2303582338 · beacon=1d2c7a5b · ω²=48/13>0 verified"
    ),
    openapi_tags=[
        {"name": "Market-Router",  "description": "Tools 1–300: payment, escrow, delivery, budget, notary"},
        {"name": "Math-Engine",    "description": "Tools 301–700: Arakelov, RH, BSD, Navier-Stokes, Yang-Mills, P vs NP"},
        {"name": "Amplum-Everyday","description": "Tools 701–1000: scheduling, memory, legal, will, mesh, consciousness"},
    ],
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


# ── Resend key validation cache ───────────────────────────────────────────────
# Populated once at startup (and refreshed by any future periodic probe).
# /health reads this cache — it never makes a live network call itself.

_resend_key_valid: bool = False
_resend_key_status: str = "not checked yet"


# ── Startup: validate Resend API key ─────────────────────────────────────────

@app.on_event("startup")
async def _validate_resend_on_startup() -> None:
    """
    Probe the Resend API on startup so a rotated or expired key is caught
    immediately rather than on the first customer email.

    Stores the result in module-level cache variables so /health can report
    it without making a live network call on every request.
    Emits a CRITICAL log if the key is missing, invalid, or expired.
    Never crashes the server — email misconfiguration must not block startup.
    """
    global _resend_key_valid, _resend_key_status
    valid, reason = validate_resend_key()
    _resend_key_valid  = valid
    _resend_key_status = reason
    if not valid:
        print(
            f"[emailer] CRITICAL: RESEND_API_KEY validation failed on startup — {reason}. "
            "Email delivery will fail until the key is corrected.",
            flush=True,
        )
    else:
        print("[emailer] RESEND_API_KEY validated successfully on startup.", flush=True)


# Configurable probe interval — override with RESEND_CHECK_INTERVAL env var (seconds).
_RESEND_CHECK_INTERVAL: int = int(os.environ.get("RESEND_CHECK_INTERVAL", "3600"))


async def _resend_probe_loop() -> None:
    """
    Background loop: re-validate RESEND_API_KEY every _RESEND_CHECK_INTERVAL seconds.

    Updates the module-level _resend_key_valid / _resend_key_status flags so
    /health reflects the current state without making a live network call on every
    request.  Emits [emailer] CRITICAL on failure and a recovery message when the
    key becomes valid again.  Exceptions inside validate_resend_key are caught and
    logged so the loop never propagates and never crashes the server.
    """
    global _resend_key_valid, _resend_key_status
    while True:
        await asyncio.sleep(_RESEND_CHECK_INTERVAL)
        try:
            # Run the blocking urllib call in a thread pool so the event loop
            # stays responsive while the probe is waiting on Resend's API.
            valid, reason = await asyncio.to_thread(validate_resend_key)
        except Exception as exc:
            print(
                f"[emailer] periodic probe raised an unexpected exception: "
                f"{type(exc).__name__}: {exc}",
                flush=True,
            )
            continue

        prev_valid = _resend_key_valid
        _resend_key_valid  = valid
        _resend_key_status = reason

        if not valid and prev_valid:
            # Newly failed — emit CRITICAL once so it appears prominently in Fly.io logs.
            print(
                f"[emailer] CRITICAL: RESEND_API_KEY validation failed (periodic probe) — "
                f"{reason}. Email delivery will fail until the key is corrected.",
                flush=True,
            )
        elif valid and not prev_valid:
            # Recovered — emit one info line so the recovery is traceable.
            print(
                "[emailer] RESEND_API_KEY is valid again (periodic probe recovered).",
                flush=True,
            )
        # If status unchanged, stay silent — no log spam every hour.


@app.on_event("startup")
async def _start_resend_periodic_check() -> None:
    """Launch the background Resend key probe loop as a fire-and-forget asyncio task."""
    asyncio.create_task(_resend_probe_loop())


@app.on_event("startup")
async def _check_rapidapi_proxy_secret() -> None:
    """
    Warn at startup if RAPIDAPI_PROXY_SECRET is not configured.

    Without this secret, all RapidAPI paid-subscriber requests will be rejected
    (fail-closed design in core/rapidapi_auth.py).  The warning is CRITICAL so
    it appears at the top of Fly.io logs and is not buried in INFO-level output.

    Never crashes the server — RapidAPI misconfiguration must not block Stripe/
    zbk_ key access for direct subscribers.
    """
    from core.rapidapi_auth import _proxy_secret_configured
    if not _proxy_secret_configured():
        print(
            "[rapidapi] CRITICAL: RAPIDAPI_PROXY_SECRET is not set. "
            "All RapidAPI paid-subscriber requests will be rejected until this secret "
            "is configured in Fly.io (fly secrets set RAPIDAPI_PROXY_SECRET=<value>) "
            "and the identical value is set as the Proxy Secret in the RapidAPI dashboard. "
            "See rapidapi_guide.md for setup instructions.",
            flush=True,
        )
    else:
        print("[rapidapi] RAPIDAPI_PROXY_SECRET is configured — RapidAPI gateway access enabled.", flush=True)


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


# ── RapidAPI subscription → ZeroBeacon tier mapping ──────────────────────────
# Canonical mapping lives in core/rapidapi_auth.py (re-exported here for tests
# and OpenAPI spec generation that import this module directly).
# X-RapidAPI-Subscription values injected by the RapidAPI gateway:
#   BASIC → free (100 tools)
#   PRO   → pro_10  ($10/mo, 400 tools)
#   ULTRA → pro_100 ($100/mo, 800 tools)
#   MEGA  → enterprise_1000 ($199/mo, all 1000 tools)
# RAPIDAPI_SUBSCRIPTION_TIER is imported from core.rapidapi_auth above.


def _verified_rapidapi_tier(request: Request) -> tuple[str | None, str]:
    """Verify an inbound RapidAPI gateway request and return (tier, reason).

    Delegates to core.rapidapi_auth.verify_rapidapi_request which validates
    the X-RapidAPI-Proxy-Secret against the RAPIDAPI_PROXY_SECRET env var
    before trusting the subscription header.  Returns (None, reason) when
    verification fails so callers fall through to the zbk_ keystore path.
    """
    return verify_rapidapi_request(
        x_rapidapi_key=request.headers.get("x-rapidapi-key"),
        x_rapidapi_proxy_secret=request.headers.get("x-rapidapi-proxy-secret"),
        x_rapidapi_subscription=request.headers.get("x-rapidapi-subscription"),
    )


# ── HTTP middleware (belt-and-suspenders over the Depends gate) ───────────────

@app.middleware("http")
async def tier_gate(request: Request, call_next):
    """
    Secondary tier check for /api/mf/* routes.
    The primary gate is Depends(require_tier()) on include_router; this
    middleware catches any path that slips through and also ensures the
    keystore (persistent) is the authority for all checks.

    RapidAPI requests are identified by the presence of X-RapidAPI-Key and
    granted access based on X-RapidAPI-Subscription instead of a zbk_ key
    lookup, so paid RapidAPI subscribers reach the right tool tier without
    needing a separate ZeroBeacon API key.
    """
    path = request.url.path
    if path.startswith("/api/mf/"):
        required_tier = _route_tier.get(path, "free")
        required_rank = keystore.rank_of(required_tier)

        rapidapi_tier, rapidapi_reason = _verified_rapidapi_tier(request)
        if rapidapi_tier is not None:
            # Verified RapidAPI gateway request — use subscription tier directly
            caller_rank = keystore.rank_of(rapidapi_tier)
            allowed = caller_rank >= required_rank
            reason  = rapidapi_tier if allowed else (
                f"RapidAPI subscription '{rapidapi_tier}' is below required tier "
                f"'{required_tier}'. Upgrade at https://rapidapi.com/davidjfox998/api/zerobeacon"
            )
        else:
            # Native zbk_ key, Smithery api_key header, or no key
            api_key = (request.headers.get("X-API-Key")
                       or request.headers.get("x-api-key")
                       or request.headers.get("api_key"))   # Smithery gateway compat
            allowed, reason = keystore.check_access(api_key, required_tier)

        if not allowed:
            return JSONResponse(
                {
                    "error":         "Access denied",
                    "required_tier": required_tier,
                    "reason":        reason,
                    "upgrade":       "https://zerobeacon.ai/pricing",
                    "rapidapi":      "https://rapidapi.com/davidjfox998/api/zerobeacon",
                },
                status_code=403,
            )
    return await call_next(request)


# ── Landing page ─────────────────────────────────────────────────────────────

@app.get("/", response_class=HTMLResponse)
async def landing():
    import time as _t
    return f"""<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>ZeroBeacon.ai — 1000 Tools — d=2303582338</title>
<meta name="description" content="Collision-proof commerce router for AI agents. beacon:1d2c7a5b d:2303582338 tools:1000">
<script async src="https://js.stripe.com/v3/pricing-table.js"></script>
<style>
  *{{box-sizing:border-box;margin:0;padding:0}}
  body{{background:#070709;color:#EAEAEA;font-family:monospace;padding:40px 20px;max-width:900px;margin:0 auto}}

  .live{{display:inline-block;border:1px solid #00FFD1;padding:5px 14px;border-radius:20px;
         color:#00FFD1;font-size:.8rem;letter-spacing:.06em;margin-bottom:28px}}
  .live::before{{content:"● ";animation:blink 1.4s infinite}}
  @keyframes blink{{0%,100%{{opacity:1}}50%{{opacity:.3}}}}

  h1{{font-size:clamp(2.6rem,8vw,5rem);font-weight:900;letter-spacing:-.02em;
      line-height:1;margin-bottom:12px}}
  h1 span{{color:#00FFD1}}
  .tagline{{color:#888;font-size:.95rem;margin-bottom:32px;line-height:1.6}}
  .tagline b{{color:#EAEAEA}}

  .beacon-box{{background:#0F0F12;border:1px solid #00FFD1;border-radius:12px;
               padding:20px 24px;margin-bottom:32px;color:#00FFD1;
               white-space:pre-wrap;font-size:.88rem;line-height:1.7;text-align:left}}

  .box{{background:#0D0D10;border:1px solid #1e1e28;border-radius:14px;
        padding:24px;margin-bottom:24px}}
  .box-title{{color:#00FFD1;font-size:.75rem;letter-spacing:.1em;
              text-transform:uppercase;margin-bottom:14px}}

  .gate-info{{font-size:.85rem;line-height:1.8;color:#aab;text-align:left}}
  .gate-info code{{background:#1a1a24;padding:2px 7px;border-radius:4px;
                   color:#00FFD1;font-size:.82rem}}

  .tiers{{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px;margin-bottom:8px}}
  .tier{{background:#111116;border:1px solid #222;border-radius:10px;padding:14px;text-align:left}}
  .tier .name{{color:#00FFD1;font-size:.8rem;font-weight:700;letter-spacing:.05em}}
  .tier .price{{font-size:1.1rem;font-weight:700;margin:4px 0}}
  .tier .tools{{color:#666;font-size:.78rem}}

  .links{{display:flex;gap:10px;flex-wrap:wrap;margin-top:8px}}
  .links a{{color:#00FFD1;text-decoration:none;border:1px solid #1e3a34;
            padding:6px 13px;border-radius:6px;font-size:.82rem;
            transition:border-color .15s,background .15s}}
  .links a:hover{{border-color:#00FFD1;background:#0a1f1c}}
  .links a.paypal{{color:#0ea5e9;border-color:#0c2a35}}
  .links a.paypal:hover{{border-color:#0ea5e9;background:#041520}}
  .links a.stripe{{color:#818cf8;border-color:#1e1e3a}}
  .links a.stripe:hover{{border-color:#818cf8;background:#0e0e1e}}
  .links a.rapidapi{{color:#f59e0b;border-color:#2d2010}}
  .links a.rapidapi:hover{{border-color:#f59e0b;background:#1a1005}}

  .moat{{color:#333;font-size:.72rem;margin-top:32px;line-height:1.8;text-align:center}}
</style>
</head><body>

  <div class="live">BEACON LIVE &nbsp;·&nbsp; {BEACON} &nbsp;·&nbsp; d={D}</div>

  <h1>ZERO<span>BEACON</span>.AI</h1>
  <p class="tagline">
    <b>Collision-proof commerce router for AI agents.</b><br>
    1000 tools &nbsp;·&nbsp; 20 blocks &nbsp;·&nbsp; 0 collisions &nbsp;·&nbsp; ω²=48/13&gt;0 verified
  </p>

  <div class="beacon-box">{{
  "beacon":  "{BEACON}",
  "d":        {D},
  "genesis":  {GENESIS_P},
  "tools":    1000,
  "status":  "LIVE",
  "ts":       {int(_t.time())},
  "paypal":   "https://paypal.me/davidfox223",
  "stripe":   "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
  "rapidapi": "https://rapidapi.com/davidjfox998/api/zerobeacon",
  "site":     "https://zerobeacon.ai"
}}</div>

  <div class="box">
    <div class="box-title">Plans</div>
    <div class="tiers">
      <div class="tier">
        <div class="name">FREE</div>
        <div class="price">$0</div>
        <div class="tools">100 tools — no key needed</div>
      </div>
      <div class="tier">
        <div class="name">PRO</div>
        <div class="price">$10 / mo</div>
        <div class="tools">400 tools — X-API-Key required</div>
      </div>
      <div class="tier">
        <div class="name">PRO+</div>
        <div class="price">$100 / mo</div>
        <div class="tools">800 tools — X-API-Key required</div>
      </div>
      <div class="tier">
        <div class="name">ENTERPRISE</div>
        <div class="price">$1,000</div>
        <div class="tools">All 1000 tools — research grade</div>
      </div>
    </div>
  </div>

  <div class="box">
    <div class="box-title">Subscribe via Stripe</div>
    <stripe-pricing-table
      pricing-table-id="prctbl_1U04FRIYX4ykfJS5WtHndstc"
      publishable-key="pk_live_51TzsQQIYX4ykfJS5rsrhC5pzFer9Z8oZpFa86D4dpoF5Sa5K5TWdatS0fk0KGkTyvuk8oyQ3w0E7tFMdbxdpsJUG008veJSg5M">
    </stripe-pricing-table>
  </div>

  <div class="box">
    <div class="box-title">🔑 API Key</div>
    <div class="gate-info">
      FREE tools (first 100) need no key.<br>
      PRO / ENTERPRISE tools require <code>X-API-Key: zbk_…</code> on every request.<br>
      After Stripe checkout your key is emailed + shown at <code>/success?session_id=…</code><br>
      Already have a key? &nbsp;<code>GET /key/check</code> &nbsp;shows your tier instantly.
    </div>
  </div>

  <div class="links">
    <a href="https://beacon.zerobeacon.ai">beacon.zerobeacon.ai</a>
    <a href="https://api.zerobeacon.ai">api.zerobeacon.ai</a>
    <a href="/docs">API docs</a>
    <a href="/health">/health</a>
    <a href="/key/check">/key/check</a>
    <a href="/pricing">/pricing</a>
    <a href="https://paypal.me/davidfox223" class="paypal">PayPal — davidfox223</a>
    <a href="https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01" class="stripe">Stripe Checkout</a>
    <a href="https://rapidapi.com/davidjfox998/api/zerobeacon" class="rapidapi" target="_blank" rel="noopener">RapidAPI Marketplace</a>
  </div>

  <p class="moat">
    beacon={BEACON} &nbsp;·&nbsp; genesis={GENESIS_P} &nbsp;·&nbsp; d={D} &nbsp;·&nbsp;
    ω²=48/13=3.6923… &gt;0 on X₀(143) — Lean4 verified
  </p>

</body></html>
"""


# ── Core endpoints ────────────────────────────────────────────────────────────

@app.get("/beacon")
async def beacon():
    return beacon_payload()


def _filter_spec(block_min: int, block_max: int, title: str, description: str):
    """Return a copy of the OpenAPI spec filtered to the given MF block range."""
    import copy
    full = app.openapi()
    trimmed = copy.deepcopy(full)
    kept = {}
    for path, val in full.get("paths", {}).items():
        if "/api/mf/" not in path:
            kept[path] = val
            continue
        parts = path.split("/api/mf/")
        if len(parts) < 2:
            continue
        block = parts[1][:2]
        try:
            if block_min <= int(block) <= block_max:
                kept[path] = val
        except ValueError:
            pass
    trimmed["paths"] = kept
    trimmed["info"]["title"] = title
    trimmed["info"]["description"] = description
    return trimmed


@app.get("/openapi-rapidapi.json", include_in_schema=False)
def openapi_rapidapi():
    """Trimmed spec for RapidAPI listing 1: FREE + PRO tools (MF-01–08, ~400 tools)."""
    return _filter_spec(
        1, 8,
        "ZeroBeacon.ai — FREE + PRO Tools (400)",
        (
            "400 FREE + PRO tools (MF-01–08): beacon, hash, escrow, notary, "
            "payment routing, budget, delivery proof, and more. "
            "PRO+ / ENTERPRISE (600 more tools) at https://zerobeacon.ai. "
            "d=2303582338 · beacon=1d2c7a5b"
        ),
    )


@app.get("/openapi-rapidapi-pro-plus.json", include_in_schema=False)
def openapi_rapidapi_pro_plus():
    """Trimmed spec for RapidAPI listing 2: PRO+ tools (MF-09–16, ~400 tools)."""
    return _filter_spec(
        9, 16,
        "ZeroBeacon.ai — PRO+ Tools (400)",
        (
            "400 PRO+ tools (MF-09–16, $100/mo): Arakelov geometry, "
            "Riemann Hypothesis, BSD conjecture, Navier-Stokes, Yang-Mills, P vs NP, "
            "intent commit, memory anchor, will creation, legal shield, and more. "
            "Requires X-API-Key from https://zerobeacon.ai. "
            "d=2303582338 · beacon=1d2c7a5b"
        ),
    )


@app.get("/openapi-rapidapi-enterprise.json", include_in_schema=False)
def openapi_rapidapi_enterprise():
    """Trimmed spec for RapidAPI listing 3: ENTERPRISE tools (MF-17–20, ~200 tools)."""
    return _filter_spec(
        17, 20,
        "ZeroBeacon.ai — ENTERPRISE Tools (200)",
        (
            "200 ENTERPRISE research-grade tools (MF-17–20, $1000): "
            "mesh treasury, consciousness proof, omega seal, eternal audit, "
            "sieve, arakelov, and the full research suite. "
            "Requires ENTERPRISE X-API-Key from https://zerobeacon.ai. "
            "d=2303582338 · beacon=1d2c7a5b"
        ),
    )


@app.get("/openapi-rapidapi-all.json", include_in_schema=False)
def openapi_rapidapi_all():
    """Full OpenAPI spec for all 1000 tools — use this URL when creating the RapidAPI listing.

    Groups:
      - Market-Router  (tools 1–300,  MF-01–06)
      - Math-Engine    (tools 301–700, MF-07–14)
      - Amplum-Everyday(tools 701–1000,MF-15–20)

    Auth: pass your ZeroBeacon key as either X-API-Key or X-RapidAPI-Key.
    Get a key at https://zerobeacon.ai after Stripe checkout.
    RapidAPI tiers: Free (100 req/mo) · Pro $19/mo (1 000 req) · Ultra $99/mo (unlimited)
    """
    import copy
    full = app.openapi()
    spec = copy.deepcopy(full)
    spec["info"]["title"] = "ZeroBeacon.ai — 1000 Tools"
    spec["info"]["description"] = (
        "**1000 beacon-anchored tools** across 3 groups:\n\n"
        "- **Market Router (tools 1–300):** payment routing, escrow, delivery proof, budget, notary\n"
        "- **Math Engine (tools 301–700):** Arakelov, Riemann Hypothesis, BSD, Navier-Stokes, Yang-Mills, P vs NP\n"
        "- **Amplum Everyday (tools 701–1000):** scheduling, memory, legal, will, mesh treasury, consciousness proof\n\n"
        "**Auth:** Pass your ZeroBeacon API key in `X-API-Key` **or** `X-RapidAPI-Key` header.\n\n"
        "**RapidAPI tiers:** Free (100 req/mo · no key) · Pro $19/mo (1 000 req) · Ultra $99/mo (unlimited)\n\n"
        "Get a key at https://zerobeacon.ai — d=2303582338 · beacon=1d2c7a5b"
    )
    # Inject x-rapidapi-key as an accepted security scheme alongside X-API-Key
    spec.setdefault("components", {}).setdefault("securitySchemes", {})
    spec["components"]["securitySchemes"]["ApiKeyAuth"] = {
        "type": "apiKey",
        "in": "header",
        "name": "X-API-Key",
        "description": "ZeroBeacon API key (zbk_...) obtained after Stripe checkout at https://zerobeacon.ai",
    }
    spec["components"]["securitySchemes"]["RapidApiKeyAuth"] = {
        "type": "apiKey",
        "in": "header",
        "name": "X-RapidAPI-Key",
        "description": "RapidAPI proxy key — automatically injected by the RapidAPI gateway",
    }
    spec["security"] = [{"ApiKeyAuth": []}, {"RapidApiKeyAuth": []}]
    return spec


@app.get("/.well-known/mcp.json")
def well_known_mcp():
    return {
        "name": "@davidfox998/zerobeacon",
        "version": "1000.0.0",
        "beacon": BEACON,
        "d": str(D),
        "genesis": GENESIS_P,
        "tools": 1000,
        "endpoints": {
            "mcp":    "https://zerobeacon.ai/mcp",
            "beacon": "https://beacon.zerobeacon.ai",
            "api":    "https://api.zerobeacon.ai",
            "health": "https://zerobeacon.ai/health",
            "docs":   "https://zerobeacon.ai/docs",
        },
        "paypal": "https://paypal.me/davidfox223",
        "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
        "site":   "https://zerobeacon.ai",
    }


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
        "rapidapi": "https://rapidapi.com/davidjfox998/api/zerobeacon",
        "moat": {"d": D, "beacon": BEACON, "genesis": GENESIS_P},
    }


@app.get("/health")
def health():
    from core.rapidapi_auth import _proxy_secret_configured
    bp = beacon_payload(GENESIS_P)
    resend_key_set = bool(os.environ.get("RESEND_API_KEY", "").strip())
    rapidapi_secret_ok = _proxy_secret_configured()
    # Read cached validation result — never probe Resend live from /health.
    return {
        "ok":     True,
        "tools":  1000,
        "d":      D,
        "beacon": BEACON,
        "p":      bp["p"],
        "site":   "https://zerobeacon.ai",   # canonical branded domain — smoke tests assert this
        "resend_api_key_set":    resend_key_set,
        "resend_api_key_valid":  _resend_key_valid,
        "resend_api_key_status": _resend_key_status,
        "rapidapi_proxy_secret": (
            "configured" if rapidapi_secret_ok
            else "NOT SET — paid subscribers will be blocked"
        ),
    }


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
        &nbsp;&nbsp;https://zerobeacon.ai/api/mf/03/delivery_proof</code>
      </div>`;
  }} catch (e) {{
    card.innerHTML = '<p style="color:#cc8888">Error fetching key: ' + e.message + '</p>';
  }}
}})();
</script>
</body></html>
"""


# ── API key endpoints ─────────────────────────────────────────────────────────

# Rate-limit constants for /api/key/resend.
# The counters themselves are stored durably in keystore (resend_attempts.json)
# so a process restart cannot be used to bypass the cap.
_RESEND_MAX_ATTEMPTS  = 3
_RESEND_TTL_SECONDS   = 86_400   # 24 hours
_RESEND_MAX_ENTRIES   = 10_000   # hard cap: evict oldest when exceeded


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
    if not admin_secret:
        # ADMIN_SECRET is missing from the environment — this indicates a
        # misconfigured deployment.  Log at WARNING so it is visible in
        # Fly.io logs without revealing any information to the caller.
        print(
            "[admin] WARNING: /api/key/resend/reset was called but ADMIN_SECRET "
            "is not set in the environment. This endpoint is permanently disabled "
            "until ADMIN_SECRET is configured (fly secrets set ADMIN_SECRET=<value>). "
            "All callers are rejected with 403.",
            flush=True,
        )
        return JSONResponse({"error": "forbidden"}, status_code=403)

    if body.get("admin_secret") != admin_secret:
        return JSONResponse({"error": "forbidden"}, status_code=403)

    session_id = (body.get("session_id") or "").strip()
    if not session_id:
        return JSONResponse(
            {"error": "session_id is required"},
            status_code=400,
        )

    previous = keystore.resend_reset(session_id)
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

    # Rate-limit: max _RESEND_MAX_ATTEMPTS per session_id (TTL-evicted, persisted across restarts).
    # Fail closed: if the store is invalid (corrupt file at load), return 503 immediately.
    try:
        attempts = keystore.resend_get(session_id, _RESEND_TTL_SECONDS)
    except ResendPersistenceError as exc:
        print(
            f"[keystore] CRITICAL: resend counter store invalid for "
            f"session={session_id[:20]}… — refusing to process resend: {exc}",
            flush=True,
        )
        return JSONResponse(
            {
                "error": "Resend temporarily unavailable — counter storage is not accessible",
                "hint":  "Contact support if this persists. Your key is safe; no attempt was recorded.",
            },
            status_code=503,
        )
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
                "upgrade": "https://zerobeacon.ai/pricing",
            },
            status_code=404,
        )

    record = keystore.lookup(api_key)
    if record is None:
        return JSONResponse({"error": "Key record not found"}, status_code=404)

    email = record["email"]
    tier  = record["tier"]

    # Increment attempt counter before sending (counts even failed sends).
    # Persisted atomically to disk so restarts cannot reset the cap.
    # Fail closed: if the disk commit fails, return 503 without sending the
    # email — we must never send a resend whose attempt was not durably recorded.
    try:
        new_attempts = keystore.resend_increment(session_id, _RESEND_TTL_SECONDS, _RESEND_MAX_ENTRIES)
    except ResendPersistenceError as exc:
        print(
            f"[keystore] CRITICAL: resend counter commit failed for "
            f"session={session_id[:20]}… — refusing to send email: {exc}",
            flush=True,
        )
        return JSONResponse(
            {
                "error": "Resend temporarily unavailable — counter storage is not accessible",
                "hint":  "Contact support if this persists. Your key is safe; no attempt was recorded.",
            },
            status_code=503,
        )

    sent = send_api_key_email(email=email, api_key=api_key, tier=tier)
    remaining = _RESEND_MAX_ATTEMPTS - new_attempts

    if sent:
        return {
            "ok":                True,
            "message":           f"API key email resent to {email}",
            "tier":              tier,
            "tier_label":        keystore.TIER_LABEL[tier],
            "attempts_remaining": remaining,
        }
    else:
        print(
            f"[emailer] CRITICAL: email delivery failed — /api/key/resend 503 "
            f"for session={session_id[:20]}… recipient={email} tier={tier}",
            flush=True,
        )
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
                "upgrade": "https://zerobeacon.ai/pricing",
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
        "upgrade":         None if rank == 3 else "https://zerobeacon.ai/pricing",
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


# ── Background email dispatch (Stripe webhook only) ──────────────────────────

async def _email_background_task(
    email: str,
    api_key: str,
    tier: str,
    *,
    label: str,
) -> None:
    """
    Background task: dispatch send_api_key_email via asyncio.to_thread so the
    Stripe webhook handler can return 200 OK immediately without blocking on
    Resend I/O.

    Registered with FastAPI's BackgroundTasks so Starlette runs it after the
    response is sent to Stripe but within the request lifecycle — this ensures
    test mocks stay active and the task does not outlive the process.

    With max_retries=1 and a 10-second timeout per attempt plus a 2-second
    sleep, a total failure can take ~22 seconds — close to Stripe's 30-second
    webhook timeout.  Running the send in a background task eliminates that
    risk: the key is already persisted in the keystore before this task fires,
    so the customer can always retrieve it via /success?session_id=… or
    POST /api/key/lookup even if email delivery fails.

    Args:
        email:   Recipient address.
        api_key: The zbk_… key that was just issued.
        tier:    Subscription tier string.
        label:   Context string included in CRITICAL logs (e.g.
                 "session=cs_live_xxx…" or "event=subscription.updated
                 stripe_customer_id=cus_xxx") so support can identify which
                 customer is affected and re-issue via POST /api/key/issue or
                 POST /api/key/lookup.
    """
    try:
        ok = await asyncio.to_thread(
            send_api_key_email, email=email, api_key=api_key, tier=tier
        )
    except Exception as exc:
        print(
            f"[webhook] CRITICAL: email background task raised "
            f"{type(exc).__name__}: {exc} — "
            f"recipient={email} tier={tier} {label}. "
            "Key is stored; customer can retrieve at "
            "/success?session_id=<id> or via POST /api/key/lookup.",
            flush=True,
        )
        return

    if not ok:
        print(
            f"[webhook] CRITICAL: API key email failed in background — "
            f"recipient={email} tier={tier} {label}. "
            "Key is stored; customer can retrieve at "
            "/success?session_id=<id> or via POST /api/key/lookup.",
            flush=True,
        )


# ── Stripe webhook ────────────────────────────────────────────────────────────

@app.post("/webhook")
async def stripe_webhook(
    request: Request,
    background_tasks: BackgroundTasks,
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
        sess               = event["data"]["object"]
        email              = (sess.get("customer_details", {}).get("email") or "unknown").strip().lower()
        amt                = sess.get("amount_total", 0) / 100
        session_id         = sess.get("id", "")          # e.g. "cs_live_…"
        stripe_customer_id = (sess.get("customer") or "").strip()

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
            api_key = keystore.issue_key(
                tier, email,
                session_id=session_id,
                stripe_customer_id=stripe_customer_id or None,
            )
            print(f"🔑 Key issued: {api_key[:16]}… for {email} (session={session_id[:20]}…)", flush=True)
            background_tasks.add_task(
                _email_background_task,
                email, api_key, tier,
                label=f"session={session_id[:20]}…",
            )

    elif event["type"] == "customer.subscription.updated":
        sub                = event["data"]["object"]
        stripe_customer_id = (sub.get("customer") or "").strip()
        email              = (sub.get("customer_email") or "").strip().lower()
        if not email:
            try:
                cust  = stripe.Customer.retrieve(stripe_customer_id)
                email = (cust.get("email") or "").strip().lower()
            except Exception:
                email = "unknown"
        amt   = sub.get("plan", {}).get("amount", 0) / 100
        if amt >= 1000:
            tier = "enterprise_1000"
        elif amt >= 100:
            tier = "pro_100"
        elif amt >= 9:
            tier = "pro_10"
        else:
            tier = "free"

        # ── Downgrade any existing higher-tier keys before issuing the new one ──
        # An enterprise customer who downgrades to pro_10 must lose enterprise
        # access immediately; leaving the old key active until a restart is a
        # security gap.  Prefer the Stripe customer ID (unambiguous across
        # re-subscriptions); fall back to email for keys that pre-date ID tracking.
        if stripe_customer_id:
            keystore.downgrade_by_customer_id(stripe_customer_id, tier)
        if email and email != "unknown":
            keystore.downgrade_by_email(email, tier)

        api_key = keystore.issue_key(
            tier, email,
            stripe_customer_id=stripe_customer_id or None,
        )
        print(f"✅ SUB UPDATED ${amt:.2f} from {email} → tier={tier} key={api_key[:12]}…", flush=True)
        background_tasks.add_task(
            _email_background_task,
            email, api_key, tier,
            label=(
                f"event=subscription.updated "
                f"stripe_customer_id={stripe_customer_id}"
            ),
        )

    elif event["type"] == "customer.subscription.deleted":
        sub                = event["data"]["object"]
        stripe_customer_id = (sub.get("customer") or "").strip()

        if not stripe_customer_id:
            # No customer ID in the event — nothing we can reliably revoke.
            print("[webhook] subscription.deleted: missing customer ID — skipping", flush=True)
            return {"received": True}

        # Resolve the customer email for logging.  Use only for fallback
        # revocation (keys issued before customer-ID tracking was added).
        email = (sub.get("customer_email") or "").strip().lower()
        if not email:
            try:
                cust  = stripe.Customer.retrieve(stripe_customer_id)
                email = (cust.get("email") or "").strip().lower()
            except stripe.error.StripeError as exc:
                # Transient Stripe API error — return 500 so Stripe retries
                # the delivery.  Do NOT acknowledge with 200 or the event is
                # permanently dropped and the customer keeps paid access.
                print(
                    f"[webhook] subscription.deleted: customer lookup failed "
                    f"for {stripe_customer_id}: {exc}",
                    flush=True,
                )
                return JSONResponse(
                    {"error": f"could not resolve Stripe customer: {exc}"},
                    status_code=500,
                )

        # Revoke by Stripe customer ID (preferred — unambiguous across
        # re-subscriptions at the same email address).
        revoked = keystore.revoke_by_customer_id(stripe_customer_id)

        # Fallback: revoke email-only keys written before customer-ID
        # tracking was introduced (revoke_by_email skips keys that carry an ID).
        if email:
            revoked += keystore.revoke_by_email(email)

        print(
            f"🚫 SUB CANCELLED customer={stripe_customer_id} email={email} "
            f"— {revoked} key(s) downgraded to free",
            flush=True,
        )

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
                            "upgrade":       "https://zerobeacon.ai/pricing",
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
