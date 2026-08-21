"""
routers/shopify_app.py — Shopify App integration router.

Handles its own authentication via Shopify OAuth and HMAC signature
verification on incoming webhooks. No ZeroBeacon tier gate applied.
"""

import hashlib
import hmac
import os

from fastapi import APIRouter, Header, HTTPException, Request

router = APIRouter(prefix="/shopify", tags=["Shopify"])

_SHOPIFY_SECRET: str = os.environ.get("SHOPIFY_WEBHOOK_SECRET", "").strip()


def _verify_shopify_hmac(data: bytes, hmac_header: str) -> bool:
    """Return True if the request HMAC matches the configured secret."""
    if not _SHOPIFY_SECRET:
        return False
    digest = hmac.new(
        _SHOPIFY_SECRET.encode(), data, hashlib.sha256
    ).digest()
    import base64 as _b64
    expected = _b64.b64encode(digest).decode()
    return hmac.compare_digest(expected, hmac_header or "")


@router.post("/webhook")
async def shopify_webhook(
    request: Request,
    x_shopify_hmac_sha256: str | None = Header(None),
):
    """Receive Shopify webhook events (orders, fulfillments, etc.)."""
    body = await request.body()
    if not _verify_shopify_hmac(body, x_shopify_hmac_sha256 or ""):
        raise HTTPException(status_code=401, detail="Invalid Shopify HMAC")
    return {"ok": True, "status": "webhook_received"}


@router.get("/status")
async def shopify_status():
    """Return Shopify integration configuration status."""
    return {
        "ok": True,
        "shopify_secret_configured": bool(_SHOPIFY_SECRET),
    }
