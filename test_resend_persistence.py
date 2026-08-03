#!/usr/bin/env python3
"""
Tests that resend attempt counters survive a process restart.

Simulates a restart by calling keystore.load() to reload state from disk,
then confirms the 3-attempt cap is still enforced.

Run:
    pytest test_resend_persistence.py -v
"""

import pytest
import time
from pathlib import Path
from unittest.mock import patch

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore

_TMP_KEYS    = Path("/tmp/test_persist_api_keys.json")
_TMP_SESS    = Path("/tmp/test_persist_sessions.json")
_TMP_RESEND  = Path("/tmp/test_persist_resend_attempts.json")

keystore.KEY_PATH     = _TMP_KEYS
keystore.SESSION_PATH = _TMP_SESS
keystore.RESEND_PATH  = _TMP_RESEND
keystore._store       = {}
keystore._session_map = {}
keystore._resend_store = {}

from zerobeacon_mf_1000_main import app, _RESEND_MAX_ATTEMPTS, _RESEND_TTL_SECONDS, _RESEND_MAX_ENTRIES
from core.keystore import ResendPersistenceError
from fastapi.testclient import TestClient

client = TestClient(app, raise_server_exceptions=True)


@pytest.fixture(autouse=True)
def clean_state():
    """Wipe in-memory and on-disk state before each test.

    Re-assigns keystore paths on every test run because other test modules
    patch these module-level variables at import time; the last import wins
    unless we re-set them here.
    """
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

def _issue(session_id: str, tier: str = "pro_10", email: str = "persist@example.com") -> str:
    return keystore.issue_key(tier, email, session_id=session_id)


def _resend(session_id: str):
    return client.post("/api/key/resend", json={"session_id": session_id})


def _simulate_restart() -> None:
    """Clear the in-memory store and reload from disk — mimics a process restart.

    Uses the *current* keystore.RESEND_PATH so tests that re-assign it in the
    fixture always reload from the right file.
    """
    keystore._store              = {}
    keystore._session_map        = {}
    keystore._resend_store       = {}
    keystore._resend_store_valid = True
    keystore.load()


# ── tests ─────────────────────────────────────────────────────────────────────

class TestResendPersistence:

    def test_resend_counter_survives_restart(self):
        """
        Exhaust all 3 resend attempts, simulate a restart (reload from disk),
        then confirm the 4th attempt is still rejected with 429.
        """
        _issue("cs_persist_rl")

        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            for attempt in range(_RESEND_MAX_ATTEMPTS):
                r = _resend("cs_persist_rl")
                assert r.status_code == 200, (
                    f"attempt {attempt + 1} expected 200, got {r.status_code}: {r.text}"
                )

        # At this point 3 attempts are recorded on disk.
        # Simulate a server restart by clearing in-memory state and reloading.
        _simulate_restart()

        # The 4th attempt must still be rejected — the counter survived.
        r = _resend("cs_persist_rl")
        assert r.status_code == 429, (
            f"Expected 429 after restart (counter should survive), got {r.status_code}: {r.text}"
        )
        assert "error" in r.json()

    def test_counter_zero_after_admin_reset_survives_restart(self):
        """
        After an admin reset, a restart must not restore the old counter value
        (the reset must be persisted too).
        """
        _issue("cs_persist_reset")

        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            for _ in range(_RESEND_MAX_ATTEMPTS):
                _resend("cs_persist_reset")

        # Admin reset
        keystore.resend_reset("cs_persist_reset")

        # Simulate restart
        _simulate_restart()

        # Customer must be able to resend again
        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            r = _resend("cs_persist_reset")
        assert r.status_code == 200, (
            f"Expected 200 after reset+restart, got {r.status_code}: {r.text}"
        )

    def test_fail_closed_when_persistence_fails(self):
        """
        If the disk commit fails (e.g. volume not writable), the endpoint must
        return 503 without sending the email — not record the attempt only in
        memory and proceed.
        """
        _issue("cs_persist_fail")

        with patch(
            "core.keystore._atomic_write",
            side_effect=OSError("disk full"),
        ), patch("zerobeacon_mf_1000_main.send_api_key_email") as mock_send:
            r = _resend("cs_persist_fail")

        assert r.status_code == 503, (
            f"Expected 503 when counter commit fails, got {r.status_code}: {r.text}"
        )
        mock_send.assert_not_called(), (
            "Email must NOT be sent when the counter cannot be durably committed"
        )

    def test_expired_counter_not_restored_after_restart(self):
        """
        A counter whose TTL has already expired must not be enforced after
        a restart (i.e. expired entries are treated as absent).
        """
        _issue("cs_persist_expired")

        # Seed an entry whose first_ts is well beyond the TTL
        expired_ts = time.time() - _RESEND_TTL_SECONDS - 1
        keystore._resend_store["cs_persist_expired"] = [_RESEND_MAX_ATTEMPTS, expired_ts]
        keystore._save_resend()

        # Restart
        _simulate_restart()

        # Counter should be treated as absent (expired), so resend is allowed
        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            r = _resend("cs_persist_expired")
        assert r.status_code == 200, (
            f"Expired counter should not block resend after restart, got {r.status_code}: {r.text}"
        )

    def test_corrupt_resend_file_blocks_resend_fail_closed(self):
        """
        If resend_attempts.json is corrupt/unreadable at load time, the endpoint
        must return 503 without sending the email — the cap must not silently
        reset when the file cannot be trusted.
        """
        _issue("cs_persist_corrupt")

        # Write a corrupt (non-JSON) resend file to the path keystore will load from
        keystore.RESEND_PATH.write_text("this is not valid json {{{{")

        # Simulate restart — file exists but is corrupt, so _resend_store_valid = False
        keystore._store        = {}
        keystore._session_map  = {}
        keystore._resend_store = {}
        keystore._resend_store_valid = True  # will be set False by load()
        keystore.load()

        assert keystore._resend_store_valid is False, (
            "_resend_store_valid must be False after loading a corrupt file"
        )

        # Endpoint must fail closed — 503, no email
        with patch("zerobeacon_mf_1000_main.send_api_key_email") as mock_send:
            r = _resend("cs_persist_corrupt")

        assert r.status_code == 503, (
            f"Expected 503 when resend store is invalid (corrupt file), got {r.status_code}: {r.text}"
        )
        mock_send.assert_not_called(), (
            "Email must NOT be sent when the resend counter store is invalid"
        )

    def test_successful_save_clears_invalid_flag(self):
        """
        After a successful write (e.g. admin intervention removes/replaces the
        corrupt file), _resend_store_valid must become True so normal resends
        can resume.
        """
        _issue("cs_persist_recover")

        # Force store into invalid state
        keystore._resend_store_valid = False
        keystore._resend_store = {}

        # A successful save should clear the flag
        keystore._save_resend()

        assert keystore._resend_store_valid is True, (
            "_resend_store_valid must be True after a successful save"
        )

        # Resend must now work
        with patch("zerobeacon_mf_1000_main.send_api_key_email", return_value=True):
            r = _resend("cs_persist_recover")
        assert r.status_code == 200, (
            f"Expected 200 after store validity is restored, got {r.status_code}: {r.text}"
        )
