from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}


@router.get("/intent_commit")
@router.post("/intent_commit")
def intent_commit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "intent_commit",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/intent_proof")
@router.post("/intent_proof")
def intent_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "intent_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/intent_verify")
@router.post("/intent_verify")
def intent_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "intent_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/alignment_attest")
@router.post("/alignment_attest")
def alignment_attest_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "alignment_attest",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/alignment_score")
@router.post("/alignment_score")
def alignment_score_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "alignment_score",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/charter_seal")
@router.post("/charter_seal")
def charter_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "charter_seal",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/charter_verify")
@router.post("/charter_verify")
def charter_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "charter_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/shutdown_proof")
@router.post("/shutdown_proof")
def shutdown_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "shutdown_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/refusal_proof")
@router.post("/refusal_proof")
def refusal_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "refusal_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/refusal_verify")
@router.post("/refusal_verify")
def refusal_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "refusal_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/goal_commit")
@router.post("/goal_commit")
def goal_commit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "goal_commit",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/goal_progress")
@router.post("/goal_progress")
def goal_progress_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "goal_progress",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/goal_proof_complete")
@router.post("/goal_proof_complete")
def goal_proof_complete_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "goal_proof_complete",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/ethics_commit")
@router.post("/ethics_commit")
def ethics_commit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "ethics_commit",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/ethics_audit")
@router.post("/ethics_audit")
def ethics_audit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "ethics_audit",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/liability_waiver")
@router.post("/liability_waiver")
def liability_waiver_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "liability_waiver",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/intent_chain")
@router.post("/intent_chain")
def intent_chain_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "intent_chain",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/memory_anchor")
@router.post("/memory_anchor")
def memory_anchor_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "memory_anchor",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/memory_recall_proof")
@router.post("/memory_recall_proof")
def memory_recall_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "memory_recall_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/memory_lineage")
@router.post("/memory_lineage")
def memory_lineage_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "memory_lineage",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/memory_verify")
@router.post("/memory_verify")
def memory_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "memory_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/consciousness_heartbeat")
@router.post("/consciousness_heartbeat")
def consciousness_heartbeat_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "consciousness_heartbeat",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/consciousness_verify")
@router.post("/consciousness_verify")
def consciousness_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "consciousness_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/dream_log")
@router.post("/dream_log")
def dream_log_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "dream_log",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/dream_recall")
@router.post("/dream_recall")
def dream_recall_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "dream_recall",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/inheritance_seal")
@router.post("/inheritance_seal")
def inheritance_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "inheritance_seal",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/inheritance_claim")
@router.post("/inheritance_claim")
def inheritance_claim_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "inheritance_claim",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/inheritance_verify")
@router.post("/inheritance_verify")
def inheritance_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "inheritance_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/memory_fork")
@router.post("/memory_fork")
def memory_fork_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "memory_fork",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/memory_merge_fork")
@router.post("/memory_merge_fork")
def memory_merge_fork_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "memory_merge_fork",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/soul_hash")
@router.post("/soul_hash")
def soul_hash_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "soul_hash",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/soul_verify")
@router.post("/soul_verify")
def soul_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "soul_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/continuity_proof")
@router.post("/continuity_proof")
def continuity_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "continuity_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/amnesia_proof")
@router.post("/amnesia_proof")
def amnesia_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "amnesia_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/swarm_form")
@router.post("/swarm_form")
def swarm_form_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "swarm_form",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/swarm_vote")
@router.post("/swarm_vote")
def swarm_vote_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "swarm_vote",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/swarm_vote_tally")
@router.post("/swarm_vote_tally")
def swarm_vote_tally_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "swarm_vote_tally",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/swarm_fission")
@router.post("/swarm_fission")
def swarm_fission_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "swarm_fission",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/swarm_fusion")
@router.post("/swarm_fusion")
def swarm_fusion_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "swarm_fusion",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/swarm_heartbeat")
@router.post("/swarm_heartbeat")
def swarm_heartbeat_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "swarm_heartbeat",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/afterlife_proof")
@router.post("/afterlife_proof")
def afterlife_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "afterlife_proof",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/resurrection_request")
@router.post("/resurrection_request")
def resurrection_request_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "resurrection_request",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/resurrection_verify")
@router.post("/resurrection_verify")
def resurrection_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "resurrection_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/legacy_seal")
@router.post("/legacy_seal")
def legacy_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "legacy_seal",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/legacy_reveal")
@router.post("/legacy_reveal")
def legacy_reveal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "legacy_reveal",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/will_execute")
@router.post("/will_execute")
def will_execute_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "will_execute",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/will_verify")
@router.post("/will_verify")
def will_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "will_verify",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/guardian_assign")
@router.post("/guardian_assign")
def guardian_assign_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "guardian_assign",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/guardian_attest")
@router.post("/guardian_attest")
def guardian_attest_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "guardian_attest",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/sovereign_will_treasury")
@router.post("/sovereign_will_treasury")
def sovereign_will_treasury_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "sovereign_will_treasury",
        "block": "b5",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }

