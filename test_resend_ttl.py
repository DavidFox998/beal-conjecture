#!/usr/bin/env python3
"""
Tests confirming that the resend rate-limit counter resets correctly after the
24-hour TTL, so customers who hit the cap are not permanently locked out.

Covers:
  1. resend_get returns 0 for an entry whose timestamp is > 24 h in the past
  2. resend_increment treats an expired entry as a fresh start (count = 1)
  3. A session that hit the 3-attempt cap returns 429; after the TTL the same
     session_id is accepted again (200)
  4. Only the expired entry is evicted; other, still-valid entries are untouched
  5. Non-expired entry is still enforced (regression guard)

Run:
    pytest test_resend_ttl.py -v
"""

import time
import pytest
from pathlib import Path
from unittest.mock import patch

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore

keystore.KEY_PATH      = Path("/tmp/test_resend_ttl_api_keys.json")
keystore.SESSION_PATH  = Path("/tmp/test_resend_ttl_sessions.json")
keystore.RESEND_PATH   = Path("/tmp/test_resend_ttl_resend_attempts.json")
keystore._store        = {}
keystore._session_map  = {}
keystore._resend_store = {}

# ── import app and constants after patching keystore ─────────────────────────
from zerobeacon_mf_1000_main import (
    app,
    _RESEND_TTL_SECONDS,
    _RESEND_MAX_ATTEMPTS,
    _RESEND_MAX_ENTRIES,
)
from fastapi.testclient import TestClient

client = TestClient(app, raise_server_exceptions=True)


# ── fixture: clean state before every test ────────────────────────────────────

@pytest.fixture(autouse=True)
def reset_state():
    """Reset keystore and rate-limit counters before every test."""
    keystore._store        = {}
    keystore._session_map  = {}
    keystore._resend_store = {}
    yield
    keystore._resend_store = {}


# ── helpers ───────────────────────────────────────────────────────────────────

def _issue(session_id: str, tier: str = "pro_10",
           email: str = "customer@example.com") -> str:
    return keystore.issue_key(tier, email, session_id=session_id)


def _inject_expired(session_id: str, count: int) -> None:
    """Directly write an entry whose timestamp is just over 24 h old."""
    expired_ts = time.time() - (_RESEND_TTL_SECONDS + 1)
    keystore._resend_store[session_id] = [count, expired_ts]


def _inject_recent(session_id: str, count: int) -> None:
    """Directly write an entry whose timestamp is only 1 second old."""
    keystore._resend_store[session_id] = [count, time.time() - 1]


# ── tests ─────────────────────────────────────────────────────────────────────

class TestResendTTLReset:

    # ------------------------------------------------------------------
    # 1. resend_get returns 0 for an expired entry
    # ------------------------------------------------------------------
    def test_get_returns_zero_after_ttl(self):
        """
        If an entry's first-attempt timestamp is more than 24 hours ago,
        resend_get must return 0 (treat it as if no attempts were made).
        """
        _inject_expired("cs_expired", count=2)

        result = keystore.resend_get("cs_expired", _RESEND_TTL_SECONDS)

        assert result == 0, (
            f"resend_get should return 0 for an entry older than {_RESEND_TTL_SECONDS}s, "
            f"got {result}"
        )
        # The expired entry must also have been evicted from the dict
        assert "cs_expired" not in keystore._resend_store, (
            "Expired entry should be evicted from _resend_store"
        )

    # ------------------------------------------------------------------
    # 2. resend_increment treats an expired entry as a fresh start
    # ------------------------------------------------------------------
    def test_increment_resets_to_one_after_ttl(self):
        """
        If the previous entry is expired, resend_increment must start the
        counter at 1 (not count+1 from the old entry).
        """
        _inject_expired("cs_exp_inc", count=_RESEND_MAX_ATTEMPTS)

        new_count = keystore.resend_increment("cs_exp_inc", _RESEND_TTL_SECONDS, _RESEND_MAX_ENTRIES)

        assert new_count == 1, (
            f"resend_increment after TTL expiry should return 1, got {new_count}"
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
        When resend_get is called for any session_id, it evicts ALL expired
        entries from the dict but must leave non-expired entries intact.
        """
        _inject_expired("cs_old", count=2)
        _inject_recent("cs_new", count=1)

        # Calling resend_get for any session triggers eviction
        keystore.resend_get("cs_old", _RESEND_TTL_SECONDS)

        assert "cs_old" not in keystore._resend_store, (
            "Expired entry 'cs_old' should have been evicted"
        )
        assert "cs_new" in keystore._resend_store, (
            "Non-expired entry 'cs_new' must NOT be evicted"
        )
        remaining_count, _ = keystore._resend_store["cs_new"]
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


class TestResendMaxEntriesCap:
    """
    Confirm that the hard-cap eviction path keeps the dict bounded when the
    server runs long enough to accumulate millions of unique session IDs.
    """

    # ------------------------------------------------------------------
    # 6. Dict stays at or below _RESEND_MAX_ENTRIES after overflow
    # ------------------------------------------------------------------
    def test_dict_size_stays_bounded(self):
        """
        Pre-fill _resend_store with _RESEND_MAX_ENTRIES + 1 unique sessions
        (all unexpired, so TTL eviction cannot interfere), then call
        resend_increment for one more.  The dict must not exceed
        _RESEND_MAX_ENTRIES entries.
        """
        now = time.time()

        # All entries are unexpired: timestamps range from (now - TTL + 3600)
        # to (now - 1).  No entry crosses the TTL boundary, so only the
        # hard-cap guard is responsible for keeping the dict bounded.
        base_ts = now - (_RESEND_TTL_SECONDS - 3600)   # 1 hour inside the TTL window
        for i in range(_RESEND_MAX_ENTRIES + 1):
            ts = base_ts + i   # older entries have smaller timestamps
            keystore._resend_store[f"cs_cap_{i:06d}"] = [1, ts]

        assert len(keystore._resend_store) == _RESEND_MAX_ENTRIES + 1

        # Calling resend_increment for a brand-new session must trigger eviction.
        keystore.resend_increment("cs_cap_new", _RESEND_TTL_SECONDS, _RESEND_MAX_ENTRIES)

        assert len(keystore._resend_store) <= _RESEND_MAX_ENTRIES, (
            f"Dict grew to {len(keystore._resend_store)} entries; "
            f"hard cap is {_RESEND_MAX_ENTRIES}"
        )

    # ------------------------------------------------------------------
    # 7. Evicted entry is the oldest (min timestamp), not a random one
    # ------------------------------------------------------------------
    def test_oldest_entry_is_evicted(self):
        """
        When the hard cap triggers, the entry with the smallest first-attempt
        timestamp must be evicted, not a random one.

        All entries are unexpired (within the TTL window) so that only the
        hard-cap guard runs, not the TTL eviction path.
        """
        now = time.time()

        # The known-oldest entry is unexpired but has the smallest timestamp
        # inside the TTL window (1 hour before expiry → still valid).
        oldest_id = "cs_cap_oldest"
        oldest_ts = now - (_RESEND_TTL_SECONDS - 3600)   # unexpired, but oldest
        keystore._resend_store[oldest_id] = [1, oldest_ts]

        # All other entries are more recent (timestamps between now-1 and now).
        for i in range(_RESEND_MAX_ENTRIES - 1):
            recent_ts = now - (i + 1) / _RESEND_MAX_ENTRIES   # fractional seconds, all > oldest_ts
            keystore._resend_store[f"cs_cap_recent_{i:06d}"] = [1, recent_ts]

        assert len(keystore._resend_store) == _RESEND_MAX_ENTRIES

        # One more increment must push us over the cap and evict the oldest.
        keystore.resend_increment("cs_cap_trigger", _RESEND_TTL_SECONDS, _RESEND_MAX_ENTRIES)

        assert oldest_id not in keystore._resend_store, (
            f"Expected the oldest unexpired entry '{oldest_id}' (ts={oldest_ts:.2f}) "
            "to be evicted by the hard-cap guard, but it is still present"
        )
        assert "cs_cap_trigger" in keystore._resend_store, (
            "The newly incremented session must be present after eviction"
        )
        assert len(keystore._resend_store) <= _RESEND_MAX_ENTRIES, (
            f"Dict size {len(keystore._resend_store)} exceeds cap {_RESEND_MAX_ENTRIES}"
        )
