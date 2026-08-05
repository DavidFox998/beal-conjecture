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
from core.rapidapi_auth import verify_rapidapi_request


def require_tier(min_tier: str):
    """Return a FastAPI dependency that enforces `min_tier` access.

    Auth priority (first match wins):
    1. X-RapidAPI-Key + validated X-RapidAPI-Proxy-Secret → tier from subscription
    2. X-API-Key (zbk_…)                                  → tier from keystore
    3. api_key header (Smithery gateway)                   → tier from keystore
    4. No key                                              → free (rank 0)

    RapidAPI requests that fail proxy-secret validation fall through to the
    zbk_ keystore path — they are NOT granted subscription-level access.
    """
    min_rank = keystore.rank_of(min_tier)

    async def _check(
        request: Request,
        x_api_key: str | None = Header(default=None),
        x_rapidapi_key: str | None = Header(default=None),
        x_rapidapi_proxy_secret: str | None = Header(default=None),
        x_rapidapi_subscription: str | None = Header(default=None),
        api_key: str | None = Header(default=None),   # Smithery gateway
    ):
        rapidapi_tier, _ = verify_rapidapi_request(
            x_rapidapi_key=x_rapidapi_key,
            x_rapidapi_proxy_secret=x_rapidapi_proxy_secret,
            x_rapidapi_subscription=x_rapidapi_subscription,
        )

        if rapidapi_tier is not None:
            # Verified RapidAPI gateway request
            caller_tier = rapidapi_tier
            caller_rank = keystore.rank_of(caller_tier)
        else:
            # Native zbk_ key or Smithery api_key header
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
