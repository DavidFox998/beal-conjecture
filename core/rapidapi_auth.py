"""
core/rapidapi_auth.py — RapidAPI gateway request verification.

RapidAPI injects three headers on every proxied request:
  X-RapidAPI-Key             — subscriber's API key (arbitrary string)
  X-RapidAPI-Subscription    — plan name (BASIC / PRO / ULTRA / MEGA)
  X-RapidAPI-Proxy-Secret    — HMAC secret you configure in the RapidAPI dashboard

Only the *proxy secret* can be used to prove a request was forwarded by
the RapidAPI gateway rather than sent directly by a user who guessed the
header names.  Both the subscription tier and the key must be ignored unless
the proxy secret is present and correct.

Configuration:
  Set RAPIDAPI_PROXY_SECRET to the same value you configure in the RapidAPI
  dashboard under your API → Security → Proxy Secret.  If the environment
  variable is absent or empty the RapidAPI path is disabled and all requests
  that arrive with X-RapidAPI-Key headers are treated as unauthenticated
  (fail closed).
"""

import hmac
import os

# ── Subscription plan → ZeroBeacon internal tier ─────────────────────────────
# Must stay in sync with RAPIDAPI_SUBSCRIPTION_TIER in zerobeacon_mf_1000_main.py

RAPIDAPI_SUBSCRIPTION_TIER: dict[str, str] = {
    "BASIC": "free",
    "PRO":   "pro_10",
    "ULTRA": "pro_100",
    "MEGA":  "enterprise_1000",
}

# ── Proxy secret (loaded once at import time) ─────────────────────────────────

_PROXY_SECRET: str = os.environ.get("RAPIDAPI_PROXY_SECRET", "").strip()


def _proxy_secret_configured() -> bool:
    return bool(_PROXY_SECRET)


def verify_rapidapi_request(
    x_rapidapi_key: str | None,
    x_rapidapi_proxy_secret: str | None,
    x_rapidapi_subscription: str | None,
) -> tuple[str | None, str]:
    """Verify an inbound RapidAPI gateway request and return its ZeroBeacon tier.

    Returns:
        (tier, reason)  — tier is a ZeroBeacon tier string on success, or None
                          on failure.  reason is a short description for logging
                          or error responses.

    Verification rules (fail closed in every edge case):
    1. No X-RapidAPI-Key header → not a RapidAPI request; return (None, "not_rapidapi").
    2. RAPIDAPI_PROXY_SECRET env var not set → RapidAPI path disabled; return (None, reason).
    3. X-RapidAPI-Proxy-Secret absent or doesn't match configured secret
       (constant-time comparison) → forged / gateway-bypassed request; return (None, reason).
    4. All checks pass → return (tier, "ok") where tier comes from the
       subscription plan (defaulting to "free" for unknown plans).
    """
    if not x_rapidapi_key:
        return None, "not_rapidapi"

    if not _proxy_secret_configured():
        return None, (
            "RAPIDAPI_PROXY_SECRET is not configured on this server; "
            "RapidAPI subscription access is disabled. "
            "Set the secret in Fly.io secrets and the RapidAPI dashboard."
        )

    if not x_rapidapi_proxy_secret:
        return None, "X-RapidAPI-Proxy-Secret header missing — request may be forged"

    # Constant-time comparison to prevent timing attacks
    if not hmac.compare_digest(
        x_rapidapi_proxy_secret.encode(),
        _PROXY_SECRET.encode(),
    ):
        return None, "X-RapidAPI-Proxy-Secret mismatch — request rejected"

    # Proxy secret validated — trust the subscription header
    plan = (x_rapidapi_subscription or "BASIC").upper()
    tier = RAPIDAPI_SUBSCRIPTION_TIER.get(plan, "free")
    return tier, "ok"
