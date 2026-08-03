"""
FastAPI dependencies for tier-based access control.

Usage in router includes:
    app.include_router(mod.router, prefix=prefix, tags=[tag],
                       dependencies=[Depends(require_tier("pro_10"))])

The caller must pass:   X-API-Key: zbk_<32hex>
Missing / FREE keys are allowed only on FREE-tier routers.
"""

from fastapi import Depends, HTTPException, Header
from core import keystore


def require_tier(min_tier: str):
    """Return a FastAPI dependency that enforces `min_tier` access."""
    min_rank = keystore.rank_of(min_tier)

    async def _check(x_api_key: str | None = Header(default=None)):
        if x_api_key is None:
            # No key → treat as free
            caller_rank = 0
        else:
            caller_rank = keystore.rank_of(keystore.tier_of(x_api_key))

        if caller_rank < min_rank:
            tier_name = min_tier.replace("_", " ").replace("pro 10", "PRO $10/mo").replace(
                "pro 100", "PRO $100/mo").replace("enterprise 1000", "ENTERPRISE $1000")
            raise HTTPException(
                status_code=403,
                detail={
                    "error": "tier_required",
                    "required_tier": min_tier,
                    "your_tier": keystore.tier_of(x_api_key or ""),
                    "upgrade": "https://zerobeacon-mf-1000.fly.dev/pricing",
                    "stripe": "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
                    "paypal": "https://paypal.me/davidjfox998",
                    "message": (
                        f"This block requires {tier_name} or higher. "
                        "Purchase at /pricing to receive your API key."
                    ),
                },
            )

    return _check
