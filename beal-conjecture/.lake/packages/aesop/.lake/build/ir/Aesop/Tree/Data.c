// Lean compiler output
// Module: Aesop.Tree.Data
// Imports: Init Aesop.Constants Aesop.Script.Step Aesop.Tracing Aesop.Tree.UnsafeQueue
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
LEAN_EXPORT lean_object* l_Aesop_Goal_lastExpandedInIteration___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_parent(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setSuccessProbability(double, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeRulesSelected___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_id(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT double l_Aesop_Goal_priority(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setLastExpandedInIteration___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_decEqGoalId____x40_Aesop_Tree_Data___hyg_61____boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_RappId_instDecidableRelLt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
double lean_float_mul(double, double);
LEAN_EXPORT lean_object* l_Aesop_Goal_setPreNormGoal___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_hasSafeRapp(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_GoalState_isUnprovable(uint8_t);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalOrigin_originalGoalId_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_lastExpandedInIteration(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_id___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasProvableRapp___spec__1(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_parent___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsForcedUnprovable___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_goals(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedNormalizationState;
static lean_object* l_Aesop_Iteration_instToString___closed__1;
LEAN_EXPORT lean_object* l_Aesop_GoalState_instToString___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Iteration_instDecidableEq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_instHashable___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_noConfusion___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_zero;
LEAN_EXPORT lean_object* l_Aesop_Goal_preNormGoal(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1(lean_object*, lean_object*);
uint64_t lean_uint64_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_hasProvableRapp___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_hasMVar___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIsIrrelevant(uint8_t, lean_object*);
static lean_object* l_Aesop_GoalOrigin_toString___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Rapp_setState___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
extern lean_object* l_Aesop_nodeUnknownEmoji;
LEAN_EXPORT lean_object* l_Aesop_Rapp_introducedMVars___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_isProven___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_isIrrelevant___boxed(lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setState___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_GoalOrigin_toString___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Goal_mvars___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_NodeState_isIrrelevant(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Rapp_parentPostNormMetaState___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_Goal_firstProvenRapp_x3f___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_Rapp_successProbability(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__5(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_state___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoal_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue_x3f___boxed(lean_object*);
lean_object* l_ST_Prim_Ref_get___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Iteration_instDecidableRelLt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instDecidableEqRappId___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_modify___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_isNormal(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isForcedUnprovable___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_NodeState_isUnprovable(uint8_t);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___lambda__1(size_t, lean_object*, lean_object*, lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_children___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setScriptSteps_x3f(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_GoalState_isProvenByRuleApplication(uint8_t);
static lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__2;
LEAN_EXPORT lean_object* l_Aesop_GoalState_isProvenByRuleApplication___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_isUnprovable___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_originalSubgoals___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isRoot___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeQueue(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_depth(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_toEmoji(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_GoalId_instToString(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeRulesSelected(uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_toCtorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setState(uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_origin___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_addedInIteration___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoalAndMetaState(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_toEmoji___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_addedInIteration(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setState(uint8_t, lean_object*);
static lean_object* l_Aesop_treeImpl___closed__4;
LEAN_EXPORT uint8_t l_Aesop_GoalState_isUnknown(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Rapp_depth___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setAddedInIteration___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_metaState(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isExhausted(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_one;
LEAN_EXPORT lean_object* l_Aesop_Goal_mk(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_forSubgoalsM___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_normalizedGoal_x3f___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_NormalizationState_isProvenByNormalization(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___lambda__1(size_t, lean_object*, lean_object*, lean_object*, lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_instToString(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Goal_setFailedRapps___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rapp_state(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_parent_x3f___boxed(lean_object*);
static lean_object* l_Aesop_treeImpl___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Rapp_originalSubgoals(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_isUnknown___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_successProbability___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_id___boxed(lean_object*);
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_decEqGoalId____x40_Aesop_Tree_Data___hyg_61_(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoalAndMetaState_x3f(lean_object*);
extern lean_object* l_instInhabitedNat;
LEAN_EXPORT lean_object* l_Aesop_instBEqNodeState;
LEAN_EXPORT lean_object* l_Aesop_Goal_preNormGoal___boxed(lean_object*);
LEAN_EXPORT uint64_t l_Aesop_GoalId_instHashable(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_MVarCluster_isIrrelevant(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_NodeState_instToString___closed__2;
LEAN_EXPORT lean_object* l_Aesop_RappId_succ___boxed(lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_beqNodeState____x40_Aesop_Tree_Data___hyg_666____boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_isIrrelevant___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_instInhabitedGoalState;
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoalAndMetaState___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_dummy;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rapp_isIrrelevant(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_parent___boxed(lean_object*);
static lean_object* l_Aesop_NodeState_instToString___closed__1;
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setParent___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_GoalState_isProven(uint8_t);
LEAN_EXPORT uint64_t l_Aesop_RappId_instHashable(lean_object*);
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_decEqRappId____x40_Aesop_Tree_Data___hyg_296_(lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg___lambda__1(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_GoalState_isIrrelevant(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoal(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAssignedMVars___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isActive___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoalAndMetaState_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setParent___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedGoalOrigin;
LEAN_EXPORT lean_object* l_Aesop_Goal_setLastExpandedInIteration(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isIrrelevant___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setMVars___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_isIrrelevant(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_Aesop_instBEqNodeState___closed__1;
LEAN_EXPORT lean_object* l_Aesop_instIterationInhabited;
LEAN_EXPORT uint8_t l_Aesop_GoalState_isProvenByNormalization(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIsIrrelevant___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_parentMetaState(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_instBEq___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_instBEq(lean_object*, lean_object*);
static lean_object* l_Aesop_treeImpl___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Goal_successProbability___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_toCtorIdx(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Goal_elim(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_toEmoji___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setId(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setParent(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_elim(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_successProbability(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setId___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setSuccessProbability___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalOrigin_originalGoalId_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_instLT;
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsIrrelevant(uint8_t, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_MVarCluster_state(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_one;
LEAN_EXPORT lean_object* l_Aesop_NodeState_isUnprovable___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rapp_introducesMVar(lean_object*);
extern lean_object* l_instLENat;
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoal_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_parent(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_instToString;
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_assignedMVars(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_instDecidableEqGoalId(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_state___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_forSubgoalsM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_isProven___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isNormal___boxed(lean_object*);
static lean_object* l_Aesop_NodeState_instToString___closed__3;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeQueue___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIntroducedMVars(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_noConfusion(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setNormalizationState(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_elim___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setSuccessProbability(double, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_instHashable___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAppliedRule___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_parentPostNormMetaState(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_parent_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_failedRapps(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_MVarCluster_provenGoal_x3f___spec__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalOrigin_toString(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_instDecidableEq___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instDecidableEqGoalId___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_instDecidableRelLt___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_modify___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_beqNodeState____x40_Aesop_Tree_Data___hyg_666_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Iteration_instLT;
LEAN_EXPORT lean_object* l_Aesop_Iteration_none;
static lean_object* l_Aesop_NodeState_noConfusion___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_mk(lean_object*);
static lean_object* l_Aesop_Goal_firstProvenRapp_x3f___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Rapp_setParent(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_goals___boxed(lean_object*);
double pow(double, double);
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setParent(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_size___at_Aesop_Goal_priority___spec__1(lean_object*);
lean_object* l_instToStringNat(lean_object*);
static lean_object* l_Aesop_instInhabitedMVarClusterData___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Rapp_setMetaState___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_succ(lean_object*);
static lean_object* l_Aesop_instBEqGoalState___closed__1;
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__3___boxed(lean_object*);
static lean_object* l_Aesop_treeImpl___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Goal_hasSafeRapp___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setPreNormGoal(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_instToString(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Goal_setAddedInIteration(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_isIrrelevant___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_MVarCluster_provenGoal_x3f___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_depth(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_children(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_hasMVar(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_isIrrelevant___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Goal_safeRapps___spec__1(lean_object*, size_t, size_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl;
LEAN_EXPORT lean_object* l_Aesop_GoalState_isProvenByNormalization___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setState(uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__3(lean_object*);
static lean_object* l_Aesop_GoalState_instToString___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setScriptSteps_x3f___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_size___at_Aesop_Goal_priority___spec__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__2(size_t, lean_object*, lean_object*, lean_object*, lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_zero;
LEAN_EXPORT lean_object* l_Aesop_instInhabitedGoalId;
extern lean_object* l_Aesop_nodeUnprovableEmoji;
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_elim(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_isProvenByNormalization___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_isForcedUnprovable(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_originalGoalId(lean_object*);
LEAN_EXPORT uint64_t l_Aesop_Rapp_instHashable(lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_ofNat___boxed(lean_object*);
double l_Float_ofScientific(lean_object*, uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_originalGoalId___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__5___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isRoot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_elim___boxed(lean_object*);
LEAN_EXPORT uint64_t l_Aesop_Goal_instHashable(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_introducesMVar___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instBEqGoalState;
LEAN_EXPORT uint8_t l_Aesop_Goal_state(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_instToString(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_toCtorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_succ(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_metaState___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAssignedMVars(lean_object*, lean_object*);
static lean_object* l_Aesop_GoalOrigin_toString___closed__4;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_instDecidableRelLe___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_mk(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIntroducedMVars___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeRulesSelected___boxed(lean_object*);
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_beqGoalState____x40_Aesop_Tree_Data___hyg_880_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_NodeState_isUnknown___boxed(lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_ofNat(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__2(size_t, lean_object*, lean_object*, lean_object*, lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_instBEq___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_GoalOrigin_toString___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Goal_setDepth(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_parentMetaState___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_toNat___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_instInhabitedNodeState;
LEAN_EXPORT lean_object* l_Aesop_Goal_mvars(lean_object*);
static lean_object* l_Aesop_treeImpl___closed__7;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__6(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_instDecidableEqRappId(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_elim___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_instHashable___boxed(lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setNormalizationState___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setMetaState(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_normalizationState(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAppliedRule(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_scriptSteps_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_origin(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isUnsafeExhausted___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_depth___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_appliedRule(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__4(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_noConfusion___rarg(uint8_t, uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoal___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasSafeRapp___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setChildren(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_GoalState_toNodeState(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg(uint8_t, uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setChildren(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_introducedMVars(lean_object*);
static lean_object* l_Aesop_treeImpl___closed__2;
LEAN_EXPORT lean_object* l_Aesop_GoalId_succ___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_NodeState_isProven(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Goal_instHashable___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalState_toNodeState___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_failedRapps___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Iteration_instDecidableRelLe(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_assignedMVars___boxed(lean_object*);
static lean_object* l_Aesop_treeImpl___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedMVarClusterData(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__4;
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_provenGoal_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_children(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setIsIrrelevant(uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_appliedRule___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_instLT;
LEAN_EXPORT lean_object* l_Aesop_Goal_parentRapp_x3f___boxed(lean_object*, lean_object*);
extern lean_object* l_instLTNat;
LEAN_EXPORT lean_object* l_Aesop_Goal_setMVars(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_modify___boxed(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Rapp_setSuccessProbability___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setState___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_succ___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setGoals___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_one;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_Goal_firstProvenRapp_x3f___spec__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setOriginalSubgoals(lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT uint8_t l_Aesop_Rapp_isSafe(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_id(lean_object*);
static lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__3;
LEAN_EXPORT lean_object* l_Aesop_instInhabitedRappId;
LEAN_EXPORT uint8_t l_Aesop_Rapp_instBEq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasProvableRapp___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_GoalState_instToString___closed__1;
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsForcedUnprovable(uint8_t, lean_object*);
lean_object* l_Array_foldlMUnsafe_fold___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setOriginalSubgoals___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_scriptSteps_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setOrigin___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalId_instDecidableRelLt___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_isSafe___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Iteration_succ(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_isNormal___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setFailedRapps(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_toCtorIdx(uint8_t);
LEAN_EXPORT uint8_t l_Aesop_NodeState_isUnknown(uint8_t);
lean_object* lean_string_append(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_children___boxed(lean_object*);
static lean_object* l_Aesop_instInhabitedMVarClusterData___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Goal_setDepth___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_modify(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_priority___boxed(lean_object*);
lean_object* lean_array_get_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_parentRapp_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_state___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_unsafeRulesSelected(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
uint8_t l_Aesop_RegularRule_isSafe(lean_object*);
static lean_object* l_Aesop_GoalOrigin_toString___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Rapp_setId___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_instToString___boxed(lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_beqGoalState____x40_Aesop_Tree_Data___hyg_880____boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasSafeRapp___spec__1(lean_object*, size_t, size_t, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_normalizedGoal_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isExhausted___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setChildren___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setChildren___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_toNat(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_isActive(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_safeRapps___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setGoals(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Goal_isUnsafeExhausted(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_provenGoal_x3f___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setOrigin(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_hasProvableRapp(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Goal_safeRapps___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_dummy;
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_setParent___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setIsIrrelevant___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_modify(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_setId(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern double l_Aesop_unificationGoalPenalty;
LEAN_EXPORT lean_object* l_Aesop_Iteration_instLE;
LEAN_EXPORT lean_object* l_Aesop_Goal_normalizationState___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_GoalId_instDecidableRelLt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Goal_safeRapps(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NodeState_toEmoji(uint8_t);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_decEqRappId____x40_Aesop_Tree_Data___hyg_296____boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_modify(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rapp_forSubgoalsM(lean_object*);
extern lean_object* l_Aesop_nodeProvedEmoji;
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsIrrelevant___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RappId_instDecidableRelLt___boxed(lean_object*, lean_object*);
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_NormalizationState_isNormal(lean_object*);
static lean_object* _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("no ", 3, 3);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("yes", 3, 3);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__3;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo(uint8_t x_1) {
_start:
{
if (x_1 == 0)
{
lean_object* x_2; 
x_2 = l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__2;
return x_2;
}
else
{
lean_object* x_3; 
x_3 = l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__4;
return x_3;
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Bool_toYesNo___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l___private_Aesop_Tree_Data_0__Bool_toYesNo(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedGoalId() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(0u);
return x_1;
}
}
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_decEqGoalId____x40_Aesop_Tree_Data___hyg_61_(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_decEqGoalId____x40_Aesop_Tree_Data___hyg_61____boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l___private_Aesop_Tree_Data_0__Aesop_decEqGoalId____x40_Aesop_Tree_Data___hyg_61_(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_instDecidableEqGoalId(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_instDecidableEqGoalId___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_instDecidableEqGoalId(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_GoalId_zero() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(0u);
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalId_one() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(1u);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalId_succ(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_add(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalId_succ___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_GoalId_succ(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_GoalId_dummy() {
_start:
{
lean_object* x_1; 
x_1 = lean_cstr_to_nat("1000000000000000");
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalId_instLT() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalId_instDecidableRelLt(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_lt(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalId_instDecidableRelLt___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_GoalId_instDecidableRelLt(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalId_instToString(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
return x_2;
}
}
LEAN_EXPORT uint64_t l_Aesop_GoalId_instHashable(lean_object* x_1) {
_start:
{
uint64_t x_2; 
x_2 = lean_uint64_of_nat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalId_instHashable___boxed(lean_object* x_1) {
_start:
{
uint64_t x_2; lean_object* x_3; 
x_2 = l_Aesop_GoalId_instHashable(x_1);
lean_dec(x_1);
x_3 = lean_box_uint64(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedRappId() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(0u);
return x_1;
}
}
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_decEqRappId____x40_Aesop_Tree_Data___hyg_296_(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_decEqRappId____x40_Aesop_Tree_Data___hyg_296____boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l___private_Aesop_Tree_Data_0__Aesop_decEqRappId____x40_Aesop_Tree_Data___hyg_296_(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_instDecidableEqRappId(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_instDecidableEqRappId___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_instDecidableEqRappId(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_RappId_zero() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(0u);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_RappId_succ(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_add(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_RappId_succ___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_RappId_succ(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_RappId_one() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(1u);
return x_1;
}
}
static lean_object* _init_l_Aesop_RappId_dummy() {
_start:
{
lean_object* x_1; 
x_1 = lean_cstr_to_nat("1000000000000000");
return x_1;
}
}
static lean_object* _init_l_Aesop_RappId_instLT() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_RappId_instDecidableRelLt(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_lt(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_RappId_instDecidableRelLt___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_RappId_instDecidableRelLt(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_RappId_instToString(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
return x_2;
}
}
LEAN_EXPORT uint64_t l_Aesop_RappId_instHashable(lean_object* x_1) {
_start:
{
uint64_t x_2; 
x_2 = lean_uint64_of_nat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_RappId_instHashable___boxed(lean_object* x_1) {
_start:
{
uint64_t x_2; lean_object* x_3; 
x_2 = l_Aesop_RappId_instHashable(x_1);
lean_dec(x_1);
x_3 = lean_box_uint64(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instIterationInhabited() {
_start:
{
lean_object* x_1; 
x_1 = l_instInhabitedNat;
return x_1;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_toNat(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_toNat___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l___private_Aesop_Tree_Data_0__Aesop_Iteration_toNat(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_ofNat(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_Iteration_ofNat___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l___private_Aesop_Tree_Data_0__Aesop_Iteration_ofNat(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Iteration_one() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(1u);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Iteration_succ(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_add(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Iteration_succ___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Iteration_succ(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Iteration_none() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(0u);
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_Iteration_instDecidableEq(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Iteration_instDecidableEq___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Iteration_instDecidableEq(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Iteration_instToString___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instToStringNat), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Iteration_instToString() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Iteration_instToString___closed__1;
return x_1;
}
}
static lean_object* _init_l_Aesop_Iteration_instLT() {
_start:
{
lean_object* x_1; 
x_1 = l_instLTNat;
return x_1;
}
}
static lean_object* _init_l_Aesop_Iteration_instLE() {
_start:
{
lean_object* x_1; 
x_1 = l_instLENat;
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_Iteration_instDecidableRelLt(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_lt(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Iteration_instDecidableRelLt___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Iteration_instDecidableRelLt(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_Iteration_instDecidableRelLe(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_le(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Iteration_instDecidableRelLe___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Iteration_instDecidableRelLe(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_toCtorIdx(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(1u);
return x_3;
}
default: 
{
lean_object* x_4; 
x_4 = lean_unsigned_to_nat(2u);
return x_4;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_toCtorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_toCtorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
static lean_object* _init_l_Aesop_NodeState_noConfusion___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_NodeState_noConfusion___rarg___lambda__1___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg(uint8_t x_1, uint8_t x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_NodeState_noConfusion___rarg___closed__1;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_NodeState_noConfusion___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_NodeState_noConfusion___rarg___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_noConfusion___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_4 = lean_unbox(x_1);
lean_dec(x_1);
x_5 = lean_unbox(x_2);
lean_dec(x_2);
x_6 = l_Aesop_NodeState_noConfusion___rarg(x_4, x_5, x_3);
return x_6;
}
}
static uint8_t _init_l_Aesop_instInhabitedNodeState() {
_start:
{
uint8_t x_1; 
x_1 = 0;
return x_1;
}
}
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_beqNodeState____x40_Aesop_Tree_Data___hyg_666_(uint8_t x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = l_Aesop_NodeState_toCtorIdx(x_1);
x_4 = l_Aesop_NodeState_toCtorIdx(x_2);
x_5 = lean_nat_dec_eq(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_beqNodeState____x40_Aesop_Tree_Data___hyg_666____boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l___private_Aesop_Tree_Data_0__Aesop_beqNodeState____x40_Aesop_Tree_Data___hyg_666_(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_instBEqNodeState___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l___private_Aesop_Tree_Data_0__Aesop_beqNodeState____x40_Aesop_Tree_Data___hyg_666____boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instBEqNodeState() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instBEqNodeState___closed__1;
return x_1;
}
}
static lean_object* _init_l_Aesop_NodeState_instToString___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unknown", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_NodeState_instToString___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("proven", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_NodeState_instToString___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unprovable", 10, 10);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_instToString(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = l_Aesop_NodeState_instToString___closed__1;
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = l_Aesop_NodeState_instToString___closed__2;
return x_3;
}
default: 
{
lean_object* x_4; 
x_4 = l_Aesop_NodeState_instToString___closed__3;
return x_4;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_instToString___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_instToString(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_NodeState_isUnknown(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_isUnknown___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_isUnknown(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_NodeState_isProven(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 1)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_isProven___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_isProven(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_NodeState_isUnprovable(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 2)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_isUnprovable___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_isUnprovable(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_NodeState_isIrrelevant(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 1;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_isIrrelevant___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_isIrrelevant(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_toEmoji(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = l_Aesop_nodeUnknownEmoji;
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = l_Aesop_nodeProvedEmoji;
return x_3;
}
default: 
{
lean_object* x_4; 
x_4 = l_Aesop_nodeUnprovableEmoji;
return x_4;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NodeState_toEmoji___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_NodeState_toEmoji(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_toCtorIdx(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(1u);
return x_3;
}
case 2:
{
lean_object* x_4; 
x_4 = lean_unsigned_to_nat(2u);
return x_4;
}
default: 
{
lean_object* x_5; 
x_5 = lean_unsigned_to_nat(3u);
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_toCtorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_toCtorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_noConfusion___rarg(uint8_t x_1, uint8_t x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_NodeState_noConfusion___rarg___closed__1;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_noConfusion(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_GoalState_noConfusion___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_noConfusion___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_4 = lean_unbox(x_1);
lean_dec(x_1);
x_5 = lean_unbox(x_2);
lean_dec(x_2);
x_6 = l_Aesop_GoalState_noConfusion___rarg(x_4, x_5, x_3);
return x_6;
}
}
static uint8_t _init_l_Aesop_instInhabitedGoalState() {
_start:
{
uint8_t x_1; 
x_1 = 0;
return x_1;
}
}
LEAN_EXPORT uint8_t l___private_Aesop_Tree_Data_0__Aesop_beqGoalState____x40_Aesop_Tree_Data___hyg_880_(uint8_t x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = l_Aesop_GoalState_toCtorIdx(x_1);
x_4 = l_Aesop_GoalState_toCtorIdx(x_2);
x_5 = lean_nat_dec_eq(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_Data_0__Aesop_beqGoalState____x40_Aesop_Tree_Data___hyg_880____boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l___private_Aesop_Tree_Data_0__Aesop_beqGoalState____x40_Aesop_Tree_Data___hyg_880_(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_instBEqGoalState___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l___private_Aesop_Tree_Data_0__Aesop_beqGoalState____x40_Aesop_Tree_Data___hyg_880____boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instBEqGoalState() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instBEqGoalState___closed__1;
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalState_instToString___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("provenByRuleApplication", 23, 23);
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalState_instToString___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("provenByNormalization", 21, 21);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_instToString(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = l_Aesop_NodeState_instToString___closed__1;
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = l_Aesop_GoalState_instToString___closed__1;
return x_3;
}
case 2:
{
lean_object* x_4; 
x_4 = l_Aesop_GoalState_instToString___closed__2;
return x_4;
}
default: 
{
lean_object* x_5; 
x_5 = l_Aesop_NodeState_instToString___closed__3;
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_instToString___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_instToString(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_isProvenByRuleApplication(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 1)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_isProvenByRuleApplication___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_isProvenByRuleApplication(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_isProvenByNormalization(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 2)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_isProvenByNormalization___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_isProvenByNormalization(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_isProven(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
switch (lean_obj_tag(x_2)) {
case 1:
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
case 2:
{
uint8_t x_4; 
x_4 = 1;
return x_4;
}
default: 
{
uint8_t x_5; 
lean_dec(x_2);
x_5 = 0;
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_isProven___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_isProven(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_isUnprovable(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 3)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_isUnprovable___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_isUnprovable(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_isUnknown(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_isUnknown___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_isUnknown(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_toNodeState(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
switch (lean_obj_tag(x_2)) {
case 0:
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
case 3:
{
uint8_t x_4; 
x_4 = 2;
return x_4;
}
default: 
{
uint8_t x_5; 
lean_dec(x_2);
x_5 = 1;
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_toNodeState___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_toNodeState(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_GoalState_isIrrelevant(uint8_t x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; 
x_2 = l_Aesop_GoalState_toNodeState(x_1);
x_3 = l_Aesop_NodeState_isIrrelevant(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_isIrrelevant___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_isIrrelevant(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_toEmoji(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(x_1);
switch (lean_obj_tag(x_2)) {
case 0:
{
lean_object* x_3; 
x_3 = l_Aesop_nodeUnknownEmoji;
return x_3;
}
case 3:
{
lean_object* x_4; 
x_4 = l_Aesop_nodeUnprovableEmoji;
return x_4;
}
default: 
{
lean_object* x_5; 
lean_dec(x_2);
x_5 = l_Aesop_nodeProvedEmoji;
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalState_toEmoji___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Aesop_GoalState_toEmoji(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormalizationState() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_NormalizationState_isNormal(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = 0;
return x_2;
}
else
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_isNormal___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_NormalizationState_isNormal(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_NormalizationState_isProvenByNormalization(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 2)
{
uint8_t x_2; 
x_2 = 1;
return x_2;
}
else
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_isProvenByNormalization___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_NormalizationState_isProvenByNormalization(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_normalizedGoal_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 1)
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
else
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormalizationState_normalizedGoal_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_NormalizationState_normalizedGoal_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedGoalOrigin() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalOrigin_originalGoalId_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 1)
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
else
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalOrigin_originalGoalId_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_GoalOrigin_originalGoalId_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_GoalOrigin_toString___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("subgoal", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalOrigin_toString___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("copy of ", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalOrigin_toString___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(", originally ", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalOrigin_toString___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_GoalOrigin_toString___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("dropped mvar", 12, 12);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalOrigin_toString(lean_object* x_1) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 0:
{
lean_object* x_2; 
x_2 = l_Aesop_GoalOrigin_toString___closed__1;
return x_2;
}
case 1:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l___private_Init_Data_Repr_0__Nat_reprFast(x_3);
x_6 = l_Aesop_GoalOrigin_toString___closed__2;
x_7 = lean_string_append(x_6, x_5);
lean_dec(x_5);
x_8 = l_Aesop_GoalOrigin_toString___closed__3;
x_9 = lean_string_append(x_7, x_8);
x_10 = l___private_Init_Data_Repr_0__Nat_reprFast(x_4);
x_11 = lean_string_append(x_9, x_10);
lean_dec(x_10);
x_12 = l_Aesop_GoalOrigin_toString___closed__4;
x_13 = lean_string_append(x_11, x_12);
return x_13;
}
default: 
{
lean_object* x_14; 
x_14 = l_Aesop_GoalOrigin_toString___closed__5;
return x_14;
}
}
}
}
static lean_object* _init_l_Aesop_instInhabitedMVarClusterData___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedMVarClusterData___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedMVarClusterData___closed__1;
x_3 = 0;
x_4 = 0;
x_5 = lean_alloc_ctor(0, 2, 2);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set_uint8(x_5, sizeof(void*)*2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*2 + 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_instInhabitedMVarClusterData(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_instInhabitedMVarClusterData___closed__2;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__5(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__6(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_treeImpl___elambda__6), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_treeImpl___elambda__5___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_treeImpl___elambda__4), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_treeImpl___elambda__3___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_treeImpl___elambda__2), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_treeImpl___elambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_treeImpl___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_1 = l_Aesop_treeImpl___closed__1;
x_2 = l_Aesop_treeImpl___closed__2;
x_3 = l_Aesop_treeImpl___closed__3;
x_4 = l_Aesop_treeImpl___closed__4;
x_5 = l_Aesop_treeImpl___closed__5;
x_6 = l_Aesop_treeImpl___closed__6;
x_7 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_7, 0, x_1);
lean_ctor_set(x_7, 1, x_2);
lean_ctor_set(x_7, 2, x_3);
lean_ctor_set(x_7, 3, x_4);
lean_ctor_set(x_7, 4, x_5);
lean_ctor_set(x_7, 5, x_6);
return x_7;
}
}
static lean_object* _init_l_Aesop_treeImpl() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_treeImpl___closed__7;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_treeImpl___elambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__3___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_treeImpl___elambda__5___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_mk(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_elim(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_treeImpl___elambda__1(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_elim___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_MVarCluster_elim(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_modify(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Aesop_treeImpl___elambda__1(x_2);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_modify___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_MVarCluster_modify(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_parent_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__1(x_1);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_parent_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_MVarCluster_parent_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setParent(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__1(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 0);
lean_dec(x_5);
lean_ctor_set(x_3, 0, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get_uint8(x_3, sizeof(void*)*2);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*2 + 1);
lean_inc(x_7);
lean_dec(x_3);
x_10 = lean_alloc_ctor(0, 2, 2);
lean_ctor_set(x_10, 0, x_1);
lean_ctor_set(x_10, 1, x_7);
lean_ctor_set_uint8(x_10, sizeof(void*)*2, x_8);
lean_ctor_set_uint8(x_10, sizeof(void*)*2 + 1, x_9);
x_11 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_11, 0, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setParent___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_MVarCluster_setParent(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_goals(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__1(x_1);
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_goals___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_MVarCluster_goals(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setGoals(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__1(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 1);
lean_dec(x_5);
lean_ctor_set(x_3, 1, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get_uint8(x_3, sizeof(void*)*2);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*2 + 1);
lean_inc(x_7);
lean_dec(x_3);
x_10 = lean_alloc_ctor(0, 2, 2);
lean_ctor_set(x_10, 0, x_7);
lean_ctor_set(x_10, 1, x_1);
lean_ctor_set_uint8(x_10, sizeof(void*)*2, x_8);
lean_ctor_set_uint8(x_10, sizeof(void*)*2 + 1, x_9);
x_11 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_11, 0, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setGoals___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_MVarCluster_setGoals(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_MVarCluster_isIrrelevant(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__1(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_isIrrelevant___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_MVarCluster_isIrrelevant(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setIsIrrelevant(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__1(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*2, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get_uint8(x_3, sizeof(void*)*2 + 1);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_9 = lean_alloc_ctor(0, 2, 2);
lean_ctor_set(x_9, 0, x_6);
lean_ctor_set(x_9, 1, x_7);
lean_ctor_set_uint8(x_9, sizeof(void*)*2, x_1);
lean_ctor_set_uint8(x_9, sizeof(void*)*2 + 1, x_8);
x_10 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_10, 0, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setIsIrrelevant___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_MVarCluster_setIsIrrelevant(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_MVarCluster_state(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__1(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*2 + 1);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_state___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_MVarCluster_state(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setState(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__1(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*2 + 1, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get_uint8(x_3, sizeof(void*)*2);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_9 = lean_alloc_ctor(0, 2, 2);
lean_ctor_set(x_9, 0, x_6);
lean_ctor_set(x_9, 1, x_7);
lean_ctor_set_uint8(x_9, sizeof(void*)*2, x_8);
lean_ctor_set_uint8(x_9, sizeof(void*)*2 + 1, x_1);
x_10 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_10, 0, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_setState___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_MVarCluster_setState(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_mk(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_elim(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_elim___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_elim(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_modify(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_modify___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_modify(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_id(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_id___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_id(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_parent(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_parent___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_parent(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_children(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 2);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_children___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_children(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_origin(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 3);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_origin___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_origin(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_depth(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 4);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_depth___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_depth(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_state(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*13);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_state___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_state(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_isIrrelevant(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*13 + 1);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isIrrelevant___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_isIrrelevant(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_isForcedUnprovable(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*13 + 2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isForcedUnprovable___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_isForcedUnprovable(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_preNormGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 5);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_preNormGoal___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_preNormGoal(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_normalizationState(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 6);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_normalizationState___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_normalizationState(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_mvars(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 7);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_mvars___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_mvars(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_successProbability(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 8);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_successProbability___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_successProbability(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_addedInIteration(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 9);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_addedInIteration___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_addedInIteration(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_lastExpandedInIteration(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 10);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_lastExpandedInIteration___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_lastExpandedInIteration(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_failedRapps(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 12);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_failedRapps___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_failedRapps(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_unsafeRulesSelected(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*13 + 3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeRulesSelected___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_unsafeRulesSelected(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 11);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_unsafeQueue(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*13 + 3);
if (x_3 == 0)
{
lean_object* x_4; 
lean_dec(x_2);
x_4 = lean_box(0);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_2, 11);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_unsafeQueue_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_unsafeQueue_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setId(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 0);
lean_dec(x_5);
lean_ctor_set(x_3, 0, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_1);
lean_ctor_set(x_23, 1, x_7);
lean_ctor_set(x_23, 2, x_8);
lean_ctor_set(x_23, 3, x_9);
lean_ctor_set(x_23, 4, x_10);
lean_ctor_set(x_23, 5, x_14);
lean_ctor_set(x_23, 6, x_15);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setId___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setId(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setParent(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 1);
lean_dec(x_5);
lean_ctor_set(x_3, 1, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_1);
lean_ctor_set(x_23, 2, x_8);
lean_ctor_set(x_23, 3, x_9);
lean_ctor_set(x_23, 4, x_10);
lean_ctor_set(x_23, 5, x_14);
lean_ctor_set(x_23, 6, x_15);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setParent___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setParent(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setChildren(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 2);
lean_dec(x_5);
lean_ctor_set(x_3, 2, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_1);
lean_ctor_set(x_23, 3, x_9);
lean_ctor_set(x_23, 4, x_10);
lean_ctor_set(x_23, 5, x_14);
lean_ctor_set(x_23, 6, x_15);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setChildren___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setChildren(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setOrigin(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 3);
lean_dec(x_5);
lean_ctor_set(x_3, 3, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_1);
lean_ctor_set(x_23, 4, x_10);
lean_ctor_set(x_23, 5, x_14);
lean_ctor_set(x_23, 6, x_15);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setOrigin___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setOrigin(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setDepth(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 4);
lean_dec(x_5);
lean_ctor_set(x_3, 4, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_1);
lean_ctor_set(x_23, 5, x_14);
lean_ctor_set(x_23, 6, x_15);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setDepth___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setDepth(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsIrrelevant(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*13 + 1, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
x_18 = lean_ctor_get(x_3, 10);
x_19 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_20 = lean_ctor_get(x_3, 11);
x_21 = lean_ctor_get(x_3, 12);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_22 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_22, 0, x_6);
lean_ctor_set(x_22, 1, x_7);
lean_ctor_set(x_22, 2, x_8);
lean_ctor_set(x_22, 3, x_9);
lean_ctor_set(x_22, 4, x_10);
lean_ctor_set(x_22, 5, x_13);
lean_ctor_set(x_22, 6, x_14);
lean_ctor_set(x_22, 7, x_15);
lean_ctor_set(x_22, 8, x_16);
lean_ctor_set(x_22, 9, x_17);
lean_ctor_set(x_22, 10, x_18);
lean_ctor_set(x_22, 11, x_20);
lean_ctor_set(x_22, 12, x_21);
lean_ctor_set_uint8(x_22, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 1, x_1);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 2, x_12);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 3, x_19);
x_23 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_23, 0, x_22);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsIrrelevant___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Goal_setIsIrrelevant(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsForcedUnprovable(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*13 + 2, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
x_18 = lean_ctor_get(x_3, 10);
x_19 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_20 = lean_ctor_get(x_3, 11);
x_21 = lean_ctor_get(x_3, 12);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_22 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_22, 0, x_6);
lean_ctor_set(x_22, 1, x_7);
lean_ctor_set(x_22, 2, x_8);
lean_ctor_set(x_22, 3, x_9);
lean_ctor_set(x_22, 4, x_10);
lean_ctor_set(x_22, 5, x_13);
lean_ctor_set(x_22, 6, x_14);
lean_ctor_set(x_22, 7, x_15);
lean_ctor_set(x_22, 8, x_16);
lean_ctor_set(x_22, 9, x_17);
lean_ctor_set(x_22, 10, x_18);
lean_ctor_set(x_22, 11, x_20);
lean_ctor_set(x_22, 12, x_21);
lean_ctor_set_uint8(x_22, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 2, x_1);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 3, x_19);
x_23 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_23, 0, x_22);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setIsForcedUnprovable___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Goal_setIsForcedUnprovable(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setPreNormGoal(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 5);
lean_dec(x_5);
lean_ctor_set(x_3, 5, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_1);
lean_ctor_set(x_23, 6, x_15);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setPreNormGoal___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setPreNormGoal(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setNormalizationState(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 6);
lean_dec(x_5);
lean_ctor_set(x_3, 6, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_15);
lean_ctor_set(x_23, 6, x_1);
lean_ctor_set(x_23, 7, x_16);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setNormalizationState___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setNormalizationState(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setMVars(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 7);
lean_dec(x_5);
lean_ctor_set(x_3, 7, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 6);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_15);
lean_ctor_set(x_23, 6, x_16);
lean_ctor_set(x_23, 7, x_1);
lean_ctor_set(x_23, 8, x_17);
lean_ctor_set(x_23, 9, x_18);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setMVars___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setMVars(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setSuccessProbability(double x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_3, 8);
lean_dec(x_5);
x_6 = lean_box_float(x_1);
lean_ctor_set(x_3, 8, x_6);
x_7 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_7, 0, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; uint8_t x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
x_10 = lean_ctor_get(x_3, 2);
x_11 = lean_ctor_get(x_3, 3);
x_12 = lean_ctor_get(x_3, 4);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_15 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_16 = lean_ctor_get(x_3, 5);
x_17 = lean_ctor_get(x_3, 6);
x_18 = lean_ctor_get(x_3, 7);
x_19 = lean_ctor_get(x_3, 9);
x_20 = lean_ctor_get(x_3, 10);
x_21 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_22 = lean_ctor_get(x_3, 11);
x_23 = lean_ctor_get(x_3, 12);
lean_inc(x_23);
lean_inc(x_22);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_3);
x_24 = lean_box_float(x_1);
x_25 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_25, 0, x_8);
lean_ctor_set(x_25, 1, x_9);
lean_ctor_set(x_25, 2, x_10);
lean_ctor_set(x_25, 3, x_11);
lean_ctor_set(x_25, 4, x_12);
lean_ctor_set(x_25, 5, x_16);
lean_ctor_set(x_25, 6, x_17);
lean_ctor_set(x_25, 7, x_18);
lean_ctor_set(x_25, 8, x_24);
lean_ctor_set(x_25, 9, x_19);
lean_ctor_set(x_25, 10, x_20);
lean_ctor_set(x_25, 11, x_22);
lean_ctor_set(x_25, 12, x_23);
lean_ctor_set_uint8(x_25, sizeof(void*)*13, x_13);
lean_ctor_set_uint8(x_25, sizeof(void*)*13 + 1, x_14);
lean_ctor_set_uint8(x_25, sizeof(void*)*13 + 2, x_15);
lean_ctor_set_uint8(x_25, sizeof(void*)*13 + 3, x_21);
x_26 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_26, 0, x_25);
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setSuccessProbability___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; lean_object* x_4; 
x_3 = lean_unbox_float(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Goal_setSuccessProbability(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setAddedInIteration(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 9);
lean_dec(x_5);
lean_ctor_set(x_3, 9, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 6);
x_17 = lean_ctor_get(x_3, 7);
x_18 = lean_ctor_get(x_3, 8);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_15);
lean_ctor_set(x_23, 6, x_16);
lean_ctor_set(x_23, 7, x_17);
lean_ctor_set(x_23, 8, x_18);
lean_ctor_set(x_23, 9, x_1);
lean_ctor_set(x_23, 10, x_19);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setAddedInIteration___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setAddedInIteration(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setLastExpandedInIteration(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 10);
lean_dec(x_5);
lean_ctor_set(x_3, 10, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 6);
x_17 = lean_ctor_get(x_3, 7);
x_18 = lean_ctor_get(x_3, 8);
x_19 = lean_ctor_get(x_3, 9);
x_20 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_21 = lean_ctor_get(x_3, 11);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_15);
lean_ctor_set(x_23, 6, x_16);
lean_ctor_set(x_23, 7, x_17);
lean_ctor_set(x_23, 8, x_18);
lean_ctor_set(x_23, 9, x_19);
lean_ctor_set(x_23, 10, x_1);
lean_ctor_set(x_23, 11, x_21);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_20);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setLastExpandedInIteration___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setLastExpandedInIteration(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeRulesSelected(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*13 + 3, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
x_19 = lean_ctor_get(x_3, 10);
x_20 = lean_ctor_get(x_3, 11);
x_21 = lean_ctor_get(x_3, 12);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_22 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_22, 0, x_6);
lean_ctor_set(x_22, 1, x_7);
lean_ctor_set(x_22, 2, x_8);
lean_ctor_set(x_22, 3, x_9);
lean_ctor_set(x_22, 4, x_10);
lean_ctor_set(x_22, 5, x_14);
lean_ctor_set(x_22, 6, x_15);
lean_ctor_set(x_22, 7, x_16);
lean_ctor_set(x_22, 8, x_17);
lean_ctor_set(x_22, 9, x_18);
lean_ctor_set(x_22, 10, x_19);
lean_ctor_set(x_22, 11, x_20);
lean_ctor_set(x_22, 12, x_21);
lean_ctor_set_uint8(x_22, sizeof(void*)*13, x_11);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 1, x_12);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 2, x_13);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 3, x_1);
x_23 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_23, 0, x_22);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeRulesSelected___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Goal_setUnsafeRulesSelected(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeQueue(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 11);
lean_dec(x_5);
lean_ctor_set(x_3, 11, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 6);
x_17 = lean_ctor_get(x_3, 7);
x_18 = lean_ctor_get(x_3, 8);
x_19 = lean_ctor_get(x_3, 9);
x_20 = lean_ctor_get(x_3, 10);
x_21 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_22 = lean_ctor_get(x_3, 12);
lean_inc(x_22);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_15);
lean_ctor_set(x_23, 6, x_16);
lean_ctor_set(x_23, 7, x_17);
lean_ctor_set(x_23, 8, x_18);
lean_ctor_set(x_23, 9, x_19);
lean_ctor_set(x_23, 10, x_20);
lean_ctor_set(x_23, 11, x_1);
lean_ctor_set(x_23, 12, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_21);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setUnsafeQueue___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setUnsafeQueue(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setState(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*13, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get(x_3, 3);
x_10 = lean_ctor_get(x_3, 4);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
x_18 = lean_ctor_get(x_3, 10);
x_19 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_20 = lean_ctor_get(x_3, 11);
x_21 = lean_ctor_get(x_3, 12);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_22 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_22, 0, x_6);
lean_ctor_set(x_22, 1, x_7);
lean_ctor_set(x_22, 2, x_8);
lean_ctor_set(x_22, 3, x_9);
lean_ctor_set(x_22, 4, x_10);
lean_ctor_set(x_22, 5, x_13);
lean_ctor_set(x_22, 6, x_14);
lean_ctor_set(x_22, 7, x_15);
lean_ctor_set(x_22, 8, x_16);
lean_ctor_set(x_22, 9, x_17);
lean_ctor_set(x_22, 10, x_18);
lean_ctor_set(x_22, 11, x_20);
lean_ctor_set(x_22, 12, x_21);
lean_ctor_set_uint8(x_22, sizeof(void*)*13, x_1);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 1, x_11);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 2, x_12);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 3, x_19);
x_23 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_23, 0, x_22);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setState___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Goal_setState(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setFailedRapps(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 12);
lean_dec(x_5);
lean_ctor_set(x_3, 12, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*13);
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
x_14 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 2);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 6);
x_17 = lean_ctor_get(x_3, 7);
x_18 = lean_ctor_get(x_3, 8);
x_19 = lean_ctor_get(x_3, 9);
x_20 = lean_ctor_get(x_3, 10);
x_21 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 3);
x_22 = lean_ctor_get(x_3, 11);
lean_inc(x_22);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_23 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_23, 0, x_7);
lean_ctor_set(x_23, 1, x_8);
lean_ctor_set(x_23, 2, x_9);
lean_ctor_set(x_23, 3, x_10);
lean_ctor_set(x_23, 4, x_11);
lean_ctor_set(x_23, 5, x_15);
lean_ctor_set(x_23, 6, x_16);
lean_ctor_set(x_23, 7, x_17);
lean_ctor_set(x_23, 8, x_18);
lean_ctor_set(x_23, 9, x_19);
lean_ctor_set(x_23, 10, x_20);
lean_ctor_set(x_23, 11, x_22);
lean_ctor_set(x_23, 12, x_1);
lean_ctor_set_uint8(x_23, sizeof(void*)*13, x_12);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 1, x_13);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 2, x_14);
lean_ctor_set_uint8(x_23, sizeof(void*)*13 + 3, x_21);
x_24 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_setFailedRapps___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_setFailedRapps(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_instBEq(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = l_Aesop_treeImpl___elambda__5(x_2);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_nat_dec_eq(x_4, x_6);
lean_dec(x_6);
lean_dec(x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_instBEq___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Goal_instBEq(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint64_t l_Aesop_Goal_instHashable(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint64_t x_4; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
x_4 = lean_uint64_of_nat(x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_instHashable___boxed(lean_object* x_1) {
_start:
{
uint64_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_instHashable(x_1);
lean_dec(x_1);
x_3 = lean_box_uint64(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_mk(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_elim(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_elim___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_elim(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_modify(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_modify___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_modify(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_id(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_id___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_id(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_parent(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_parent___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_parent(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_children(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 2);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_children___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_children(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rapp_state(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*10);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_state___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Rapp_state(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rapp_isIrrelevant(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*10 + 1);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_isIrrelevant___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Rapp_isIrrelevant(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_appliedRule(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 3);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_appliedRule___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_appliedRule(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_scriptSteps_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 4);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_scriptSteps_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_scriptSteps_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_originalSubgoals(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 5);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_originalSubgoals___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_originalSubgoals(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_successProbability(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 6);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_successProbability___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_successProbability(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_metaState(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 7);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_metaState___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_metaState(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_introducedMVars(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 8);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_introducedMVars___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_introducedMVars(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_assignedMVars(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 9);
lean_inc(x_3);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_assignedMVars___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Rapp_assignedMVars(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setId(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 0);
lean_dec(x_5);
lean_ctor_set(x_3, 0, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_11 = lean_ctor_get(x_3, 3);
x_12 = lean_ctor_get(x_3, 4);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_1);
lean_ctor_set(x_18, 1, x_7);
lean_ctor_set(x_18, 2, x_8);
lean_ctor_set(x_18, 3, x_11);
lean_ctor_set(x_18, 4, x_12);
lean_ctor_set(x_18, 5, x_13);
lean_ctor_set(x_18, 6, x_14);
lean_ctor_set(x_18, 7, x_15);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_9);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_10);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setId___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setId(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setParent(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 1);
lean_dec(x_5);
lean_ctor_set(x_3, 1, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_11 = lean_ctor_get(x_3, 3);
x_12 = lean_ctor_get(x_3, 4);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_1);
lean_ctor_set(x_18, 2, x_8);
lean_ctor_set(x_18, 3, x_11);
lean_ctor_set(x_18, 4, x_12);
lean_ctor_set(x_18, 5, x_13);
lean_ctor_set(x_18, 6, x_14);
lean_ctor_set(x_18, 7, x_15);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_9);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_10);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setParent___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setParent(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setChildren(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 2);
lean_dec(x_5);
lean_ctor_set(x_3, 2, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_11 = lean_ctor_get(x_3, 3);
x_12 = lean_ctor_get(x_3, 4);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_1);
lean_ctor_set(x_18, 3, x_11);
lean_ctor_set(x_18, 4, x_12);
lean_ctor_set(x_18, 5, x_13);
lean_ctor_set(x_18, 6, x_14);
lean_ctor_set(x_18, 7, x_15);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_9);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_10);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setChildren___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setChildren(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setState(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*10, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get(x_3, 5);
x_13 = lean_ctor_get(x_3, 6);
x_14 = lean_ctor_get(x_3, 7);
x_15 = lean_ctor_get(x_3, 8);
x_16 = lean_ctor_get(x_3, 9);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_17 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_17, 0, x_6);
lean_ctor_set(x_17, 1, x_7);
lean_ctor_set(x_17, 2, x_8);
lean_ctor_set(x_17, 3, x_10);
lean_ctor_set(x_17, 4, x_11);
lean_ctor_set(x_17, 5, x_12);
lean_ctor_set(x_17, 6, x_13);
lean_ctor_set(x_17, 7, x_14);
lean_ctor_set(x_17, 8, x_15);
lean_ctor_set(x_17, 9, x_16);
lean_ctor_set_uint8(x_17, sizeof(void*)*10, x_1);
lean_ctor_set_uint8(x_17, sizeof(void*)*10 + 1, x_9);
x_18 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_18, 0, x_17);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setState___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Rapp_setState(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIsIrrelevant(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
lean_ctor_set_uint8(x_3, sizeof(void*)*10 + 1, x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_10 = lean_ctor_get(x_3, 3);
x_11 = lean_ctor_get(x_3, 4);
x_12 = lean_ctor_get(x_3, 5);
x_13 = lean_ctor_get(x_3, 6);
x_14 = lean_ctor_get(x_3, 7);
x_15 = lean_ctor_get(x_3, 8);
x_16 = lean_ctor_get(x_3, 9);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
x_17 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_17, 0, x_6);
lean_ctor_set(x_17, 1, x_7);
lean_ctor_set(x_17, 2, x_8);
lean_ctor_set(x_17, 3, x_10);
lean_ctor_set(x_17, 4, x_11);
lean_ctor_set(x_17, 5, x_12);
lean_ctor_set(x_17, 6, x_13);
lean_ctor_set(x_17, 7, x_14);
lean_ctor_set(x_17, 8, x_15);
lean_ctor_set(x_17, 9, x_16);
lean_ctor_set_uint8(x_17, sizeof(void*)*10, x_9);
lean_ctor_set_uint8(x_17, sizeof(void*)*10 + 1, x_1);
x_18 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_18, 0, x_17);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIsIrrelevant___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Rapp_setIsIrrelevant(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAppliedRule(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 3);
lean_dec(x_5);
lean_ctor_set(x_3, 3, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_12 = lean_ctor_get(x_3, 4);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_9);
lean_ctor_set(x_18, 3, x_1);
lean_ctor_set(x_18, 4, x_12);
lean_ctor_set(x_18, 5, x_13);
lean_ctor_set(x_18, 6, x_14);
lean_ctor_set(x_18, 7, x_15);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_10);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAppliedRule___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setAppliedRule(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setScriptSteps_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 4);
lean_dec(x_5);
lean_ctor_set(x_3, 4, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_12 = lean_ctor_get(x_3, 3);
x_13 = lean_ctor_get(x_3, 5);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_9);
lean_ctor_set(x_18, 3, x_12);
lean_ctor_set(x_18, 4, x_1);
lean_ctor_set(x_18, 5, x_13);
lean_ctor_set(x_18, 6, x_14);
lean_ctor_set(x_18, 7, x_15);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_10);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setScriptSteps_x3f___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setScriptSteps_x3f(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setOriginalSubgoals(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 5);
lean_dec(x_5);
lean_ctor_set(x_3, 5, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_12 = lean_ctor_get(x_3, 3);
x_13 = lean_ctor_get(x_3, 4);
x_14 = lean_ctor_get(x_3, 6);
x_15 = lean_ctor_get(x_3, 7);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_9);
lean_ctor_set(x_18, 3, x_12);
lean_ctor_set(x_18, 4, x_13);
lean_ctor_set(x_18, 5, x_1);
lean_ctor_set(x_18, 6, x_14);
lean_ctor_set(x_18, 7, x_15);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_10);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setOriginalSubgoals___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setOriginalSubgoals(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setSuccessProbability(double x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_3, 6);
lean_dec(x_5);
x_6 = lean_box_float(x_1);
lean_ctor_set(x_3, 6, x_6);
x_7 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_7, 0, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
x_10 = lean_ctor_get(x_3, 2);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_12 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_13 = lean_ctor_get(x_3, 3);
x_14 = lean_ctor_get(x_3, 4);
x_15 = lean_ctor_get(x_3, 5);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
x_18 = lean_ctor_get(x_3, 9);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_3);
x_19 = lean_box_float(x_1);
x_20 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_20, 0, x_8);
lean_ctor_set(x_20, 1, x_9);
lean_ctor_set(x_20, 2, x_10);
lean_ctor_set(x_20, 3, x_13);
lean_ctor_set(x_20, 4, x_14);
lean_ctor_set(x_20, 5, x_15);
lean_ctor_set(x_20, 6, x_19);
lean_ctor_set(x_20, 7, x_16);
lean_ctor_set(x_20, 8, x_17);
lean_ctor_set(x_20, 9, x_18);
lean_ctor_set_uint8(x_20, sizeof(void*)*10, x_11);
lean_ctor_set_uint8(x_20, sizeof(void*)*10 + 1, x_12);
x_21 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setSuccessProbability___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; lean_object* x_4; 
x_3 = lean_unbox_float(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Rapp_setSuccessProbability(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setMetaState(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 7);
lean_dec(x_5);
lean_ctor_set(x_3, 7, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_12 = lean_ctor_get(x_3, 3);
x_13 = lean_ctor_get(x_3, 4);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 8);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_9);
lean_ctor_set(x_18, 3, x_12);
lean_ctor_set(x_18, 4, x_13);
lean_ctor_set(x_18, 5, x_14);
lean_ctor_set(x_18, 6, x_15);
lean_ctor_set(x_18, 7, x_1);
lean_ctor_set(x_18, 8, x_16);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_10);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setMetaState___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setMetaState(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIntroducedMVars(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 8);
lean_dec(x_5);
lean_ctor_set(x_3, 8, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_12 = lean_ctor_get(x_3, 3);
x_13 = lean_ctor_get(x_3, 4);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 9);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_9);
lean_ctor_set(x_18, 3, x_12);
lean_ctor_set(x_18, 4, x_13);
lean_ctor_set(x_18, 5, x_14);
lean_ctor_set(x_18, 6, x_15);
lean_ctor_set(x_18, 7, x_16);
lean_ctor_set(x_18, 8, x_1);
lean_ctor_set(x_18, 9, x_17);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_10);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setIntroducedMVars___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setIntroducedMVars(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAssignedMVars(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__3(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 9);
lean_dec(x_5);
lean_ctor_set(x_3, 9, x_1);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_ctor_get(x_3, 2);
x_10 = lean_ctor_get_uint8(x_3, sizeof(void*)*10);
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*10 + 1);
x_12 = lean_ctor_get(x_3, 3);
x_13 = lean_ctor_get(x_3, 4);
x_14 = lean_ctor_get(x_3, 5);
x_15 = lean_ctor_get(x_3, 6);
x_16 = lean_ctor_get(x_3, 7);
x_17 = lean_ctor_get(x_3, 8);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_18, 0, x_7);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_9);
lean_ctor_set(x_18, 3, x_12);
lean_ctor_set(x_18, 4, x_13);
lean_ctor_set(x_18, 5, x_14);
lean_ctor_set(x_18, 6, x_15);
lean_ctor_set(x_18, 7, x_16);
lean_ctor_set(x_18, 8, x_17);
lean_ctor_set(x_18, 9, x_1);
lean_ctor_set_uint8(x_18, sizeof(void*)*10, x_10);
lean_ctor_set_uint8(x_18, sizeof(void*)*10 + 1, x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_setAssignedMVars___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_setAssignedMVars(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rapp_instBEq(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_Aesop_treeImpl___elambda__3(x_1);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = l_Aesop_treeImpl___elambda__3(x_2);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_nat_dec_eq(x_4, x_6);
lean_dec(x_6);
lean_dec(x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_instBEq___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Rapp_instBEq(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint64_t l_Aesop_Rapp_instHashable(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint64_t x_4; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
x_4 = lean_uint64_of_nat(x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_instHashable___boxed(lean_object* x_1) {
_start:
{
uint64_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Rapp_instHashable(x_1);
lean_dec(x_1);
x_3 = lean_box_uint64(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rapp_isSafe(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 3);
lean_inc(x_3);
x_4 = l_Aesop_RegularRule_isSafe(x_3);
lean_dec(x_3);
if (x_4 == 0)
{
uint8_t x_5; 
lean_dec(x_2);
x_5 = 0;
return x_5;
}
else
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_ctor_get(x_2, 9);
lean_inc(x_6);
lean_dec(x_2);
x_7 = l_Array_isEmpty___rarg(x_6);
lean_dec(x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_isSafe___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Rapp_isSafe(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoalAndMetaState_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 6);
lean_inc(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_3) == 1)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
else
{
lean_object* x_8; 
lean_dec(x_3);
x_8 = lean_box(0);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoalAndMetaState_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_postNormGoalAndMetaState_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoal_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 6);
lean_inc(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_3) == 1)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
else
{
lean_object* x_6; 
lean_dec(x_3);
x_6 = lean_box(0);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_postNormGoal_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_postNormGoal_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_postNormGoal_x3f(x_1);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 5);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
else
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
lean_dec(x_2);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoal___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_currentGoal(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_parentRapp_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_st_ref_get(x_4, x_2);
lean_dec(x_4);
if (lean_obj_tag(x_5) == 0)
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_5, 0);
x_8 = l_Aesop_treeImpl___elambda__1(x_7);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_5, 0);
x_11 = lean_ctor_get(x_5, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_5);
x_12 = l_Aesop_treeImpl___elambda__1(x_10);
lean_dec(x_10);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_11);
return x_14;
}
}
else
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_5);
if (x_15 == 0)
{
return x_5;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_5, 0);
x_17 = lean_ctor_get(x_5, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_5);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_parentRapp_x3f___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_parentRapp_x3f(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_parentMetaState(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Goal_parentRapp_x3f(x_1, x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
if (lean_obj_tag(x_5) == 0)
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_4);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_4, 0);
lean_dec(x_7);
lean_ctor_set(x_4, 0, x_2);
return x_4;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_4, 1);
lean_inc(x_8);
lean_dec(x_4);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_2);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_2);
x_10 = lean_ctor_get(x_4, 1);
lean_inc(x_10);
lean_dec(x_4);
x_11 = lean_ctor_get(x_5, 0);
lean_inc(x_11);
lean_dec(x_5);
x_12 = lean_st_ref_get(x_11, x_10);
lean_dec(x_11);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = l_Aesop_treeImpl___elambda__3(x_14);
lean_dec(x_14);
x_16 = lean_ctor_get(x_15, 7);
lean_inc(x_16);
lean_dec(x_15);
lean_ctor_set(x_12, 0, x_16);
return x_12;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_12, 0);
x_18 = lean_ctor_get(x_12, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_12);
x_19 = l_Aesop_treeImpl___elambda__3(x_17);
lean_dec(x_17);
x_20 = lean_ctor_get(x_19, 7);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_18);
return x_21;
}
}
else
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_12);
if (x_22 == 0)
{
return x_12;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_12, 0);
x_24 = lean_ctor_get(x_12, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_12);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
else
{
uint8_t x_26; 
lean_dec(x_2);
x_26 = !lean_is_exclusive(x_4);
if (x_26 == 0)
{
return x_4;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_4, 0);
x_28 = lean_ctor_get(x_4, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_4);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_parentMetaState___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Goal_parentMetaState(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoalAndMetaState(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Aesop_treeImpl___elambda__5(x_1);
x_9 = lean_ctor_get(x_8, 6);
lean_inc(x_9);
switch (lean_obj_tag(x_9)) {
case 0:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_Aesop_Goal_parentMetaState(x_1, x_2, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_8, 5);
lean_inc(x_13);
lean_dec(x_8);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_12);
lean_ctor_set(x_10, 0, x_14);
return x_10;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_15 = lean_ctor_get(x_10, 0);
x_16 = lean_ctor_get(x_10, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_10);
x_17 = lean_ctor_get(x_8, 5);
lean_inc(x_17);
lean_dec(x_8);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_15);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_16);
return x_19;
}
}
case 1:
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
lean_dec(x_8);
lean_dec(x_2);
x_20 = lean_ctor_get(x_9, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_9, 1);
lean_inc(x_21);
lean_dec(x_9);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_7);
return x_23;
}
default: 
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_9);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_25 = lean_ctor_get(x_9, 1);
lean_dec(x_25);
x_26 = lean_ctor_get(x_9, 0);
lean_dec(x_26);
x_27 = l_Aesop_Goal_parentMetaState(x_1, x_2, x_7);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_ctor_get(x_27, 0);
x_30 = lean_ctor_get(x_8, 5);
lean_inc(x_30);
lean_dec(x_8);
lean_ctor_set_tag(x_9, 0);
lean_ctor_set(x_9, 1, x_29);
lean_ctor_set(x_9, 0, x_30);
lean_ctor_set(x_27, 0, x_9);
return x_27;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_31 = lean_ctor_get(x_27, 0);
x_32 = lean_ctor_get(x_27, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_27);
x_33 = lean_ctor_get(x_8, 5);
lean_inc(x_33);
lean_dec(x_8);
lean_ctor_set_tag(x_9, 0);
lean_ctor_set(x_9, 1, x_31);
lean_ctor_set(x_9, 0, x_33);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_9);
lean_ctor_set(x_34, 1, x_32);
return x_34;
}
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
lean_dec(x_9);
x_35 = l_Aesop_Goal_parentMetaState(x_1, x_2, x_7);
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_35, 1);
lean_inc(x_37);
if (lean_is_exclusive(x_35)) {
 lean_ctor_release(x_35, 0);
 lean_ctor_release(x_35, 1);
 x_38 = x_35;
} else {
 lean_dec_ref(x_35);
 x_38 = lean_box(0);
}
x_39 = lean_ctor_get(x_8, 5);
lean_inc(x_39);
lean_dec(x_8);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_39);
lean_ctor_set(x_40, 1, x_36);
if (lean_is_scalar(x_38)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_38;
}
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_37);
return x_41;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_currentGoalAndMetaState___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_Goal_currentGoalAndMetaState(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Goal_safeRapps___spec__1(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_2, x_3);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_array_uget(x_1, x_2);
x_8 = lean_st_ref_get(x_7, x_5);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Aesop_Rapp_isSafe(x_9);
lean_dec(x_9);
if (x_11 == 0)
{
size_t x_12; size_t x_13; 
lean_dec(x_7);
x_12 = 1;
x_13 = lean_usize_add(x_2, x_12);
x_2 = x_13;
x_5 = x_10;
goto _start;
}
else
{
lean_object* x_15; size_t x_16; size_t x_17; 
x_15 = lean_array_push(x_4, x_7);
x_16 = 1;
x_17 = lean_usize_add(x_2, x_16);
x_2 = x_17;
x_4 = x_15;
x_5 = x_10;
goto _start;
}
}
else
{
uint8_t x_19; 
lean_dec(x_7);
lean_dec(x_4);
x_19 = !lean_is_exclusive(x_8);
if (x_19 == 0)
{
return x_8;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_8, 0);
x_21 = lean_ctor_get(x_8, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_8);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
else
{
lean_object* x_23; 
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_4);
lean_ctor_set(x_23, 1, x_5);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_safeRapps(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_array_get_size(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_lt(x_6, x_5);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
lean_dec(x_5);
lean_dec(x_4);
x_8 = l_Aesop_instInhabitedMVarClusterData___closed__1;
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_2);
return x_9;
}
else
{
uint8_t x_10; 
x_10 = lean_nat_dec_le(x_5, x_5);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
lean_dec(x_5);
lean_dec(x_4);
x_11 = l_Aesop_instInhabitedMVarClusterData___closed__1;
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_2);
return x_12;
}
else
{
size_t x_13; size_t x_14; lean_object* x_15; lean_object* x_16; 
x_13 = 0;
x_14 = lean_usize_of_nat(x_5);
lean_dec(x_5);
x_15 = l_Aesop_instInhabitedMVarClusterData___closed__1;
x_16 = l_Array_foldlMUnsafe_fold___at_Aesop_Goal_safeRapps___spec__1(x_4, x_13, x_14, x_15, x_2);
lean_dec(x_4);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Goal_safeRapps___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_7 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_8 = l_Array_foldlMUnsafe_fold___at_Aesop_Goal_safeRapps___spec__1(x_1, x_6, x_7, x_4, x_5);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_safeRapps___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_safeRapps(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasSafeRapp___spec__1(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = lean_st_ref_get(x_6, x_4);
lean_dec(x_6);
if (lean_obj_tag(x_7) == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = lean_ctor_get(x_7, 0);
x_10 = lean_ctor_get(x_7, 1);
x_11 = l_Aesop_Rapp_isSafe(x_9);
lean_dec(x_9);
if (x_11 == 0)
{
size_t x_12; size_t x_13; 
lean_free_object(x_7);
x_12 = 1;
x_13 = lean_usize_add(x_2, x_12);
x_2 = x_13;
x_4 = x_10;
goto _start;
}
else
{
uint8_t x_15; lean_object* x_16; 
x_15 = 1;
x_16 = lean_box(x_15);
lean_ctor_set(x_7, 0, x_16);
return x_7;
}
}
else
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_ctor_get(x_7, 0);
x_18 = lean_ctor_get(x_7, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_7);
x_19 = l_Aesop_Rapp_isSafe(x_17);
lean_dec(x_17);
if (x_19 == 0)
{
size_t x_20; size_t x_21; 
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_2 = x_21;
x_4 = x_18;
goto _start;
}
else
{
uint8_t x_23; lean_object* x_24; lean_object* x_25; 
x_23 = 1;
x_24 = lean_box(x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_18);
return x_25;
}
}
}
else
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_7);
if (x_26 == 0)
{
return x_7;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_7, 0);
x_28 = lean_ctor_get(x_7, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_7);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
else
{
uint8_t x_30; lean_object* x_31; lean_object* x_32; 
x_30 = 0;
x_31 = lean_box(x_30);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_4);
return x_32;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_hasSafeRapp(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_array_get_size(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_lt(x_6, x_5);
if (x_7 == 0)
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_5);
lean_dec(x_4);
x_8 = 0;
x_9 = lean_box(x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_2);
return x_10;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = 0;
x_12 = lean_usize_of_nat(x_5);
lean_dec(x_5);
x_13 = l_Array_anyMUnsafe_any___at_Aesop_Goal_hasSafeRapp___spec__1(x_4, x_11, x_12, x_2);
lean_dec(x_4);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasSafeRapp___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_anyMUnsafe_any___at_Aesop_Goal_hasSafeRapp___spec__1(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_hasSafeRapp___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_hasSafeRapp(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_isUnsafeExhausted(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get_uint8(x_2, sizeof(void*)*13 + 3);
if (x_3 == 0)
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = 0;
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_2, 11);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 2);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_nat_dec_eq(x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isUnsafeExhausted___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_isUnsafeExhausted(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isExhausted(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_Aesop_Goal_isUnsafeExhausted(x_1);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = l_Aesop_Goal_hasSafeRapp(x_1, x_2);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_box(x_3);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_2);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isExhausted___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_isExhausted(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isActive(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get_uint8(x_3, sizeof(void*)*13 + 1);
lean_dec(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = l_Aesop_Goal_isExhausted(x_1, x_2);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_5);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_5, 0);
lean_dec(x_9);
x_10 = 1;
x_11 = lean_box(x_10);
lean_ctor_set(x_5, 0, x_11);
return x_5;
}
else
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_ctor_get(x_5, 1);
lean_inc(x_12);
lean_dec(x_5);
x_13 = 1;
x_14 = lean_box(x_13);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_12);
return x_15;
}
}
else
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_5);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_5, 0);
lean_dec(x_17);
x_18 = 0;
x_19 = lean_box(x_18);
lean_ctor_set(x_5, 0, x_19);
return x_5;
}
else
{
lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_20 = lean_ctor_get(x_5, 1);
lean_inc(x_20);
lean_dec(x_5);
x_21 = 0;
x_22 = lean_box(x_21);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_20);
return x_23;
}
}
}
else
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_5);
if (x_24 == 0)
{
return x_5;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_5, 0);
x_26 = lean_ctor_get(x_5, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_5);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
else
{
uint8_t x_28; lean_object* x_29; lean_object* x_30; 
x_28 = 0;
x_29 = lean_box(x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_2);
return x_30;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isActive___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_isActive(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasProvableRapp___spec__1(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = lean_st_ref_get(x_6, x_4);
lean_dec(x_6);
if (lean_obj_tag(x_7) == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_7, 0);
x_10 = lean_ctor_get(x_7, 1);
x_11 = l_Aesop_treeImpl___elambda__3(x_9);
lean_dec(x_9);
x_12 = lean_ctor_get_uint8(x_11, sizeof(void*)*10);
lean_dec(x_11);
x_13 = l_Aesop_NodeState_isUnprovable(x_12);
if (x_13 == 0)
{
uint8_t x_14; lean_object* x_15; 
x_14 = 1;
x_15 = lean_box(x_14);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
size_t x_16; size_t x_17; 
lean_free_object(x_7);
x_16 = 1;
x_17 = lean_usize_add(x_2, x_16);
x_2 = x_17;
x_4 = x_10;
goto _start;
}
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; uint8_t x_23; 
x_19 = lean_ctor_get(x_7, 0);
x_20 = lean_ctor_get(x_7, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_7);
x_21 = l_Aesop_treeImpl___elambda__3(x_19);
lean_dec(x_19);
x_22 = lean_ctor_get_uint8(x_21, sizeof(void*)*10);
lean_dec(x_21);
x_23 = l_Aesop_NodeState_isUnprovable(x_22);
if (x_23 == 0)
{
uint8_t x_24; lean_object* x_25; lean_object* x_26; 
x_24 = 1;
x_25 = lean_box(x_24);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_20);
return x_26;
}
else
{
size_t x_27; size_t x_28; 
x_27 = 1;
x_28 = lean_usize_add(x_2, x_27);
x_2 = x_28;
x_4 = x_20;
goto _start;
}
}
}
else
{
uint8_t x_30; 
x_30 = !lean_is_exclusive(x_7);
if (x_30 == 0)
{
return x_7;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_7, 0);
x_32 = lean_ctor_get(x_7, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_7);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
else
{
uint8_t x_34; lean_object* x_35; lean_object* x_36; 
x_34 = 0;
x_35 = lean_box(x_34);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_4);
return x_36;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_hasProvableRapp(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_array_get_size(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_lt(x_6, x_5);
if (x_7 == 0)
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_5);
lean_dec(x_4);
x_8 = 0;
x_9 = lean_box(x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_2);
return x_10;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = 0;
x_12 = lean_usize_of_nat(x_5);
lean_dec(x_5);
x_13 = l_Array_anyMUnsafe_any___at_Aesop_Goal_hasProvableRapp___spec__1(x_4, x_11, x_12, x_2);
lean_dec(x_4);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_Goal_hasProvableRapp___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_anyMUnsafe_any___at_Aesop_Goal_hasProvableRapp___spec__1(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_hasProvableRapp___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_hasProvableRapp(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_Goal_firstProvenRapp_x3f___spec__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_4, x_3);
if (x_7 == 0)
{
lean_object* x_8; 
lean_dec(x_1);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_5);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; 
lean_dec(x_5);
x_9 = lean_array_uget(x_2, x_4);
x_10 = lean_st_ref_get(x_9, x_6);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; uint8_t x_16; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
x_14 = l_Aesop_treeImpl___elambda__3(x_12);
lean_dec(x_12);
x_15 = lean_ctor_get_uint8(x_14, sizeof(void*)*10);
lean_dec(x_14);
x_16 = l_Aesop_NodeState_isProven(x_15);
if (x_16 == 0)
{
size_t x_17; size_t x_18; 
lean_free_object(x_10);
lean_dec(x_9);
x_17 = 1;
x_18 = lean_usize_add(x_4, x_17);
lean_inc(x_1);
{
size_t _tmp_3 = x_18;
lean_object* _tmp_4 = x_1;
lean_object* _tmp_5 = x_13;
x_4 = _tmp_3;
x_5 = _tmp_4;
x_6 = _tmp_5;
}
goto _start;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
lean_dec(x_1);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_9);
x_21 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_21, 0, x_20);
x_22 = lean_box(0);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
lean_ctor_set(x_10, 0, x_23);
return x_10;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; uint8_t x_28; 
x_24 = lean_ctor_get(x_10, 0);
x_25 = lean_ctor_get(x_10, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_10);
x_26 = l_Aesop_treeImpl___elambda__3(x_24);
lean_dec(x_24);
x_27 = lean_ctor_get_uint8(x_26, sizeof(void*)*10);
lean_dec(x_26);
x_28 = l_Aesop_NodeState_isProven(x_27);
if (x_28 == 0)
{
size_t x_29; size_t x_30; 
lean_dec(x_9);
x_29 = 1;
x_30 = lean_usize_add(x_4, x_29);
lean_inc(x_1);
{
size_t _tmp_3 = x_30;
lean_object* _tmp_4 = x_1;
lean_object* _tmp_5 = x_25;
x_4 = _tmp_3;
x_5 = _tmp_4;
x_6 = _tmp_5;
}
goto _start;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
lean_dec(x_1);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_9);
x_33 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_33, 0, x_32);
x_34 = lean_box(0);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_25);
return x_36;
}
}
}
else
{
uint8_t x_37; 
lean_dec(x_9);
lean_dec(x_1);
x_37 = !lean_is_exclusive(x_10);
if (x_37 == 0)
{
return x_10;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_10, 0);
x_39 = lean_ctor_get(x_10, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_10);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Goal_firstProvenRapp_x3f___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_3 = l_Aesop_treeImpl___elambda__5(x_1);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_box(0);
x_6 = lean_array_size(x_4);
x_7 = 0;
x_8 = l_Aesop_Goal_firstProvenRapp_x3f___closed__1;
x_9 = l_Array_forInUnsafe_loop___at_Aesop_Goal_firstProvenRapp_x3f___spec__1(x_8, x_4, x_6, x_7, x_8, x_2);
lean_dec(x_4);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_9);
if (x_12 == 0)
{
lean_object* x_13; 
x_13 = lean_ctor_get(x_9, 0);
lean_dec(x_13);
lean_ctor_set(x_9, 0, x_5);
return x_9;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_dec(x_9);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_5);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
else
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_9);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_9, 0);
lean_dec(x_17);
x_18 = lean_ctor_get(x_11, 0);
lean_inc(x_18);
lean_dec(x_11);
lean_ctor_set(x_9, 0, x_18);
return x_9;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_9, 1);
lean_inc(x_19);
lean_dec(x_9);
x_20 = lean_ctor_get(x_11, 0);
lean_inc(x_20);
lean_dec(x_11);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_19);
return x_21;
}
}
}
else
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_9);
if (x_22 == 0)
{
return x_9;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_9, 0);
x_24 = lean_ctor_get(x_9, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_9);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_Goal_firstProvenRapp_x3f___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_8 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_9 = l_Array_forInUnsafe_loop___at_Aesop_Goal_firstProvenRapp_x3f___spec__1(x_1, x_2, x_7, x_8, x_5, x_6);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Goal_firstProvenRapp_x3f___lambda__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_firstProvenRapp_x3f___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_firstProvenRapp_x3f(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_hasMVar(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 7);
lean_inc(x_3);
lean_dec(x_2);
x_4 = l_Array_isEmpty___rarg(x_3);
lean_dec(x_3);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = 1;
return x_5;
}
else
{
uint8_t x_6; 
x_6 = 0;
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_hasMVar___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_hasMVar(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_size___at_Aesop_Goal_priority___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_array_get_size(x_1);
return x_2;
}
}
LEAN_EXPORT double l_Aesop_Goal_priority(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; double x_8; double x_9; double x_10; double x_11; double x_12; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 8);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 7);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_array_get_size(x_4);
lean_dec(x_4);
x_6 = 0;
x_7 = lean_unsigned_to_nat(0u);
x_8 = l_Float_ofScientific(x_5, x_6, x_7);
lean_dec(x_5);
x_9 = l_Aesop_unificationGoalPenalty;
x_10 = pow(x_9, x_8);
x_11 = lean_unbox_float(x_3);
lean_dec(x_3);
x_12 = lean_float_mul(x_11, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_size___at_Aesop_Goal_priority___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_UnorderedArraySet_size___at_Aesop_Goal_priority___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_priority___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_priority(x_1);
lean_dec(x_1);
x_3 = lean_box_float(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Goal_isNormal(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 6);
lean_inc(x_3);
lean_dec(x_2);
x_4 = l_Aesop_NormalizationState_isNormal(x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isNormal___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Goal_isNormal(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_originalGoalId(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Aesop_treeImpl___elambda__5(x_1);
x_3 = lean_ctor_get(x_2, 3);
lean_inc(x_3);
x_4 = l_Aesop_GoalOrigin_originalGoalId_x3f(x_3);
lean_dec(x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
lean_dec(x_2);
return x_5;
}
else
{
lean_object* x_6; 
lean_dec(x_2);
x_6 = lean_ctor_get(x_4, 0);
lean_inc(x_6);
lean_dec(x_4);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_originalGoalId___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Goal_originalGoalId(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isRoot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_parentRapp_x3f(x_1, x_2);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
if (lean_obj_tag(x_4) == 0)
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_3, 0);
lean_dec(x_6);
x_7 = 1;
x_8 = lean_box(x_7);
lean_ctor_set(x_3, 0, x_8);
return x_3;
}
else
{
lean_object* x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_3, 1);
lean_inc(x_9);
lean_dec(x_3);
x_10 = 1;
x_11 = lean_box(x_10);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_9);
return x_12;
}
}
else
{
uint8_t x_13; 
lean_dec(x_4);
x_13 = !lean_is_exclusive(x_3);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_3, 0);
lean_dec(x_14);
x_15 = 0;
x_16 = lean_box(x_15);
lean_ctor_set(x_3, 0, x_16);
return x_3;
}
else
{
lean_object* x_17; uint8_t x_18; lean_object* x_19; lean_object* x_20; 
x_17 = lean_ctor_get(x_3, 1);
lean_inc(x_17);
lean_dec(x_3);
x_18 = 0;
x_19 = lean_box(x_18);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_17);
return x_20;
}
}
}
else
{
uint8_t x_21; 
x_21 = !lean_is_exclusive(x_3);
if (x_21 == 0)
{
return x_3;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_3, 0);
x_23 = lean_ctor_get(x_3, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_3);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Goal_isRoot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Goal_isRoot(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rapp_introducesMVar(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_treeImpl___elambda__3(x_1);
x_3 = lean_ctor_get(x_2, 8);
lean_inc(x_3);
lean_dec(x_2);
x_4 = l_Array_isEmpty___rarg(x_3);
lean_dec(x_3);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = 1;
return x_5;
}
else
{
uint8_t x_6; 
x_6 = 0;
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_introducesMVar___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Rapp_introducesMVar(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_parentPostNormMetaState(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_Aesop_treeImpl___elambda__3(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_st_ref_get(x_5, x_3);
lean_dec(x_5);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
x_9 = l_Aesop_Goal_parentMetaState(x_7, x_2, x_8);
lean_dec(x_7);
return x_9;
}
else
{
uint8_t x_10; 
lean_dec(x_2);
x_10 = !lean_is_exclusive(x_6);
if (x_10 == 0)
{
return x_6;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_6, 0);
x_12 = lean_ctor_get(x_6, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_6);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_parentPostNormMetaState___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Rapp_parentPostNormMetaState(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_5 = l_Aesop_treeImpl___elambda__1(x_4);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_array_get_size(x_6);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_apply_2(x_11, lean_box(0), x_2);
return x_12;
}
else
{
uint8_t x_13; 
x_13 = lean_nat_dec_le(x_7, x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
x_14 = lean_ctor_get(x_1, 0);
lean_inc(x_14);
lean_dec(x_1);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_apply_2(x_15, lean_box(0), x_2);
return x_16;
}
else
{
size_t x_17; size_t x_18; lean_object* x_19; 
x_17 = 0;
x_18 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_19 = l_Array_foldlMUnsafe_fold___rarg(x_1, x_3, x_6, x_17, x_18, x_2);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__2(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = 1;
x_9 = lean_usize_add(x_1, x_8);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg(x_2, x_3, x_4, x_5, x_9, x_6, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_usize_dec_eq(x_5, x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
x_10 = lean_array_uget(x_4, x_5);
x_11 = lean_alloc_closure((void*)(l_ST_Prim_Ref_get___boxed), 4, 3);
lean_closure_set(x_11, 0, lean_box(0));
lean_closure_set(x_11, 1, lean_box(0));
lean_closure_set(x_11, 2, x_10);
lean_inc(x_2);
x_12 = lean_apply_2(x_2, lean_box(0), x_11);
lean_inc(x_3);
lean_inc(x_1);
x_13 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_7);
lean_closure_set(x_13, 2, x_3);
lean_inc(x_9);
x_14 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_12, x_13);
x_15 = lean_box_usize(x_5);
x_16 = lean_box_usize(x_6);
x_17 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__2___boxed), 7, 6);
lean_closure_set(x_17, 0, x_15);
lean_closure_set(x_17, 1, x_1);
lean_closure_set(x_17, 2, x_2);
lean_closure_set(x_17, 3, x_3);
lean_closure_set(x_17, 4, x_4);
lean_closure_set(x_17, 5, x_16);
x_18 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_14, x_17);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_19 = lean_ctor_get(x_1, 0);
lean_inc(x_19);
lean_dec(x_1);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_apply_2(x_20, lean_box(0), x_7);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___boxed), 7, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_6 = l_Aesop_treeImpl___elambda__3(x_5);
x_7 = lean_ctor_get(x_6, 2);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_array_get_size(x_7);
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_4);
lean_dec(x_2);
x_11 = lean_ctor_get(x_1, 0);
lean_inc(x_11);
lean_dec(x_1);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_apply_2(x_12, lean_box(0), x_3);
return x_13;
}
else
{
uint8_t x_14; 
x_14 = lean_nat_dec_le(x_8, x_8);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_4);
lean_dec(x_2);
x_15 = lean_ctor_get(x_1, 0);
lean_inc(x_15);
lean_dec(x_1);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = lean_apply_2(x_16, lean_box(0), x_3);
return x_17;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = 0;
x_19 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_20 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg(x_1, x_2, x_4, x_7, x_18, x_19, x_3);
return x_20;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_Rapp_foldSubgoalsM___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__2(x_8, x_2, x_3, x_4, x_5, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg(x_1, x_2, x_3, x_4, x_8, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Aesop_Rapp_foldSubgoalsM___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___lambda__1(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = 1;
x_8 = lean_usize_add(x_1, x_7);
x_9 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg(x_2, x_3, x_4, x_8, x_5, x_6);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_eq(x_4, x_5);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_6);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
x_9 = lean_array_uget(x_3, x_4);
lean_inc(x_2);
x_10 = lean_apply_1(x_2, x_9);
x_11 = lean_box_usize(x_4);
x_12 = lean_box_usize(x_5);
x_13 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___lambda__1___boxed), 6, 5);
lean_closure_set(x_13, 0, x_11);
lean_closure_set(x_13, 1, x_1);
lean_closure_set(x_13, 2, x_2);
lean_closure_set(x_13, 3, x_3);
lean_closure_set(x_13, 4, x_12);
x_14 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_10, x_13);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_3);
lean_dec(x_2);
x_15 = lean_ctor_get(x_1, 0);
lean_inc(x_15);
lean_dec(x_1);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = lean_apply_2(x_16, lean_box(0), x_6);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___boxed), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_4 = l_Aesop_treeImpl___elambda__1(x_3);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_lt(x_7, x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_ctor_get(x_9, 1);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_box(0);
x_12 = lean_apply_2(x_10, lean_box(0), x_11);
return x_12;
}
else
{
uint8_t x_13; 
x_13 = lean_nat_dec_le(x_6, x_6);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_14 = lean_ctor_get(x_1, 0);
lean_inc(x_14);
lean_dec(x_1);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_box(0);
x_17 = lean_apply_2(x_15, lean_box(0), x_16);
return x_17;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; lean_object* x_21; 
x_18 = 0;
x_19 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_20 = lean_box(0);
x_21 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg(x_1, x_2, x_5, x_18, x_19, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__2(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = 1;
x_9 = lean_usize_add(x_1, x_8);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg(x_2, x_3, x_4, x_5, x_9, x_6, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_usize_dec_eq(x_5, x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_dec(x_7);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
x_10 = lean_array_uget(x_4, x_5);
x_11 = lean_alloc_closure((void*)(l_ST_Prim_Ref_get___boxed), 4, 3);
lean_closure_set(x_11, 0, lean_box(0));
lean_closure_set(x_11, 1, lean_box(0));
lean_closure_set(x_11, 2, x_10);
lean_inc(x_2);
x_12 = lean_apply_2(x_2, lean_box(0), x_11);
lean_inc(x_3);
lean_inc(x_1);
x_13 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_3);
lean_inc(x_9);
x_14 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_12, x_13);
x_15 = lean_box_usize(x_5);
x_16 = lean_box_usize(x_6);
x_17 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__2___boxed), 7, 6);
lean_closure_set(x_17, 0, x_15);
lean_closure_set(x_17, 1, x_1);
lean_closure_set(x_17, 2, x_2);
lean_closure_set(x_17, 3, x_3);
lean_closure_set(x_17, 4, x_4);
lean_closure_set(x_17, 5, x_16);
x_18 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_14, x_17);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_19 = lean_ctor_get(x_1, 0);
lean_inc(x_19);
lean_dec(x_1);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_apply_2(x_20, lean_box(0), x_7);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_forSubgoalsM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_5 = l_Aesop_treeImpl___elambda__3(x_4);
x_6 = lean_ctor_get(x_5, 2);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_array_get_size(x_6);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_box(0);
x_13 = lean_apply_2(x_11, lean_box(0), x_12);
return x_13;
}
else
{
uint8_t x_14; 
x_14 = lean_nat_dec_le(x_7, x_7);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
x_15 = lean_ctor_get(x_1, 0);
lean_inc(x_15);
lean_dec(x_1);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = lean_box(0);
x_18 = lean_apply_2(x_16, lean_box(0), x_17);
return x_18;
}
else
{
size_t x_19; size_t x_20; lean_object* x_21; lean_object* x_22; 
x_19 = 0;
x_20 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_21 = lean_box(0);
x_22 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg(x_1, x_2, x_3, x_6, x_19, x_20, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_forSubgoalsM(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rapp_forSubgoalsM___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___lambda__1(x_7, x_2, x_3, x_4, x_8, x_6);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__1___rarg(x_1, x_2, x_3, x_7, x_8, x_6);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___lambda__2(x_8, x_2, x_3, x_4, x_5, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_forSubgoalsM___spec__2___rarg(x_1, x_2, x_3, x_4, x_8, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_forSubgoalsM___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Aesop_Rapp_forSubgoalsM___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___lambda__1(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = 1;
x_9 = lean_usize_add(x_1, x_8);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg(x_2, x_3, x_4, x_5, x_9, x_6, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_usize_dec_eq(x_5, x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
x_10 = lean_array_uget(x_4, x_5);
x_11 = lean_alloc_closure((void*)(l_ST_Prim_Ref_get___boxed), 4, 3);
lean_closure_set(x_11, 0, lean_box(0));
lean_closure_set(x_11, 1, lean_box(0));
lean_closure_set(x_11, 2, x_10);
lean_inc(x_2);
x_12 = lean_apply_2(x_2, lean_box(0), x_11);
lean_inc(x_3);
lean_inc(x_1);
x_13 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_foldSubgoalsM___spec__1___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_7);
lean_closure_set(x_13, 2, x_3);
lean_inc(x_9);
x_14 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_12, x_13);
x_15 = lean_box_usize(x_5);
x_16 = lean_box_usize(x_6);
x_17 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___lambda__1___boxed), 7, 6);
lean_closure_set(x_17, 0, x_15);
lean_closure_set(x_17, 1, x_1);
lean_closure_set(x_17, 2, x_2);
lean_closure_set(x_17, 3, x_3);
lean_closure_set(x_17, 4, x_4);
lean_closure_set(x_17, 5, x_16);
x_18 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_14, x_17);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_19 = lean_ctor_get(x_1, 0);
lean_inc(x_19);
lean_dec(x_1);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_apply_2(x_20, lean_box(0), x_7);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_6 = l_Aesop_treeImpl___elambda__3(x_5);
x_7 = lean_ctor_get(x_6, 2);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_array_get_size(x_7);
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_4);
lean_dec(x_2);
x_11 = lean_ctor_get(x_1, 0);
lean_inc(x_11);
lean_dec(x_1);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_apply_2(x_12, lean_box(0), x_3);
return x_13;
}
else
{
uint8_t x_14; 
x_14 = lean_nat_dec_le(x_8, x_8);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_4);
lean_dec(x_2);
x_15 = lean_ctor_get(x_1, 0);
lean_inc(x_15);
lean_dec(x_1);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = lean_apply_2(x_16, lean_box(0), x_3);
return x_17;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = 0;
x_19 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_20 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg(x_1, x_2, x_4, x_7, x_18, x_19, x_3);
return x_20;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_array_push(x_2, x_3);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Aesop_Rapp_subgoals___rarg___lambda__1), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = l_Aesop_instInhabitedMVarClusterData___closed__1;
x_6 = l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg(x_1, x_2, x_5, x_4, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rapp_subgoals___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___lambda__1(x_8, x_2, x_3, x_4, x_5, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Rapp_subgoals___spec__2___rarg(x_1, x_2, x_3, x_4, x_8, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Aesop_Rapp_foldSubgoalsM___at_Aesop_Rapp_subgoals___spec__1___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_subgoals___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Rapp_subgoals___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_depth(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Aesop_treeImpl___elambda__3(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_st_ref_get(x_4, x_2);
lean_dec(x_4);
if (lean_obj_tag(x_5) == 0)
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_5, 0);
x_8 = l_Aesop_treeImpl___elambda__5(x_7);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 4);
lean_inc(x_9);
lean_dec(x_8);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_5, 0);
x_11 = lean_ctor_get(x_5, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_5);
x_12 = l_Aesop_treeImpl___elambda__5(x_10);
lean_dec(x_10);
x_13 = lean_ctor_get(x_12, 4);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_11);
return x_14;
}
}
else
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_5);
if (x_15 == 0)
{
return x_5;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_5, 0);
x_17 = lean_ctor_get(x_5, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_5);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rapp_depth___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Rapp_depth(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_MVarCluster_provenGoal_x3f___spec__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_4, x_3);
if (x_7 == 0)
{
lean_object* x_8; 
lean_dec(x_1);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_5);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; 
lean_dec(x_5);
x_9 = lean_array_uget(x_2, x_4);
x_10 = lean_st_ref_get(x_9, x_6);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; uint8_t x_16; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
x_14 = l_Aesop_treeImpl___elambda__5(x_12);
lean_dec(x_12);
x_15 = lean_ctor_get_uint8(x_14, sizeof(void*)*13);
lean_dec(x_14);
x_16 = l_Aesop_GoalState_isProven(x_15);
if (x_16 == 0)
{
size_t x_17; size_t x_18; 
lean_free_object(x_10);
lean_dec(x_9);
x_17 = 1;
x_18 = lean_usize_add(x_4, x_17);
lean_inc(x_1);
{
size_t _tmp_3 = x_18;
lean_object* _tmp_4 = x_1;
lean_object* _tmp_5 = x_13;
x_4 = _tmp_3;
x_5 = _tmp_4;
x_6 = _tmp_5;
}
goto _start;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
lean_dec(x_1);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_9);
x_21 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_21, 0, x_20);
x_22 = lean_box(0);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
lean_ctor_set(x_10, 0, x_23);
return x_10;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; uint8_t x_28; 
x_24 = lean_ctor_get(x_10, 0);
x_25 = lean_ctor_get(x_10, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_10);
x_26 = l_Aesop_treeImpl___elambda__5(x_24);
lean_dec(x_24);
x_27 = lean_ctor_get_uint8(x_26, sizeof(void*)*13);
lean_dec(x_26);
x_28 = l_Aesop_GoalState_isProven(x_27);
if (x_28 == 0)
{
size_t x_29; size_t x_30; 
lean_dec(x_9);
x_29 = 1;
x_30 = lean_usize_add(x_4, x_29);
lean_inc(x_1);
{
size_t _tmp_3 = x_30;
lean_object* _tmp_4 = x_1;
lean_object* _tmp_5 = x_25;
x_4 = _tmp_3;
x_5 = _tmp_4;
x_6 = _tmp_5;
}
goto _start;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
lean_dec(x_1);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_9);
x_33 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_33, 0, x_32);
x_34 = lean_box(0);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_25);
return x_36;
}
}
}
else
{
uint8_t x_37; 
lean_dec(x_9);
lean_dec(x_1);
x_37 = !lean_is_exclusive(x_10);
if (x_37 == 0)
{
return x_10;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_10, 0);
x_39 = lean_ctor_get(x_10, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_10);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_provenGoal_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_3 = l_Aesop_treeImpl___elambda__1(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_box(0);
x_6 = lean_array_size(x_4);
x_7 = 0;
x_8 = l_Aesop_Goal_firstProvenRapp_x3f___closed__1;
x_9 = l_Array_forInUnsafe_loop___at_Aesop_MVarCluster_provenGoal_x3f___spec__1(x_8, x_4, x_6, x_7, x_8, x_2);
lean_dec(x_4);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_9);
if (x_12 == 0)
{
lean_object* x_13; 
x_13 = lean_ctor_get(x_9, 0);
lean_dec(x_13);
lean_ctor_set(x_9, 0, x_5);
return x_9;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_dec(x_9);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_5);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
else
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_9);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_9, 0);
lean_dec(x_17);
x_18 = lean_ctor_get(x_11, 0);
lean_inc(x_18);
lean_dec(x_11);
lean_ctor_set(x_9, 0, x_18);
return x_9;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_9, 1);
lean_inc(x_19);
lean_dec(x_9);
x_20 = lean_ctor_get(x_11, 0);
lean_inc(x_20);
lean_dec(x_11);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_19);
return x_21;
}
}
}
else
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_9);
if (x_22 == 0)
{
return x_9;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_9, 0);
x_24 = lean_ctor_get(x_9, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_9);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_MVarCluster_provenGoal_x3f___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_8 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_9 = l_Array_forInUnsafe_loop___at_Aesop_MVarCluster_provenGoal_x3f___spec__1(x_1, x_2, x_7, x_8, x_5, x_6);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_MVarCluster_provenGoal_x3f___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_MVarCluster_provenGoal_x3f(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Constants(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Script_Step(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tracing(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_UnsafeQueue(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Tree_Data(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Constants(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Script_Step(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tracing(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_UnsafeQueue(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__1 = _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__1();
lean_mark_persistent(l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__1);
l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__2 = _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__2();
lean_mark_persistent(l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__2);
l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__3 = _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__3();
lean_mark_persistent(l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__3);
l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__4 = _init_l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__4();
lean_mark_persistent(l___private_Aesop_Tree_Data_0__Bool_toYesNo___closed__4);
l_Aesop_instInhabitedGoalId = _init_l_Aesop_instInhabitedGoalId();
lean_mark_persistent(l_Aesop_instInhabitedGoalId);
l_Aesop_GoalId_zero = _init_l_Aesop_GoalId_zero();
lean_mark_persistent(l_Aesop_GoalId_zero);
l_Aesop_GoalId_one = _init_l_Aesop_GoalId_one();
lean_mark_persistent(l_Aesop_GoalId_one);
l_Aesop_GoalId_dummy = _init_l_Aesop_GoalId_dummy();
lean_mark_persistent(l_Aesop_GoalId_dummy);
l_Aesop_GoalId_instLT = _init_l_Aesop_GoalId_instLT();
lean_mark_persistent(l_Aesop_GoalId_instLT);
l_Aesop_instInhabitedRappId = _init_l_Aesop_instInhabitedRappId();
lean_mark_persistent(l_Aesop_instInhabitedRappId);
l_Aesop_RappId_zero = _init_l_Aesop_RappId_zero();
lean_mark_persistent(l_Aesop_RappId_zero);
l_Aesop_RappId_one = _init_l_Aesop_RappId_one();
lean_mark_persistent(l_Aesop_RappId_one);
l_Aesop_RappId_dummy = _init_l_Aesop_RappId_dummy();
lean_mark_persistent(l_Aesop_RappId_dummy);
l_Aesop_RappId_instLT = _init_l_Aesop_RappId_instLT();
lean_mark_persistent(l_Aesop_RappId_instLT);
l_Aesop_instIterationInhabited = _init_l_Aesop_instIterationInhabited();
lean_mark_persistent(l_Aesop_instIterationInhabited);
l_Aesop_Iteration_one = _init_l_Aesop_Iteration_one();
lean_mark_persistent(l_Aesop_Iteration_one);
l_Aesop_Iteration_none = _init_l_Aesop_Iteration_none();
lean_mark_persistent(l_Aesop_Iteration_none);
l_Aesop_Iteration_instToString___closed__1 = _init_l_Aesop_Iteration_instToString___closed__1();
lean_mark_persistent(l_Aesop_Iteration_instToString___closed__1);
l_Aesop_Iteration_instToString = _init_l_Aesop_Iteration_instToString();
lean_mark_persistent(l_Aesop_Iteration_instToString);
l_Aesop_Iteration_instLT = _init_l_Aesop_Iteration_instLT();
lean_mark_persistent(l_Aesop_Iteration_instLT);
l_Aesop_Iteration_instLE = _init_l_Aesop_Iteration_instLE();
lean_mark_persistent(l_Aesop_Iteration_instLE);
l_Aesop_NodeState_noConfusion___rarg___closed__1 = _init_l_Aesop_NodeState_noConfusion___rarg___closed__1();
lean_mark_persistent(l_Aesop_NodeState_noConfusion___rarg___closed__1);
l_Aesop_instInhabitedNodeState = _init_l_Aesop_instInhabitedNodeState();
l_Aesop_instBEqNodeState___closed__1 = _init_l_Aesop_instBEqNodeState___closed__1();
lean_mark_persistent(l_Aesop_instBEqNodeState___closed__1);
l_Aesop_instBEqNodeState = _init_l_Aesop_instBEqNodeState();
lean_mark_persistent(l_Aesop_instBEqNodeState);
l_Aesop_NodeState_instToString___closed__1 = _init_l_Aesop_NodeState_instToString___closed__1();
lean_mark_persistent(l_Aesop_NodeState_instToString___closed__1);
l_Aesop_NodeState_instToString___closed__2 = _init_l_Aesop_NodeState_instToString___closed__2();
lean_mark_persistent(l_Aesop_NodeState_instToString___closed__2);
l_Aesop_NodeState_instToString___closed__3 = _init_l_Aesop_NodeState_instToString___closed__3();
lean_mark_persistent(l_Aesop_NodeState_instToString___closed__3);
l_Aesop_instInhabitedGoalState = _init_l_Aesop_instInhabitedGoalState();
l_Aesop_instBEqGoalState___closed__1 = _init_l_Aesop_instBEqGoalState___closed__1();
lean_mark_persistent(l_Aesop_instBEqGoalState___closed__1);
l_Aesop_instBEqGoalState = _init_l_Aesop_instBEqGoalState();
lean_mark_persistent(l_Aesop_instBEqGoalState);
l_Aesop_GoalState_instToString___closed__1 = _init_l_Aesop_GoalState_instToString___closed__1();
lean_mark_persistent(l_Aesop_GoalState_instToString___closed__1);
l_Aesop_GoalState_instToString___closed__2 = _init_l_Aesop_GoalState_instToString___closed__2();
lean_mark_persistent(l_Aesop_GoalState_instToString___closed__2);
l_Aesop_instInhabitedNormalizationState = _init_l_Aesop_instInhabitedNormalizationState();
lean_mark_persistent(l_Aesop_instInhabitedNormalizationState);
l_Aesop_instInhabitedGoalOrigin = _init_l_Aesop_instInhabitedGoalOrigin();
lean_mark_persistent(l_Aesop_instInhabitedGoalOrigin);
l_Aesop_GoalOrigin_toString___closed__1 = _init_l_Aesop_GoalOrigin_toString___closed__1();
lean_mark_persistent(l_Aesop_GoalOrigin_toString___closed__1);
l_Aesop_GoalOrigin_toString___closed__2 = _init_l_Aesop_GoalOrigin_toString___closed__2();
lean_mark_persistent(l_Aesop_GoalOrigin_toString___closed__2);
l_Aesop_GoalOrigin_toString___closed__3 = _init_l_Aesop_GoalOrigin_toString___closed__3();
lean_mark_persistent(l_Aesop_GoalOrigin_toString___closed__3);
l_Aesop_GoalOrigin_toString___closed__4 = _init_l_Aesop_GoalOrigin_toString___closed__4();
lean_mark_persistent(l_Aesop_GoalOrigin_toString___closed__4);
l_Aesop_GoalOrigin_toString___closed__5 = _init_l_Aesop_GoalOrigin_toString___closed__5();
lean_mark_persistent(l_Aesop_GoalOrigin_toString___closed__5);
l_Aesop_instInhabitedMVarClusterData___closed__1 = _init_l_Aesop_instInhabitedMVarClusterData___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedMVarClusterData___closed__1);
l_Aesop_instInhabitedMVarClusterData___closed__2 = _init_l_Aesop_instInhabitedMVarClusterData___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedMVarClusterData___closed__2);
l_Aesop_treeImpl___closed__1 = _init_l_Aesop_treeImpl___closed__1();
lean_mark_persistent(l_Aesop_treeImpl___closed__1);
l_Aesop_treeImpl___closed__2 = _init_l_Aesop_treeImpl___closed__2();
lean_mark_persistent(l_Aesop_treeImpl___closed__2);
l_Aesop_treeImpl___closed__3 = _init_l_Aesop_treeImpl___closed__3();
lean_mark_persistent(l_Aesop_treeImpl___closed__3);
l_Aesop_treeImpl___closed__4 = _init_l_Aesop_treeImpl___closed__4();
lean_mark_persistent(l_Aesop_treeImpl___closed__4);
l_Aesop_treeImpl___closed__5 = _init_l_Aesop_treeImpl___closed__5();
lean_mark_persistent(l_Aesop_treeImpl___closed__5);
l_Aesop_treeImpl___closed__6 = _init_l_Aesop_treeImpl___closed__6();
lean_mark_persistent(l_Aesop_treeImpl___closed__6);
l_Aesop_treeImpl___closed__7 = _init_l_Aesop_treeImpl___closed__7();
lean_mark_persistent(l_Aesop_treeImpl___closed__7);
l_Aesop_treeImpl = _init_l_Aesop_treeImpl();
lean_mark_persistent(l_Aesop_treeImpl);
l_Aesop_Goal_firstProvenRapp_x3f___closed__1 = _init_l_Aesop_Goal_firstProvenRapp_x3f___closed__1();
lean_mark_persistent(l_Aesop_Goal_firstProvenRapp_x3f___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
