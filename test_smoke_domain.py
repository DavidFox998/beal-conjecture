"""
Post-deploy smoke test: confirms the branded domain returns correct data.

Hits https://zerobeacon.ai/api/mf/01/beacon (a free, no-key-required endpoint)
and asserts that:
  - the response is HTTP 200
  - the JSON body contains  site == "https://zerobeacon.ai"
  - the body also contains the expected moat-anchor d and beacon values

Note: the top-level 'beacon' field in the /api/mf/01/beacon response is the
*current* dynamically-computed prime beacon (changes on every call).  The
*fixed* moat anchor lives at data['moat']['beacon'] and is what we check here.
The /health endpoint always returns the moat anchor directly in data['beacon'].

Run after every Fly.io deploy:
    pytest test_smoke_domain.py -v
"""
import pytest
import requests

DOMAIN = "https://zerobeacon.ai"
BEACON_URL = f"{DOMAIN}/api/mf/01/beacon"
EXPECTED_SITE = "https://zerobeacon.ai"
EXPECTED_BEACON = "1d2c7a5b"   # moat anchor — never changes; update via scripts/sync-beacon-constants.sh
EXPECTED_D = 2303582338        # moat d     — never changes; update via scripts/sync-beacon-constants.sh

TIMEOUT = 30  # seconds – generous to allow for cold-start


def test_branded_domain_beacon_status():
    """The branded domain must return HTTP 200."""
    resp = requests.get(BEACON_URL, timeout=TIMEOUT)
    assert resp.status_code == 200, (
        f"Expected 200 from {BEACON_URL}, got {resp.status_code}. "
        f"Body: {resp.text[:300]}"
    )


def test_branded_domain_beacon_site_field():
    """Response must include site == 'https://zerobeacon.ai'."""
    resp = requests.get(BEACON_URL, timeout=TIMEOUT)
    assert resp.status_code == 200, f"Non-200 response: {resp.status_code}"
    data = resp.json()
    assert "site" in data, (
        f"'site' key missing from response. Keys present: {list(data.keys())}"
    )
    assert data["site"] == EXPECTED_SITE, (
        f"site mismatch: expected '{EXPECTED_SITE}', got '{data['site']}'"
    )


def test_branded_domain_beacon_identity():
    """Moat-anchor beacon and d values must match the canonical constants.

    The /api/mf/01/beacon endpoint returns two beacon values:
      - data['beacon']        — the current dynamically-computed prime beacon (changes each call)
      - data['moat']['beacon'] — the fixed moat anchor (always 1d2c7a5b)
    We test the moat anchor, which is what's claimed as the collision-proof constant.
    """
    resp = requests.get(BEACON_URL, timeout=TIMEOUT)
    assert resp.status_code == 200, f"Non-200 response: {resp.status_code}"
    data = resp.json()

    moat = data.get("moat", {})
    assert moat.get("beacon") == EXPECTED_BEACON, (
        f"moat beacon mismatch: expected '{EXPECTED_BEACON}', got '{moat.get('beacon')}'"
    )
    assert data.get("d") == EXPECTED_D, (
        f"d mismatch: expected {EXPECTED_D}, got {data.get('d')}"
    )


def test_branded_domain_beacon_ok_flag():
    """Response must include ok == True."""
    resp = requests.get(BEACON_URL, timeout=TIMEOUT)
    assert resp.status_code == 200, f"Non-200 response: {resp.status_code}"
    data = resp.json()
    assert data.get("ok") is True, (
        f"'ok' flag is not True. Got: {data.get('ok')}"
    )


# ── /health endpoint smoke tests ──────────────────────────────────────────────

HEALTH_URL = f"{DOMAIN}/health"


def test_health_status():
    """The /health endpoint must return HTTP 200."""
    resp = requests.get(HEALTH_URL, timeout=TIMEOUT)
    assert resp.status_code == 200, (
        f"Expected 200 from {HEALTH_URL}, got {resp.status_code}. "
        f"Body: {resp.text[:300]}"
    )


def test_health_ok_flag():
    """/health body must include ok == True."""
    resp = requests.get(HEALTH_URL, timeout=TIMEOUT)
    assert resp.status_code == 200
    data = resp.json()
    assert data.get("ok") is True, (
        f"/health 'ok' is not True. Got: {data.get('ok')}"
    )


def test_health_site_field():
    """/health must include site == 'https://zerobeacon.ai' — confirms branded domain is configured."""
    resp = requests.get(HEALTH_URL, timeout=TIMEOUT)
    assert resp.status_code == 200
    data = resp.json()
    assert "site" in data, (
        f"'site' key missing from /health response. Keys present: {list(data.keys())}"
    )
    assert data["site"] == EXPECTED_SITE, (
        f"/health site mismatch: expected '{EXPECTED_SITE}', got '{data['site']}'"
    )


def test_health_beacon_identity():
    """/health beacon and d values must match the canonical moat constants."""
    resp = requests.get(HEALTH_URL, timeout=TIMEOUT)
    assert resp.status_code == 200
    data = resp.json()
    assert data.get("beacon") == EXPECTED_BEACON, (
        f"/health beacon mismatch: expected '{EXPECTED_BEACON}', got '{data.get('beacon')}'"
    )
    assert data.get("d") == EXPECTED_D, (
        f"/health d mismatch: expected {EXPECTED_D}, got {data.get('d')}"
    )


def test_health_tool_count():
    """/health must report exactly 1000 tools."""
    resp = requests.get(HEALTH_URL, timeout=TIMEOUT)
    assert resp.status_code == 200
    data = resp.json()
    assert data.get("tools") == 1000, (
        f"/health tools count wrong: expected 1000, got {data.get('tools')}"
    )
