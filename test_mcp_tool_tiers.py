#!/usr/bin/env python3
"""
Tests that GET /mcp returns the correct tier for every tool, derived
directly from the ROUTERS table.

Rationale: _build_tool_list reads tier from _tool_tier (which is built from
ROUTERS at import time), so both paths stay in sync.  This test catches any
future ROUTERS edit that would silently mislabel a tool's tier in the MCP
discovery response.

Coverage:
  - every tool in the GET /mcp response has a tier that matches its ROUTERS block
  - at least one tool from each tier bucket (free, pro_10, pro_100, enterprise_1000)

Run:
    pytest test_mcp_tool_tiers.py -v
"""

import pytest
from fastapi.testclient import TestClient

# ── isolate keystore so tests never touch production files ────────────────────
import core.keystore as keystore
from pathlib import Path

keystore.KEY_PATH     = Path("/tmp/test_api_keys_tier.json")
keystore.SESSION_PATH = Path("/tmp/test_api_sessions_tier.json")
keystore._store       = {}
keystore._session_map = {}

# Import app *after* patching keystore
from zerobeacon_mf_1000_main import app, ROUTERS  # noqa: E402

client = TestClient(app, raise_server_exceptions=True)


# ── helpers ───────────────────────────────────────────────────────────────────

def _expected_tier_map() -> dict[str, str]:
    """
    Build the ground-truth {tool_name: tier} mapping from ROUTERS.
    Mirrors exactly what _build_tier_maps() does, but independently, so a
    regression in _build_tier_maps() would be caught here too.
    """
    expected: dict[str, str] = {}
    for mod, prefix, _tag, min_tier in ROUTERS:
        block = prefix.split("/")[-1]
        for route in mod.router.routes:
            if not hasattr(route, "endpoint"):
                continue
            name = route.endpoint.__name__
            tool_key = f"mf_{block}_{name}"
            expected[tool_key] = min_tier
    return expected


# ── tests ─────────────────────────────────────────────────────────────────────

class TestMcpToolTiers:

    def test_get_mcp_returns_tools(self):
        """GET /mcp must return a non-empty tools list."""
        resp = client.get("/mcp")
        assert resp.status_code == 200, resp.text
        body = resp.json()
        tools = body["result"]["tools"]
        assert len(tools) > 0, "Expected at least one tool in GET /mcp response"

    def test_every_tool_tier_matches_routers(self):
        """
        Every tool in the GET /mcp response must have a tier that matches the
        min_tier value declared for its block in ROUTERS.
        """
        resp = client.get("/mcp")
        assert resp.status_code == 200, resp.text
        tools = resp.json()["result"]["tools"]

        expected = _expected_tier_map()
        mismatches = []

        for tool in tools:
            name = tool["name"]
            actual_tier = tool.get("tier")
            want_tier = expected.get(name)

            if want_tier is None:
                # Tool appears in response but not in ROUTERS — always wrong
                mismatches.append(
                    f"  {name!r}: in /mcp response but not in ROUTERS"
                )
            elif actual_tier != want_tier:
                mismatches.append(
                    f"  {name!r}: expected tier={want_tier!r}, got tier={actual_tier!r}"
                )

        assert not mismatches, (
            f"{len(mismatches)} tier mismatch(es) found:\n" + "\n".join(mismatches)
        )

    def test_all_routers_tools_present_in_response(self):
        """
        Every tool registered in ROUTERS must appear in the GET /mcp response.
        A missing tool means _build_tool_list dropped it silently.
        """
        resp = client.get("/mcp")
        assert resp.status_code == 200, resp.text
        tools_in_response = {t["name"] for t in resp.json()["result"]["tools"]}

        expected = _expected_tier_map()
        missing = [name for name in expected if name not in tools_in_response]

        assert not missing, (
            f"{len(missing)} tool(s) from ROUTERS are missing in GET /mcp:\n"
            + "\n".join(f"  {n}" for n in missing)
        )

    @pytest.mark.parametrize("expected_tier,block_prefix", [
        ("free",             "mf_01_"),
        ("pro_10",           "mf_03_"),
        ("pro_100",          "mf_09_"),
        ("enterprise_1000",  "mf_17_"),
    ])
    def test_tier_bucket_representative(self, expected_tier: str, block_prefix: str):
        """
        Each of the four tier buckets must have at least one tool correctly
        labelled in the GET /mcp response.
        """
        resp = client.get("/mcp")
        assert resp.status_code == 200, resp.text
        tools = resp.json()["result"]["tools"]

        candidates = [t for t in tools if t["name"].startswith(block_prefix)]
        assert candidates, (
            f"No tools found with name prefix {block_prefix!r} in GET /mcp response"
        )

        for tool in candidates:
            assert tool.get("tier") == expected_tier, (
                f"Tool {tool['name']!r} expected tier={expected_tier!r}, "
                f"got tier={tool.get('tier')!r}"
            )

    def test_tools_list_jsonrpc_tier_matches_routers(self):
        """
        The tools/list JSON-RPC method (POST /mcp) must return the same tier
        values as the ROUTERS table, identical to the GET endpoint.
        """
        resp = client.post("/mcp", json={
            "jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}
        })
        assert resp.status_code == 200, resp.text
        tools = resp.json()["result"]["tools"]

        expected = _expected_tier_map()
        mismatches = []

        for tool in tools:
            name = tool["name"]
            actual_tier = tool.get("tier")
            want_tier = expected.get(name)
            if want_tier is not None and actual_tier != want_tier:
                mismatches.append(
                    f"  {name!r}: expected tier={want_tier!r}, got tier={actual_tier!r}"
                )

        assert not mismatches, (
            f"tools/list tier mismatches:\n" + "\n".join(mismatches)
        )
