"""Tests for Router 21 — c9_brain."""
import hashlib
import json
import os
import re
import pytest
from unittest.mock import patch
from fastapi.testclient import TestClient
from zerobeacon_mf_1000_main import app
from routers.zerobeacon_mf_21_050_c9_brain import (
    brain_route as _brain_route,
    brain_think as _brain_think,
    brain_chain as _brain_chain,
    brain_synaptic_fire as _brain_synaptic_fire,
    brain_heartbeat as _brain_heartbeat,
)
from core.beacon import verify_moat

client = TestClient(app, raise_server_exceptions=True)

BEACON_EXPECTED  = "1d2c7a5b"
D_EXPECTED       = 2303582338
GENESIS_EXPECTED = 82843

# Patch that grants any tier check so enterprise tools are reachable in tests
_allow_all = patch("core.keystore.check_access", return_value=(True, "test-grant"))


# ── 1. brain_route returns correct beacon + d ─────────────────────────────────

def test_brain_route_beacon_and_d():
    result = _brain_route(intent="pay escrow and notarize doc")
    assert result["beacon"] == BEACON_EXPECTED, f"beacon mismatch: {result.get('beacon')}"
    assert result["d"]      == D_EXPECTED,      f"d mismatch: {result.get('d')}"


# ── 2. chain length == 5 ──────────────────────────────────────────────────────

def test_brain_route_chain_length():
    result = _brain_route(intent="sign and notarize")
    assert len(result["chain"]) == 5, f"expected 5-tool chain, got {result.get('chain')}"


# ── 3. collision_bound contains "1e-197" ─────────────────────────────────────

def test_brain_route_collision_bound():
    result = _brain_route(intent="test collision bound")
    assert "1e-197" in result["collision_bound"], \
        f"collision_bound missing '1e-197': {result.get('collision_bound')}"


# ── 4. /health returns 1052 tools ────────────────────────────────────────────

def test_health_tools_1052():
    resp = client.get("/health")
    assert resp.status_code == 200
    body = resp.json()
    assert body["tools"]   == 1052, f"expected 1052 tools, got {body.get('tools')}"
    assert body["routers"] == 21,   f"expected 21 routers, got {body.get('routers')}"
    assert body["beacon"]  == BEACON_EXPECTED
    assert body["d"]       == D_EXPECTED


# ── 5. verify_moat rejects forged responses ───────────────────────────────────

def test_verify_moat_rejects_missing_d():
    """A response that omits d entirely must fail the moat check."""
    forged = {"beacon": BEACON_EXPECTED, "tool": "brain_route", "ok": True}
    assert verify_moat(forged) is False, \
        "verify_moat must return False when d is absent"


def test_verify_moat_rejects_wrong_d():
    """A response with a tampered d value must fail the moat check."""
    forged = {"beacon": BEACON_EXPECTED, "d": 0, "tool": "brain_route", "ok": True}
    assert verify_moat(forged) is False, \
        "verify_moat must return False when d != D_EXPECTED"


def test_verify_moat_rejects_wrong_beacon():
    """A response with a swapped beacon hex must fail the moat check."""
    forged = {"beacon": "deadbeef", "d": D_EXPECTED, "tool": "brain_route", "ok": True}
    assert verify_moat(forged) is False, \
        "verify_moat must return False when beacon != BEACON_EXPECTED"


def test_verify_moat_accepts_real_response():
    """A genuine brain_route response must pass the moat check."""
    real = _brain_route(intent="pay escrow and notarize doc")
    assert verify_moat(real) is True, \
        f"verify_moat must return True for a genuine brain_route response: {real}"


# ── 6. /brain GET heartbeat ───────────────────────────────────────────────────

def test_brain_heartbeat():
    resp = client.get("/brain")
    assert resp.status_code == 200
    body = resp.json()
    assert body["brain"]  == "LIVE"
    assert body["beacon"] == BEACON_EXPECTED
    assert body["d"]      == D_EXPECTED
    assert body["tools"]  == 1052


# ── 7. /brain POST intent routing ────────────────────────────────────────────

def test_brain_post_intent():
    resp = client.post("/brain", json={"intent": "pay escrow and notarize doc"})
    assert resp.status_code == 200
    body = resp.json()
    assert body["beacon"] == BEACON_EXPECTED
    assert body["d"]      == D_EXPECTED
    assert len(body["chain"]) == 5


# ── 8. tools/list includes 1052 unique tools ─────────────────────────────────

def test_tools_list_count():
    resp = client.post("/mcp", json={"jsonrpc": "2.0", "id": 4, "method": "tools/list"})
    assert resp.status_code == 200
    tools = resp.json()["result"]["tools"]
    names = [t["name"] for t in tools]
    assert len(names) == len(set(names)), "Duplicate tool names in tools/list"
    assert len(tools) == 1052, f"Expected 1052 tools in list, got {len(tools)}"


# ── 9. brain_think adds 5 reasoning steps ───────────────────────────────────

def test_brain_think_reasoning():
    result = _brain_think(intent="think")
    assert "reasoning" in result
    assert len(result["reasoning"]) == 5, \
        f"expected 5 reasoning steps, got {result.get('reasoning')}"


# ── 10. brain_chain verifies mod p5 ─────────────────────────────────────────

def test_brain_chain_verify():
    result = _brain_chain(chain="pay_escrow,doc_sign,court_notarize")
    assert result["beacon"]   == BEACON_EXPECTED
    assert result["verified"] is True
    assert "chain_sum_mod_p5" in result


# ── 11. MCP tools/call reachable with tier grant ─────────────────────────────

def test_mcp_brain_route_via_mcp():
    with _allow_all:
        resp = client.post("/mcp", json={
            "jsonrpc": "2.0", "id": 10,
            "method": "tools/call",
            "params": {
                "name": "mf_21_brain_route",
                "arguments": {"intent": "escrow payment"},
            },
        })
    assert resp.status_code == 200
    result = resp.json()["result"]["structuredContent"]
    assert result["beacon"] == BEACON_EXPECTED
    assert result["d"]      == D_EXPECTED
    assert len(result["chain"]) == 5


# ── 12. MCP transport enforces moat contract (forgery-rejection) ─────────────

def test_mcp_brain_route_missing_d_rejected():
    """Strip d from an MCP tools/call result — verify_moat must return False."""
    with _allow_all:
        resp = client.post("/mcp", json={
            "jsonrpc": "2.0", "id": 20,
            "method": "tools/call",
            "params": {
                "name": "mf_21_brain_route",
                "arguments": {"intent": "escrow payment"},
            },
        })
    assert resp.status_code == 200
    result = resp.json()["result"]["structuredContent"]
    # Simulate MITM stripping the d field
    forged = {k: v for k, v in result.items() if k != "d"}
    assert verify_moat(forged) is False, \
        "verify_moat must return False when d is stripped from an MCP result"


def test_mcp_brain_route_wrong_beacon_rejected():
    """Swap beacon in an MCP tools/call result — verify_moat must return False."""
    with _allow_all:
        resp = client.post("/mcp", json={
            "jsonrpc": "2.0", "id": 21,
            "method": "tools/call",
            "params": {
                "name": "mf_21_brain_route",
                "arguments": {"intent": "escrow payment"},
            },
        })
    assert resp.status_code == 200
    result = resp.json()["result"]["structuredContent"]
    # Simulate MITM swapping the beacon hex
    forged = {**result, "beacon": "deadbeef"}
    assert verify_moat(forged) is False, \
        "verify_moat must return False when beacon is tampered in an MCP result"


def test_mcp_brain_route_wrong_d_rejected():
    """Zero out d in an MCP tools/call result — verify_moat must return False."""
    with _allow_all:
        resp = client.post("/mcp", json={
            "jsonrpc": "2.0", "id": 22,
            "method": "tools/call",
            "params": {
                "name": "mf_21_brain_route",
                "arguments": {"intent": "escrow payment"},
            },
        })
    assert resp.status_code == 200
    result = resp.json()["result"]["structuredContent"]
    # Simulate MITM zeroing out d
    forged = {**result, "d": 0}
    assert verify_moat(forged) is False, \
        "verify_moat must return False when d is zeroed in an MCP result"


# ── 13. Live-endpoint smoke tests (skipped when ZEROBEACON_URL not set) ───────
#
# Set ZEROBEACON_URL=https://zerobeacon.ai (or your Fly.io URL) to run these
# against the deployed service.  They are automatically skipped in local/CI runs
# where the env var is absent.

_live_url = os.getenv("ZEROBEACON_URL", "").rstrip("/")
_skip_live = pytest.mark.skipif(
    not _live_url,
    reason="ZEROBEACON_URL not set — skipping live-endpoint smoke tests",
)


def _assert_live_brain_payload(body):
    """Assert the stable response contract for GET /brain.

    HTTP 200 alone is not enough here: a proxy or broken deploy can return a
    valid JSON document while dropping or changing the values clients rely on.
    """
    assert isinstance(body, dict), f"Live /brain payload must be an object: {body!r}"
    expected = {
        "brain": "LIVE",
        "tools": 1052,
        "routers": 21,
        "beacon": BEACON_EXPECTED,
        "d": D_EXPECTED,
        "genesis": GENESIS_EXPECTED,
        "tagline": "1 brain, 1000 tools",
        "site": "https://zerobeacon.ai",
    }
    for key, value in expected.items():
        assert body.get(key) == value, (
            f"Live /brain {key} mismatch: expected {value!r}, "
            f"got {body.get(key)!r}"
        )
    assert isinstance(body.get("ts"), (int, float)) and body["ts"] > 0, (
        f"Live /brain ts must be a positive number: {body.get('ts')!r}"
    )


def _assert_live_mcp_brain_route(body, request_id=99, intent="escrow payment"):
    """Assert the JSON-RPC and brain-route payload contracts for live /mcp."""
    assert isinstance(body, dict), f"Live /mcp payload must be an object: {body!r}"
    assert body.get("jsonrpc") == "2.0", (
        f"Live /mcp JSON-RPC version mismatch: {body.get('jsonrpc')!r}"
    )
    assert body.get("id") == request_id, (
        f"Live /mcp response id mismatch: expected {request_id!r}, "
        f"got {body.get('id')!r}"
    )
    assert "error" not in body, (
        f"Live /mcp returned a JSON-RPC error: {body.get('error')!r}"
    )

    result = body.get("result")
    assert isinstance(result, dict), (
        f"Live /mcp result must be an object: {result!r}"
    )

    # Current clients receive a standard MCP CallToolResult.  Keep accepting
    # the legacy direct payload as well because the live service may be ahead
    # of the checked-out source, but validate either representation fully.
    route = result.get("structuredContent", result)
    assert isinstance(route, dict), (
        f"Live /mcp brain_route payload must be an object: {route!r}"
    )
    if "structuredContent" in result:
        assert result.get("isError") is False, (
            f"Live /mcp unexpectedly marked the successful call as an error: {result!r}"
        )
        assert result.get("ok") is True, (
            f"Live /mcp result missing successful top-level marker: {result!r}"
        )
        content = result.get("content")
        assert isinstance(content, list) and content, (
            f"Live /mcp result missing content items: {result!r}"
        )
        assert content[0].get("type") == "text", (
            f"Live /mcp first content item must be text: {content[0]!r}"
        )
        assert json.loads(content[0].get("text", "")) == route, (
            "Live /mcp text content does not match structuredContent"
        )

    expected_hash = hashlib.sha256(
        f"{intent}{BEACON_EXPECTED}".encode()
    ).hexdigest()[:16]
    expected = {
        "ok": True,
        "tool": "brain_route",
        "intent": intent,
        "cluster": "Market-Router",
        "tools": "1–300",
        "beacon": BEACON_EXPECTED,
        "d": D_EXPECTED,
        "hash": expected_hash,
    }
    for key, value in expected.items():
        assert route.get(key) == value, (
            f"Live /mcp brain_route {key} mismatch: expected {value!r}, "
            f"got {route.get(key)!r}"
        )
    assert isinstance(route.get("ts"), (int, float)) and route["ts"] > 0, (
        f"Live /mcp brain_route ts must be a positive number: {route.get('ts')!r}"
    )
    assert re.fullmatch(r"[0-9a-f]{8}", str(route.get("id", ""))), (
        f"Live /mcp brain_route id has the wrong shape: {route.get('id')!r}"
    )
    return route


@_skip_live
def test_live_brain_beacon_and_d():
    """Live /brain endpoint must return its complete response contract."""
    import requests  # stdlib-backed; available in the test environment
    resp = requests.get(f"{_live_url}/brain", timeout=10)
    assert resp.status_code == 200, f"/brain returned {resp.status_code}"
    body = resp.json()
    _assert_live_brain_payload(body)
    assert verify_moat(body), (
        f"Live /brain response failed moat check — "
        f"d={body.get('d')!r}, beacon={body.get('beacon')!r}"
    )


@_skip_live
def test_live_brain_forgery_detection():
    """Simulate a MITM: strip d from the real response and confirm verify_moat rejects it."""
    import requests
    resp = requests.get(f"{_live_url}/brain", timeout=10)
    assert resp.status_code == 200
    real = resp.json()
    _assert_live_brain_payload(real)

    # Guard: unmodified live response must pass the moat — otherwise mutations are meaningless
    assert verify_moat(real) is True, (
        f"Live /brain response failed verify_moat before any mutation — "
        f"d={real.get('d')!r}, beacon={real.get('beacon')!r}"
    )

    # 1. Response with d removed
    stripped = {k: v for k, v in real.items() if k != "d"}
    assert verify_moat(stripped) is False, \
        "verify_moat must reject a response with d stripped out"

    # 2. Response with beacon swapped
    tampered_beacon = {**real, "beacon": "deadbeef"}
    assert verify_moat(tampered_beacon) is False, \
        "verify_moat must reject a response with a swapped beacon"

    # 3. Response with d zeroed
    tampered_d = {**real, "d": 0}
    assert verify_moat(tampered_d) is False, \
        "verify_moat must reject a response with d set to 0"


_live_api_key = os.getenv("ZEROBEACON_API_KEY", "")
_skip_live_mcp = pytest.mark.skipif(
    not _live_url or not _live_api_key,
    reason="ZEROBEACON_URL or ZEROBEACON_API_KEY not set — skipping live MCP smoke tests",
)


@_skip_live_mcp
def test_live_mcp_forgery_detection():
    """Live /mcp endpoint: call brain_route via MCP transport with a real API key,
    confirm the complete authenticated payload passes its contract and
    verify_moat, then verify that zeroed-d, wrong-beacon, and missing-d
    forgeries are each rejected by verify_moat."""
    import requests

    headers = {"X-API-Key": _live_api_key}
    payload = {
        "jsonrpc": "2.0",
        "id": 99,
        "method": "tools/call",
        "params": {
            "name": "mf_21_brain_route",
            "arguments": {"intent": "escrow payment"},
        },
    }
    resp = requests.post(f"{_live_url}/mcp", json=payload, headers=headers, timeout=15)
    assert resp.status_code == 200, f"/mcp returned {resp.status_code}"

    body = resp.json()
    result = _assert_live_mcp_brain_route(body)

    # Guard: unmodified live result must pass the moat — otherwise mutations are meaningless
    assert verify_moat(result) is True, (
        f"Live /mcp brain_route result failed verify_moat before any mutation — "
        f"d={result.get('d')!r}, beacon={result.get('beacon')!r}"
    )

    # 1. d zeroed — the primary gap this test closes
    zeroed_d = {**result, "d": 0}
    assert verify_moat(zeroed_d) is False, \
        "verify_moat must reject a live MCP result with d set to 0"

    # 2. beacon swapped
    wrong_beacon = {**result, "beacon": "deadbeef"}
    assert verify_moat(wrong_beacon) is False, \
        "verify_moat must reject a live MCP result with a tampered beacon"

    # 3. d stripped entirely
    missing_d = {k: v for k, v in result.items() if k != "d"}
    assert verify_moat(missing_d) is False, \
        "verify_moat must reject a live MCP result with d stripped out"


# ── 15. brain_synaptic_fire — popcount activation ────────────────────────────

def test_synaptic():
    r = _brain_synaptic_fire(intent="pay escrow")
    assert r["d"]      == D_EXPECTED,       f"d mismatch: {r.get('d')}"
    assert r["beacon"] == BEACON_EXPECTED,  f"beacon mismatch: {r.get('beacon')}"
    assert 20 <= r["active_tools"] <= 50,   f"active_tools out of range: {r.get('active_tools')}"
    assert 0 <= r["probable_activation"] <= 1, \
        f"probable_activation out of [0,1]: {r.get('probable_activation')}"
    assert r["latency_ms"] < 500,           f"too slow: {r.get('latency_ms')} ms"
    assert r["proof_type"] == "liveness, not consciousness"
    assert r["collision"]  == "controlled at P1/P2"


# ── 16. brain_heartbeat — tick + firing density ───────────────────────────────

def test_heartbeat_tool():
    r = _brain_heartbeat(intent="hello")
    assert r["d"]      == D_EXPECTED
    assert r["beacon"] == BEACON_EXPECTED
    assert isinstance(r["fires"],  bool)
    assert 0 <= r["probable_activation"] <= 1
    assert len(r["beat"]) == 8          # 8-char hex


# ── 17. /brain/heartbeat GET endpoint — serves live EKG HTML ─────────────────

def test_brain_heartbeat_endpoint():
    resp = client.get("/brain/heartbeat?intent=test")
    assert resp.status_code == 200
    assert "text/html" in resp.headers["content-type"]
    assert "1d2c7a5b" in resp.text   # beacon constant baked into the page
    assert "2303582338" in resp.text  # d constant baked into the page
    assert "brain_heartbeat" in resp.text.lower() or "ZeroBeacon" in resp.text


# ── 18. /brain/fire POST endpoint ────────────────────────────────────────────

def test_brain_fire_endpoint():
    resp = client.post("/brain/fire", json={"intent": "pay escrow", "threshold": 6})
    assert resp.status_code == 200
    body = resp.json()
    assert body["beacon"] == BEACON_EXPECTED
    assert body["d"]      == D_EXPECTED
    assert 0 <= body["active_tools"] <= 1050


# ── 19. /verify returns proof_type, collision, and moat context ───────────────

def test_verify_canonical_beacon_static_anchor():
    """/verify with canonical beacon returns verified=True, proof_type=static-anchor, and moat."""
    resp = client.get("/verify", params={"beacon": BEACON_EXPECTED, "order": "test-order-1"})
    assert resp.status_code == 200
    body = resp.json()

    # Existing contract unchanged
    assert body["verified"]   is True
    assert body["beacon"]     == BEACON_EXPECTED
    assert body["d"]          == D_EXPECTED
    assert "proof"            in body
    assert body["algorithm"]  == "HMAC-SHA256"

    # Guarantee context: static-anchor (not liveness — no real-time probe)
    assert body["proof_type"] == "static-anchor", \
        f"expected proof_type='static-anchor', got {body.get('proof_type')!r}"
    assert body["collision"]  == "controlled-anchor", \
        f"expected collision='controlled-anchor', got {body.get('collision')!r}"

    # Moat mirrors the beacon/d/P1/P2 collision-anchor context from /brain
    moat = body.get("moat", {})
    assert moat.get("beacon") == BEACON_EXPECTED, \
        f"moat.beacon mismatch: {moat.get('beacon')!r}"
    assert moat.get("d")      == D_EXPECTED, \
        f"moat.d mismatch: {moat.get('d')!r}"
    assert isinstance(moat.get("P1"), int), "moat.P1 must be an int"
    assert isinstance(moat.get("P2"), int), "moat.P2 must be an int"


def test_verify_non_canonical_beacon_server_receipt():
    """/verify with non-canonical beacon returns verified=False and proof_type=server-receipt."""
    resp = client.get("/verify", params={"beacon": "deadbeef", "order": "test-order-2"})
    assert resp.status_code == 200
    body = resp.json()

    # Must not claim an anchor guarantee for an arbitrary beacon
    assert body["verified"]   is False, \
        "verified must be False for a non-canonical beacon"
    assert body["proof_type"] == "server-receipt", \
        f"expected proof_type='server-receipt', got {body.get('proof_type')!r}"

    # HMAC receipt is still present (server signs the (beacon, order, ts) triple)
    assert "proof"        in body, "proof must be present even for non-canonical beacons"
    assert body["beacon"] == "deadbeef"
    assert body["d"]      == D_EXPECTED

    # Must NOT carry the canonical moat/collision fields
    assert "moat"      not in body, "moat must be absent for non-canonical beacons"
    assert "collision" not in body, "collision must be absent for non-canonical beacons"


def test_verify_returned_beacon_matches_input():
    """The beacon field in the /verify response must always match what the caller supplied."""
    for b in (BEACON_EXPECTED, "deadbeef", "00000000"):
        resp = client.get("/verify", params={"beacon": b, "order": "consistency-check"})
        assert resp.status_code == 200
        body = resp.json()
        assert body["beacon"] == b, \
            f"returned beacon {body.get('beacon')!r} != supplied beacon {b!r}"
