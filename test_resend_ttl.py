#!/usr/bin/env python3
"""
Tests confirming that the resend rate-limit counter resets correctly after the
24-hour TTL, so customers who hit the cap are not permanently locked out.

Covers:
  1. _resend_get returns 0 for an entry whose timestamp is > 24 h in the past
  2. _resend_increment treats an expired entry as a fresh start (count = 1)
  3. A session that hit the 3-attempt cap returns 429; after the TTL the same
     session_id is accepted again (200)
  4. Only the expired entry is evicted; other, still-valid entries are untouched

Run:
    pytest test_resend_ttl.py -v
"""

import time
import pytest
from pathlib import Path
from unittest.mock import patch

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore

keystore.KEY_PATH     = Path("/tmp/test_resend_ttl_api_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_resend_ttl_sessions.json")
keystore._store       = {}
keystore._session_map = {}

# ── import app and internal helpers after patching keystore ───────────────────
import zerobeacon_mf_1000_main as main_module
from zerobeacon_mf_1000_main import (
    app,
    _resend_get,
    _resend_increment,
    _RESEND_TTL_SECONDS,
    _RESEND_MAX_ATTEMPTS,
)
from fastapi.testclient import TestClient

client = TestClient(app, raise_server_exceptions=True)


# ── fixture: clean state before every test ────────────────────────────────────

@pytest.fixture(autouse=True)
def reset_state():
    """Reset keystore and rate-limit counters before every test."""
    keystore._store       = {}
    keystore._session_map = {}
    main_module._resend_attempts.clear()
    yield
    main_module._resend_attempts.clear()


# ── helpers ───────────────────────────────────────────────────────────────────

def _issue(session_id: str, tier: str = "pro_10",
           email: str = "customer@example.com") -> str:
    return keystore.issue_key(tier, email, session_id=session_id)


def _inject_expired(session_id: str, count: int) -> None:
    """Directly write an entry whose timestamp is just over 24 h old."""
    expired_ts = time.time() - (_RESEND_TTL_SECONDS + 1)
    main_module._resend_attempts[session_id] = (count, expired_ts)


def _inject_recent(session_id: str, count: int) -> None:
    """Directly write an entry whose timestamp is only 1 second old."""
    main_module._resend_attempts[session_id] = (count, time.time() - 1)


# ── tests ─────────────────────────────────────────────────────────────────────

class TestResendTTLReset:

    # ------------------------------------------------------------------
    # 1. _resend_get returns 0 for an expired entry
    # ------------------------------------------------------------------
    def test_get_returns_zero_after_ttl(self):
        """
        If an entry's first-attempt timestamp is more than 24 hours ago,
        _resend_get must return 0 (treat it as if no attempts were made).
        """
        _inject_expired("cs_expired", count=2)

        result = _resend_get("cs_expired")

        assert result == 0, (
            f"_resend_get should return 0 for an entry older than {_RESEND_TTL_SECONDS}s, "
            f"got {result}"
        )
        # The expired entry must also have been evicted from the dict
        assert "cs_expired" not in main_module._resend_attempts, (
            "Expired entry should be evicted from _resend_attempts"
        )

    # ------------------------------------------------------------------
    # 2. _resend_increment treats an expired entry as a fresh start
    # ------------------------------------------------------------------
    def test_increment_resets_to_one_after_ttl(self):
        """
        If the previous entry is expired, _resend_increment must start the
        counter at 1 (not count+1 from the old entry).
        """
        _inject_expired("cs_exp_inc", count=_RESEND_MAX_ATTEMPTS)

        new_count = _resend_increment("cs_exp_inc")

        assert new_count == 1, (
            f"_resend_increment after TTL expiry should return 1, got {new_count}"
        )

    # ------------------------------------------------------------------
    # 3. A capped session is unblocked after TTL expiry (end-to-end via HTTP)
    # ------------------------------------------------------------------
    def test_rate_limited_session_unblocked_after_ttl(self):
        """
        A session that hit the 3-attempt cap must return 429.
        After TTL expiry (simulated by injecting an expired entry) the same
        session_id must be accepted again (200).
        """
        _issue("cs_ttl_e2e")

        # Exhaust the rate limit via the real endpoint
        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            for _ in range(_RESEND_MAX_ATTEMPTS):
                r = client.post("/api/key/resend", json={"session_id": "cs_ttl_e2e"})
                assert r.status_code == 200, r.text

        # Now capped → 429
        r = client.post("/api/key/resend", json={"session_id": "cs_ttl_e2e"})
        assert r.status_code == 429, (
            f"Expected 429 after {_RESEND_MAX_ATTEMPTS} attempts, got {r.status_code}"
        )

        # Simulate 24 h passing: replace the entry with an expired one
        _inject_expired("cs_ttl_e2e", count=_RESEND_MAX_ATTEMPTS)

        # After TTL the session must be unblocked
        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            r = client.post("/api/key/resend", json={"session_id": "cs_ttl_e2e"})

        assert r.status_code == 200, (
            f"Expected 200 after TTL expiry (customer should be unblocked), "
            f"got {r.status_code}: {r.text}"
        )
        body = r.json()
        assert body.get("ok") is True
        assert body.get("attempts_remaining") == _RESEND_MAX_ATTEMPTS - 1, (
            "After TTL reset, attempts_remaining should be back to max-1"
        )

    # ------------------------------------------------------------------
    # 4. Eviction is selective: only the expired entry is removed
    # ------------------------------------------------------------------
    def test_only_expired_entries_are_evicted(self):
        """
        When _resend_get is called for any session_id, it evicts ALL expired
        entries from the dict but must leave non-expired entries intact.
        """
        _inject_expired("cs_old", count=2)
        _inject_recent("cs_new", count=1)

        # Calling _resend_get for any session triggers eviction
        _resend_get("cs_old")

        assert "cs_old" not in main_module._resend_attempts, (
            "Expired entry 'cs_old' should have been evicted"
        )
        assert "cs_new" in main_module._resend_attempts, (
            "Non-expired entry 'cs_new' must NOT be evicted"
        )
        remaining_count, _ = main_module._resend_attempts["cs_new"]
        assert remaining_count == 1

    # ------------------------------------------------------------------
    # 5. Non-expired entry is still enforced (regression guard)
    # ------------------------------------------------------------------
    def test_non_expired_entry_still_enforced(self):
        """
        A non-expired entry with count >= _RESEND_MAX_ATTEMPTS must still
        result in 429 (TTL reset must not affect unexpired entries).
        """
        _issue("cs_still_capped")
        _inject_recent("cs_still_capped", count=_RESEND_MAX_ATTEMPTS)

        r = client.post("/api/key/resend", json={"session_id": "cs_still_capped"})
        assert r.status_code == 429, (
            f"Non-expired capped session must still return 429, got {r.status_code}"
        )
