from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}


@router.get("/v1_sieve_level10_p_eq_14_mod23_new_uniqu")
@router.post("/v1_sieve_level10_p_eq_14_mod23_new_uniqu")
def v1_sieve_level10_p_eq_14_mod23_new_uniqu(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level10_p_eq_14_mod23_new_uniqu","original_route":"/v1/sieve/level10/p=14-mod23-new-unique-survivor","safe_slug":"v1_sieve_level10_p_eq_14_mod23_new_uniqu","ok":True,**bp}


@router.get("/v1_sieve_level2_p_eq_1_mod4")
@router.post("/v1_sieve_level2_p_eq_1_mod4")
def v1_sieve_level2_p_eq_1_mod4(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level2_p_eq_1_mod4","original_route":"/v1/sieve/level2/p=1-mod4","safe_slug":"v1_sieve_level2_p_eq_1_mod4","ok":True,**bp}


@router.get("/v1_sieve_level3_p_eq_1_mod8")
@router.post("/v1_sieve_level3_p_eq_1_mod8")
def v1_sieve_level3_p_eq_1_mod8(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level3_p_eq_1_mod8","original_route":"/v1/sieve/level3/p=1-mod8","safe_slug":"v1_sieve_level3_p_eq_1_mod8","ok":True,**bp}


@router.get("/v1_sieve_level4_p_eq_4_mod5")
@router.post("/v1_sieve_level4_p_eq_4_mod5")
def v1_sieve_level4_p_eq_4_mod5(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level4_p_eq_4_mod5","original_route":"/v1/sieve/level4/p=4-mod5","safe_slug":"v1_sieve_level4_p_eq_4_mod5","ok":True,**bp}


@router.get("/v1_sieve_level5_p_eq_1_mod7")
@router.post("/v1_sieve_level5_p_eq_1_mod7")
def v1_sieve_level5_p_eq_1_mod7(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level5_p_eq_1_mod7","original_route":"/v1/sieve/level5/p=1-mod7","safe_slug":"v1_sieve_level5_p_eq_1_mod7","ok":True,**bp}


@router.get("/v1_sieve_level6_p_eq_7_mod11_exact")
@router.post("/v1_sieve_level6_p_eq_7_mod11_exact")
def v1_sieve_level6_p_eq_7_mod11_exact(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level6_p_eq_7_mod11_exact","original_route":"/v1/sieve/level6/p=7-mod11-exact","safe_slug":"v1_sieve_level6_p_eq_7_mod11_exact","ok":True,**bp}


@router.get("/v1_sieve_level7_p_eq_1_mod13_exact")
@router.post("/v1_sieve_level7_p_eq_1_mod13_exact")
def v1_sieve_level7_p_eq_1_mod13_exact(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level7_p_eq_1_mod13_exact","original_route":"/v1/sieve/level7/p=1-mod13-exact","safe_slug":"v1_sieve_level7_p_eq_1_mod13_exact","ok":True,**bp}


@router.get("/v1_sieve_level8_p_eq_1_mod17_exact")
@router.post("/v1_sieve_level8_p_eq_1_mod17_exact")
def v1_sieve_level8_p_eq_1_mod17_exact(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level8_p_eq_1_mod17_exact","original_route":"/v1/sieve/level8/p=1-mod17-exact","safe_slug":"v1_sieve_level8_p_eq_1_mod17_exact","ok":True,**bp}


@router.get("/v1_sieve_level9_p_eq_5_mod19_new_exact")
@router.post("/v1_sieve_level9_p_eq_5_mod19_new_exact")
def v1_sieve_level9_p_eq_5_mod19_new_exact(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_level9_p_eq_5_mod19_new_exact","original_route":"/v1/sieve/level9/p=5-mod19-new-exact","safe_slug":"v1_sieve_level9_p_eq_5_mod19_new_exact","ok":True,**bp}


@router.get("/v1_sieve_methodology_dirichlet_approx_vs")
@router.post("/v1_sieve_methodology_dirichlet_approx_vs")
def v1_sieve_methodology_dirichlet_approx_vs(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_methodology_dirichlet_approx_vs","original_route":"/v1/sieve/methodology/Dirichlet-approx-vs-exact","safe_slug":"v1_sieve_methodology_dirichlet_approx_vs","ok":True,**bp}


@router.get("/v1_sieve_no_fabricated_values")
@router.post("/v1_sieve_no_fabricated_values")
def v1_sieve_no_fabricated_values(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_no_fabricated_values","original_route":"/v1/sieve/no-fabricated-values","safe_slug":"v1_sieve_no_fabricated_values","ok":True,**bp}


@router.get("/v1_sieve_pi_x_exact")
@router.post("/v1_sieve_pi_x_exact")
def v1_sieve_pi_x_exact(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_pi_x_exact","original_route":"/v1/sieve/pi/X/exact","safe_slug":"v1_sieve_pi_x_exact","ok":True,**bp}


@router.get("/v1_sieve_primality_each_candidate")
@router.post("/v1_sieve_primality_each_candidate")
def v1_sieve_primality_each_candidate(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_primality_each_candidate","original_route":"/v1/sieve/primality/each-candidate","safe_slug":"v1_sieve_primality_each_candidate","ok":True,**bp}


@router.get("/v1_sieve_range_x_eq_10_pow_10")
@router.post("/v1_sieve_range_x_eq_10_pow_10")
def v1_sieve_range_x_eq_10_pow_10(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_range_x_eq_10_pow_10","original_route":"/v1/sieve/range/X=10^10","safe_slug":"v1_sieve_range_x_eq_10_pow_10","ok":True,**bp}


@router.get("/v1_sieve_residue_table_10_conditions")
@router.post("/v1_sieve_residue_table_10_conditions")
def v1_sieve_residue_table_10_conditions(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_table_10_conditions","original_route":"/v1/sieve/residue-table/10-conditions","safe_slug":"v1_sieve_residue_table_10_conditions","ok":True,**bp}


@router.get("/v1_sieve_residue_3_pow_p_mod7_eq_3")
@router.post("/v1_sieve_residue_3_pow_p_mod7_eq_3")
def v1_sieve_residue_3_pow_p_mod7_eq_3(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_3_pow_p_mod7_eq_3","original_route":"/v1/sieve/residue/3^p-mod7=3","safe_slug":"v1_sieve_residue_3_pow_p_mod7_eq_3","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod11_eq_7")
@router.post("/v1_sieve_residue_p_mod11_eq_7")
def v1_sieve_residue_p_mod11_eq_7(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod11_eq_7","original_route":"/v1/sieve/residue/p-mod11=7","safe_slug":"v1_sieve_residue_p_mod11_eq_7","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod13_eq_1")
@router.post("/v1_sieve_residue_p_mod13_eq_1")
def v1_sieve_residue_p_mod13_eq_1(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod13_eq_1","original_route":"/v1/sieve/residue/p-mod13=1","safe_slug":"v1_sieve_residue_p_mod13_eq_1","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod17_eq_1")
@router.post("/v1_sieve_residue_p_mod17_eq_1")
def v1_sieve_residue_p_mod17_eq_1(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod17_eq_1","original_route":"/v1/sieve/residue/p-mod17=1","safe_slug":"v1_sieve_residue_p_mod17_eq_1","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod19_eq_5_new")
@router.post("/v1_sieve_residue_p_mod19_eq_5_new")
def v1_sieve_residue_p_mod19_eq_5_new(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod19_eq_5_new","original_route":"/v1/sieve/residue/p-mod19=5-new","safe_slug":"v1_sieve_residue_p_mod19_eq_5_new","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod23_eq_14_new")
@router.post("/v1_sieve_residue_p_mod23_eq_14_new")
def v1_sieve_residue_p_mod23_eq_14_new(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod23_eq_14_new","original_route":"/v1/sieve/residue/p-mod23=14-new","safe_slug":"v1_sieve_residue_p_mod23_eq_14_new","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod4_eq_1")
@router.post("/v1_sieve_residue_p_mod4_eq_1")
def v1_sieve_residue_p_mod4_eq_1(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod4_eq_1","original_route":"/v1/sieve/residue/p-mod4=1","safe_slug":"v1_sieve_residue_p_mod4_eq_1","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod5_eq_4")
@router.post("/v1_sieve_residue_p_mod5_eq_4")
def v1_sieve_residue_p_mod5_eq_4(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod5_eq_4","original_route":"/v1/sieve/residue/p-mod5=4","safe_slug":"v1_sieve_residue_p_mod5_eq_4","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod7_eq_1")
@router.post("/v1_sieve_residue_p_mod7_eq_1")
def v1_sieve_residue_p_mod7_eq_1(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod7_eq_1","original_route":"/v1/sieve/residue/p-mod7=1","safe_slug":"v1_sieve_residue_p_mod7_eq_1","ok":True,**bp}


@router.get("/v1_sieve_residue_p_mod8_eq_1")
@router.post("/v1_sieve_residue_p_mod8_eq_1")
def v1_sieve_residue_p_mod8_eq_1(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_residue_p_mod8_eq_1","original_route":"/v1/sieve/residue/p-mod8=1","safe_slug":"v1_sieve_residue_p_mod8_eq_1","ok":True,**bp}


@router.get("/v1_sieve_status_greedy_modular_collapse")
@router.post("/v1_sieve_status_greedy_modular_collapse")
def v1_sieve_status_greedy_modular_collapse(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_status_greedy_modular_collapse","original_route":"/v1/sieve/status/GREEDY_MODULAR_COLLAPSE_CERTIFIED","safe_slug":"v1_sieve_status_greedy_modular_collapse","ok":True,**bp}


@router.get("/v1_sieve_theorem_m27_greedy_modular_coll")
@router.post("/v1_sieve_theorem_m27_greedy_modular_coll")
def v1_sieve_theorem_m27_greedy_modular_coll(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_theorem_m27_greedy_modular_coll","original_route":"/v1/sieve/theorem/M27-greedy-modular-collapse","safe_slug":"v1_sieve_theorem_m27_greedy_modular_coll","ok":True,**bp}


@router.get("/v1_sieve_unique_survivor_reached")
@router.post("/v1_sieve_unique_survivor_reached")
def v1_sieve_unique_survivor_reached(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_unique_survivor_reached","original_route":"/v1/sieve/unique-survivor-reached","safe_slug":"v1_sieve_unique_survivor_reached","ok":True,**bp}


@router.get("/v1_sieve_unique_survivor_p_eq_551016649")
@router.post("/v1_sieve_unique_survivor_p_eq_551016649")
def v1_sieve_unique_survivor_p_eq_551016649(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_unique_survivor_p_eq_551016649","original_route":"/v1/sieve/unique-survivor/p=551016649","safe_slug":"v1_sieve_unique_survivor_p_eq_551016649","ok":True,**bp}


@router.get("/v1_sieve_zeta_exp_e_eq_1_1_d")
@router.post("/v1_sieve_zeta_exp_e_eq_1_1_d")
def v1_sieve_zeta_exp_e_eq_1_1_d(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_sieve_zeta_exp_e_eq_1_1_d","original_route":"/v1/sieve/zeta-exp/E=1/(1-D)","safe_slug":"v1_sieve_zeta_exp_e_eq_1_1_d","ok":True,**bp}


@router.get("/v1_build_module27_60_apis_list")
@router.post("/v1_build_module27_60_apis_list")
def v1_build_module27_60_apis_list(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_60_apis_list","original_route":"/v1/build/module27/60-apis-list","safe_slug":"v1_build_module27_60_apis_list","ok":True,**bp}


@router.get("/v1_build_module27_ap_candidates_computat")
@router.post("/v1_build_module27_ap_candidates_computat")
def v1_build_module27_ap_candidates_computat(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_ap_candidates_computat","original_route":"/v1/build/module27/AP-candidates-computation","safe_slug":"v1_build_module27_ap_candidates_computat","ok":True,**bp}


@router.get("/v1_build_module27_ascii_check")
@router.post("/v1_build_module27_ascii_check")
def v1_build_module27_ascii_check(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_ascii_check","original_route":"/v1/build/module27/ascii-check","safe_slug":"v1_build_module27_ascii_check","ok":True,**bp}


@router.get("/v1_build_module27_claim_field")
@router.post("/v1_build_module27_claim_field")
def v1_build_module27_claim_field(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_claim_field","original_route":"/v1/build/module27/claim-field","safe_slug":"v1_build_module27_claim_field","ok":True,**bp}


@router.get("/v1_build_module27_constants_paths")
@router.post("/v1_build_module27_constants_paths")
def v1_build_module27_constants_paths(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_constants_paths","original_route":"/v1/build/module27/constants/paths","safe_slug":"v1_build_module27_constants_paths","ok":True,**bp}


@router.get("/v1_build_module27_correction_note_meta_a")
@router.post("/v1_build_module27_correction_note_meta_a")
def v1_build_module27_correction_note_meta_a(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_correction_note_meta_a","original_route":"/v1/build/module27/correction-note-Meta-AI","safe_slug":"v1_build_module27_correction_note_meta_a","ok":True,**bp}


@router.get("/v1_build_module27_doc_build")
@router.post("/v1_build_module27_doc_build")
def v1_build_module27_doc_build(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_doc_build","original_route":"/v1/build/module27/doc-build","safe_slug":"v1_build_module27_doc_build","ok":True,**bp}


@router.get("/v1_build_module27_doc_template")
@router.post("/v1_build_module27_doc_template")
def v1_build_module27_doc_template(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_doc_template","original_route":"/v1/build/module27/doc-template","safe_slug":"v1_build_module27_doc_template","ok":True,**bp}


@router.get("/v1_build_module27_footer")
@router.post("/v1_build_module27_footer")
def v1_build_module27_footer(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_footer","original_route":"/v1/build/module27/footer","safe_slug":"v1_build_module27_footer","ok":True,**bp}


@router.get("/v1_build_module27_func_sha")
@router.post("/v1_build_module27_func_sha")
def v1_build_module27_func_sha(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_func_sha","original_route":"/v1/build/module27/func-sha","safe_slug":"v1_build_module27_func_sha","ok":True,**bp}


@router.get("/v1_build_module27_imports")
@router.post("/v1_build_module27_imports")
def v1_build_module27_imports(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_imports","original_route":"/v1/build/module27/imports","safe_slug":"v1_build_module27_imports","ok":True,**bp}


@router.get("/v1_build_module27_invariants_json_patch")
@router.post("/v1_build_module27_invariants_json_patch")
def v1_build_module27_invariants_json_patch(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_invariants_json_patch","original_route":"/v1/build/module27/invariants-json-patch","safe_slug":"v1_build_module27_invariants_json_patch","ok":True,**bp}


@router.get("/v1_build_module27_invariants_json_theore")
@router.post("/v1_build_module27_invariants_json_theore")
def v1_build_module27_invariants_json_theore(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_invariants_json_theore","original_route":"/v1/build/module27/invariants-json-theorem-field","safe_slug":"v1_build_module27_invariants_json_theore","ok":True,**bp}


@router.get("/v1_build_module27_kp_tie_again")
@router.post("/v1_build_module27_kp_tie_again")
def v1_build_module27_kp_tie_again(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_kp_tie_again","original_route":"/v1/build/module27/kp-tie-again","safe_slug":"v1_build_module27_kp_tie_again","ok":True,**bp}


@router.get("/v1_build_module27_layer_data")
@router.post("/v1_build_module27_layer_data")
def v1_build_module27_layer_data(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_layer_data","original_route":"/v1/build/module27/layer-data","safe_slug":"v1_build_module27_layer_data","ok":True,**bp}


@router.get("/v1_build_module27_layer_data_lv0")
@router.post("/v1_build_module27_layer_data_lv0")
def v1_build_module27_layer_data_lv0(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_layer_data_lv0","original_route":"/v1/build/module27/layer-data-Lv0","safe_slug":"v1_build_module27_layer_data_lv0","ok":True,**bp}


@router.get("/v1_build_module27_layer_data_lv1")
@router.post("/v1_build_module27_layer_data_lv1")
def v1_build_module27_layer_data_lv1(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_layer_data_lv1","original_route":"/v1/build/module27/layer-data-Lv1","safe_slug":"v1_build_module27_layer_data_lv1","ok":True,**bp}


@router.get("/v1_build_module27_layer_data_lv10_new")
@router.post("/v1_build_module27_layer_data_lv10_new")
def v1_build_module27_layer_data_lv10_new(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_layer_data_lv10_new","original_route":"/v1/build/module27/layer-data-Lv10-new","safe_slug":"v1_build_module27_layer_data_lv10_new","ok":True,**bp}


@router.get("/v1_build_module27_layer_data_lv2")
@router.post("/v1_build_module27_layer_data_lv2")
def v1_build_module27_layer_data_lv2(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_layer_data_lv2","original_route":"/v1/build/module27/layer-data-Lv2","safe_slug":"v1_build_module27_layer_data_lv2","ok":True,**bp}


@router.get("/v1_build_module27_layer_data_lv3")
@router.post("/v1_build_module27_layer_data_lv3")
def v1_build_module27_layer_data_lv3(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):
    bp=beacon_payload()
    return {"tool":"v1_build_module27_layer_data_lv3","original_route":"/v1/build/module27/layer-data-Lv3","safe_slug":"v1_build_module27_layer_data_lv3","ok":True,**bp}

