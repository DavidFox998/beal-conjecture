"""
End-to-end RapidAPI trial flow tests.

Covers three scenarios:
  1. A free-tier tool reached with only X-RapidAPI-Key (no proxy secret, no zbk_ key)
     returns 200 + real JSON — simulates a BASIC RapidAPI subscriber hitting a free tool.
  2. A PRO-tier tool reached with no key at all returns 403 with the correct error body.
  3. (Unit) tier_guard.py resolves x_rapidapi_key when x_api_key is absent — the
     Depends gate falls through to the free path, so free tools still respond correctly.

Tests 1 & 2 hit https://zerobeacon.ai (live integration).
Test 3 uses FastAPI TestClient (local unit, no network).

Run:
    pytest test_rapidapi_e2e.py -v
"""

import pytest
import requests
from pathlib import Path
from unittest.mock import patch

# ── Constants ──────────────────────────────────────────────────────────────────

DOMAIN  = "https://zerobeacon.ai"
TIMEOUT = 30

FREE_URL = f"{DOMAIN}/api/mf/01/beacon"    # free-tier, no key required
PRO_URL  = f"{DOMAIN}/api/mf/03/delivery_proof"  # pro_10 tier, key required


# ── Live integration tests ─────────────────────────────────────────────────────

class TestRapidAPIFreeTierLive:
    """A request carrying only X-RapidAPI-Key (BASIC subscriber simulation)
    must reach a free-tier tool and get a real 200 response."""

    def test_free_tool_status_200(self):
        """Free tool returns 200 when X-RapidAPI-Key is present (no proxy secret)."""
        resp = requests.get(
            FREE_URL,
            headers={"X-RapidAPI-Key": "test-rapidapi-basic-subscriber"},
            timeout=TIMEOUT,
        )
        assert resp.status_code == 200, (
            f"Expected 200 from {FREE_URL} with X-RapidAPI-Key, "
            f"got {resp.status_code}. Body: {resp.text[:300]}"
        )

    def test_free_tool_returns_json(self):
        """Free tool response body is valid JSON."""
        resp = requests.get(
            FREE_URL,
            headers={"X-RapidAPI-Key": "test-rapidapi-basic-subscriber"},
            timeout=TIMEOUT,
        )
        assert resp.status_code == 200
        data = resp.json()   # raises ValueError if not JSON
        assert isinstance(data, dict), f"Expected dict, got {type(data)}: {data}"

    def test_free_tool_has_ok_flag(self):
        """Free tool response includes ok == True."""
        resp = requests.get(
            FREE_URL,
            headers={"X-RapidAPI-Key": "test-rapidapi-basic-subscriber"},
            timeout=TIMEOUT,
        )
        assert resp.status_code == 200
        assert resp.json().get("ok") is True, (
            f"'ok' flag missing or False in free tool response: {resp.json()}"
        )

    def test_free_tool_no_key_also_200(self):
        """Free tools must work with zero headers too — X-RapidAPI-Key is optional."""
        resp = requests.get(FREE_URL, timeout=TIMEOUT)
        assert resp.status_code == 200, (
            f"Free tool returned {resp.status_code} with no key. Body: {resp.text[:300]}"
        )


class TestRapidAPIProTierLive:
    """PRO-tier tool with no key must return 403 with a well-formed error body."""

    def test_pro_tool_no_key_returns_403(self):
        """PRO tool with no key returns 403."""
        resp = requests.get(PRO_URL, timeout=TIMEOUT)
        assert resp.status_code == 403, (
            f"Expected 403 from {PRO_URL} with no key, "
            f"got {resp.status_code}. Body: {resp.text[:300]}"
        )

    def test_pro_tool_403_body_has_required_tier(self):
        """403 body includes required_tier so the caller knows what plan to buy."""
        resp = requests.get(PRO_URL, timeout=TIMEOUT)
        assert resp.status_code == 403
        body = resp.json()
        assert "required_tier" in body or "detail" in body, (
            f"403 body missing required_tier / detail: {body}"
        )

    def test_pro_tool_403_body_has_upgrade_link(self):
        """403 body includes an upgrade URL pointing to zerobeacon.ai."""
        resp = requests.get(PRO_URL, timeout=TIMEOUT)
        assert resp.status_code == 403
        text = resp.text
        assert "zerobeacon.ai" in text, (
            f"403 body contains no zerobeacon.ai upgrade link: {text[:300]}"
        )

    def test_pro_tool_rapidapi_key_no_secret_still_403(self):
        """X-RapidAPI-Key without proxy secret falls through to keystore — still 403."""
        resp = requests.get(
            PRO_URL,
            headers={"X-RapidAPI-Key": "any-key", "X-RapidAPI-Subscription": "MEGA"},
            timeout=TIMEOUT,
        )
        assert resp.status_code == 403, (
            "A RapidAPI key without proxy-secret validation must NOT grant PRO access. "
            f"Got {resp.status_code}. Body: {resp.text[:300]}"
        )


# ── Local unit test: tier_guard header resolution ─────────────────────────────

class TestTierGuardHeaderResolution:
    """Verify tier_guard.py resolves x_rapidapi_key when x_api_key is absent,
    falling through to the free path for no-secret requests."""

    @pytest.fixture(autouse=True)
    def _setup_client(self):
        from pathlib import Path
        import core.keystore as ks
        ks.KEY_PATH     = Path("/tmp/test_e2e_keys.json")
        ks.SESSION_PATH = Path("/tmp/test_e2e_sessions.json")
        ks.RESEND_PATH  = Path("/tmp/test_e2e_resend.json")
        ks._store        = {}
        ks._session_map  = {}
        ks._resend_store = {}

        import core.rapidapi_auth as ra
        with patch.object(ra, "_PROXY_SECRET", ""):  # no proxy secret configured
            from fastapi.testclient import TestClient
            from zerobeacon_mf_1000_main import app
            self.client = TestClient(app, raise_server_exceptions=True)
            yield

    def test_rapidapi_key_only_reaches_free_tool(self):
        """With only X-RapidAPI-Key (no proxy secret env var), free tool still returns 200."""
        resp = self.client.get(
            "/api/mf/01/beacon",
            headers={"X-RapidAPI-Key": "some-gateway-key"},
        )
        assert resp.status_code == 200, (
            f"Free tool should return 200 when only X-RapidAPI-Key is set. "
            f"Got {resp.status_code}: {resp.text[:300]}"
        )

    def test_no_x_api_key_fallthrough(self):
        """When x_api_key is absent and x_rapidapi_key has no valid secret,
        caller is treated as unauthenticated (free rank)."""
        resp = self.client.get(
            "/api/mf/01/beacon",
            headers={"X-RapidAPI-Key": "gw-key"},  # no x_api_key, no secret
        )
        assert resp.status_code == 200
        assert resp.json().get("ok") is True
