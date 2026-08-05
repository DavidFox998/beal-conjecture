#!/usr/bin/env python3
"""
Tests that RapidAPI subscribers reach the correct ZeroBeacon tool tier
based on their X-RapidAPI-Subscription header — validated against the
X-RapidAPI-Proxy-Secret so forged headers cannot bypass tier checks.

Run:
    pytest test_rapidapi_tier_gate.py -v
"""

import pytest
from pathlib import Path
from unittest.mock import patch
from fastapi.testclient import TestClient

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore

_TMP_KEYS   = Path("/tmp/test_rapidapi_keys.json")
_TMP_SESS   = Path("/tmp/test_rapidapi_sessions.json")
_TMP_RESEND = Path("/tmp/test_rapidapi_resend.json")

keystore.KEY_PATH     = _TMP_KEYS
keystore.SESSION_PATH = _TMP_SESS
keystore.RESEND_PATH  = _TMP_RESEND
keystore._store        = {}
keystore._session_map  = {}
keystore._resend_store = {}

import core.rapidapi_auth as rapidapi_auth
from zerobeacon_mf_1000_main import app, _route_tier
from core.rapidapi_auth import RAPIDAPI_SUBSCRIPTION_TIER

client = TestClient(app, raise_server_exceptions=True)

_TEST_PROXY_SECRET = "test-proxy-secret-abc123"


@pytest.fixture(autouse=True)
def clean_state():
    keystore.KEY_PATH     = _TMP_KEYS
    keystore.SESSION_PATH = _TMP_SESS
    keystore.RESEND_PATH  = _TMP_RESEND
    keystore._store        = {}
    keystore._session_map  = {}
    keystore._resend_store = {}
    keystore._resend_store_valid = True
    for p in (_TMP_KEYS, _TMP_SESS, _TMP_RESEND):
        p.unlink(missing_ok=True)
    # Patch the proxy secret for every test
    with patch.object(rapidapi_auth, "_PROXY_SECRET", _TEST_PROXY_SECRET):
        yield
    for p in (_TMP_KEYS, _TMP_SESS, _TMP_RESEND):
        p.unlink(missing_ok=True)


# ── helpers ───────────────────────────────────────────────────────────────────

def _rapidapi_get(path: str, subscription: str, proxy_secret: str = _TEST_PROXY_SECRET):
    """Simulate a RapidAPI gateway request with the given subscription plan."""
    return client.get(
        path,
        headers={
            "X-RapidAPI-Key":          "rapidapi-proxy-key-12345",
            "X-RapidAPI-Subscription": subscription,
            "X-RapidAPI-Proxy-Secret": proxy_secret,
            "X-RapidAPI-Host":         "zerobeacon-ai.p.rapidapi.com",
        },
    )


def _first_route(prefix: str) -> str:
    """Return the first concrete route path under a given MF prefix."""
    for path in _route_tier:
        if path.startswith(prefix + "/"):
            return path
    raise RuntimeError(f"No routes found under {prefix}")


# ── subscription → tier mapping table ────────────────────────────────────────

class TestSubscriptionTierMap:

    def test_basic_maps_to_free(self):
        assert RAPIDAPI_SUBSCRIPTION_TIER["BASIC"] == "free"

    def test_pro_maps_to_pro_10(self):
        assert RAPIDAPI_SUBSCRIPTION_TIER["PRO"] == "pro_10"

    def test_ultra_maps_to_pro_100(self):
        assert RAPIDAPI_SUBSCRIPTION_TIER["ULTRA"] == "pro_100"

    def test_mega_maps_to_enterprise(self):
        assert RAPIDAPI_SUBSCRIPTION_TIER["MEGA"] == "enterprise_1000"


# ── proxy secret validation (security) ───────────────────────────────────────

class TestProxySecretValidation:

    def test_verified_request_granted(self):
        """Correct proxy secret + PRO subscription reaches a pro_10 tool."""
        path = _first_route("/api/mf/05")
        r = _rapidapi_get(path, "PRO", proxy_secret=_TEST_PROXY_SECRET)
        assert r.status_code == 200, (
            f"Verified RapidAPI PRO request should be granted: {r.text}"
        )

    def test_wrong_proxy_secret_rejected(self):
        """A wrong proxy secret must be rejected even if subscription is MEGA."""
        path = _first_route("/api/mf/05")
        r = _rapidapi_get(path, "MEGA", proxy_secret="wrong-secret")
        assert r.status_code == 403, (
            f"Wrong proxy secret must not grant access: {r.text}"
        )

    def test_missing_proxy_secret_rejected(self):
        """Forged headers without proxy secret must be rejected."""
        path = _first_route("/api/mf/05")
        r = client.get(
            path,
            headers={
                "X-RapidAPI-Key":          "forged-key",
                "X-RapidAPI-Subscription": "MEGA",
                # No X-RapidAPI-Proxy-Secret
            },
        )
        assert r.status_code == 403, (
            f"Missing proxy secret must not grant subscription access: {r.text}"
        )

    def test_no_proxy_secret_configured_fails_closed(self):
        """If RAPIDAPI_PROXY_SECRET env var is not set, all RapidAPI tier grants are blocked."""
        path = _first_route("/api/mf/05")
        with patch.object(rapidapi_auth, "_PROXY_SECRET", ""):
            r = _rapidapi_get(path, "MEGA", proxy_secret=_TEST_PROXY_SECRET)
        assert r.status_code == 403, (
            f"Unconfigured proxy secret must fail closed: {r.text}"
        )

    def test_forged_mega_subscription_without_secret_blocked(self):
        """Full forge attempt: MEGA subscription + no proxy secret → 403."""
        path = _first_route("/api/mf/17")
        r = client.get(
            path,
            headers={
                "X-RapidAPI-Key":          "attacker-key",
                "X-RapidAPI-Subscription": "MEGA",
            },
        )
        assert r.status_code == 403, (
            "Forged MEGA tier without proxy secret must not reach enterprise tools"
        )


# ── free tools accessible to all valid RapidAPI plans ────────────────────────

class TestRapidAPIFreeAccess:

    def test_basic_subscriber_can_call_free_tool(self):
        path = _first_route("/api/mf/01")
        r = _rapidapi_get(path, "BASIC")
        assert r.status_code == 200, (
            f"BASIC subscriber should reach FREE tool at {path}: {r.text}"
        )

    def test_no_zbk_key_needed_for_free_tool(self):
        """Verified RapidAPI gateway request reaches free tools without a zbk_ key."""
        path = _first_route("/api/mf/01")
        assert len(keystore._store) == 0, "keystore must be empty for this test"
        r = _rapidapi_get(path, "BASIC")
        assert r.status_code == 200


# ── PRO subscriber unlocks pro_10 tools (MF-03–08) ───────────────────────────

class TestRapidAPIProAccess:

    def test_pro_subscriber_can_call_pro_tool(self):
        path = _first_route("/api/mf/05")
        r = _rapidapi_get(path, "PRO")
        assert r.status_code == 200, (
            f"PRO subscriber should reach pro_10 tool at {path}: {r.text}"
        )

    def test_basic_subscriber_blocked_from_pro_tool(self):
        path = _first_route("/api/mf/05")
        r = _rapidapi_get(path, "BASIC")
        assert r.status_code == 403, (
            f"BASIC subscriber must not reach pro_10 tool: {r.text}"
        )

    def test_pro_subscriber_blocked_from_pro_plus_tool(self):
        path = _first_route("/api/mf/09")
        r = _rapidapi_get(path, "PRO")
        assert r.status_code == 403, (
            f"PRO subscriber must not reach pro_100 tool: {r.text}"
        )


# ── ULTRA subscriber unlocks pro_100 tools (MF-09–16) ────────────────────────

class TestRapidAPIUltraAccess:

    def test_ultra_subscriber_can_call_pro_plus_tool(self):
        path = _first_route("/api/mf/09")
        r = _rapidapi_get(path, "ULTRA")
        assert r.status_code == 200, (
            f"ULTRA subscriber should reach pro_100 tool: {r.text}"
        )

    def test_ultra_subscriber_blocked_from_enterprise_tool(self):
        path = _first_route("/api/mf/17")
        r = _rapidapi_get(path, "ULTRA")
        assert r.status_code == 403, (
            f"ULTRA subscriber must not reach enterprise tool: {r.text}"
        )


# ── MEGA subscriber unlocks all 1000 tools ───────────────────────────────────

class TestRapidAPIMegaAccess:

    def test_mega_subscriber_can_call_enterprise_tool(self):
        path = _first_route("/api/mf/17")
        r = _rapidapi_get(path, "MEGA")
        assert r.status_code == 200, (
            f"MEGA subscriber should reach enterprise tool: {r.text}"
        )

    def test_mega_subscriber_can_call_pro_tool(self):
        path = _first_route("/api/mf/05")
        r = _rapidapi_get(path, "MEGA")
        assert r.status_code == 200, (
            f"MEGA subscriber should reach pro_10 tool too: {r.text}"
        )


# ── native zbk_ key still works alongside RapidAPI infrastructure ─────────────

class TestNativeKeyUnaffected:

    def test_zbk_pro_key_still_reaches_pro_tool(self):
        key = keystore.issue_key("pro_10", "native@example.com")
        path = _first_route("/api/mf/05")
        r = client.get(path, headers={"X-API-Key": key})
        assert r.status_code == 200, f"Native zbk_ PRO key should still work: {r.text}"

    def test_no_key_blocked_from_pro_tool(self):
        path = _first_route("/api/mf/05")
        r = client.get(path)
        assert r.status_code == 403


# ── unknown / missing subscription defaults to BASIC (free) ──────────────────

class TestUnknownSubscription:

    def test_unknown_plan_treated_as_free(self):
        """Unrecognised plan name defaults to free tier → blocked from pro tools."""
        path = _first_route("/api/mf/05")
        r = client.get(
            path,
            headers={
                "X-RapidAPI-Key":          "some-key",
                "X-RapidAPI-Proxy-Secret": _TEST_PROXY_SECRET,
                "X-RapidAPI-Subscription": "UNKNOWN_PLAN",
            },
        )
        assert r.status_code == 403

    def test_rapidapi_key_without_subscription_defaults_to_free(self):
        """No subscription header → BASIC → blocked from pro tools."""
        path = _first_route("/api/mf/05")
        r = client.get(
            path,
            headers={
                "X-RapidAPI-Key":          "some-key",
                "X-RapidAPI-Proxy-Secret": _TEST_PROXY_SECRET,
            },
        )
        assert r.status_code == 403
