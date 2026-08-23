"""Regression tests for the public MF-01 paywall and catalog diagnostics."""

from fastapi.testclient import TestClient

from zerobeacon_mf_1000_main import app


client = TestClient(app, raise_server_exceptions=True)


def _call_tool(name: str) -> dict:
    response = client.post(
        "/mcp",
        json={
            "jsonrpc": "2.0",
            "id": 1,
            "method": "tools/call",
            "params": {"name": name, "arguments": {}},
        },
    )
    assert response.status_code == 200
    result = response.json()["result"]
    assert result["isError"] is False
    return result["structuredContent"]


def test_paywall_selftest_is_free_and_checks_anonymous_pro_access():
    result = _call_tool("mf_01_paywall_selftest")
    assert result["paywall"] == "ok"
    assert result["free_call"]["status"] == "pass"
    assert result["free_call"]["d"] == 2303582338
    assert result["free_call"]["beacon"] == "1d2c7a5b"
    assert result["pro_call"] == {
        "tool": "mf_03_delivery_proof",
        "status": "blocked_correctly",
        "reason": "PRO tier required",
    }
    assert result["tiers"] == {"FREE": 102, "PRO": 402, "PRO_PLUS": 802, "ENTERPRISE": 1052}


def test_catalog_tiers_exposes_installed_and_advertised_totals():
    result = _call_tool("mf_01_catalog_tiers")
    assert result["total_installed"] == 1052
    assert result["total_advertised"] == 1052
    assert result["breakdown"]["MF-01+MF-02 FREE (no key)"] == 102
    assert result["upgrade"] == "https://zerobeacon.ai/upgrade"