"""Regression checks for the MCP metadata advertised by free-tier tools."""

import inspect

from routers import zerobeacon_mf_01_050_b1a_trust as mf_01
from routers import zerobeacon_mf_02_050_b1b_trust as mf_02
from tool_schemas import TOOL_SCHEMAS


def _unique_endpoints(module):
    return {
        route.endpoint.__name__: route.endpoint
        for route in module.router.routes
        if hasattr(route, "endpoint")
    }


def test_every_free_tier_endpoint_has_a_specific_schema():
    for block, module in (("01", mf_01), ("02", mf_02)):
        for endpoint_name in _unique_endpoints(module):
            tool_name = f"mf_{block}_{endpoint_name}"
            assert tool_name in TOOL_SCHEMAS, f"{tool_name} uses the generic fallback"


def test_free_tier_schemas_match_callable_parameters():
    for block, module in (("01", mf_01), ("02", mf_02)):
        for endpoint_name, endpoint in _unique_endpoints(module).items():
            tool_name = f"mf_{block}_{endpoint_name}"
            metadata = TOOL_SCHEMAS[tool_name]
            schema = metadata["inputSchema"]

            assert metadata["description"]
            assert schema["type"] == "object"
            assert schema["additionalProperties"] is False
            assert set(schema["properties"]) == set(inspect.signature(endpoint).parameters)

            for property_schema in schema["properties"].values():
                assert property_schema["type"] in {"integer", "number", "string", "boolean"}
                assert property_schema["description"]