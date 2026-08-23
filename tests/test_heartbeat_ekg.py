"""
Smoke tests for the /brain/heartbeat EKG canvas page.

Unit section  — uses FastAPI TestClient (no network, always runs in CI).
                Verifies HTTP 200, HTML content-type, canvas element present,
                and JS beat-loop markers present (no obvious missing pieces).

Live section  — hits the real deployed URL; skipped unless ZEROBEACON_URL is set.
                Set ZEROBEACON_URL=https://zerobeacon.ai to run against production.
"""
import os
import pytest
from fastapi.testclient import TestClient
from zerobeacon_mf_1000_main import app

client = TestClient(app, raise_server_exceptions=True)


# ══════════════════════════════════════════════════════════════════════════════
# Unit / integration tests (always run — no external network)
# ══════════════════════════════════════════════════════════════════════════════

class TestHeartbeatUnit:
    """Verify /brain/heartbeat returns a well-formed EKG page via TestClient."""

    def _get(self):
        return client.get("/brain/heartbeat")

    def test_status_200(self):
        resp = self._get()
        assert resp.status_code == 200, (
            f"/brain/heartbeat returned {resp.status_code}: {resp.text[:200]}"
        )

    def test_content_type_html(self):
        resp = self._get()
        ct = resp.headers.get("content-type", "")
        assert "text/html" in ct, (
            f"/brain/heartbeat content-type is not HTML: {ct!r}"
        )

    def test_canvas_element_present(self):
        """The canvas element with id='c' must be in the page."""
        body = self._get().text
        assert 'id="c"' in body or "id='c'" in body, (
            "/brain/heartbeat HTML is missing <canvas id='c'> — EKG canvas not rendered"
        )

    def test_canvas_tag_present(self):
        body = self._get().text
        assert "<canvas" in body, (
            "/brain/heartbeat HTML is missing <canvas> tag entirely"
        )

    def test_beat_loop_setinterval_present(self):
        """The 200 ms setInterval beat loop must be present in the script."""
        body = self._get().text
        assert "setInterval" in body, (
            "/brain/heartbeat is missing setInterval — the 200 ms beat loop is gone"
        )

    def test_beat_function_present(self):
        """The beat() function definition must exist in the page script."""
        body = self._get().text
        assert "function beat(" in body, (
            "/brain/heartbeat is missing beat() function — EKG firing logic removed"
        )

    def test_getcontext_present(self):
        """Canvas 2D context must be obtained via getContext('2d')."""
        body = self._get().text
        assert "getContext" in body, (
            "/brain/heartbeat is missing getContext — canvas will be blank"
        )

    def test_popcount_function_present(self):
        """popcount32() is the core beacon-activation function; must be present."""
        body = self._get().text
        assert "popcount32" in body, (
            "/brain/heartbeat is missing popcount32 — beacon activation logic removed"
        )

    def test_beacon_hex_in_page(self):
        """The canonical beacon value must appear in the page."""
        body = self._get().text
        assert "1d2c7a5b" in body, (
            "/brain/heartbeat does not contain beacon '1d2c7a5b' — constants have drifted"
        )

    def test_interval_200ms(self):
        """The beat fires every 200 ms; ensure that literal is present."""
        body = self._get().text
        assert "200" in body, (
            "/brain/heartbeat: 200 ms interval literal not found — beat rate may have changed"
        )

    def test_no_script_error_markers(self):
        """Check that no obvious broken-JS markers landed in the HTML."""
        body = self._get().text
        for marker in ("undefined", "null is not", "TypeError", "SyntaxError"):
            # These should not appear as literal text in the HTML source
            # (they would only appear if server-side rendering broke)
            assert marker not in body, (
                f"/brain/heartbeat HTML contains suspicious marker {marker!r} — "
                "server-side rendering may have injected an error string"
            )


# ══════════════════════════════════════════════════════════════════════════════
# Live smoke tests — skipped unless ZEROBEACON_URL is set
# ══════════════════════════════════════════════════════════════════════════════

_live_url = os.getenv("ZEROBEACON_URL", "").rstrip("/")
_skip_live = pytest.mark.skipif(
    not _live_url,
    reason="ZEROBEACON_URL not set — skipping live heartbeat EKG smoke tests",
)


@_skip_live
def test_live_heartbeat_status_200():
    """Live /brain/heartbeat must return HTTP 200."""
    import requests
    resp = requests.get(f"{_live_url}/brain/heartbeat", timeout=15)
    assert resp.status_code == 200, (
        f"Live /brain/heartbeat returned {resp.status_code} — endpoint may be down"
    )


@_skip_live
def test_live_heartbeat_content_type_html():
    """Live /brain/heartbeat must serve HTML."""
    import requests
    resp = requests.get(f"{_live_url}/brain/heartbeat", timeout=15)
    ct = resp.headers.get("content-type", "")
    assert "text/html" in ct, (
        f"Live /brain/heartbeat content-type is not HTML: {ct!r}"
    )


@_skip_live
def test_live_heartbeat_canvas_present():
    """Live /brain/heartbeat HTML must contain the EKG canvas element."""
    import requests
    body = requests.get(f"{_live_url}/brain/heartbeat", timeout=15).text
    assert "<canvas" in body, (
        "Live /brain/heartbeat is missing <canvas> tag — EKG canvas not deployed"
    )
    assert 'id="c"' in body or "id='c'" in body, (
        "Live /brain/heartbeat canvas is missing id='c' — JS won't find the element"
    )


@_skip_live
def test_live_heartbeat_beat_loop_present():
    """Live /brain/heartbeat must contain the setInterval beat loop."""
    import requests
    body = requests.get(f"{_live_url}/brain/heartbeat", timeout=15).text
    assert "setInterval" in body, (
        "Live /brain/heartbeat is missing setInterval — 200 ms beat loop is gone"
    )


@_skip_live
def test_live_heartbeat_popcount_present():
    """Live /brain/heartbeat must contain the popcount32 beacon-activation function."""
    import requests
    body = requests.get(f"{_live_url}/brain/heartbeat", timeout=15).text
    assert "popcount32" in body, (
        "Live /brain/heartbeat is missing popcount32 — beacon activation logic removed"
    )


@_skip_live
def test_live_heartbeat_beacon_constant():
    """Live /brain/heartbeat must embed the canonical beacon value 1d2c7a5b."""
    import requests
    body = requests.get(f"{_live_url}/brain/heartbeat", timeout=15).text
    assert "1d2c7a5b" in body, (
        "Live /brain/heartbeat does not contain beacon '1d2c7a5b' — constants have drifted"
    )
