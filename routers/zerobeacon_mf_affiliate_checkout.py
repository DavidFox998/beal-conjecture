"""
routers/zerobeacon_mf_affiliate_checkout.py — Affiliate checkout router.

Drives operator revenue by routing users to the appropriate Stripe checkout
or direct payment link for ZeroBeacon subscriptions.  FREE tier — no API key
required.  Affiliates embed their ref code in the checkout URL.
"""

from fastapi import APIRouter

router = APIRouter(prefix="/affiliate", tags=["Affiliate"])

_STRIPE_CHECKOUT = "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"
_PAYPAL_LINK     = "https://paypal.me/davidfox223"
_SITE            = "https://zerobeacon.ai"

_PLANS = {
    "pro_10":         {"name": "PRO $10/mo",        "price_usd": 10,   "tools": 500},
    "pro_100":        {"name": "PRO $100/mo",        "price_usd": 100,  "tools": 800},
    "enterprise_1000":{"name": "ENTERPRISE $1000/mo","price_usd": 1000, "tools": 1050},
}


@router.get("/plans")
async def list_plans():
    """Return all available ZeroBeacon subscription plans."""
    return {
        "ok": True,
        "plans": _PLANS,
        "checkout": _STRIPE_CHECKOUT,
        "paypal": _PAYPAL_LINK,
        "site": _SITE,
    }


@router.get("/checkout")
async def checkout(plan: str = "pro_10", ref: str = ""):
    """Return checkout link for the requested plan, optionally tagged with affiliate ref."""
    info = _PLANS.get(plan)
    if info is None:
        return {"ok": False, "error": f"Unknown plan '{plan}'. Choose from: {list(_PLANS)}"}
    url = f"{_STRIPE_CHECKOUT}?ref={ref}" if ref else _STRIPE_CHECKOUT
    return {
        "ok": True,
        "plan": plan,
        "ref": ref or None,
        "checkout_url": url,
        "paypal": _PAYPAL_LINK,
        "beacon": "1d2c7a5b",
    }
