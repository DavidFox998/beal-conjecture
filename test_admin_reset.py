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


# ── End-to-end: exhaust → reset → resend succeeds ─────────────────────────────

_E2E_SESSION = "cs_live_e2e_lockout_test"


class TestAdminResetEndToEnd:
    """
    Verify the full lockout-then-unlock flow:
      1. Customer exhausts the resend rate limit (3 attempts → 429).
      2. Admin calls /api/key/resend/reset.
      3. Customer can POST /api/key/resend again and gets 200.

    Uses the real in-memory keystore (isolated by the module-level path
    overrides) so every step exercises the actual keystore logic, not mocks.
    """

    @pytest.fixture(autouse=True)
    def setup_customer_key(self):
        """Issue a real key bound to _E2E_SESSION before each test."""
        keystore._store        = {}
        keystore._session_map  = {}
        keystore._resend_store = {}
        # Issue a real key so lookup_by_session and lookup both work.
        keystore.issue_key("pro_10", "customer@example.com",
                           session_id=_E2E_SESSION)
        yield

    def _resend(self, mock_email_return: bool = True):
        """POST /api/key/resend for _E2E_SESSION with email delivery mocked."""
        from unittest.mock import patch
        with patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=mock_email_return):
            return client.post("/api/key/resend",
                               json={"session_id": _E2E_SESSION})

    def test_exhaust_then_reset_then_resend_succeeds(self):
        """
        Full end-to-end:
        - 3 resend calls consume all attempts (each returns 200).
        - 4th call is rate-limited (429).
        - Admin reset clears the counter.
        - 5th call succeeds (200) — customer is genuinely unblocked.
        """
        # ── Step 1: exhaust all 3 allowed attempts ────────────────────────────
        for attempt in range(1, 4):
            resp = self._resend()
            assert resp.status_code == 200, (
                f"Attempt {attempt}/3 should succeed; got {resp.status_code}: {resp.text}"
            )

        # ── Step 2: 4th attempt must be rate-limited ──────────────────────────
        resp = self._resend()
        assert resp.status_code == 429, (
            f"4th attempt should be 429 (rate-limited); got {resp.status_code}: {resp.text}"
        )

        # ── Step 3: admin resets the counter ──────────────────────────────────
        reset_resp = _reset(
            {"session_id": _E2E_SESSION, "admin_secret": _GOOD_SECRET},
            admin_secret_env=_GOOD_SECRET,
        )
        assert reset_resp.status_code == 200, (
            f"Reset should return 200; got {reset_resp.status_code}: {reset_resp.text}"
        )
        assert reset_resp.json().get("ok") is True

        # ── Step 4: customer can resend again after the reset ─────────────────
        resp = self._resend()
        assert resp.status_code == 200, (
            "Customer should be unblocked after admin reset, but /api/key/resend "
            f"returned {resp.status_code}: {resp.text}"
        )
        body = resp.json()
        assert body.get("ok") is True, (
            f"Response body after reset-then-resend should have ok=True: {body}"
        )

    def test_expired_counter_resets_automatically_after_24_hours(self):
        """
        Verify that the 24-hour TTL eviction in resend_get() works end-to-end:

        - A resend counter entry is seeded with attempt_count=3 (exhausted)
          and a first_attempt timestamp that is > 86 400 s in the past.
        - POST /api/key/resend is called without any admin intervention.
        - The endpoint must return 200 (not 429) because the TTL has elapsed
          and the expired entry is treated as 0 prior attempts.

        This proves the rate-limit resets automatically after 24 hours so
        locked-out customers do not need admin help once a full day has passed.
        """
        import time as _time

        # ── Step 1: seed an exhausted-but-expired counter ────────────────────
        expired_ts = _time.time() - 86_401   # just over 24 hours ago
        keystore._resend_store[_E2E_SESSION] = [3, expired_ts]

        # Sanity-check: without TTL eviction this would be 429
        assert keystore._resend_store[_E2E_SESSION][0] == 3, (
            "Pre-condition: counter should show 3 attempts before the call"
        )

        # ── Step 2: call the resend endpoint (no admin reset) ─────────────────
        resp = self._resend()

        # ── Step 3: must succeed — expired counter evicted → 0 attempts ───────
        assert resp.status_code == 200, (
            "POST /api/key/resend should return 200 after the 24-hour TTL "
            f"has elapsed (expired counter must be auto-evicted), "
            f"but got {resp.status_code}: {resp.text}"
        )
        body = resp.json()
        assert body.get("ok") is True, (
            f"Response body should have ok=True after TTL eviction: {body}"
        )

        # ── Step 4: confirm the old expired entry is gone from the store ──────
        # The new entry (from the successful resend above) has count=1 and a
        # fresh timestamp; the old [3, expired_ts] entry must not exist.
        entry = keystore._resend_store.get(_E2E_SESSION)
        if entry is not None:
            _count, _ts = entry
            assert _ts > expired_ts, (
                "The resend store entry's timestamp must be newer than the "
                "expired timestamp — the old entry must have been evicted "
                f"and replaced. Got ts={_ts}, expired_ts={expired_ts}"
            )
            assert _count < 3, (
                f"After TTL eviction the attempt count must have restarted "
                f"from 0 (now 1 after the successful resend), got {_count}"
            )
