#!/usr/bin/env python3
"""
Tests for POST /api/key/resend/reset — admin endpoint that clears the
per-session resend rate-limit counter.

Covered cases:
  1. ADMIN_SECRET not set in env          → 403
  2. Wrong admin_secret in request body   → 403
  3. Correct admin_secret + valid session_id → 200, counter cleared
  4. Missing session_id in body           → 400

Run:
    pytest test_admin_reset.py -v
"""

import os
import pytest
from unittest.mock import patch
from fastapi.testclient import TestClient
from pathlib import Path

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore

keystore.KEY_PATH     = Path("/tmp/test_admin_reset_api_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_admin_reset_sessions.json")
keystore.RESEND_PATH  = Path("/tmp/test_admin_reset_resend_attempts.json")
keystore._store       = {}
keystore._session_map = {}
keystore._resend_store = {}

# ── import app after patching keystore ────────────────────────────────────────
import zerobeacon_mf_1000_main as main_module
from zerobeacon_mf_1000_main import app

client = TestClient(app, raise_server_exceptions=True)

_GOOD_SECRET = "test-admin-secret-xyz"
_GOOD_SESSION = "cs_live_test123"


# ── helpers ───────────────────────────────────────────────────────────────────

def _reset(body: dict, admin_secret_env: str | None = _GOOD_SECRET):
    """Call the reset endpoint with the given body.

    `admin_secret_env` is the value ADMIN_SECRET is set to in the environment
    for the duration of the call.  Pass None to simulate the env var being
    absent.
    """
    if admin_secret_env is None:
        env_patch = {k: v for k, v in os.environ.items() if k != "ADMIN_SECRET"}
        clear = True
    else:
        env_patch = {"ADMIN_SECRET": admin_secret_env}
        clear = False

    with patch.dict(os.environ, env_patch, clear=clear):
        return client.post("/api/key/resend/reset", json=body)


# ── fixtures ──────────────────────────────────────────────────────────────────

@pytest.fixture(autouse=True)
def reset_state():
    """Reset keystore and rate-limit counters before every test."""
    keystore._store        = {}
    keystore._session_map  = {}
    keystore._resend_store = {}
    yield


# ── tests ─────────────────────────────────────────────────────────────────────

class TestAdminReset:

    # ------------------------------------------------------------------
    # 1. ADMIN_SECRET not set → 403
    # ------------------------------------------------------------------
    def test_missing_admin_secret_env_returns_403(self):
        """If ADMIN_SECRET is absent from the environment all callers must be
        rejected with 403 regardless of what they pass in the body."""
        resp = _reset(
            {"session_id": _GOOD_SESSION, "admin_secret": "anything"},
            admin_secret_env=None,
        )
        assert resp.status_code == 403, resp.text
        assert "error" in resp.json()

    # ------------------------------------------------------------------
    # 1b. ADMIN_SECRET not set → WARNING log emitted
    # ------------------------------------------------------------------
    def test_missing_admin_secret_emits_warning_log(self, capsys):
        """When ADMIN_SECRET is absent a WARNING message must appear in stdout
        so a misconfigured deployment is visible in server logs."""
        _reset(
            {"session_id": _GOOD_SESSION, "admin_secret": "anything"},
            admin_secret_env=None,
        )
        captured = capsys.readouterr()
        assert "WARNING" in captured.out, (
            "Expected a WARNING log line in stdout when ADMIN_SECRET is absent; "
            f"got: {captured.out!r}"
        )
        assert "ADMIN_SECRET" in captured.out, (
            "WARNING log must mention ADMIN_SECRET so operators know what to fix; "
            f"got: {captured.out!r}"
        )

    # ------------------------------------------------------------------
    # 2. Wrong admin_secret in body → 403
    # ------------------------------------------------------------------
    def test_wrong_admin_secret_returns_403(self):
        """A caller who guesses the wrong secret must be rejected with 403."""
        resp = _reset(
            {"session_id": _GOOD_SESSION, "admin_secret": "wrong-secret"},
            admin_secret_env=_GOOD_SECRET,
        )
        assert resp.status_code == 403, resp.text
        assert "error" in resp.json()

    # ------------------------------------------------------------------
    # 3. Correct admin_secret + valid session_id → 200, counter cleared
    # ------------------------------------------------------------------
    def test_correct_secret_and_session_returns_200_and_clears_counter(self):
        """With the correct secret and a known session_id the endpoint must
        return 200 and report the previous attempt count."""
        # Seed a non-zero counter directly so we can verify it is cleared
        import time as _time
        keystore._resend_store[_GOOD_SESSION] = [2, _time.time()]

        resp = _reset(
            {"session_id": _GOOD_SESSION, "admin_secret": _GOOD_SECRET},
            admin_secret_env=_GOOD_SECRET,
        )

        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert body.get("ok") is True
        assert body.get("session_id") == _GOOD_SESSION
        assert body.get("attempts_cleared") == 2, (
            "attempts_cleared must reflect the count that was in the dict before reset"
        )

        # Counter must be gone so the customer can resend again
        assert _GOOD_SESSION not in keystore._resend_store, (
            "Rate-limit entry must be removed from _resend_store after reset"
        )

    # ------------------------------------------------------------------
    # 4. Missing session_id in body → 400
    # ------------------------------------------------------------------
    def test_missing_session_id_returns_400(self):
        """Omitting session_id from an otherwise valid request must return 400."""
        resp = _reset(
            {"admin_secret": _GOOD_SECRET},
            admin_secret_env=_GOOD_SECRET,
        )
        assert resp.status_code == 400, resp.text
        body = resp.json()
        assert "error" in body
        assert "session_id" in body["error"].lower()
