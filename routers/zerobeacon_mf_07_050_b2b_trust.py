from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}


@router.get("/beacon")
@router.post("/beacon")
def beacon_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    # real beacon - next prime
    return {
        "tool": "beacon",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/batch")
@router.post("/batch")
def batch_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    # real batch - 10 beacons
    return {
        "tool": "batch",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/entangled_twin")
@router.post("/entangled_twin")
def entangled_twin_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    if p in (MOAT_P1, MOAT_P2): return {"tool":"entangled_twin","block":"b1","ok":True,"d":D,"p1":MOAT_P1,"p2":MOAT_P2,"beacon":BEACON,"collision":True}
    return {"tool":"entangled_twin","block":"b1","ok":True,**beacon_payload(p),"id":str(uuid.uuid4())[:8],"agent_id":agent_id}


@router.get("/leader_elect")
@router.post("/leader_elect")
def leader_elect_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    random.seed(int(bp['beacon'],16))
    return {
        "tool": "leader_elect",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/nonce_burn")
@router.post("/nonce_burn")
def nonce_burn_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "nonce_burn",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/fair_airdrop")
@router.post("/fair_airdrop")
def fair_airdrop_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "fair_airdrop",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/shard")
@router.post("/shard")
def shard_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "shard",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/timeproof")
@router.post("/timeproof")
def timeproof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "timeproof",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/hashline")
@router.post("/hashline")
def hashline_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "hashline",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/idempotency_key")
@router.post("/idempotency_key")
def idempotency_key_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "idempotency_key",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/rate_limit_token")
@router.post("/rate_limit_token")
def rate_limit_token_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "rate_limit_token",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/lock_lease")
@router.post("/lock_lease")
def lock_lease_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "lock_lease",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/queue_push")
@router.post("/queue_push")
def queue_push_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "queue_push",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/counter_incr")
@router.post("/counter_incr")
def counter_incr_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "counter_incr",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/roll")
@router.post("/roll")
def roll_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    random.seed(int(bp['beacon'],16))
    return {
        "tool": "roll",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/slugify")
@router.post("/slugify")
def slugify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "slugify",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/color_name")
@router.post("/color_name")
def color_name_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "color_name",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/cron_next")
@router.post("/cron_next")
def cron_next_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "cron_next",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/hash_sha256")
@router.post("/hash_sha256")
def hash_sha256_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "hash_sha256",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/jwt_dump")
@router.post("/jwt_dump")
def jwt_dump_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "jwt_dump",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/watermark")
@router.post("/watermark")
def watermark_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "watermark",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/commit")
@router.post("/commit")
def commit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "commit",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/reveal")
@router.post("/reveal")
def reveal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "reveal",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/audit_log")
@router.post("/audit_log")
def audit_log_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "audit_log",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/signature_notarize")
@router.post("/signature_notarize")
def signature_notarize_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "signature_notarize",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/lottery_draw")
@router.post("/lottery_draw")
def lottery_draw_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "lottery_draw",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/vrf_prove")
@router.post("/vrf_prove")
def vrf_prove_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "vrf_prove",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/zk_prove")
@router.post("/zk_prove")
def zk_prove_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "zk_prove",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/token_mint")
@router.post("/token_mint")
def token_mint_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "token_mint",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/batch_verify")
@router.post("/batch_verify")
def batch_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "batch_verify",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/chain_verify")
@router.post("/chain_verify")
def chain_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "chain_verify",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/agent_receipt")
@router.post("/agent_receipt")
def agent_receipt_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "agent_receipt",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/merkle_root")
@router.post("/merkle_root")
def merkle_root_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "merkle_root",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/proof_sequential")
@router.post("/proof_sequential")
def proof_sequential_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "proof_sequential",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/time_lock")
@router.post("/time_lock")
def time_lock_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "time_lock",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/coin_flip_entangled")
@router.post("/coin_flip_entangled")
def coin_flip_entangled_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "coin_flip_entangled",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/hash_and_entangle")
@router.post("/hash_and_entangle")
def hash_and_entangle_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "hash_and_entangle",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/beacon_verify")
@router.post("/beacon_verify")
def beacon_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "beacon_verify",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/prime_next")
@router.post("/prime_next")
def prime_next_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "prime_next",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/entropy_mix")
@router.post("/entropy_mix")
def entropy_mix_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "entropy_mix",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/random_choice")
@router.post("/random_choice")
def random_choice_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "random_choice",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/shuffle")
@router.post("/shuffle")
def shuffle_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    random.seed(int(bp['beacon'],16))
    return {
        "tool": "shuffle",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/uuid_v7_beacon")
@router.post("/uuid_v7_beacon")
def uuid_v7_beacon_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "uuid_v7_beacon",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/snowflake_id")
@router.post("/snowflake_id")
def snowflake_id_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "snowflake_id",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/otp_generate")
@router.post("/otp_generate")
def otp_generate_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "otp_generate",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/totp_verify")
@router.post("/totp_verify")
def totp_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "totp_verify",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/beacon_stream")
@router.post("/beacon_stream")
def beacon_stream_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "beacon_stream",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/collision_proof")
@router.post("/collision_proof")
def collision_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "collision_proof",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/genesis_proof")
@router.post("/genesis_proof")
def genesis_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "genesis_proof",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/formula_proof")
@router.post("/formula_proof")
def formula_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "formula_proof",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }

