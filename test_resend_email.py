#!/usr/bin/env python3
"""
Tests for POST /api/key/resend — covers four endpoint branches plus an
optional live-delivery integration test.

Unit tests (always run):
  1. valid session_id → 200 + confirmation JSON; emailer called with correct args
  2. unknown session_id → 404
  3. fourth attempt on the same session_id → 429 (rate-limited)
  4. email send failure when RESEND_API_KEY is absent → 503 + api_key in response
  5. missing session_id body field → 400

Integration test (runs only when RESEND_API_KEY is set in the environment):
  6. real Resend API call succeeds (provider acceptance: HTTP 200/201)

Run all:
    pytest test_resend_email.py -v

Run unit tests only (skip live delivery):
    pytest test_resend_email.py -v -m "not integration"

Run live integration test only:
    pytest test_resend_email.py -v -m integration
"""

import os
import pytest
from unittest.mock import patch, MagicMock
from fastapi.testclient import TestClient
from pathlib import Path

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore

keystore.KEY_PATH     = Path("/tmp/test_resend_api_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_resend_sessions.json")
keystore.RESEND_PATH  = Path("/tmp/test_resend_resend_attempts.json")
keystore._store       = {}
keystore._session_map = {}
keystore._resend_store = {}

# ── import app after patching keystore ────────────────────────────────────────
import zerobeacon_mf_1000_main as main_module
from zerobeacon_mf_1000_main import app, _RESEND_MAX_ATTEMPTS

client = TestClient(app, raise_server_exceptions=True)


# ── helpers ───────────────────────────────────────────────────────────────────

def _issue(session_id: str,
           tier: str = "pro_10",
           email: str = "customer@example.com") -> str:
    """Issue a test key bound to a Stripe session_id (no network calls)."""
    return keystore.issue_key(tier, email, session_id=session_id)


def _resend(session_id: str):
    return client.post("/api/key/resend", json={"session_id": session_id})


# ── fixtures ──────────────────────────────────────────────────────────────────

@pytest.fixture(autouse=True)
def reset_state():
    """Reset keystore and rate-limit counters before every test."""
    keystore._store        = {}
    keystore._session_map  = {}
    keystore._resend_store = {}
    yield


# ── unit tests ────────────────────────────────────────────────────────────────

class TestResendEmailUnit:

    # ------------------------------------------------------------------
    # 1. Valid session_id → 200, emailer called with exact args
    # ------------------------------------------------------------------
    def test_valid_session_returns_200_and_calls_emailer_correctly(self):
        """200 on success; emailer must receive the exact recipient, key, tier."""
        issued_key = _issue("cs_good", tier="pro_10", email="user@example.com")

        mock_send = MagicMock(return_value=True)
        with patch("zerobeacon_mf_1000_main.send_api_key_email", mock_send):
            resp = _resend("cs_good")

        assert resp.status_code == 200, resp.text
        body = resp.json()

        # Confirm response shape
        assert body.get("ok") is True
        assert "user@example.com" in body.get("message", "")
        assert body.get("tier") == "pro_10"
        assert "tier_label" in body
        assert body["attempts_remaining"] == _RESEND_MAX_ATTEMPTS - 1

        # Confirm the emailer was called with the exact right arguments
        mock_send.assert_called_once_with(
            email="user@example.com",
            api_key=issued_key,
            tier="pro_10",
        )

    # ------------------------------------------------------------------
    # 2. Unknown session_id → 404
    # ------------------------------------------------------------------
    def test_unknown_session_returns_404(self):
        """A session_id with no matching API key must return 404."""
        resp = _resend("cs_does_not_exist")
        assert resp.status_code == 404, resp.text
        assert "error" in resp.json()

    # ------------------------------------------------------------------
    # 3. Fourth attempt → 429
    # ------------------------------------------------------------------
    def test_rate_limit_returns_429_on_fourth_attempt(self):
        """After _RESEND_MAX_ATTEMPTS successes the next call must be 429."""
        _issue("cs_rl")

        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            for attempt in range(_RESEND_MAX_ATTEMPTS):
                r = _resend("cs_rl")
                assert r.status_code == 200, \
                    f"attempt {attempt + 1} expected 200, got {r.status_code}: {r.text}"

        # Fourth attempt must be rate-limited
        r = _resend("cs_rl")
        assert r.status_code == 429, r.text
        assert "error" in r.json()

    # ------------------------------------------------------------------
    # 4. Email failure when RESEND_API_KEY is absent → 503 + api_key in body
    # ------------------------------------------------------------------
    def test_email_failure_without_resend_key_returns_503_with_api_key(self):
        """503 is returned when RESEND_API_KEY is absent; api_key must be in
        the response so the customer is never locked out."""
        issued_key = _issue("cs_nokey", email="user@example.com")

        # Remove RESEND_API_KEY from the environment to exercise the real
        # "key absent" branch in send_api_key_email — no mocking needed.
        env_without_key = {k: v for k, v in os.environ.items()
                           if k != "RESEND_API_KEY"}
        with patch.dict(os.environ, env_without_key, clear=True):
            resp = _resend("cs_nokey")

        assert resp.status_code == 503, resp.text
        body = resp.json()
        assert "error" in body
        assert body.get("api_key") == issued_key, \
            "api_key must be present in 503 body so the customer is not locked out"

    # ------------------------------------------------------------------
    # 5. Missing session_id field → 400
    # ------------------------------------------------------------------
    def test_missing_session_id_returns_400(self):
        """Omitting session_id in the JSON body must return 400."""
        resp = client.post("/api/key/resend", json={})
        assert resp.status_code == 400, resp.text

    # ------------------------------------------------------------------
    # 6. CRITICAL log emitted when RESEND_API_KEY is absent
    # ------------------------------------------------------------------
    def test_critical_log_emitted_when_resend_key_absent(self, capsys):
        """When RESEND_API_KEY is absent send_api_key_email must print a
        CRITICAL log line so ops can grep/alert on it."""
        from core.emailer import send_api_key_email

        env_without_key = {k: v for k, v in os.environ.items()
                           if k != "RESEND_API_KEY"}
        with patch.dict(os.environ, env_without_key, clear=True):
            result = send_api_key_email(
                email="test@example.com",
                api_key="zbk_test_key",
                tier="pro_10",
            )

        assert result is False
        captured = capsys.readouterr()
        assert "[emailer] CRITICAL:" in captured.out, (
            "Expected '[emailer] CRITICAL:' in stdout when RESEND_API_KEY is absent"
        )

    # ------------------------------------------------------------------
    # 7. /health endpoint reports RESEND_API_KEY status
    # ------------------------------------------------------------------
    def test_health_reports_resend_key_absent(self):
        """/health must report resend_api_key_set=False when key is absent."""
        env_without_key = {k: v for k, v in os.environ.items()
                           if k != "RESEND_API_KEY"}
        with patch.dict(os.environ, env_without_key, clear=True):
            resp = client.get("/health")

        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "resend_api_key_set" in body, "/health must include resend_api_key_set"
        assert body["resend_api_key_set"] is False

    def test_health_reports_resend_key_present(self):
        """/health must report resend_api_key_set=True when key is set."""
        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test_key"}, clear=False):
            resp = client.get("/health")

        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert body.get("resend_api_key_set") is True


# ── integration test (live Resend API) ────────────────────────────────────────

_RESEND_KEY_SET      = bool(os.environ.get("RESEND_API_KEY", "").strip())
_RESEND_RECIPIENT    = os.environ.get("RESEND_TEST_RECIPIENT", "").strip()
_INTEGRATION_ENABLED = _RESEND_KEY_SET and bool(_RESEND_RECIPIENT)

_SKIP_REASON = (
    "Live Resend integration test requires both RESEND_API_KEY and "
    "RESEND_TEST_RECIPIENT env vars to be set.  "
    "Example: RESEND_TEST_RECIPIENT=you@yourdomain.com pytest test_resend_email.py -m integration"
)


@pytest.mark.integration
@pytest.mark.skipif(not _INTEGRATION_ENABLED, reason=_SKIP_REASON)
class TestResendEmailIntegration:
    """
    Sends a real email through Resend and verifies provider acceptance.

    Opt-in: set RESEND_API_KEY *and* RESEND_TEST_RECIPIENT before running.
    RESEND_TEST_RECIPIENT must be an address your Resend account is authorised
    to send to (verified address, or any address on a verified domain).

    This proves:
      - RESEND_API_KEY is valid and accepted by the provider
      - The request body built by send_api_key_email is well-formed
      - The provider returns HTTP 200/201 (accepted for delivery)
    """

    def test_live_resend_accepts_email(self):
        """Real Resend API call: provider must accept the email (HTTP 200/201)."""
        from core.emailer import send_api_key_email

        result = send_api_key_email(
            email=_RESEND_RECIPIENT,
            api_key="zbk_integration_test_key",
            tier="pro_10",
        )
        assert result is True, (
            f"send_api_key_email returned False for {_RESEND_RECIPIENT!r} — "
            "Resend rejected the request. "
            "Check that RESEND_API_KEY is valid and that EMAIL_FROM is an "
            "address/domain verified in your Resend account."
        )

    def test_resend_endpoint_200_when_live_key_present(self):
        """Full stack: /api/key/resend returns 200 when the real Resend API accepts."""
        _issue("cs_live_integration", email=_RESEND_RECIPIENT, tier="pro_10")

        resp = _resend("cs_live_integration")

        assert resp.status_code == 200, (
            f"Expected 200 from /api/key/resend with live RESEND_API_KEY, "
            f"got {resp.status_code}: {resp.text}"
        )
        body = resp.json()
        assert body.get("ok") is True
        assert body.get("tier") == "pro_10"
