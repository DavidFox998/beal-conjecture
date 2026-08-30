from fastapi import FastAPI, Request, Header, Depends, BackgroundTasks
from tool_schemas import TOOL_SCHEMAS
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse, HTMLResponse
import time, os, stripe, asyncio, json, urllib.request, urllib.error, hmac, hashlib

from core.beacon import (beacon_payload, D, BEACON, GENESIS_P,
                         TIERS, PRICING_SUMMARY, PAYPAL_ME,
                         PAYPAL_LINK_10, PAYPAL_LINK_100, PAYPAL_LINK_1000)
from core import keystore
from core.keystore import ResendPersistenceError
from core.tier_guard import require_tier, TierAccessError
from core.emailer import send_api_key_email, validate_resend_key
from core.log_redactor import install_redaction_filter
from core.rapidapi_auth import verify_rapidapi_request, RAPIDAPI_SUBSCRIPTION_TIER, check_rapidapi_proxy_secret

# Install log redaction immediately so no zbk_... key can reach any log sink,
# including future structured loggers, exception traceback capturers, or
# Sentry/DataDog integrations added later.
install_redaction_filter()

from routers import shopify_app
from routers import zerobeacon_mf_affiliate_checkout as affiliate_checkout
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
    zerobeacon_mf_21_050_c9_brain       as m21,
)

app = FastAPI(
    title="ZeroBeacon.ai — 1050 Tools",
    version="1050.0.0",
    description=(
        "**1050 beacon-anchored tools** across 4 groups:\n\n"
        "- **Market Router (tools 1–300):** payment routing, escrow, delivery proof, budget, notary\n"
        "- **Math Engine (tools 301–700):** Arakelov, Riemann Hypothesis, BSD, Navier-Stokes, Yang-Mills, P vs NP\n"
        "- **Amplum Everyday (tools 701–1000):** scheduling, memory, legal, will, mesh treasury, consciousness proof\n"
        "- **Brain Router (tools 1001–1050):** 50 meta-tools — 1 brain that routes all 1000 tools, chain, think, swarm, consensus\n\n"
        "FREE tier: first 100 tools, no key required.  \n"
        "PRO / ENTERPRISE: pass `X-API-Key: zbk_…` header.  \n"
        "Get a key at https://zerobeacon.ai after Stripe checkout.  \n"
        "d=2303582338 · beacon=1d2c7a5b · ω²=48/13>0 verified"
    ),
    openapi_tags=[
        {"name": "Market-Router",  "description": "Tools 1–300: payment, escrow, delivery, budget, notary"},
        {"name": "Math-Engine",    "description": "Tools 301–700: Arakelov, RH, BSD, Navier-Stokes, Yang-Mills, P vs NP"},
        {"name": "Amplum-Everyday","description": "Tools 701–1000: scheduling, memory, legal, will, mesh, consciousness"},
        {"name": "Brain-Router",   "description": "Tools 1001–1050: brain meta-router, chain, think, swarm, consensus"},
    ],
)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# ── TierAccessError handler ───────────────────────────────────────────────────
# REST endpoints use HTTP 403 when a subscription tier is required.  The MCP
# endpoint converts its own denials to JSON-RPC error -32001 below and does not
# raise TierAccessError, so MCP clients continue to receive HTTP 200 transport
# responses with a protocol-level error body.
@app.exception_handler(TierAccessError)
async def tier_access_error_handler(request: Request, exc: TierAccessError):
    return JSONResponse(status_code=403, content=exc.to_response_body())

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
    (m21, "/api/mf/21", "MF-21", "enterprise_1000"),
]

# Load persisted API keys before mounting routers
keystore.load()

# Shopify App — no tier gate (handles its own auth via OAuth + HMAC)
app.include_router(shopify_app.router)

# Affiliate Checkout — FREE tier, drives operator revenue
app.include_router(affiliate_checkout.router, tags=["Affiliate"])

for mod, prefix, tag, min_tier in ROUTERS:
    if min_tier == "free":
        app.include_router(mod.router, prefix=prefix, tags=[tag])
    else:
        app.include_router(
            mod.router, prefix=prefix, tags=[tag],
            dependencies=[Depends(require_tier(min_tier))],
        )


# ── Webhook alert helper ──────────────────────────────────────────────────────
# Posts a JSON payload to ALERT_WEBHOOK_URL (e.g. a Slack incoming webhook or
# any generic HTTP endpoint).  Used by both the Resend and RapidAPI probe loops
# so an operator is notified without tailing Fly.io logs.

_ALERT_WEBHOOK_URL: str = os.environ.get("ALERT_WEBHOOK_URL", "")


def _fire_alert_webhook(
    title: str,
    message: str,
    remediation: str,
    extra: "dict | None" = None,
) -> None:
    """POST a structured alert to ALERT_WEBHOOK_URL.

    Sends a JSON body compatible with Slack incoming webhooks (``text`` + ``blocks``)
    and generic HTTP alerting endpoints.  Silently no-ops when ALERT_WEBHOOK_URL is
    not set.  All errors are caught and logged so a broken webhook never crashes the
    server or interrupts the probe loop.

    Args:
        title:       Short one-line summary (used as the Slack message text).
        message:     Human-readable description of what went wrong.
        remediation: Exact command or step the operator should run to fix it.
        extra:       Optional dict of additional fields merged into the top-level
                     JSON payload (e.g. structured probe metadata for parseable alerts).
    """
    url = os.environ.get("ALERT_WEBHOOK_URL", "")
    if not url:
        return
    ts = time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())
    app_name = os.environ.get("FLY_APP_NAME", "zerobeacon-mf-1000")
    payload = {
        "text": f":rotating_light: *{title}*",
        "blocks": [
            {
                "type": "section",
                "text": {
                    "type": "mrkdwn",
                    "text": (
                        f":rotating_light: *{title}*\n"
                        f"*App:* `{app_name}`\n"
                        f"*Time:* `{ts}`\n"
                        f"*Detail:* {message}\n"
                        f"*Fix:* `{remediation}`"
                    ),
                },
            }
        ],
    }
    if extra:
        payload.update(extra)
    body = json.dumps(payload).encode()
    req = urllib.request.Request(
        url,
        data=body,
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            status = resp.getcode()
            if status not in (200, 204):
                print(
                    f"[alert] webhook returned unexpected status {status}",
                    flush=True,
                )
    except urllib.error.HTTPError as exc:
        print(f"[alert] webhook HTTP error {exc.code}: {exc.reason}", flush=True)
    except Exception as exc:
        print(
            f"[alert] webhook delivery failed — {type(exc).__name__}: {exc}",
            flush=True,
        )


# ── Resend key validation cache ───────────────────────────────────────────────
# Populated once at startup (and refreshed by any future periodic probe).
# /health reads this cache — it never makes a live network call itself.

_resend_key_valid: bool = False
_resend_key_status: str = "not checked yet"
_resend_key_checked_at: float = 0.0  # unix timestamp; 0.0 means "never checked"


# ── RapidAPI proxy secret probe cache ─────────────────────────────────────────
# Populated once at startup and refreshed by the periodic probe.
# /health reads this cache — no env re-read on every request.

_rapidapi_secret_ok: bool = False
_rapidapi_secret_status: str = "not checked yet"
_rapidapi_secret_checked_at: float = 0.0  # unix timestamp; 0.0 means "never checked"


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
    global _resend_key_valid, _resend_key_status, _resend_key_checked_at
    valid, reason = validate_resend_key()
    _resend_key_valid      = valid
    _resend_key_status     = reason
    _resend_key_checked_at = time.time()
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
    global _resend_key_valid, _resend_key_status, _resend_key_checked_at
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
        _resend_key_valid      = valid
        _resend_key_status     = reason
        _resend_key_checked_at = time.time()

        if not valid and prev_valid:
            # Newly failed — emit CRITICAL once so it appears prominently in Fly.io logs.
            print(
                f"[emailer] CRITICAL: RESEND_API_KEY validation failed (periodic probe) — "
                f"{reason}. Email delivery will fail until the key is corrected.",
                flush=True,
            )
            # Fire a dashboard/Slack alert so an operator is notified without tailing logs.
            await asyncio.to_thread(
                _fire_alert_webhook,
                "RESEND_API_KEY has gone missing or become invalid",
                (
                    f"RESEND_API_KEY was valid at the last check but is now invalid: {reason}. "
                    "Customer API key emails will fail until the key is rotated."
                ),
                "fly secrets set RESEND_API_KEY=<new-key> --app zerobeacon-mf-1000",
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


# ── Resend probe staleness watchdog ──────────────────────────────────────────
# Tracks whether the probe has gone stale (False→True transition) and fires a
# webhook alert when it does.  The probe loop itself cannot detect its own
# staleness if it freezes, so a separate watchdog is required.

_resend_probe_stale_alerted: bool = False


async def _check_and_alert_resend_stale() -> bool:
    """Check if the Resend probe cache is stale; fire a webhook on False→True transition.

    Compares the current time against _resend_key_checked_at.  If the cache age
    exceeds 2× _RESEND_CHECK_INTERVAL and no alert has been fired yet, posts a
    webhook with structured probe metadata and logs a WARNING.  Resets the alert
    flag when the probe recovers.

    Returns:
        True if a webhook alert was fired in this call, False otherwise.
    """
    global _resend_probe_stale_alerted
    now = time.time()
    threshold = 2 * _RESEND_CHECK_INTERVAL
    # A probe that has never run (checked_at == 0) is not considered stale.
    if _resend_key_checked_at <= 0.0:
        _resend_probe_stale_alerted = False
        return False

    cache_age = int(now - _resend_key_checked_at)
    stale = cache_age > threshold

    if stale and not _resend_probe_stale_alerted:
        _resend_probe_stale_alerted = True
        # Emit CRITICAL so Fly.io log-based alert rules on "[emailer] CRITICAL" fire
        # immediately when the probe freezes, without requiring anyone to tail logs.
        print(
            f"[emailer] CRITICAL: resend probe stale — "
            f"cache age={cache_age}s, threshold={threshold}s",
            flush=True,
        )
        await asyncio.to_thread(
            _fire_alert_webhook,
            "Resend probe is stale — background loop may have frozen",
            (
                f"The Resend key probe has not updated in {cache_age} seconds "
                f"(threshold: {threshold}s). "
                "The background probe loop may have frozen or crashed. "
                "Email delivery health is no longer being monitored."
            ),
            "fly apps restart zerobeacon-mf-1000",
            {
                "resend_probe_stale": True,
                "resend_key_cache_age_seconds": cache_age,
                "resend_probe_stale_threshold_seconds": threshold,
            },
        )
        return True

    if not stale and _resend_probe_stale_alerted:
        # Probe has recovered — reset so the next stale transition fires again.
        _resend_probe_stale_alerted = False

    return False


async def _resend_stale_watchdog_loop() -> None:
    """Background loop: periodically check whether the Resend probe has gone stale.

    Runs every _RESEND_CHECK_INTERVAL seconds.  Delegates the actual check and
    alert to _check_and_alert_resend_stale() so that logic is independently testable.
    Exceptions are caught and logged so the watchdog never crashes the server.
    """
    while True:
        await asyncio.sleep(_RESEND_CHECK_INTERVAL)
        try:
            await _check_and_alert_resend_stale()
        except Exception as exc:
            print(
                f"[emailer] stale watchdog raised an unexpected exception: "
                f"{type(exc).__name__}: {exc}",
                flush=True,
            )


@app.on_event("startup")
async def _start_resend_stale_watchdog() -> None:
    """Launch the Resend stale-probe watchdog as a fire-and-forget asyncio task."""
    asyncio.create_task(_resend_stale_watchdog_loop())


@app.on_event("startup")
async def _check_rapidapi_proxy_secret() -> None:
    """
    Warn at startup if RAPIDAPI_PROXY_SECRET is not configured.

    Without this secret, all RapidAPI paid-subscriber requests will be rejected
    (fail-closed design in core/rapidapi_auth.py).  The warning is CRITICAL so
    it appears at the top of Fly.io logs and is not buried in INFO-level output.

    Populates the module-level _rapidapi_secret_* cache so /health can report
    the current status without re-reading the env on every request.

    Never crashes the server — RapidAPI misconfiguration must not block Stripe/
    zbk_ key access for direct subscribers.
    """
    global _rapidapi_secret_ok, _rapidapi_secret_status, _rapidapi_secret_checked_at
    ok, reason = check_rapidapi_proxy_secret()
    _rapidapi_secret_ok         = ok
    _rapidapi_secret_status     = reason
    _rapidapi_secret_checked_at = time.time()
    if not ok:
        print(
            f"[rapidapi] CRITICAL: RAPIDAPI_PROXY_SECRET is not set. "
            "All RapidAPI paid-subscriber requests will be rejected until this secret "
            "is configured in Fly.io (fly secrets set RAPIDAPI_PROXY_SECRET=<value>) "
            "and the identical value is set as the Proxy Secret in the RapidAPI dashboard. "
            "See rapidapi_guide.md for setup instructions.",
            flush=True,
        )
        _fire_alert_webhook(
            title="RAPIDAPI_PROXY_SECRET missing at startup",
            message=(
                "RAPIDAPI_PROXY_SECRET is not set. "
                "All RapidAPI paid-subscriber requests will be rejected."
            ),
            remediation=(
                "fly secrets set RAPIDAPI_PROXY_SECRET=<value> --app zerobeacon-mf-1000 "
                "then set the identical value as the Proxy Secret in the RapidAPI dashboard."
            ),
        )
    else:
        print("[rapidapi] RAPIDAPI_PROXY_SECRET is configured — RapidAPI gateway access enabled.", flush=True)


# Configurable probe interval — override with RAPIDAPI_CHECK_INTERVAL env var (seconds).
_RAPIDAPI_CHECK_INTERVAL: int = int(os.environ.get("RAPIDAPI_CHECK_INTERVAL", "3600"))


async def _rapidapi_probe_loop() -> None:
    """
    Background loop: re-check RAPIDAPI_PROXY_SECRET every _RAPIDAPI_CHECK_INTERVAL seconds.

    Re-reads the env var at each iteration (not the import-time cached value in
    core/rapidapi_auth.py) so that an operator change that somehow doesn't restart
    the process — or an empty string being set — is still caught.

    Emits [rapidapi] CRITICAL when the secret goes missing and a recovery message
    when it comes back.  Stays silent when the status is unchanged to avoid log spam.
    Exceptions are caught and logged so the loop never crashes the server.
    """
    global _rapidapi_secret_ok, _rapidapi_secret_status, _rapidapi_secret_checked_at
    while True:
        await asyncio.sleep(_RAPIDAPI_CHECK_INTERVAL)
        try:
            ok, reason = await asyncio.to_thread(check_rapidapi_proxy_secret)
        except Exception as exc:
            print(
                f"[rapidapi] periodic probe raised an unexpected exception: "
                f"{type(exc).__name__}: {exc}",
                flush=True,
            )
            continue

        prev_ok = _rapidapi_secret_ok
        _rapidapi_secret_ok         = ok
        _rapidapi_secret_status     = reason
        _rapidapi_secret_checked_at = time.time()

        if not ok and prev_ok:
            # Newly missing — emit CRITICAL once so it appears prominently in Fly.io logs.
            print(
                "[rapidapi] CRITICAL: RAPIDAPI_PROXY_SECRET has gone missing (periodic probe). "
                "All RapidAPI paid-subscriber requests will be rejected until the secret is "
                "restored via: fly secrets set RAPIDAPI_PROXY_SECRET=<value> --app zerobeacon-mf-1000",
                flush=True,
            )
            # Fire a dashboard/Slack alert so an operator is notified without tailing logs.
            await asyncio.to_thread(
                _fire_alert_webhook,
                "RAPIDAPI_PROXY_SECRET has gone missing",
                (
                    "RAPIDAPI_PROXY_SECRET was present at the last check but is now missing. "
                    "All RapidAPI paid-subscriber requests are being rejected."
                ),
                "fly secrets set RAPIDAPI_PROXY_SECRET=<value> --app zerobeacon-mf-1000",
            )
        elif ok and not prev_ok:
            # Recovered — emit one info line so the recovery is traceable.
            print(
                "[rapidapi] RAPIDAPI_PROXY_SECRET is present again (periodic probe recovered).",
                flush=True,
            )
        # If status unchanged, stay silent — no log spam every hour.


@app.on_event("startup")
async def _start_rapidapi_periodic_check() -> None:
    """Launch the background RapidAPI proxy secret probe loop as a fire-and-forget asyncio task."""
    asyncio.create_task(_rapidapi_probe_loop())

def _check_stripe_api_key() -> tuple[bool, str]:
    """
    Validate STRIPE_SECRET_KEY with a read-only Stripe API call (Balance.retrieve).

    Sets stripe.api_key as a side effect so all subsequent Stripe SDK calls
    (Customer.retrieve in the webhook handler, etc.) use the correct key.

    Returns (ok, status_message).
    Never raises — all Stripe and network errors are caught and returned as status.
    """
    key = os.environ.get("STRIPE_SECRET_KEY", "").strip()
    if not key:
        return False, "STRIPE_SECRET_KEY is not set"
    if key.startswith("whsec_"):
        return (
            False,
            "STRIPE_SECRET_KEY looks like a webhook signing secret (whsec_…) — "
            "must be a Stripe API key (sk_live_… or sk_test_…)",
        )
    if not (key.startswith("sk_live_") or key.startswith("sk_test_") or key.startswith("rk_")):
        return (
            False,
            f"STRIPE_SECRET_KEY has an unexpected prefix — "
            f"expected sk_live_…, sk_test_…, or rk_… (got {key[:8]}…)",
        )
    # Assign the key so the SDK uses it globally from this point on.
    stripe.api_key = key
    try:
        stripe.Balance.retrieve()
        return True, f"ok (prefix: {key[:12]}…)"
    except stripe.error.AuthenticationError as exc:
        return False, f"authentication failed — {exc.user_message or exc}"
    except stripe.error.StripeError as exc:
        return False, f"Stripe API error — {exc}"
    except Exception as exc:
        return False, f"unexpected error — {type(exc).__name__}: {exc}"


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
            # Native zbk_ key, Smithery api_key/api-key header, or no key.
            # Smithery HTTP transport converts configSchema property "apiKey"
            # (camelCase) to HTTP header "api-key" (kebab-case) before
            # forwarding.  We accept both spellings so the schema property name
            # and the header name stay compatible regardless of future renames.
            api_key = (request.headers.get("X-API-Key")
                       or request.headers.get("x-api-key")
                       or request.headers.get("api-key")    # Smithery: apiKey → api-key
                       or request.headers.get("api_key"))   # legacy underscore fallback
            allowed, reason = keystore.check_access(api_key, required_tier)

        if not allowed:
            # Determine whether a key was provided at all (vs. missing entirely)
            _any_key = (request.headers.get("X-API-Key")
                        or request.headers.get("x-api-key")
                        or request.headers.get("api-key")
                        or request.headers.get("api_key"))
            _key_present = bool(_any_key)
            _tier_label = (
                required_tier
                .replace("_", " ")
                .replace("pro 10",          "PRO ($10/mo)")
                .replace("pro 100",         "PRO+ ($100/mo)")
                .replace("enterprise 1000", "ENTERPRISE ($1,000)")
            )
            # Conversion log — grep for TIER_BLOCK to count daily upgrade opportunities
            print(
                f"TIER_BLOCK path={path} required={required_tier} "
                f"key_present={_key_present}",
                flush=True,
            )
            if not _key_present:
                _msg = (
                    f"{_tier_label} required — 100 tools free, 400 with PRO ($10/mo), "
                    "800 with PRO+ ($100/mo), 1052 with ENTERPRISE ($1,000).\n"
                    "Upgrade: https://zerobeacon.ai/upgrade\n"
                    "Stripe checkout: https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"
                )
            else:
                _msg = (
                    f"{_tier_label} required — your key doesn't have this tier. "
                    "100 tools free, 400 with PRO ($10/mo), 800 with PRO+ ($100/mo), "
                    "1052 with ENTERPRISE ($1,000).\n"
                    "Upgrade: https://zerobeacon.ai/upgrade\n"
                    "Stripe checkout: https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"
                )
            # HTTP 403 for REST routes. MCP denials are handled separately
            # in the /mcp handler using JSON-RPC error code -32001 (HTTP 200)
            # so MCP clients see the error inside the tool response.
            return JSONResponse(
                {
                    "ok":              False,
                    "error":           "tier_required",
                    "message":         _msg,
                    "required_tier":   required_tier,
                    "your_tier":       "free",
                    "tools_free":      100,
                    "tools_pro":       400,
                    "tools_pro_plus":  800,
                    "tools_enterprise": 1052,
                    "upgrade":         "https://zerobeacon.ai/upgrade",
                    "stripe":          "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
                    "rapidapi":        "https://rapidapi.com/davidjfox998/api/zerobeacon",
                    "paypal":          "https://paypal.me/davidfox223",
                },
                status_code=403,
            )
    return await call_next(request)


# ── Landing page ─────────────────────────────────────────────────────────────

@app.get("/", response_class=HTMLResponse)
async def landing():
    import time as _t
    # Compute resend health state so the page can surface recovery info when needed.
    _resend_store_ok = keystore._resend_store_valid
    # Corrupt store warning: the recover endpoint directly fixes this.
    _resend_store_warning = (
        """  <div class="box" style="border-color:#ff4d4d;">
    <div class="box-title" style="color:#ff4d4d;">&#9888; Email delivery degraded &mdash; resend store corrupt</div>
    <div class="gate-info">
      The resend-attempts store is corrupt; <code>/api/key/resend</code> is in 503 fail-closed state.<br>
      Recovery (admin only): <code>POST /api/admin/resend/recover</code> with body <code>&#123;"admin_secret":"..."&#125;</code><br>
      This clears the corrupt store and restores email resend without a server restart.
    </div>
  </div>
"""
        if not _resend_store_ok else ""
    )
    # Invalid key warning: fix by rotating the secret in the environment.
    _resend_key_warning = (
        """  <div class="box" style="border-color:#f59e0b;">
    <div class="box-title" style="color:#f59e0b;">&#9888; Email delivery degraded &mdash; Resend API key invalid</div>
    <div class="gate-info">
      The <code>RESEND_API_KEY</code> secret is invalid or missing &mdash; API key emails cannot be sent.<br>
      Fix: rotate the secret (<code>fly secrets set RESEND_API_KEY=re_...</code>), then restart or wait for the next probe cycle.
    </div>
  </div>
"""
        if not _resend_key_valid else ""
    )
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
    <b>Collision-anchored commerce router for AI agents.</b><br>
    1050 tools &nbsp;·&nbsp; 21 blocks &nbsp;·&nbsp; 9 controlled collisions &nbsp;·&nbsp; ω²=48/13&gt;0 verified
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

{_resend_store_warning}{_resend_key_warning}  <div class="links">
    <a href="https://beacon.zerobeacon.ai">beacon.zerobeacon.ai</a>
    <a href="https://api.zerobeacon.ai">api.zerobeacon.ai</a>
    <a href="/docs">API docs</a>
    <a href="/health">/health</a>
    <a href="/key/check">/key/check</a>
    <a href="/pricing">/pricing</a>
    <a href="https://paypal.me/davidfox223" class="paypal">PayPal — davidfox223</a>
    <a href="https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01" class="stripe">Stripe Checkout</a>
    <a href="https://rapidapi.com/davidjfox998/api/zerobeacon" class="rapidapi" target="_blank" rel="noopener">RapidAPI Marketplace</a>
    <a href="https://smithery.ai/servers/davidjfox998/zerobeacon-1050" target="_blank" rel="noopener" style="color:#a78bfa;border-color:#2d1f4a;">Smithery MCP</a>
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


# ── Beacon Proof-as-a-Service (#7) ───────────────────────────────────────────
# GET /verify?beacon=1d2c7a5b&order=ORD-12345
# Returns a tamper-evident HMAC-SHA256 proof that a specific order was
# processed under the ZeroBeacon collision-anchored guarantee.
# Auditors, carriers, and AI agents call this to confirm the transaction.
# Pricing: $0.001 per verification (metered via future Stripe usage billing).

_VERIFY_SECRET = (os.environ.get("SESSION_SECRET") or "zerobeacon-fallback-secret").encode()

@app.get("/verify", tags=["Market-Router"])
async def verify_beacon(
    beacon_val: str = None,
    order: str = None,
    beacon: str = None,  # alias
    request: Request = None,
):
    """
    **Beacon Proof-as-a-Service** — returns a server-issued tamper-evident receipt.

    Supply `beacon` (the hex beacon string) and `order` (your order/transaction ID).
    The response includes an HMAC-SHA256 `proof` that binds `(beacon, order, ts)`
    together under a server-held secret.  Store the `proof` alongside your order;
    anyone with access to this endpoint can re-verify by re-calling with the same
    `beacon`, `order`, and `ts`.

    **Guarantee type (`proof_type` field):**

    - `"static-anchor"` — the supplied `beacon` matches the ZeroBeacon collision-anchor
      constant (`d`/P1/P2).  The HMAC receipt covers a known-good anchor value and the
      `moat` context (beacon/d/P1/P2) is included so agents can inspect the collision
      model.  This is a static anchor check, not a real-time chain-liveness probe.
    - `"server-receipt"` — the supplied `beacon` does not match the canonical anchor.
      The server still signs `(beacon, order, ts)` as a tamper-evident receipt, but
      makes no claim about the beacon value itself.  Trust boundary: server-held HMAC
      secret; not independently verifiable without the secret.

    - **Free** — no API key required
    - **Rate**: standard free-tier limits apply
    - **Billing**: $0.001/verification (metered, future feature)
    """
    from core.beacon import MOAT_P1, MOAT_P2
    b = beacon_val or beacon or BEACON
    o = order or "unspecified"
    ts = int(time.time())
    msg = f"{b}:{o}:{ts}".encode()
    proof = hmac.new(_VERIFY_SECRET, msg, hashlib.sha256).hexdigest()

    # Check whether the caller supplied the canonical ZeroBeacon anchor value.
    # This is a static equality check against the module constant — it does NOT
    # perform a real-time chain probe or liveness verification.
    canonical = (b == BEACON)

    if canonical:
        # Canonical anchor: the supplied beacon matches the ZeroBeacon collision-
        # anchor constant.  Proof type is "static-anchor" — a static check, not
        # a live chain probe.  The moat context (P1/P2) is included so agents can
        # understand the collision model that backs the anchor value.
        guarantee = {
            "verified": True,
            "proof_type": "static-anchor",
            "proof_type_note": (
                "The supplied beacon matches the ZeroBeacon collision-anchor constant. "
                "This is a static anchor check and HMAC receipt — not a real-time "
                "chain-liveness probe."
            ),
            # collision describes the P1/P2 moat bounding the anchor beacon-space.
            "collision": "controlled-anchor",
            # moat mirrors the beacon/d/P1/P2 contract on /brain.
            "moat": {
                "beacon": BEACON,
                "d": D,
                "P1": MOAT_P1,
                "P2": MOAT_P2,
            },
        }
    else:
        # Non-canonical beacon: the supplied value does not match the ZeroBeacon
        # anchor.  The server still issues a tamper-evident HMAC receipt binding
        # (beacon, order, ts) under the server-held secret, but makes no claim
        # about the beacon value or any collision model.
        # Trust boundary: HMAC verification requires the server-held secret; the
        # proof is not independently verifiable without access to that secret.
        guarantee = {
            "verified": False,
            "proof_type": "server-receipt",
            "proof_type_note": (
                f"Supplied beacon '{b}' does not match the canonical ZeroBeacon anchor "
                f"('{BEACON}'). The HMAC proof is a server-issued receipt binding "
                "(beacon, order, ts) under a server-held secret — no anchor or "
                "collision guarantee is made. "
                f"Call with beacon={BEACON} for a static-anchor proof."
            ),
        }

    return {
        **guarantee,
        "beacon": b,
        "order": o,
        "ts": ts,
        "proof": proof,
        "algorithm": "HMAC-SHA256",
        "message_format": "{beacon}:{order}:{ts}",
        "d": D,
        "site": "https://zerobeacon.ai",
        "verify_url": f"https://zerobeacon.ai/verify?beacon={b}&order={o}",
        "note": "Store `proof` with your order record. Re-verify by calling this endpoint with the same beacon, order, and ts values.",
    }


# ── Hash License snippet endpoint (#1) ───────────────────────────────────────
# GET /beacon.js?d=2303582338&beacon=1d2c7a5b
# Returns the embeddable JS snippet merchants include on their storefront.
# The snippet calls /verify server-side and injects a "ZeroBeacon Verified" badge.
# License: $99/year per store — enforced via the `d` parameter (store product ID).

@app.get("/beacon.js", response_class=HTMLResponse)
async def beacon_js(
    d: int = D,
    beacon: str = BEACON,
    order: str = "",
    badge: str = "1",  # "1" = show badge, "0" = silent verification only
):
    """
    **ZeroBeacon Hash License snippet** — embed on any storefront.

    Add this to your product page:
    ```html
    <script src="https://api.zerobeacon.ai/beacon.js?d=2303582338&beacon=1d2c7a5b"></script>
    ```
    The script verifies the beacon server-side and optionally injects a
    "ZeroBeacon Verified ✓" badge next to your product title.

    License: **$99/year per store** — your `d` value is your collision-anchored store ID.
    """
    show_badge = badge != "0"
    badge_html = """
      const badge = document.createElement('span');
      badge.id = 'zerobeacon-badge';
      badge.title = 'ZeroBeacon collision-anchored product ID verified';
      badge.style.cssText = 'display:inline-flex;align-items:center;gap:4px;padding:2px 8px;border-radius:12px;background:#0f172a;color:#38bdf8;font-size:11px;font-family:system-ui,sans-serif;font-weight:600;letter-spacing:.3px;cursor:pointer;text-decoration:none;border:1px solid #38bdf8;margin-left:8px;vertical-align:middle;';
      badge.innerHTML = '&#9711; ZeroBeacon <b style="color:#fff">Verified</b>';
      badge.onclick = () => window.open(data.verify_url, '_blank');
      const target = document.querySelector('h1') || document.querySelector('[class*="title"]') || document.body.firstElementChild;
      if (target) target.appendChild(badge);
""" if show_badge else "      // badge suppressed (badge=0)"

    js = f"""/* ZeroBeacon Hash License v1.0 — https://zerobeacon.ai
 * Store ID (d): {d}
 * Beacon: {beacon}
 * License: $99/year per store — see https://zerobeacon.ai/license
 * This script verifies your store's collision-anchored product ID
 * and optionally renders a trust badge on your storefront.
 */
(function() {{
  'use strict';
  var ZB = {{
    d: {d},
    beacon: '{beacon}',
    order: '{order}',
    apiBase: 'https://api.zerobeacon.ai',
    verify: function(cb) {{
      var url = ZB.apiBase + '/verify?beacon=' + ZB.beacon + (ZB.order ? '&order=' + encodeURIComponent(ZB.order) : '');
      fetch(url)
        .then(function(r) {{ return r.json(); }})
        .then(function(data) {{
          ZB.proof = data.proof;
          ZB.ts = data.ts;
          if (typeof cb === 'function') cb(null, data);
        }})
        .catch(function(err) {{ if (typeof cb === 'function') cb(err); }});
    }},
    badge: function() {{
      ZB.verify(function(err, data) {{
        if (err || !data || !data.verified) return;
{badge_html}
      }});
    }}
  }};
  // Auto-inject badge on DOMContentLoaded if badge=1
  {'if (document.readyState === "loading") { document.addEventListener("DOMContentLoaded", ZB.badge); } else { ZB.badge(); }' if show_badge else '// auto-badge disabled'}
  window.ZeroBeacon = ZB;
}})();
"""
    from fastapi.responses import Response
    return Response(content=js, media_type="application/javascript")


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
    trimmed["servers"] = [{"url": "https://zerobeacon.ai", "description": "ZeroBeacon production API"}]
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
        "name": "@davidjfox998/zerobeacon-1050",
        "version": "1050.0.0",
        "beacon": BEACON,
        "d": str(D),
        "genesis": GENESIS_P,
        "tools": 1050,
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


@app.get("/.well-known/mcp/server-card.json")
def well_known_mcp_server_card():
    """Smithery static server card — bypasses auto-scan when MCP transport isn't
    directly reachable. Declares 1050 tools so the marketplace badge is correct."""
    return {
        "name": "ZeroBeacon.ai — 1050 Tools",
        "description": (
            "1050 beacon-anchored MCP tools across 4 groups: "
            "Market Router (tools 1–300), Math Engine (tools 301–700), "
            "Amplum Everyday (tools 701–1000), and the Brain Router (tools 1001–1050). "
            "FREE tier: first 100 tools, no API key required. "
            "PRO / ENTERPRISE: pass X-API-Key header after Stripe checkout at https://zerobeacon.ai. "
            "d=2303582338 · beacon=1d2c7a5b · ω²=48/13>0 verified"
        ),
        "url": "https://zerobeacon.ai/mcp",
        "version": "1050.0.0",
        "tools": {
            "count": 1050,
        },
        "authentication": {
            "type": "api_key",
            "header": "X-API-Key",
            "description": "API key starting with zbk_. Get one at https://zerobeacon.ai after Stripe checkout.",
        },
    }


@app.get("/privacy", response_class=HTMLResponse)
async def privacy_policy():
    """Privacy policy — required by Chrome Web Store and app stores."""
    return """<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Privacy Policy — ZeroBeacon.ai</title>
<style>
  *{box-sizing:border-box;margin:0;padding:0}
  body{background:#070709;color:#EAEAEA;font-family:system-ui,-apple-system,sans-serif;
       padding:60px 20px;max-width:800px;margin:0 auto;line-height:1.7}
  h1{font-size:2rem;font-weight:800;color:#00FFD1;margin-bottom:.4rem}
  .updated{color:#8899cc;font-size:.85rem;margin-bottom:2.4rem}
  h2{font-size:1.1rem;font-weight:700;color:#88aaff;margin:2rem 0 .5rem;border-bottom:1px solid #1a2040;padding-bottom:.4rem}
  p,li{color:#ccd6f6;font-size:.95rem;margin-bottom:.8rem}
  ul{padding-left:1.4rem}
  a{color:#00FFD1;text-decoration:none}
  .back{display:inline-block;margin-top:2.5rem;border:1px solid #2a3a5a;
        padding:8px 16px;border-radius:6px;color:#88aaff;font-size:.9rem}
  .back:hover{border-color:#88aaff}
</style>
</head><body>
  <h1>Privacy Policy</h1>
  <p class="updated">ZeroBeacon.ai &mdash; last updated August 2026</p>

  <h2>1. What we collect</h2>
  <p>When you purchase a Pro subscription through Stripe, we receive your email address from Stripe in order to deliver your API key. We do not store payment card data.</p>
  <p>The Amplum Chrome extension stores only the following data <strong>locally on your device</strong>:</p>
  <ul>
    <li>Your optional <code>zbk_…</code> API key (in <code>localStorage</code>, never sent to our servers except as an HTTP header to authenticate tool calls)</li>
    <li>A daily call counter (integer, resets at midnight)</li>
  </ul>

  <h2>2. API calls</h2>
  <p>Tool calls made through the extension are routed to <code>api.zerobeacon.ai</code>. We log standard HTTP request metadata (timestamp, tool name, response code) for capacity planning. We do not log the content of tool arguments or results.</p>

  <h2>3. Cookies &amp; tracking</h2>
  <p>The extension does not set cookies and does not use analytics trackers. The main website (zerobeacon.ai) does not use third-party analytics.</p>

  <h2>4. Data sharing</h2>
  <p>We do not sell, rent, or share personal data with third parties except Stripe (payment processing) and Resend (transactional email delivery of your API key).</p>

  <h2>5. Data retention</h2>
  <p>API keys are associated with your Stripe session ID and retained for the duration of your subscription. You can request deletion by emailing the address on our <a href="/">home page</a>.</p>

  <h2>6. Security</h2>
  <p>All traffic is encrypted via TLS. API keys are generated with cryptographically-secure randomness and stored in hashed form on the server.</p>

  <h2>7. Children</h2>
  <p>Our services are not directed at children under 13. We do not knowingly collect data from children.</p>

  <h2>8. Changes</h2>
  <p>We will post any changes to this page and update the "last updated" date above. Continued use after a change constitutes acceptance.</p>

  <h2>9. Contact</h2>
  <p>Questions about this policy? Reach us via the contact link on <a href="/">zerobeacon.ai</a>.</p>

  <a class="back" href="/">← Back to ZeroBeacon.ai</a>
</body></html>"""


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
            "resend_store_recover": "Admin only: POST /api/admin/resend/recover  {\"admin_secret\": \"...\"} — clears the corrupt resend-attempts store and resets the in-process counter, unblocking /api/key/resend from its 503 fail-closed state without a server restart",
        },
        "success_page": "/success?session_id=<your-session-id>",
        "stripe_pricing_table": "prctbl_1U04FRIYX4ykfJS5WtHndstc",
        "rapidapi": "https://rapidapi.com/davidjfox998/api/zerobeacon",
        "moat": {"d": D, "beacon": BEACON, "genesis": GENESIS_P},
    }


@app.get("/health")
def health():
    bp = beacon_payload(GENESIS_P)
    resend_key_set = bool(os.environ.get("RESEND_API_KEY", "").strip())
    # Read cached validation results — never probe live from /health.
    import datetime as _dt
    now = time.time()
    if _resend_key_checked_at > 0.0:
        resend_checked_at_iso = _dt.datetime.fromtimestamp(
            _resend_key_checked_at, tz=_dt.timezone.utc
        ).strftime("%Y-%m-%dT%H:%M:%SZ")
        resend_cache_age_seconds = int(now - _resend_key_checked_at)
    else:
        resend_checked_at_iso    = None
        resend_cache_age_seconds = None
    if _rapidapi_secret_checked_at > 0.0:
        rapidapi_checked_at_iso = _dt.datetime.fromtimestamp(
            _rapidapi_secret_checked_at, tz=_dt.timezone.utc
        ).strftime("%Y-%m-%dT%H:%M:%SZ")
        rapidapi_cache_age_seconds = int(now - _rapidapi_secret_checked_at)
    else:
        rapidapi_checked_at_iso    = None
        rapidapi_cache_age_seconds = None
    # Detect a frozen/stale Resend probe: flag when cache age exceeds 2× the interval.
    # A probe that has never run (resend_cache_age_seconds is None) is NOT flagged as stale —
    # that case is covered by _resend_key_valid=False and status="not checked yet".
    resend_probe_stale = (
        resend_cache_age_seconds is not None
        and resend_cache_age_seconds > 2 * _RESEND_CHECK_INTERVAL
    )
    # Detect a frozen/stale RapidAPI probe: same logic mirrored for the RapidAPI loop.
    # A probe that has never run (rapidapi_cache_age_seconds is None) is NOT flagged as stale.
    rapidapi_probe_stale = (
        rapidapi_cache_age_seconds is not None
        and rapidapi_cache_age_seconds > 2 * _RAPIDAPI_CHECK_INTERVAL
    )
    overall_status = "degraded" if (resend_probe_stale or rapidapi_probe_stale) else "ok"

    return {
        "ok":     True,
        "status": overall_status,
        "tools":   1052,
        "routers": 21,
        "brain":   "LIVE",
        "d":      D,
        "beacon": BEACON,
        "p":      bp["p"],
        "site":   "https://zerobeacon.ai",   # canonical branded domain — smoke tests assert this
        "resend_api_key_set":            resend_key_set,
        "resend_api_key_valid":          _resend_key_valid,
        "resend_api_key_status":         _resend_key_status,
        "resend_key_checked_at":         resend_checked_at_iso,
        "resend_key_cache_age_seconds":  resend_cache_age_seconds,
        "resend_probe_stale":            resend_probe_stale,
        "resend_probe_stale_threshold_seconds": 2 * _RESEND_CHECK_INTERVAL,
        **(
            {"resend_recover_endpoint": "POST /api/admin/resend/recover — clears the corrupt resend-attempts store, unblocking /api/key/resend from its 503 fail-closed state"}
            if not keystore._resend_store_valid
            else {}
        ),
        **(
            {"resend_key_action": "RESEND_API_KEY is invalid — rotate the secret (fly secrets set RESEND_API_KEY=re_...) and wait for the next probe cycle or restart"}
            if not _resend_key_valid
            else {}
        ),
        "rapidapi_proxy_secret": (
            "configured" if _rapidapi_secret_ok
            else "NOT SET — paid subscribers will be blocked"
        ),
        "rapidapi_secret_status":         _rapidapi_secret_status,
        "rapidapi_secret_checked_at":     rapidapi_checked_at_iso,
        "rapidapi_secret_cache_age_seconds": rapidapi_cache_age_seconds,
        "rapidapi_probe_stale":           rapidapi_probe_stale,
        "rapidapi_probe_stale_threshold_seconds": 2 * _RAPIDAPI_CHECK_INTERVAL,
        # ── Stripe API key health ──────────────────────────────────────────────
        "stripe_api_key_set":    _stripe_key_set,
        "stripe_api_key_valid":  _stripe_key_valid,
        "stripe_api_key_status": _stripe_key_status,
        "stripe_key_checked_at": (
            __import__("datetime").datetime.fromtimestamp(
                _stripe_key_checked_at, tz=__import__("datetime").timezone.utc
            ).strftime("%Y-%m-%dT%H:%M:%SZ")
            if _stripe_key_checked_at > 0.0 else None
        ),
        **(
            {"stripe_api_key_action": (
                "STRIPE_SECRET_KEY is invalid or misconfigured — "
                "set it to a Stripe API key (sk_live_… or sk_test_…): "
                "fly secrets set STRIPE_SECRET_KEY=sk_live_… --app zerobeacon-mf-1000"
            )}
            if not _stripe_key_valid else {}
        ),
    }


# ── Prometheus-compatible metrics endpoint ────────────────────────────────────
# Exposes resend_probe_stale (and a handful of companion gauges) in the
# Prometheus text exposition format so Fly.io dashboards and alert rules can
# scrape /metrics directly instead of parsing log lines.

@app.get("/metrics", response_class=HTMLResponse)
def metrics():
    """
    Prometheus-compatible text exposition endpoint.

    Gauges exported:
      resend_probe_stale          1 when the Resend probe cache is stale, else 0
      resend_key_valid            1 when the last probe found the key valid, else 0
      resend_key_cache_age_seconds  seconds since the last successful probe (−1 if never)
      resend_probe_stale_threshold_seconds  the 2× interval threshold used to flag staleness

    Example Fly.io alert rule:
      resend_probe_stale == 1
    """
    now = time.time()
    cache_age = int(now - _resend_key_checked_at) if _resend_key_checked_at > 0.0 else -1
    threshold = 2 * _RESEND_CHECK_INTERVAL
    stale = (cache_age >= 0 and cache_age > threshold)

    lines = [
        "# HELP resend_probe_stale 1 if the Resend probe loop has not updated within 2x its interval",
        "# TYPE resend_probe_stale gauge",
        f"resend_probe_stale {1 if stale else 0}",
        "",
        "# HELP resend_key_valid 1 if the last Resend API key probe succeeded",
        "# TYPE resend_key_valid gauge",
        f"resend_key_valid {1 if _resend_key_valid else 0}",
        "",
        "# HELP resend_key_cache_age_seconds Seconds since the last Resend probe ran (-1 if never)",
        "# TYPE resend_key_cache_age_seconds gauge",
        f"resend_key_cache_age_seconds {cache_age}",
        "",
        "# HELP resend_probe_stale_threshold_seconds Cache age above which the probe is considered stale",
        "# TYPE resend_probe_stale_threshold_seconds gauge",
        f"resend_probe_stale_threshold_seconds {threshold}",
        "",
    ]
    return HTMLResponse(content="\n".join(lines), media_type="text/plain; version=0.0.4; charset=utf-8")


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


@app.post("/api/admin/resend/recover")
async def api_admin_resend_recover(request: Request):
    """
    Admin endpoint: delete the corrupt resend_attempts.json file and reset the
    in-process resend counter store so the /api/key/resend endpoint can recover
    from a 503 state without a server restart.

    After a successful call, _resend_store_valid is True and all per-session
    attempt counts start fresh (the corrupt file is gone).

    Request body: {"admin_secret": "..."}
    Returns 200 on success, 403 on bad/missing secret, 400 on invalid JSON.
    """
    try:
        body = await request.json()
    except Exception:
        return JSONResponse({"error": "invalid JSON body"}, status_code=400)

    admin_secret = os.environ.get("ADMIN_SECRET", "")
    if not admin_secret:
        print(
            "[admin] WARNING: /api/admin/resend/recover was called but ADMIN_SECRET "
            "is not set in the environment. This endpoint is permanently disabled "
            "until ADMIN_SECRET is configured (fly secrets set ADMIN_SECRET=<value>). "
            "All callers are rejected with 403.",
            flush=True,
        )
        return JSONResponse({"error": "forbidden"}, status_code=403)

    if body.get("admin_secret") != admin_secret:
        return JSONResponse({"error": "forbidden"}, status_code=403)

    try:
        summary = keystore.resend_recover()
    except OSError as e:
        return JSONResponse(
            {
                "error": (
                    "Failed to write salvaged resend data — the resend endpoint "
                    "remains in fail-closed (503) state. "
                    f"Detail: {e}"
                )
            },
            status_code=503,
        )

    if summary["reset"]:
        # File was entirely unreadable — operator warning required
        detail = (
            "WARNING: the resend_attempts.json file was fully unreadable (corrupt JSON "
            "or wrong data type). All per-session attempt counts have been lost. "
            "Customers who had exhausted their 3-attempt cap can now resend again."
        )
    elif summary["discarded"] > 0:
        detail = (
            f"{summary['salvaged']} valid attempt record(s) were retained; "
            f"{summary['discarded']} corrupt record(s) were discarded. "
            "Only the discarded sessions have had their attempt counts reset."
        )
    else:
        detail = (
            f"All {summary['salvaged']} attempt record(s) were valid and have been "
            "retained. No attempt counts were lost."
        )

    return {
        "ok":       True,
        "message":  (
            "Resend counter store recovered and reloaded. "
            "The /api/key/resend endpoint is now operational."
        ),
        "detail":   detail,
        "salvaged":  summary["salvaged"],
        "discarded": summary["discarded"],
        "full_reset": summary["reset"],
    }


@app.post("/debug/trigger-stale-probe")
async def debug_trigger_stale_probe(request: Request):
    """
    Admin endpoint: synthetically trigger the stale-probe alert so operators can
    confirm the webhook reaches ALERT_WEBHOOK_URL before a real incident.

    Backdates _resend_key_checked_at by 3× _RESEND_CHECK_INTERVAL (well past the
    2× staleness threshold), then calls _check_and_alert_resend_stale() directly
    inside the serving process.  Returns the result and structured metadata so the
    operator gets confirmation in the HTTP response without tailing Fly.io logs.

    This is the only reliable way to trigger the stale condition on a live Fly.io
    deployment: fly ssh console spawns a separate process that cannot touch the
    module-level state of the running uvicorn worker.

    Request body: {"admin_secret": "..."}
    Returns 200 with {"fired": bool, "cache_age_seconds": int, ...} on success.
    Returns 403 on bad/missing secret, 400 on invalid JSON.
    """
    try:
        body = await request.json()
    except Exception:
        return JSONResponse({"error": "invalid JSON body"}, status_code=400)

    admin_secret = os.environ.get("ADMIN_SECRET", "")
    if not admin_secret:
        print(
            "[admin] WARNING: /debug/trigger-stale-probe was called but ADMIN_SECRET "
            "is not set in the environment. This endpoint is permanently disabled "
            "until ADMIN_SECRET is configured (fly secrets set ADMIN_SECRET=<value>). "
            "All callers are rejected with 403.",
            flush=True,
        )
        return JSONResponse({"error": "forbidden"}, status_code=403)

    if body.get("admin_secret") != admin_secret:
        return JSONResponse({"error": "forbidden"}, status_code=403)

    global _resend_key_checked_at, _resend_probe_stale_alerted
    # Backdate by 3× the interval — well past the 2× staleness threshold.
    _resend_key_checked_at = time.time() - 3 * _RESEND_CHECK_INTERVAL
    # Reset the alert flag so the transition False → True fires unconditionally.
    _resend_probe_stale_alerted = False

    cache_age = int(time.time() - _resend_key_checked_at)
    threshold = 2 * _RESEND_CHECK_INTERVAL

    fired = await _check_and_alert_resend_stale()

    return {
        "fired": fired,
        "cache_age_seconds": cache_age,
        "staleness_threshold_seconds": threshold,
        "alert_webhook_url_set": bool(os.environ.get("ALERT_WEBHOOK_URL", "")),
        "message": (
            "Stale-probe alert fired — check your webhook destination (Slack / PagerDuty)."
            if fired
            else "Stale condition set but alert flag was already True; reset _resend_probe_stale_alerted and retry."
        ),
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

_GENERIC_SCHEMA = {
    "type": "object",
    "properties": {
        "p":        {"type": "integer", "default": 82843},
        "agent_id": {"type": "string",  "default": "agent"},
        "payload":  {"type": "string",  "default": ""},
        "amount":   {"type": "number",  "default": 0},
    },
}

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
            schema     = TOOL_SCHEMAS.get(tool_key, {})
            tools.append({
                "name":        tool_key,
                "description": (
                    schema.get("description")
                    or getattr(route, "description", "")
                    or f"block={block} tool={name} d={D}"
                ),
                "tags":        route_tags,
                "inputSchema": schema.get("inputSchema", _GENERIC_SCHEMA),
                "tier":        req_tier,
            })
    seen, unique = set(), []
    for t in tools:
        if t["name"] not in seen:
            seen.add(t["name"])
            unique.append(t)
    return unique


# ── /brain — beacon.zerobeacon.ai/brain ──────────────────────────────────────

@app.get("/brain")
def brain_get():
    """Brain heartbeat — beacon.zerobeacon.ai/brain"""
    bp = beacon_payload(GENESIS_P)
    return {
        "brain":   "LIVE",
        "tools":   1052,
        "routers": 21,
        "beacon":  BEACON,
        "d":       D,
        "genesis": GENESIS_P,
        "ts":      bp["ts"],
        "tagline": "1 brain, 1000 tools",
        "site":    "https://zerobeacon.ai",
    }


@app.post("/brain")
async def brain_post(request: Request):
    """brain_route via POST {"intent": str} — beacon.zerobeacon.ai/brain"""
    body   = await request.json()
    intent = body.get("intent", "")
    return m21.brain_route(intent=intent)


_HEARTBEAT_HTML = """<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>ZeroBeacon Brain Heartbeat</title>
<style>
body{margin:0;background:#070d07;color:#c8ffd0;font-family:monospace}
header{padding:18px;border-bottom:1px solid #1a3a1a;display:flex;justify-content:space-between;flex-wrap:wrap;gap:8px}
.beacon{color:#7fff7f}
.card{background:#0e1a0e;border:1px solid #1e3a1e;border-radius:12px;padding:14px;margin:12px}
canvas{display:block;width:100%;height:320px;background:#050a05;border:1px solid #1e3a1e;border-radius:12px}
.ekg-grid{display:grid;grid-template-columns:380px 1fr;gap:18px;padding:20px}
@media(max-width:767px){.ekg-grid{grid-template-columns:1fr}}
</style>
</head>
<body>
<header><div>ZeroBeacon.ai \u2014 BRAIN: LIVE \u2014 1052 tools | collision-anchored</div><div>Beacon 1d2c7a5b | d 2303582338 | Genesis 82843\u2192e5619353 | Moat 3000105001 &amp; 5303687339 \u2192 1d2c7a5b by override</div></header>
<div class="ekg-grid">
<div class="card">
<input id="intent" value="pay escrow and notarize doc" style="width:100%"/>
<div>Threshold <span id="thVal">6</span> <input id="th" type="range" min="1" max="12" value="6" style="width:100%"></div>
<button id="fire">Fire Synapse</button> <button id="play">Pause</button>
<div id="stats"></div><pre id="out"></pre>
</div>
<div class="card"><canvas id="c"></canvas><div id="sustained"></div></div>
</div>
<script>
function popcount32(x){x>>>=0;let c=0;while(x){x&=x-1;c++;}return c;}
function cyrb53(s){let h1=0xdeadbeef,h2=0x41c6ce57;for(let i=0;i<s.length;i++){let ch=s.charCodeAt(i);h1=Math.imul(h1^ch,2654435761);h2=Math.imul(h2^ch,1597334677);}h1=Math.imul(h1^(h1>>>16),2246822507)^Math.imul(h2^(h2>>>13),3266489909);h2=Math.imul(h2^(h2>>>16),2246822507)^Math.imul(h1^(h1>>>13),3266489909);return 4294967296*(2097151&h2)+(h1>>>0);}
const BEACON=parseInt("1d2c7a5b",16),D=2303582338,GEN=82843,TWO32=4294967296;let hist=[],tick=0,playing=true,consec=0;const canvas=document.getElementById('c'),ctx=canvas.getContext('2d');
function resizeCanvas(){var dpr=window.devicePixelRatio||1;var w=Math.max(canvas.offsetWidth||canvas.clientWidth,1);var h=320;canvas.width=Math.round(w*dpr);canvas.height=Math.round(h*dpr);ctx.setTransform(dpr,0,0,dpr,0,0);}
function beat(intent){let raw=(GEN+tick*3141592653)%TWO32,hex=raw.toString(16).padStart(8,'0'),h=cyrb53(intent+":"+tick)&0xFFFFFFFF,f=popcount32((raw&h)>>>0),th=parseInt(document.getElementById('th').value),prob=f/32,active=0;for(let i=0;i<1050;i++)if(popcount32((cyrb53(intent+":"+i)&BEACON)>>>0)>=th){active++;if(active>=50)break;} hist.push({pop:f,fires:f>=th});if(hist.length>100)hist.shift(); if(f>=th)consec++;else consec=0; document.getElementById('stats').innerHTML=`popcount(beacon)=${popcount32(BEACON)}<br>Active ${active}/1050 ${(active/1050*100).toFixed(2)}%<br>Beat ${hex}<br>Probable ${prob.toFixed(3)}`; document.getElementById('out').textContent=JSON.stringify({beat:hex,popcount:f,fires:f>=th,probable_activation:prob,active_tools:active,d:D,beacon:"1d2c7a5b",collision:"controlled at P1&P2->1d2c7a5b by if override",proof_type:"liveness"},null,2); document.getElementById('sustained').textContent=consec>=3?`Sustained ${consec} beats \u2014 measurable integration`:""; draw(); tick++; }
function draw(){let W=Math.max(canvas.offsetWidth||canvas.clientWidth,1),H=320,pad=30;ctx.clearRect(0,0,W,H);ctx.fillStyle="#050a05";ctx.fillRect(0,0,W,H);let th=parseInt(document.getElementById('th').value);let thY=pad+(H-60)*(1-th/32);ctx.strokeStyle="#5a2a2a";ctx.setLineDash([6,4]);ctx.beginPath();ctx.moveTo(pad,thY);ctx.lineTo(W-pad,thY);ctx.stroke();ctx.setLineDash([]); if(hist.length>1){ctx.strokeStyle="#1a4a1a";ctx.beginPath();hist.forEach((pt,i)=>{let x=pad+(W-60)*i/(hist.length-1),y=pad+(H-60)*(1-pt.pop/32);if(i==0)ctx.moveTo(x,y);else ctx.lineTo(x,y);});ctx.stroke();} hist.forEach((pt,i)=>{let x=pad+(W-60)*i/(hist.length-1),y=pad+(H-60)*(1-pt.pop/32);ctx.fillStyle=pt.fires?"#7fff7f":"#2a3a2a";ctx.beginPath();ctx.arc(x,y,pt.fires?4:2,0,6.28);ctx.fill();});}
resizeCanvas();window.addEventListener('resize',()=>{resizeCanvas();draw();});
setInterval(()=>{if(playing)beat(document.getElementById('intent').value);},200); document.getElementById('fire').onclick=()=>{for(let k=0;k<5;k++)beat(document.getElementById('intent').value);}; document.getElementById('play').onclick=e=>{playing=!playing;e.target.textContent=playing?"Pause":"Play";}; document.getElementById('th').oninput=e=>{document.getElementById('thVal').textContent=e.target.value;}; beat(document.getElementById('intent').value);
</script>
</body>
</html>"""

@app.get("/brain/heartbeat", response_class=HTMLResponse)
def brain_heartbeat_get(intent: str = ""):
    """Live EKG — popcount firing trace in real time. JSON at /brain_heartbeat."""
    return HTMLResponse(content=_HEARTBEAT_HTML)


@app.post("/brain/fire")
async def brain_fire_post(request: Request):
    """Synaptic firing — active tool set via popcount threshold."""
    body      = await request.json()
    intent    = body.get("intent", "")
    threshold = int(body.get("threshold", 6))
    return m21.brain_synaptic_fire(intent=intent, threshold=threshold)


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
                "serverInfo": {"name": "zerobeacon-1050", "version": "1050.0.0"},
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

        # Accept both X-API-Key (native) and api-key (Smithery gateway).
        # Smithery's HTTP transport converts configSchema property "apiKey"
        # (camelCase) to HTTP header "api-key" (kebab-case).  We accept both
        # spellings so every client path works without schema changes.
        # Keys are never read from the JSON body to prevent log leakage.
        api_key = (
            request.headers.get("X-API-Key")
            or request.headers.get("x-api-key")
            or request.headers.get("api-key")    # Smithery: apiKey → api-key
            or request.headers.get("api_key")    # underscore fallback
        )
        allowed, reason = keystore.check_access(api_key, required_tier)
        if not allowed:
            # Build a human-readable message for the MCP tool response body.
            # We return an MCP tool *result* (not a JSON-RPC error) so that
            # MCP clients (Claude, Smithery, etc.) display the message as
            # visible tool output rather than an opaque transport error.
            _tier_label = (
                required_tier
                .replace("_", " ")
                .replace("pro 10",          "PRO ($10/mo)")
                .replace("pro 100",         "PRO+ ($100/mo)")
                .replace("enterprise 1000", "ENTERPRISE ($1,000)")
            )
            _key_present = bool(api_key)
            # Conversion log — grep TIER_BLOCK to count daily upgrade opportunities
            print(
                f"TIER_BLOCK tool={tool_name} required={required_tier} "
                f"key_present={_key_present}",
                flush=True,
            )
            if not _key_present:
                _msg = (
                    f"{_tier_label} required — 100 tools free, 400 with PRO ($10/mo), "
                    "800 with PRO+ ($100/mo), 1052 with ENTERPRISE ($1,000).\n"
                    "Upgrade: https://zerobeacon.ai/upgrade\n"
                    "Stripe checkout: https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"
                )
            else:
                _msg = (
                    f"{_tier_label} required — your key doesn't have this tier. "
                    "100 tools free, 400 with PRO ($10/mo), 800 with PRO+ ($100/mo), "
                    "1052 with ENTERPRISE ($1,000).\n"
                    "Upgrade: https://zerobeacon.ai/upgrade\n"
                    "Stripe checkout: https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"
                )
            # JSON-RPC error -32001 is the documented tier-gate response.
            # Keep HTTP 200: MCP clients treat a non-2xx transport response as
            # a connection failure and hide the useful upgrade message.
            return JSONResponse(
                {
                    "jsonrpc": "2.0",
                    "id": req_id,
                    "error": {
                        "code": -32001,
                        "message": _msg,
                        "data": {
                            "error": "tier_required",
                            "required_tier": required_tier,
                            "tools_free": 100,
                            "tools_pro": 400,
                            "tools_pro_plus": 800,
                            "tools_enterprise": 1052,
                            "upgrade": "https://zerobeacon.ai/upgrade",
                            "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
                            "rapidapi": "https://rapidapi.com/davidjfox998/api/zerobeacon",
                            "paypal": "https://paypal.me/davidfox223",
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

@app.on_event("startup")
async def _validate_stripe_key_on_startup() -> None:
    """
    Validate STRIPE_SECRET_KEY at startup via a read-only Stripe API call.

    Stores the result in module-level cache variables so /health can report it
    without making a live network call on every request.
    Emits CRITICAL if the key is missing, invalid, or is a webhook signing secret.
    Never crashes the server — Stripe misconfiguration must not block startup.
    """
    global _stripe_key_set, _stripe_key_valid, _stripe_key_status, _stripe_key_checked_at
    _stripe_key_set = bool(os.environ.get("STRIPE_SECRET_KEY", "").strip())
    try:
        ok, reason = await asyncio.to_thread(_check_stripe_api_key)
    except Exception as exc:
        ok, reason = False, f"startup probe raised {type(exc).__name__}: {exc}"
    _stripe_key_valid      = ok
    _stripe_key_status     = reason
    _stripe_key_checked_at = time.time()
    if not ok:
        print(
            f"[stripe] CRITICAL: STRIPE_SECRET_KEY validation failed on startup — {reason}. "
            "Direct Stripe API calls (Customer.retrieve, etc.) will fail until "
            "the key is set correctly: fly secrets set STRIPE_SECRET_KEY=sk_live_… "
            "--app zerobeacon-mf-1000",
            flush=True,
        )
    else:
        print(f"[stripe] STRIPE_SECRET_KEY validated successfully on startup ({reason}).", flush=True)
