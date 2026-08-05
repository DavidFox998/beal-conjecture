#!/usr/bin/env python3
"""
Tests that RapidAPI subscribers reach the correct ZeroBeacon tool tier
based on their X-RapidAPI-Subscription header — no zbk_ key required.

Run:
    pytest test_rapidapi_tier_gate.py -v
"""

import pytest
from pathlib import Path
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

from zerobeacon_mf_1000_main import app, RAPIDAPI_SUBSCRIPTION_TIER, _route_tier

client = TestClient(app, raise_server_exceptions=True)


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
    yield
    for p in (_TMP_KEYS, _TMP_SESS, _TMP_RESEND):
        p.unlink(missing_ok=True)


# ── helpers ───────────────────────────────────────────────────────────────────

def _rapidapi_get(path: str, subscription: str):
    """Simulate a RapidAPI gateway request with the given subscription plan."""
    return client.get(
        path,
        headers={
            "X-RapidAPI-Key":          "rapidapi-proxy-key-12345",
            "X-RapidAPI-Subscription": subscription,
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


# ── free tools accessible to all RapidAPI plans ──────────────────────────────

class TestRapidAPIFreeAccess:

    def test_basic_subscriber_can_call_free_tool(self):
        path = _first_route("/api/mf/01")
        r = _rapidapi_get(path, "BASIC")
        assert r.status_code == 200, (
            f"BASIC subscriber should reach FREE tool at {path}: {r.text}"
        )

    def test_no_zbk_key_needed_for_free_tool(self):
        """RapidAPI gateway request reaches free tools without a zbk_ key in keystore."""
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
            f"BASIC subscriber must not reach pro_10 tool at {path}: {r.text}"
        )
        body = r.json()
        assert "error" in body

    def test_pro_subscriber_blocked_from_pro_plus_tool(self):
        path = _first_route("/api/mf/09")
        r = _rapidapi_get(path, "PRO")
        assert r.status_code == 403, (
            f"PRO subscriber must not reach pro_100 tool at {path}: {r.text}"
        )


# ── ULTRA subscriber unlocks pro_100 tools (MF-09–16) ────────────────────────

class TestRapidAPIUltraAccess:

    def test_ultra_subscriber_can_call_pro_plus_tool(self):
        path = _first_route("/api/mf/09")
        r = _rapidapi_get(path, "ULTRA")
        assert r.status_code == 200, (
            f"ULTRA subscriber should reach pro_100 tool at {path}: {r.text}"
        )

    def test_ultra_subscriber_blocked_from_enterprise_tool(self):
        path = _first_route("/api/mf/17")
        r = _rapidapi_get(path, "ULTRA")
        assert r.status_code == 403, (
            f"ULTRA subscriber must not reach enterprise tool at {path}: {r.text}"
        )


# ── MEGA subscriber unlocks all 1000 tools ───────────────────────────────────

class TestRapidAPIMegaAccess:

    def test_mega_subscriber_can_call_enterprise_tool(self):
        path = _first_route("/api/mf/17")
        r = _rapidapi_get(path, "MEGA")
        assert r.status_code == 200, (
            f"MEGA subscriber should reach enterprise tool at {path}: {r.text}"
        )

    def test_mega_subscriber_can_call_pro_tool(self):
        """Higher tier grants access to all lower tier tools too."""
        path = _first_route("/api/mf/05")
        r = _rapidapi_get(path, "MEGA")
        assert r.status_code == 200, (
            f"MEGA subscriber should reach pro_10 tool at {path}: {r.text}"
        )


# ── native zbk_ key still works alongside RapidAPI header ────────────────────

class TestNativeKeyUnaffected:

    def test_zbk_pro_key_still_reaches_pro_tool(self):
        key = keystore.issue_key("pro_10", "native@example.com")
        path = _first_route("/api/mf/05")
        r = client.get(path, headers={"X-API-Key": key})
        assert r.status_code == 200, (
            f"Native zbk_ PRO key should still work: {r.text}"
        )

    def test_no_key_blocked_from_pro_tool(self):
        path = _first_route("/api/mf/05")
        r = client.get(path)
        assert r.status_code == 403


# ── unknown / missing subscription defaults to BASIC (free) ──────────────────

class TestUnknownSubscription:

    def test_unknown_plan_treated_as_free(self):
        """An unrecognised subscription name defaults to free tier."""
        path = _first_route("/api/mf/05")
        r = client.get(
            path,
            headers={
                "X-RapidAPI-Key":          "some-key",
                "X-RapidAPI-Subscription": "UNKNOWN_PLAN",
            },
        )
        assert r.status_code == 403, (
            "Unknown subscription should default to free and be blocked from pro tools"
        )

    def test_rapidapi_key_without_subscription_defaults_to_free(self):
        """X-RapidAPI-Key with no subscription header → free tier."""
        path = _first_route("/api/mf/05")
        r = client.get(
            path,
            headers={"X-RapidAPI-Key": "some-key"},
        )
        assert r.status_code == 403
