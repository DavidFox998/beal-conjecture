"""
Post-deploy smoke test: confirms beacon.zerobeacon.ai and api.zerobeacon.ai
are reachable and healthy after every Fly.io deploy.

Checks for each subdomain:
  - /health returns HTTP 200
  - ok == True
  - tools >= 1000 (deploy is considered broken if count drops below 1000)

Run after every deploy:
    pytest test_smoke_subdomains.py -v
"""
import pytest
import requests

SUBDOMAINS = [
    "https://beacon.zerobeacon.ai",
    "https://api.zerobeacon.ai",
]

TIMEOUT = 30  # seconds – generous to allow for cold-start


# ── Parametrised health checks ────────────────────────────────────────────────

@pytest.mark.parametrize("base_url", SUBDOMAINS)
def test_subdomain_health_status(base_url):
    """Each subdomain /health must return HTTP 200."""
    url = f"{base_url}/health"
    resp = requests.get(url, timeout=TIMEOUT)
    assert resp.status_code == 200, (
        f"Expected 200 from {url}, got {resp.status_code}. "
        f"Body: {resp.text[:300]}"
    )


@pytest.mark.parametrize("base_url", SUBDOMAINS)
def test_subdomain_health_ok_flag(base_url):
    """Each subdomain /health body must include ok == True."""
    url = f"{base_url}/health"
    resp = requests.get(url, timeout=TIMEOUT)
    assert resp.status_code == 200, f"Non-200 from {url}: {resp.status_code}"
    data = resp.json()
    assert data.get("ok") is True, (
        f"{url} 'ok' is not True. Got: {data.get('ok')}"
    )


@pytest.mark.parametrize("base_url", SUBDOMAINS)
def test_subdomain_health_tool_count(base_url):
    """Each subdomain /health must report at least 1000 tools.

    The deploy is marked failed if the tool count drops below 1000 — this
    catches a misconfiguration that silently strips tools from the MCP listing.
    """
    url = f"{base_url}/health"
    resp = requests.get(url, timeout=TIMEOUT)
    assert resp.status_code == 200, f"Non-200 from {url}: {resp.status_code}"
    data = resp.json()
    tools = data.get("tools")
    assert isinstance(tools, int) and tools >= 1000, (
        f"{url} tools count is {tools!r} — expected >= 1000. "
        "A deploy may have silently stripped tools from the MCP listing."
    )
