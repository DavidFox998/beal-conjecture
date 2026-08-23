"""Authoritative public catalog identity, tool counts, and tier boundaries."""

FREE_TOOL_COUNT = 102
PRO_TOOL_COUNT = 402
PRO_PLUS_TOOL_COUNT = 802
ENTERPRISE_TOOL_COUNT = 1052

# Every public discovery surface must use these values.  Keeping the identity
# here avoids a stale marketplace listing when the catalog changes.
SERVER_NAME = f"ZeroBeacon.ai — {ENTERPRISE_TOOL_COUNT} Tools"
MCP_SERVER_ID = "zerobeacon-1052"
CATALOG_VERSION = "1052.1.1"
ADVERTISED_TOOL_COUNT = ENTERPRISE_TOOL_COUNT

UPGRADE_URL = "https://zerobeacon.ai/upgrade"
STRIPE_CHECKOUT_URL = "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"


def tier_counts() -> dict[str, int]:
    """Return the cumulative tools accessible at each subscription tier."""
    return {
        "FREE": FREE_TOOL_COUNT,
        "PRO": PRO_TOOL_COUNT,
        "PRO_PLUS": PRO_PLUS_TOOL_COUNT,
        "ENTERPRISE": ENTERPRISE_TOOL_COUNT,
    }