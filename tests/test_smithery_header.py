"""
Smithery header-mapping test — Task #252 / #253.

Smithery HTTP transport converts configSchema properties from camelCase to
kebab-case HTTP headers before forwarding requests.  The configSchema field
``apiKey`` therefore arrives on the server as the ``api-key`` HTTP header.

FastAPI's Header() dependency with parameter name ``api_key`` automatically
accepts both ``api-key`` (hyphen) and ``api_key`` (underscore) spellings,
so the tier_guard picks it up transparently.

Tests
-----
1. ``api-key`` header (Smithery camelCase→kebab conversion of ``apiKey``)
   with a valid PRO key → 200 on a PRO tool (above tool #100).
2. ``X-API-Key`` header (native zbk_ path) with same key → 200.
3. No key → 200 with {"ok": false, "error": "tier_required"} in body.
   (Task #253: tier errors return 200 so MCP clients show the message.)
4. Unrecognised key → 200 with {"ok": false, "error": "tier_required"}.
5. FREE tool (below #100) is reachable with NO key whatsoever → 200 with ok=True.

Header-mapping reference (keep this in sync with smithery.yaml)
---------------------------------------------------------------
  configSchema property  │  HTTP header sent by Smithery  │  FastAPI param name
  ─────────────────────  │  ──────────────────────────────│  ──────────────────
  apiKey                 │  api-key                       │  api_key  (Header())

The server's tier_guard accepts both spellings, so a configSchema rename to
``x_api_key`` → Smithery would send ``x-api-key``, which overlaps with the
native ``X-API-Key`` path — no code change needed if the schema is renamed.
"""

import os
import pytest
from fastapi.testclient import TestClient

import zerobeacon_mf_1000_main as main_mod
from core import keystore

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

# A PRO-tier endpoint (MF-03, tools 101–150).
PRO_ENDPOINT = "/api/mf/03/delivery_proof"

# A FREE-tier endpoint (MF-01, tools 1–50).
FREE_ENDPOINT = "/api/mf/01/beacon"


@pytest.fixture(autouse=True)
def isolated_keystore():
    """Snapshot and restore the in-memory keystore around every test."""
    snapshot = dict(keystore._store)
    yield
    keystore._store.clear()
    keystore._store.update(snapshot)


@pytest.fixture(scope="module")
def client():
    with TestClient(main_mod.app, raise_server_exceptions=True) as tc:
        yield tc


@pytest.fixture()
def pro_key():
    """Issue a live PRO key for the duration of one test."""
    key = keystore.issue_key("pro_10", "smithery-test@example.com")
    return key


# ---------------------------------------------------------------------------
# Test 1 — Smithery ``api-key`` header unlocks a PRO tool
# ---------------------------------------------------------------------------

def test_smithery_api_key_header_unlocks_pro_tool(client, pro_key):
    """
    Smithery sends the configSchema ``apiKey`` value as ``api-key`` (kebab).
    The tier_guard must accept it and grant PRO access.
    """
    resp = client.get(PRO_ENDPOINT, headers={"api-key": pro_key})
    assert resp.status_code == 200, (
        f"Expected 200 with Smithery 'api-key' header on PRO endpoint; "
        f"got {resp.status_code}: {resp.text[:300]}"
    )


# ---------------------------------------------------------------------------
# Test 2 — Native ``X-API-Key`` header also unlocks the same PRO tool
# ---------------------------------------------------------------------------

def test_native_x_api_key_header_unlocks_pro_tool(client, pro_key):
    """
    Direct MCP clients send X-API-Key.  Both paths must work.
    """
    resp = client.get(PRO_ENDPOINT, headers={"X-API-Key": pro_key})
    assert resp.status_code == 200, (
        f"Expected 200 with native 'X-API-Key' header on PRO endpoint; "
        f"got {resp.status_code}: {resp.text[:300]}"
    )


# ---------------------------------------------------------------------------
# Test 3 — No key → 200 with error body on a PRO tool
# (Task #253: tier errors return HTTP 200 so MCP clients show the message.)
# ---------------------------------------------------------------------------

def test_no_key_is_rejected_on_pro_tool(client):
    """Without any key, a PRO endpoint must return 200 with ok=False and a
    human-readable error message that includes the signup URL."""
    resp = client.get(PRO_ENDPOINT)
    assert resp.status_code == 200, (
        f"Expected 200 (tier error body) on PRO endpoint with no key; "
        f"got {resp.status_code}: {resp.text[:300]}"
    )
    body = resp.json()
    assert body.get("ok") is False, f"Expected ok=False in error body: {body}"
    assert body.get("error") == "tier_required", (
        f"Expected error='tier_required' in body: {body}"
    )
    assert body.get("required_tier") == "pro_10", (
        f"Missing/wrong required_tier in error body: {body}"
    )
    assert "zerobeacon.ai" in body.get("message", ""), (
        f"Signup URL missing from message: {body}"
    )
    assert "signup" in body, f"Missing 'signup' key in error body: {body}"


# ---------------------------------------------------------------------------
# Test 4 — Unknown key → 200 with error body on a PRO tool
# ---------------------------------------------------------------------------

def test_unknown_key_is_rejected_on_pro_tool(client):
    """An unrecognised key must not be granted any paid tier.
    The response is HTTP 200 with ok=False so MCP clients display the message."""
    resp = client.get(PRO_ENDPOINT, headers={"api-key": "zbk_notarealapikeyXXXXXXXXXXXXXX"})
    assert resp.status_code == 200, (
        f"Expected 200 (tier error body) on PRO endpoint with unknown key; "
        f"got {resp.status_code}: {resp.text[:300]}"
    )
    body = resp.json()
    assert body.get("ok") is False, f"Expected ok=False in error body: {body}"
    assert body.get("error") == "tier_required", (
        f"Expected error='tier_required' in body: {body}"
    )
    assert "zerobeacon.ai" in body.get("message", ""), (
        f"Signup URL missing from message: {body}"
    )


# ---------------------------------------------------------------------------
# Test 5 — FREE tool is open with no key at all
# ---------------------------------------------------------------------------

def test_free_tool_open_without_key(client):
    """Tools 1–100 must remain accessible without any API key."""
    resp = client.get(FREE_ENDPOINT)
    assert resp.status_code == 200, (
        f"Expected 200 (no key) on FREE endpoint; "
        f"got {resp.status_code}: {resp.text[:300]}"
    )


# ---------------------------------------------------------------------------
# Test 6 — Both header spellings map to the same tier (consistency check)
# ---------------------------------------------------------------------------

def test_smithery_and_native_header_grant_identical_tier(client, pro_key):
    """
    api-key and X-API-Key with the same key must return exactly the same tier.
    """
    r_smithery = client.get(PRO_ENDPOINT, headers={"api-key":   pro_key})
    r_native   = client.get(PRO_ENDPOINT, headers={"X-API-Key": pro_key})

    assert r_smithery.status_code == r_native.status_code == 200, (
        f"Both headers must yield 200; "
        f"smithery={r_smithery.status_code}, native={r_native.status_code}"
    )

    # Both responses must carry the same beacon fingerprint (proves same code path).
    s_body = r_smithery.json()
    n_body = r_native.json()
    assert s_body.get("beacon") == n_body.get("beacon"), (
        f"Beacon mismatch between header paths: "
        f"smithery={s_body.get('beacon')}, native={n_body.get('beacon')}"
    )
