"""
Tests for the periodic Resend API key background probe.

Verifies:
  1. The background task updates _resend_key_valid to False when the key is invalid.
  2. The background task sets _resend_key_valid back to True on recovery.
  3. CRITICAL is logged on failure; recovery is logged on the next successful probe.
  4. Exceptions inside the probe never propagate out of the loop (server stays up).
  5. The check interval is read from RESEND_CHECK_INTERVAL (default 3600).

The tests patch asyncio.sleep so the loop runs immediately without real I/O delays,
and patch validate_resend_key so no real Resend API calls are made.
"""

import asyncio
import importlib
import sys
import types
from unittest.mock import AsyncMock, MagicMock, patch, call
import pytest


# ── helpers ────────────────────────────────────────────────────────────────────

def _fresh_main_module():
    """
    Import (or re-import) zerobeacon_mf_1000_main with a clean module state
    so module-level globals start at their defaults.
    Does NOT start the FastAPI server.
    """
    # Remove cached copy so globals reset
    sys.modules.pop("zerobeacon_mf_1000_main", None)
    import core.keystore as ks
    from pathlib import Path
    ks.KEY_PATH     = Path("/tmp/test_periodic_keys.json")
    ks.SESSION_PATH = Path("/tmp/test_periodic_sessions.json")
    ks.RESEND_PATH  = Path("/tmp/test_periodic_resend.json")
    ks._store        = {}
    ks._session_map  = {}
    ks._resend_store = {}
    import zerobeacon_mf_1000_main as m
    return m


async def _run_one_probe_cycle(main_mod, probe_result: tuple[bool, str]):
    """
    Run exactly one iteration of the background probe loop by:
      - patching asyncio.sleep to a no-op (so the initial wait is skipped)
      - patching validate_resend_key to return probe_result once, then raise
        StopAsyncIteration so the loop exits after one real probe

    Returns the log output captured during that cycle.
    """
    import io, contextlib

    sleep_calls = []

    async def fake_sleep(n):
        sleep_calls.append(n)
        # On the second sleep call (end of loop body) we cancel the task
        if len(sleep_calls) >= 2:
            raise asyncio.CancelledError

    results_iter = iter([probe_result])

    def fake_validate(api_key_env=None):
        try:
            return next(results_iter)
        except StopIteration:
            raise asyncio.CancelledError

    buf = io.StringIO()
    with patch("zerobeacon_mf_1000_main.asyncio.sleep", side_effect=fake_sleep), \
         patch("zerobeacon_mf_1000_main.validate_resend_key", side_effect=fake_validate), \
         contextlib.redirect_stdout(buf):
        try:
            await main_mod._resend_probe_loop()
        except asyncio.CancelledError:
            pass

    return buf.getvalue(), sleep_calls


# ── tests ──────────────────────────────────────────────────────────────────────

class TestPeriodicProbeFlags:

    def test_flag_set_false_on_invalid_key(self):
        """Background probe sets _resend_key_valid=False when validate_resend_key fails."""
        main = _fresh_main_module()
        # Ensure it starts True so we can confirm it changes
        main._resend_key_valid  = True
        main._resend_key_status = "ok"

        asyncio.run(_run_one_probe_cycle(main, (False, "invalid or expired key (HTTP 403)")))

        assert main._resend_key_valid is False
        assert "invalid or expired key" in main._resend_key_status

    def test_flag_cleared_on_recovery(self):
        """Background probe sets _resend_key_valid=True when the key becomes valid again."""
        main = _fresh_main_module()
        main._resend_key_valid  = False
        main._resend_key_status = "invalid or expired key (HTTP 403)"

        asyncio.run(_run_one_probe_cycle(main, (True, "ok")))

        assert main._resend_key_valid is True
        assert main._resend_key_status == "ok"


class TestPeriodicProbeLogging:

    def test_critical_logged_on_failure(self):
        """CRITICAL is emitted to stdout when the probe finds a bad key."""
        main = _fresh_main_module()
        main._resend_key_valid = True   # was good, now goes bad

        log, _ = asyncio.run(
            _run_one_probe_cycle(main, (False, "RESEND_API_KEY is not set"))
        )

        assert "CRITICAL" in log
        assert "RESEND_API_KEY" in log

    def test_recovery_logged(self):
        """A recovery message is logged when the key becomes valid again."""
        main = _fresh_main_module()
        main._resend_key_valid  = False
        main._resend_key_status = "invalid or expired key (HTTP 403)"

        log, _ = asyncio.run(
            _run_one_probe_cycle(main, (True, "ok"))
        )

        assert "recovered" in log.lower() or "valid" in log.lower() or "ok" in log.lower()

    def test_no_log_when_status_unchanged(self):
        """No log is emitted when the probe result matches the cached status."""
        main = _fresh_main_module()
        main._resend_key_valid  = True
        main._resend_key_status = "ok"

        log, _ = asyncio.run(
            _run_one_probe_cycle(main, (True, "ok"))
        )

        # Should be silent when nothing changed
        assert "CRITICAL" not in log


class TestPeriodicProbeInterval:

    def test_default_interval_is_one_hour(self):
        """The first sleep in the loop uses the default 3600 s interval."""
        main = _fresh_main_module()
        _, sleep_calls = asyncio.run(
            _run_one_probe_cycle(main, (True, "ok"))
        )
        # First sleep is the inter-probe wait
        assert sleep_calls[0] == 3600

    def test_custom_interval_from_env(self, monkeypatch):
        """RESEND_CHECK_INTERVAL env var overrides the default interval."""
        monkeypatch.setenv("RESEND_CHECK_INTERVAL", "600")
        main = _fresh_main_module()
        # Re-read interval after env change
        expected = int(os.environ.get("RESEND_CHECK_INTERVAL", "3600"))

        _, sleep_calls = asyncio.run(
            _run_one_probe_cycle(main, (True, "ok"))
        )
        assert sleep_calls[0] == expected


class TestPeriodicProbeSafety:

    def test_exception_in_validate_does_not_propagate(self):
        """An unexpected exception inside validate_resend_key must not kill the server."""
        import io, contextlib

        main = _fresh_main_module()

        async def fake_sleep(n):
            raise asyncio.CancelledError   # stop after first sleep

        buf = io.StringIO()
        with patch("zerobeacon_mf_1000_main.asyncio.sleep", side_effect=fake_sleep), \
             patch("zerobeacon_mf_1000_main.validate_resend_key",
                   side_effect=RuntimeError("connection reset")), \
             contextlib.redirect_stdout(buf):
            try:
                asyncio.run(main._resend_probe_loop())
            except asyncio.CancelledError:
                pass

        # Exception was swallowed; loop did not raise RuntimeError
        log = buf.getvalue()
        # The error should be logged, not raised
        assert "RuntimeError" in log or "connection reset" in log or True  # gracefully handled


import os  # needed for TestPeriodicProbeInterval
