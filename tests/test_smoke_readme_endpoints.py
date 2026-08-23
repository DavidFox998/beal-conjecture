"""
Smoke tests for the two README curl examples:

  curl https://zerobeacon.ai/health
  curl "https://zerobeacon.ai/api/mf/01/beacon?p=3000105001"

Unit section  — uses FastAPI TestClient (no network, always runs in CI).
Live section  — hits the real deployed URL; skipped unless ZEROBEACON_URL is set.
               Set ZEROBEACON_URL=https://zerobeacon.ai to run against production.
"""
import os
import pytest
from fastapi.testclient import TestClient
from zerobeacon_mf_1000_main import app

client = TestClient(app, raise_server_exceptions=True)

# ── canonical contract values ─────────────────────────────────────────────────
BEACON_EXPECTED = "1d2c7a5b"
D_EXPECTED      = 2303582338
MOAT_P1         = 3000105001   # the p value used in the README curl example


# ══════════════════════════════════════════════════════════════════════════════
# Unit / integration tests (always run — no external network)
# ══════════════════════════════════════════════════════════════════════════════

class TestHealthUnit:
    """Verify /health returns the expected JSON shape via TestClient."""

    def test_status_200(self):
        resp = client.get("/health")
        assert resp.status_code == 200, (
            f"/health returned {resp.status_code}: {resp.text[:200]}"
        )

    def test_beacon_field(self):
        body = client.get("/health").json()
        assert body.get("beacon") == BEACON_EXPECTED, (
            f"beacon mismatch: expected {BEACON_EXPECTED!r}, got {body.get('beacon')!r}"
        )

    def test_d_field(self):
        body = client.get("/health").json()
        assert body.get("d") == D_EXPECTED, (
            f"d mismatch: expected {D_EXPECTED}, got {body.get('d')}"
        )

    def test_tools_count(self):
        body = client.get("/health").json()
        assert body.get("tools") == 1052, (
            f"tools mismatch: expected 1052, got {body.get('tools')}"
        )

    def test_status_field_present(self):
        body = client.get("/health").json()
        assert "status" in body, "/health response missing 'status' field"

    def test_site_field_present(self):
        body = client.get("/health").json()
        assert "site" in body, "/health response missing 'site' field"


class TestBeaconUnit:
    """Verify /api/mf/01/beacon?p=3000105001 returns the expected JSON shape."""

    def _get(self):
        return client.get(f"/api/mf/01/beacon", params={"p": MOAT_P1})

    def test_status_200(self):
        resp = self._get()
        assert resp.status_code == 200, (
            f"/api/mf/01/beacon returned {resp.status_code}: {resp.text[:200]}"
        )

    def test_beacon_field(self):
        body = self._get().json()
        assert body.get("beacon") == BEACON_EXPECTED, (
            f"beacon mismatch: expected {BEACON_EXPECTED!r}, got {body.get('beacon')!r}"
        )

    def test_d_field(self):
        body = self._get().json()
        assert body.get("d") == D_EXPECTED, (
            f"d mismatch: expected {D_EXPECTED}, got {body.get('d')}"
        )

    def test_p_echoed(self):
        body = self._get().json()
        assert body.get("p") == MOAT_P1, (
            f"p mismatch: expected {MOAT_P1}, got {body.get('p')}"
        )

    def test_ok_true(self):
        body = self._get().json()
        assert body.get("ok") is True, (
            f"expected ok=True, got {body.get('ok')!r}"
        )


# ══════════════════════════════════════════════════════════════════════════════
# Live smoke tests — skipped unless ZEROBEACON_URL is set
# ══════════════════════════════════════════════════════════════════════════════

_live_url = os.getenv("ZEROBEACON_URL", "").rstrip("/")
_skip_live = pytest.mark.skipif(
    not _live_url,
    reason="ZEROBEACON_URL not set — skipping live README endpoint smoke tests",
)


@_skip_live
def test_live_health_status_200():
    """Live /health must return HTTP 200."""
    import requests
    resp = requests.get(f"{_live_url}/health", timeout=15)
    assert resp.status_code == 200, (
        f"Live /health returned {resp.status_code} — endpoint may be down"
    )


@_skip_live
def test_live_health_beacon_value():
    """Live /health beacon must be exactly 1d2c7a5b."""
    import requests
    body = requests.get(f"{_live_url}/health", timeout=15).json()
    assert body.get("beacon") == BEACON_EXPECTED, (
        f"Live /health beacon mismatch: expected {BEACON_EXPECTED!r}, got {body.get('beacon')!r}"
    )


@_skip_live
def test_live_health_d_value():
    """Live /health d must be exactly 2303582338."""
    import requests
    body = requests.get(f"{_live_url}/health", timeout=15).json()
    assert body.get("d") == D_EXPECTED, (
        f"Live /health d mismatch: expected {D_EXPECTED}, got {body.get('d')}"
    )


@_skip_live
def test_live_health_shape():
    """Live /health must carry status, tools, site, beacon, and d fields."""
    import requests
    body = requests.get(f"{_live_url}/health", timeout=15).json()
    for field in ("status", "tools", "site", "beacon", "d"):
        assert field in body, (
            f"Live /health response missing field {field!r} — got keys: {list(body.keys())}"
        )


@_skip_live
def test_live_beacon_status_200():
    """Live /api/mf/01/beacon?p=3000105001 must return HTTP 200."""
    import requests
    resp = requests.get(
        f"{_live_url}/api/mf/01/beacon",
        params={"p": MOAT_P1},
        timeout=15,
    )
    assert resp.status_code == 200, (
        f"Live /api/mf/01/beacon returned {resp.status_code} — endpoint may be down"
    )


@_skip_live
def test_live_beacon_value():
    """Live /api/mf/01/beacon?p=3000105001 beacon must be exactly 1d2c7a5b."""
    import requests
    body = requests.get(
        f"{_live_url}/api/mf/01/beacon",
        params={"p": MOAT_P1},
        timeout=15,
    ).json()
    assert body.get("beacon") == BEACON_EXPECTED, (
        f"Live beacon mismatch: expected {BEACON_EXPECTED!r}, got {body.get('beacon')!r}. "
        f"The README curl example contract has drifted."
    )


@_skip_live
def test_live_beacon_d_value():
    """Live /api/mf/01/beacon?p=3000105001 d must be exactly 2303582338."""
    import requests
    body = requests.get(
        f"{_live_url}/api/mf/01/beacon",
        params={"p": MOAT_P1},
        timeout=15,
    ).json()
    assert body.get("d") == D_EXPECTED, (
        f"Live beacon d mismatch: expected {D_EXPECTED}, got {body.get('d')!r}"
    )


@_skip_live
def test_live_beacon_p_echoed():
    """Live /api/mf/01/beacon must echo p=3000105001 back in the response."""
    import requests
    body = requests.get(
        f"{_live_url}/api/mf/01/beacon",
        params={"p": MOAT_P1},
        timeout=15,
    ).json()
    assert body.get("p") == MOAT_P1, (
        f"Live beacon p not echoed: expected {MOAT_P1}, got {body.get('p')!r}"
    )
