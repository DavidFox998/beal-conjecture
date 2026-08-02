"""Zerobeacon MF 300 — routers 01–06 only (B1, 300 tools)."""
from fastapi import FastAPI, Request
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse

from core.beacon import beacon_payload, D, BEACON, GENESIS_P

from routers import (
    zerobeacon_mf_01_050_b1a_trust    as m01,
    zerobeacon_mf_02_050_b1b_trust    as m02,
    zerobeacon_mf_03_050_b2a_billing  as m03,
    zerobeacon_mf_04_050_b3a_commerce as m04,
    zerobeacon_mf_05_050_b4a_sovereign as m05,
    zerobeacon_mf_06_050_b5a_will     as m06,
)

app = FastAPI(title="Zerobeacon_mf_300 — d=2303582338 — 6x50", version="300.0.0")
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_credentials=True,
                   allow_methods=["*"], allow_headers=["*"])

ROUTERS = [
    (m01, "/api/mf/01", "MF-01"), (m02, "/api/mf/02", "MF-02"),
    (m03, "/api/mf/03", "MF-03"), (m04, "/api/mf/04", "MF-04"),
    (m05, "/api/mf/05", "MF-05"), (m06, "/api/mf/06", "MF-06"),
]
for mod, prefix, tag in ROUTERS:
    app.include_router(mod.router, prefix=prefix, tags=[tag])

@app.get("/health")
def health():
    bp = beacon_payload(GENESIS_P)
    return {"ok": True, "tools": 300, "d": D, "beacon": BEACON, "p": bp["p"]}
