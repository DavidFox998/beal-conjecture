#!/usr/bin/env python3
"""
Tests for validate_resend_key() and the startup / /health integration.

Unit tests (always run):
  1. Key absent        → (False, "RESEND_API_KEY is not set")
  2. Key present but invalid / expired (HTTP 401) → (False, reason)
  3. Key present but forbidden (HTTP 403)          → (False, reason)
  4. Key valid (HTTP 200)                          → (True, "ok")
  5. Non-auth HTTP error (e.g. 500)                → (False, reason)
  6. Network / timeout error                       → (False, reason)
  7. /health reports resend_api_key_valid=False with an invalid key
  8. /health reports resend_api_key_valid=True  with a valid key
  9. Startup hook emits a CRITICAL log when the key is invalid
 10. Startup hook emits a success log when the key is valid

Run all:
    pytest test_resend_key_validation.py -v

Run unit tests only:
    pytest test_resend_key_validation.py -v -m "not integration"
"""

import os
import pytest
from unittest.mock import patch, MagicMock
import urllib.error
import io

from core.emailer import validate_resend_key


# ── helpers ───────────────────────────────────────────────────────────────────

def _http_error(code: int) -> urllib.error.HTTPError:
    """Build a fake urllib HTTPError with the given code."""
    return urllib.error.HTTPError(
        url="https://api.resend.com/api-keys",
        code=code,
        msg=f"HTTP {code}",
        hdrs=None,  # type: ignore[arg-type]
        fp=io.BytesIO(b""),
    )


def _fake_200_response():
    """Context-manager mock that returns status=200."""
    mock_resp = MagicMock()
    mock_resp.__enter__ = MagicMock(return_value=mock_resp)
    mock_resp.__exit__ = MagicMock(return_value=False)
    mock_resp.status = 200
    return mock_resp


# ── validate_resend_key unit tests ────────────────────────────────────────────

class TestValidateResendKey:

    # ------------------------------------------------------------------
    # 1. Key absent
    # ------------------------------------------------------------------
    def test_key_absent_returns_false(self):
        """validate_resend_key returns False immediately when the key is not set."""
        valid, reason = validate_resend_key(api_key_env="")
        assert valid is False
        assert "not set" in reason.lower()

    def test_key_absent_via_env(self):
        """validate_resend_key checks os.environ when api_key_env is omitted."""
        env_without_key = {k: v for k, v in os.environ.items()
                           if k != "RESEND_API_KEY"}
        with patch.dict(os.environ, env_without_key, clear=True):
            valid, reason = validate_resend_key()
        assert valid is False
        assert "not set" in reason.lower()

    # ------------------------------------------------------------------
    # 2. Key present but invalid — HTTP 401
    # ------------------------------------------------------------------
    def test_invalid_key_401_returns_false(self):
        """HTTP 401 from Resend signals an invalid/expired key."""
        with patch("urllib.request.urlopen", side_effect=_http_error(401)):
            valid, reason = validate_resend_key(api_key_env="re_bad_key")
        assert valid is False
        assert "401" in reason

    # ------------------------------------------------------------------
    # 3. Key present but forbidden — HTTP 403
    # ------------------------------------------------------------------
    def test_invalid_key_403_returns_false(self):
        """HTTP 403 from Resend also signals an invalid/expired key."""
        with patch("urllib.request.urlopen", side_effect=_http_error(403)):
            valid, reason = validate_resend_key(api_key_env="re_bad_key")
        assert valid is False
        assert "403" in reason

    # ------------------------------------------------------------------
    # 4. Valid key — HTTP 200
    # ------------------------------------------------------------------
    def test_valid_key_returns_true(self):
        """HTTP 200 from Resend confirms the key is valid."""
        with patch("urllib.request.urlopen", return_value=_fake_200_response()):
            valid, reason = validate_resend_key(api_key_env="re_good_key")
        assert valid is True
        assert reason == "ok"

    # ------------------------------------------------------------------
    # 5. Non-auth HTTP error (e.g. 500 server error)
    # ------------------------------------------------------------------
    def test_server_error_500_returns_false(self):
        """A 500 from Resend returns False with the HTTP code in the reason."""
        with patch("urllib.request.urlopen", side_effect=_http_error(500)):
            valid, reason = validate_resend_key(api_key_env="re_any_key")
        assert valid is False
        assert "500" in reason

    # ------------------------------------------------------------------
    # 6. Network / timeout error
    # ------------------------------------------------------------------
    def test_network_error_returns_false(self):
        """A socket/timeout error returns False with the exception type in reason."""
        import socket
        with patch("urllib.request.urlopen",
                   side_effect=socket.timeout("timed out")):
            valid, reason = validate_resend_key(api_key_env="re_any_key")
        assert valid is False
        assert reason  # non-empty explanation


# ── /health integration ───────────────────────────────────────────────────────

# Import the app after any keystore isolation done by earlier test modules.
# We import here (not at module top) to avoid duplicate router registration.
import core.keystore as keystore
from pathlib import Path

keystore.KEY_PATH      = Path("/tmp/test_validate_api_keys.json")
keystore.SESSION_PATH  = Path("/tmp/test_validate_sessions.json")
keystore.RESEND_PATH   = Path("/tmp/test_validate_resend_attempts.json")
keystore._store        = {}
keystore._session_map  = {}
keystore._resend_store = {}

import zerobeacon_mf_1000_main as main_module
from zerobeacon_mf_1000_main import app
from fastapi.testclient import TestClient

client = TestClient(app, raise_server_exceptions=True)


@pytest.fixture(autouse=True)
def reset_state():
    keystore._store        = {}
    keystore._session_map  = {}
    keystore._resend_store = {}
    yield


class TestHealthResendValidField:

    # ------------------------------------------------------------------
    # 7. /health reports resend_api_key_valid=False for an invalid key
    # ------------------------------------------------------------------
    def test_health_reports_invalid_key(self):
        """/health must report resend_api_key_valid=False from the cache."""
        main_module._resend_key_valid  = False
        main_module._resend_key_status = "invalid or expired key (HTTP 401)"

        resp = client.get("/health")

        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "resend_api_key_valid" in body, "/health must include resend_api_key_valid"
        assert body["resend_api_key_valid"] is False
        assert "resend_api_key_status" in body
        assert "401" in body["resend_api_key_status"]

    # ------------------------------------------------------------------
    # 8. /health reports resend_api_key_valid=True for a valid key
    # ------------------------------------------------------------------
    def test_health_reports_valid_key(self):
        """/health must report resend_api_key_valid=True from the cache."""
        main_module._resend_key_valid  = True
        main_module._resend_key_status = "ok"

        resp = client.get("/health")

        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert body.get("resend_api_key_valid") is True
        assert body.get("resend_api_key_status") == "ok"

    # ------------------------------------------------------------------
    # 11. /health must NOT call validate_resend_key (no live network call)
    # ------------------------------------------------------------------
    def test_health_does_not_call_validate_resend_key(self):
        """/health reads the cache; it must never invoke validate_resend_key()."""
        main_module._resend_key_valid  = True
        main_module._resend_key_status = "ok"

        with patch("zerobeacon_mf_1000_main.validate_resend_key") as mock_validate:
            resp = client.get("/health")

        assert resp.status_code == 200, resp.text
        mock_validate.assert_not_called(), (
            "/health must not call validate_resend_key(); it should read the cache"
        )


# ── Startup hook tests ────────────────────────────────────────────────────────
# anyio is installed; use @pytest.mark.anyio to run coroutines.

class TestStartupValidation:

    # ------------------------------------------------------------------
    # 9. CRITICAL log emitted on startup when key is invalid
    # ------------------------------------------------------------------
    @pytest.mark.anyio
    async def test_startup_logs_critical_for_invalid_key(self, capsys):
        """Startup hook must emit a CRITICAL log when RESEND_API_KEY is invalid."""
        with patch("zerobeacon_mf_1000_main.validate_resend_key",
                   return_value=(False, "invalid or expired key (HTTP 401)")):
            await main_module._validate_resend_on_startup()

        captured = capsys.readouterr()
        assert "[emailer] CRITICAL:" in captured.out, (
            "Expected '[emailer] CRITICAL:' in stdout for an invalid Resend key"
        )

    # ------------------------------------------------------------------
    # 10. Success log emitted on startup when key is valid
    # ------------------------------------------------------------------
    @pytest.mark.anyio
    async def test_startup_logs_success_for_valid_key(self, capsys):
        """Startup hook must emit a success log when RESEND_API_KEY is valid."""
        with patch("zerobeacon_mf_1000_main.validate_resend_key",
                   return_value=(True, "ok")):
            await main_module._validate_resend_on_startup()

        captured = capsys.readouterr()
        assert "validated successfully" in captured.out, (
            "Expected 'validated successfully' in stdout for a valid Resend key"
        )
