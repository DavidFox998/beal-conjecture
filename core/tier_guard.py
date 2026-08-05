"""
FastAPI dependencies for tier-based access control.

Usage in router includes:
    app.include_router(mod.router, prefix=prefix, tags=[tag],
                       dependencies=[Depends(require_tier("pro_10"))])

Native ZeroBeacon keys: pass X-API-Key: zbk_<32hex>
RapidAPI subscribers:   gateway injects X-RapidAPI-Key + X-RapidAPI-Subscription
Smithery gateway:       passes api_key header

Missing / FREE keys are allowed only on FREE-tier routers.
"""

from fastapi import Depends, HTTPException, Header, Request
from core import keystore

# RapidAPI plan name → ZeroBeacon internal tier
# Must stay in sync with RAPIDAPI_SUBSCRIPTION_TIER in zerobeacon_mf_1000_main.py
_RAPIDAPI_TIER: dict[str, str] = {
    "BASIC": "free",
    "PRO":   "pro_10",
    "ULTRA": "pro_100",
    "MEGA":  "enterprise_1000",
}


def require_tier(min_tier: str):
    """Return a FastAPI dependency that enforces `min_tier` access.

    Auth priority (first match wins):
    1. X-RapidAPI-Key + X-RapidAPI-Subscription  → tier from subscription plan
    2. X-API-Key (zbk_…)                          → tier from keystore lookup
    3. api_key header (Smithery gateway)           → tier from keystore lookup
    4. No key                                      → free (rank 0)
    """
    min_rank = keystore.rank_of(min_tier)

    async def _check(
        request: Request,
        x_api_key: str | None = Header(default=None),
        x_rapidapi_key: str | None = Header(default=None),
        x_rapidapi_subscription: str | None = Header(default=None),
        api_key: str | None = Header(default=None),   # Smithery gateway
    ):
        if x_rapidapi_key is not None:
            # RapidAPI gateway request — use subscription tier directly,
            # no zbk_ keystore lookup required.
            plan = (x_rapidapi_subscription or "BASIC").upper()
            caller_tier = _RAPIDAPI_TIER.get(plan, "free")
            caller_rank = keystore.rank_of(caller_tier)
        else:
            effective_key = x_api_key or api_key
            if effective_key is None:
                caller_rank = 0
                caller_tier = "free"
            else:
                caller_tier = keystore.tier_of(effective_key)
                caller_rank = keystore.rank_of(caller_tier)

        if caller_rank < min_rank:
            tier_name = min_tier.replace("_", " ").replace("pro 10", "PRO $10/mo").replace(
                "pro 100", "PRO $100/mo").replace("enterprise 1000", "ENTERPRISE $1000")
            raise HTTPException(
                status_code=403,
                detail={
                    "error":         "tier_required",
                    "required_tier": min_tier,
                    "your_tier":     caller_tier,
                    "upgrade":       "https://zerobeacon.ai/pricing",
                    "rapidapi":      "https://rapidapi.com/davidjfox998/api/zerobeacon",
                    "stripe":        "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
                    "paypal":        "https://paypal.me/davidfox223",
                    "message": (
                        f"This block requires {tier_name} or higher. "
                        "Purchase at /pricing or upgrade your RapidAPI plan."
                    ),
                },
            )

    return _check
