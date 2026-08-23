"""Keep Smithery's configSchema API-key property aligned with tier access."""

from pathlib import Path
import re

import pytest
from fastapi.testclient import TestClient

import zerobeacon_mf_1000_main as main_mod
from core import keystore


PRO_ENDPOINT = "/api/mf/03/delivery_proof"


def _smithery_header_from_config_schema() -> str:
    """Derive Smithery's forwarded header from the manifest's property name."""
    manifest = Path(__file__).resolve().parents[1] / "smithery.yaml"
    text = manifest.read_text(encoding="utf-8")
    properties = list(re.finditer(
        r"(?m)^    (?P<name>[A-Za-z][A-Za-z0-9_-]*):\s*\n"
        r"(?P<body>(?:^ {6,}[^\n]*(?:\n|$))*)",
        text,
    ))
    api_key_properties = [
        property_match for property_match in properties
        if re.search(
            r"(?m)^      x-to:\s*\n^        header:\s*X-API-Key\s*$",
            property_match.group("body"),
        )
    ]
    assert len(api_key_properties) == 1, (
        "smithery.yaml must define exactly one configSchema property that "
        "forwards to X-API-Key"
    )

    property_name = api_key_properties[0].group("name")
    return re.sub(
        r"([a-z0-9])([A-Z])",
        r"\1-\2",
        property_name.replace("_", "-"),
    ).lower()


@pytest.fixture(autouse=True)
def isolated_keystore():
    """Prevent the test's issued key from leaking into other tests."""
    snapshot = dict(keystore._store)
    yield
    keystore._store.clear()
    keystore._store.update(snapshot)


def test_header_derived_from_smithery_schema_unlocks_paid_route():
    """A schema rename must fail CI unless both tier gates accept its header."""
    pro_key = keystore.issue_key("pro_10", "smithery-schema-test@example.com")
    smithery_header = _smithery_header_from_config_schema()

    with TestClient(main_mod.app, raise_server_exceptions=True) as client:
        response = client.get(PRO_ENDPOINT, headers={smithery_header: pro_key})

    assert response.status_code == 200, (
        f"Expected a response using Smithery-derived header {smithery_header!r}; "
        f"got {response.status_code}: {response.text[:300]}"
    )
    assert response.json().get("error") != "tier_required", (
        f"Smithery-derived header {smithery_header!r} was rejected by a tier gate: "
        f"{response.text[:300]}"
    )