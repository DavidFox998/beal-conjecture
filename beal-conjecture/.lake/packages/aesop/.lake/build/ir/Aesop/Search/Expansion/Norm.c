// Lean compiler output
// Module: Aesop.Search.Expansion.Norm
// Imports: Init Aesop.RuleTac Aesop.RuleTac.ElabRuleTerm Aesop.Script.SpecificTactics Aesop.Search.Expansion.Basic Aesop.Search.Expansion.Simp Aesop.Search.RuleSelection Aesop.Search.SearchM Aesop.Tree.State Batteries.Lean.HashSet
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
static uint8_t l_Aesop_checkSimp___lambda__2___closed__3;
static lean_object* l_Aesop_checkSimp___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_normSimpCore_addLocalRules___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_mkNormSimpScriptStep(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPreSimpRules___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode___closed__1;
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runFirstNormRule(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_checkSimp___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPreSimpRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normUnfold___lambda__2___closed__2;
static lean_object* l_Aesop_normSimpCore___lambda__4___closed__1;
lean_object* l_Aesop_Check_isEnabled___at_Aesop_runRuleTac___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_IO_getNumHeartbeats___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6___boxed(lean_object**);
static lean_object* l_Aesop_instMonadStatsNormM___closed__7;
static double l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1;
extern lean_object* l_Lean_profiler;
static lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__2;
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Aesop_normSimpCore_addLocalRules(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__4___closed__4;
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_ReaderT_instMonadLift___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_normSimp___closed__1;
LEAN_EXPORT lean_object* l_Aesop_runNormSteps___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__14;
static lean_object* l_Aesop_runNormRuleTac_err___closed__1;
static lean_object* l_Aesop_instMonadStatsNormM___closed__12;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9(lean_object*);
lean_object* l_Lean_PersistentArray_toArray___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1;
lean_object* l_Aesop_LocalRuleSet_applicableNormalizationRules___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SimpResult_toNormRuleResult(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__5___closed__2;
static lean_object* l_Aesop_normalizeGoalMVar___closed__2;
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static double l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
uint8_t l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_indentD(lean_object*);
double lean_float_div(double, double);
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1;
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkSimp___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4(lean_object*);
size_t lean_uint64_to_usize(uint64_t);
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__7;
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__7;
lean_object* l_Lean_Name_toString(lean_object*, uint8_t);
static lean_object* l_Aesop_NormStep_unfold___closed__3;
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___boxed(lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofList(lean_object*);
lean_object* l_Lean_PersistentArray_push___rarg(lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runFirstNormRule___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__18;
static lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__7(lean_object*, lean_object*);
uint8_t l_Aesop_Check_get(lean_object*, lean_object*);
lean_object* l_Lean_Core_instMonadLiftIOCoreM(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_mkNormSimpScriptStep___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___closed__1;
lean_object* lean_mk_array(lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___closed__1;
uint8_t lean_usize_dec_eq(size_t, size_t);
lean_object* l_Aesop_treeImpl___elambda__5(lean_object*);
static lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3;
static lean_object* l_Aesop_checkSimp___lambda__1___closed__3;
static lean_object* l_Aesop_instMonadStatsNormM___closed__6;
lean_object* l_IO_instMonadLiftSTRealWorldBaseIO(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac_err___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_replaceRef(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_steps_x3f(lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5;
lean_object* l_Aesop_GoalRef_markProvenByNormalization___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore_addLocalRules___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__23;
static lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___closed__1;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__12;
LEAN_EXPORT lean_object* l_Aesop_runNormSteps___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Goal_isRoot___boxed(lean_object*, lean_object*);
uint8_t lean_float_decLt(double, double);
static lean_object* l_Aesop_runNormRuleTac_err___closed__4;
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Aesop_normSimpCore___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_TraceOption_stats;
static lean_object* l_Aesop_NormStep_unfold___closed__2;
LEAN_EXPORT lean_object* l_Aesop_instMonadStatsNormM___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normalizeGoalMVar___closed__1;
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Script_TacticBuilder_simpAllOrSimpAtStar___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_trace_profiler_useHeartbeats;
lean_object* l_Lean_stringToMessageData(lean_object*);
lean_object* l_instMonadLiftT(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l___private_Lean_Util_Trace_0__Lean_checkTraceOption(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_optNormRuleResultToNormSeqResult(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2(lean_object*);
static lean_object* l_Aesop_runNormRuleTac_err___closed__3;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__19;
lean_object* l_Aesop_SearchM_instMonadStats___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkSimp___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Exception_toMessageData(lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssigned___at_Aesop_checkSimp___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__5;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_normSimpCore_addLocalRules___spec__1(lean_object*, uint8_t, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimp___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_getMVarDependencies___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normSimp___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Aesop_normUnfoldCore___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___closed__1;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__9___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___closed__1;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normUnfoldCore___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__16;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static double l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__4;
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_unfoldManyStarS(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__2;
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPostSimpRules___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isDelayedAssigned___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__7___boxed(lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__7(lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__15;
static lean_object* l_Aesop_normUnfoldCore___closed__2;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__3;
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_runRuleTac(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2;
lean_object* lean_st_ref_take(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normUnfold___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normUnfold___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normUnfold(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssigned___at_Aesop_checkSimp___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkSimp___closed__1;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runFirstNormRule___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__9;
uint64_t lean_uint64_shift_right(uint64_t, uint64_t);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_to_int(lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__5___closed__5;
LEAN_EXPORT lean_object* l_Aesop_instMonadStatsNormM;
lean_object* l_StateRefT_x27_lift___rarg___boxed(lean_object*, lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__2;
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__2;
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___lambda__1___closed__3;
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___closed__3;
lean_object* l_Lean_Meta_SavedState_restore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Aesop_normSimpCore___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_mkNormSimpScriptStep___closed__2;
lean_object* l_Aesop_exceptRuleResultToEmoji___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5___boxed(lean_object**);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
lean_object* l_ReaderT_instMonadLift(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentArray_append___rarg(lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___closed__2;
extern lean_object* l_Aesop_collectStatsOption;
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runFirstNormRule___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__16;
static lean_object* l_Aesop_runNormRule___closed__1;
LEAN_EXPORT lean_object* l_Aesop_normUnfoldCore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_SavedState_runMetaM_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normSimpCore___spec__4(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__9(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__5___closed__4;
static lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode_fmt___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___lambda__1___boxed(lean_object*);
uint64_t l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(lean_object*);
extern lean_object* l_Aesop_Check_rules;
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1(lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__4___closed__3;
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_getIntroducedExprMVars(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__4;
lean_object* l___private_Lean_Meta_Basic_0__Lean_Meta_withMVarContextImp___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___closed__2;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__5(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__6(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* l_Aesop_RuleTacDescr_run(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normUnfold___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__2;
static lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___boxed(lean_object**);
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Goal_runMetaMInParentState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__5___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_checkSimp___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_checkSimp___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormSteps___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_runNormRule___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_normSimp___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normSimpCore___lambda__5___closed__3;
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7;
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_trace_profiler_threshold;
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__13;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_optNormRuleResultEmoji(lean_object*);
lean_object* l_Lean_Meta_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___lambda__1___closed__2;
static lean_object* l_Aesop_NormStep_unfold___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_checkSimp___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__10;
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormSteps___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___lambda__1___closed__4;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__2(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normSimpCore___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_simpAll(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isAssigned___spec__1(lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__15;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__14;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_newGoal_x3f(lean_object*);
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
extern lean_object* l_Lean_inheritedTraceOptions;
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__5;
double l_Float_ofScientific(lean_object*, uint8_t, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__1;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normalizeGoalMVar___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__4;
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__1;
extern lean_object* l_Aesop_ruleFailureEmoji;
static lean_object* l_Aesop_checkSimp___closed__2;
lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__21;
static lean_object* l_Aesop_runNormRuleTac_err___closed__5;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_TraceOption_steps;
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3(lean_object*, lean_object*);
static lean_object* l_Aesop_normUnfold___closed__1;
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_NormStep_simp___closed__1;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__10;
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_steps_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormSteps___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac_err___closed__6;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__17;
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_instMonadStatsNormM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
static lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___boxed(lean_object*, lean_object*);
uint8_t l_Lean_Option_get___at_Aesop_Check_get___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_normSimpCore___spec__5(lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_elabRuleTermForSimpMetaM(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__8;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__13;
extern lean_object* l_Aesop_ruleSuccessEmoji;
LEAN_EXPORT lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode_fmt(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_toNormSeqResult(lean_object*, lean_object*);
static lean_object* l_Aesop_checkSimp___lambda__1___closed__4;
lean_object* l_StateRefT_x27_lift(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(lean_object*, lean_object*);
static lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__1;
static lean_object* l_Aesop_checkSimp___lambda__1___closed__2;
static lean_object* l_Aesop_normSimpCore___lambda__4___closed__2;
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode___lambda__2___closed__1;
uint64_t lean_uint64_xor(uint64_t, uint64_t);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__9;
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkSimp(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__24;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__1;
LEAN_EXPORT lean_object* l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_int_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_LocalRuleSet_applicableNormalizationRulesWith(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_NormStep_unfold___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_find_x3f___at_Aesop_BaseRuleSet_merge___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimp___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_straightLineExt_go___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__22;
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4(lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1;
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__3;
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___boxed(lean_object**);
static lean_object* l_Aesop_normSimp___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_newGoal_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___closed__1;
static lean_object* l_Aesop_checkSimp___lambda__1___closed__5;
size_t lean_usize_sub(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_IO_monoNanosNow___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__8(lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
static lean_object* l_Aesop_checkSimp___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__17;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__8;
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_getRootMetaState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2;
lean_object* lean_array_uget(lean_object*, size_t);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__6;
size_t lean_array_size(lean_object*);
static lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___closed__1;
extern lean_object* l_Lean_trace_profiler;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___boxed(lean_object**);
LEAN_EXPORT lean_object* l_Aesop_runNormSteps(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac_err___closed__2;
lean_object* l_Lean_addTrace___at_Lean_Meta_processPostponed_loop___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_ScriptT_run___at_Aesop_normUnfoldCore___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_getAssignedExprMVars(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__11;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_optNormRuleResultEmoji___boxed(lean_object*);
static lean_object* l_Aesop_runNormSteps___closed__1;
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normUnfold___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormSteps___closed__4;
lean_object* lean_string_append(lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___closed__3;
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_instMonadStatsNormM___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__5;
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__1;
static lean_object* l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___closed__1;
lean_object* l_Option_isSome___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_normUnfoldCore___closed__3;
lean_object* lean_array_get_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPostSimpRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Aesop_checkSimp___spec__6(lean_object*, lean_object*);
static lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3;
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary(lean_object*);
static lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___closed__2;
static lean_object* l_Aesop_normUnfoldCore___closed__1;
lean_object* l_Aesop_simpGoalWithAllHypotheses(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalMVar(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimp___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_instMonadLiftBaseIOEIO(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_runNormRule(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_mapTR_loop___at_Lean_compileDecl___spec__1(lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___closed__3;
static lean_object* l_Aesop_instMonadStatsNormM___closed__4;
uint8_t l_Lean_Exception_isRuntime(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_runNormRule___spec__2(lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__18;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__2;
lean_object* l_instMonadLiftTOfMonadLift___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_runNormRuleTac___lambda__3___closed__6;
LEAN_EXPORT lean_object* l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Aesop_checkSimp___spec__6___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normalizeGoalMVar___spec__1(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__1(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__8;
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_normSimp___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
static lean_object* l_Aesop_instMonadStatsNormM___closed__11;
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
lean_object* l_Lean_MessageData_ofName(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadStatsNormM___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
static lean_object* l_Aesop_mkNormSimpScriptStep___closed__1;
static lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__1;
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3(lean_object*);
static lean_object* l_Aesop_NormStep_simp___closed__2;
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_land(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac_err(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Script_TacticBuilder_simpAllOrSimpAtStarOnly___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_normSimp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_ruleProvedEmoji;
LEAN_EXPORT lean_object* l_Aesop_SimpResult_toNormRuleResult___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM(lean_object*, lean_object*, lean_object*);
double lean_float_sub(double, double);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadStatsNormM___closed__3;
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_normSimpCore___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Array_isEmpty___rarg(lean_object*);
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__25;
static lean_object* l_Aesop_withNormTraceNode_fmt___closed__20;
lean_object* l_Lean_Core_instMonadOptionsCoreM___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_Meta_saveState___rarg(x_3, x_4, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Meta_SavedState_restore(x_1, x_3, x_4, x_5, x_6, x_7);
return x_8;
}
}
static lean_object* _init_l_Aesop_instMonadBacktrackSavedStateNormM___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_instMonadBacktrackSavedStateNormM___lambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadBacktrackSavedStateNormM___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_instMonadBacktrackSavedStateNormM___lambda__2___boxed), 7, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadBacktrackSavedStateNormM___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadBacktrackSavedStateNormM___closed__1;
x_2 = l_Aesop_instMonadBacktrackSavedStateNormM___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadBacktrackSavedStateNormM() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instMonadBacktrackSavedStateNormM___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_instMonadBacktrackSavedStateNormM___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadBacktrackSavedStateNormM___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_instMonadBacktrackSavedStateNormM___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_instMonadStatsNormM___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_1);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_9 = lean_apply_6(x_1, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_apply_7(x_2, x_10, x_3, x_4, x_5, x_6, x_7, x_11);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_13 = !lean_is_exclusive(x_9);
if (x_13 == 0)
{
return x_9;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_9, 0);
x_15 = lean_ctor_get(x_9, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_9);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadStatsNormM___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_1, 3);
lean_inc(x_8);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_ReaderT_instMonadLift), 3, 2);
lean_closure_set(x_1, 0, lean_box(0));
lean_closure_set(x_1, 1, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_StateRefT_x27_lift), 4, 3);
lean_closure_set(x_1, 0, lean_box(0));
lean_closure_set(x_1, 1, lean_box(0));
lean_closure_set(x_1, 2, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instMonadLiftBaseIOEIO), 2, 1);
lean_closure_set(x_1, 0, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instMonadLiftT), 2, 1);
lean_closure_set(x_1, 0, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_IO_instMonadLiftSTRealWorldBaseIO), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadStatsNormM___closed__5;
x_2 = l_Aesop_instMonadStatsNormM___closed__4;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadStatsNormM___closed__3;
x_2 = l_Aesop_instMonadStatsNormM___closed__6;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Core_instMonadLiftIOCoreM), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadStatsNormM___closed__8;
x_2 = l_Aesop_instMonadStatsNormM___closed__7;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadStatsNormM___closed__2;
x_2 = l_Aesop_instMonadStatsNormM___closed__9;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadStatsNormM___closed__1;
x_2 = l_Aesop_instMonadStatsNormM___closed__10;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instMonadStatsNormM___closed__1;
x_2 = l_Aesop_instMonadStatsNormM___closed__11;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Core_instMonadOptionsCoreM___boxed), 3, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instMonadStatsNormM___closed__13;
x_2 = lean_alloc_closure((void*)(l_StateRefT_x27_lift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instMonadStatsNormM___closed__14;
x_2 = lean_alloc_closure((void*)(l_ReaderT_instMonadLift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instMonadStatsNormM___closed__15;
x_2 = lean_alloc_closure((void*)(l_ReaderT_instMonadLift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_instMonadStatsNormM___spec__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM___closed__18() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_instMonadStatsNormM___lambda__1___boxed), 7, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instMonadStatsNormM() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Aesop_instMonadStatsNormM___closed__17;
x_2 = l_Aesop_instMonadStatsNormM___closed__18;
x_3 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
x_4 = l_Aesop_instMonadStatsNormM___closed__12;
x_5 = l_Aesop_instMonadStatsNormM___closed__16;
x_6 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
lean_ctor_set(x_6, 2, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_instMonadStatsNormM___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_ReaderT_read___at_Aesop_instMonadStatsNormM___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadStatsNormM___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_instMonadStatsNormM___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_2);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
x_13 = lean_ctor_get(x_2, 2);
lean_ctor_set(x_2, 2, x_12);
lean_ctor_set(x_2, 1, x_11);
lean_ctor_set(x_2, 0, x_13);
x_14 = lean_st_ref_get(x_3, x_9);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_apply_6(x_1, x_2, x_5, x_6, x_7, x_8, x_15);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_17 = lean_ctor_get(x_2, 0);
x_18 = lean_ctor_get(x_2, 1);
x_19 = lean_ctor_get(x_2, 2);
x_20 = lean_ctor_get(x_2, 3);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_2);
x_21 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_17);
lean_ctor_set(x_21, 2, x_18);
lean_ctor_set(x_21, 3, x_20);
x_22 = lean_st_ref_get(x_3, x_9);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_apply_6(x_1, x_21, x_5, x_6, x_7, x_8, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_instMonadLiftNormMSearchM___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_instMonadLiftNormMSearchM___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_4);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_instMonadLiftNormMSearchM___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_instMonadLiftNormMSearchM(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_newGoal_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
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
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_newGoal_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_NormRuleResult_newGoal_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_steps_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_steps_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_NormRuleResult_steps_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_optNormRuleResultEmoji(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_Aesop_ruleFailureEmoji;
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
x_4 = l_Aesop_ruleSuccessEmoji;
return x_4;
}
else
{
lean_object* x_5; 
x_5 = l_Aesop_ruleProvedEmoji;
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_optNormRuleResultEmoji___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_optNormRuleResultEmoji(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_optNormRuleResultEmoji___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" ", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("|", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("global", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("local", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("apply", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("cases", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("constructors", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("destruct", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("forward", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("simp", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unfold", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("norm", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__18() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("safe", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__19() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unsafe", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__20() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("<norm simp>", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__20;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__21;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__23() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("<norm unfold>", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__24() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__23;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode_fmt___closed__25() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__24;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode_fmt(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_9 = l_Aesop_withNormTraceNode_fmt___closed__1;
x_10 = l_Aesop_exceptRuleResultToEmoji___rarg(x_9, x_2);
x_11 = l_Lean_stringToMessageData(x_10);
lean_dec(x_10);
x_12 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_13 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
x_14 = l_Aesop_withNormTraceNode_fmt___closed__5;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
switch (lean_obj_tag(x_1)) {
case 0:
{
lean_object* x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; lean_object* x_27; uint8_t x_28; lean_object* x_29; lean_object* x_30; 
x_23 = lean_ctor_get(x_1, 0);
lean_inc(x_23);
lean_dec(x_1);
x_24 = lean_ctor_get_uint8(x_23, sizeof(void*)*1 + 9);
x_25 = lean_ctor_get_uint8(x_23, sizeof(void*)*1 + 8);
x_26 = lean_ctor_get_uint8(x_23, sizeof(void*)*1 + 10);
x_27 = lean_ctor_get(x_23, 0);
lean_inc(x_27);
lean_dec(x_23);
x_28 = 1;
x_29 = l_Lean_Name_toString(x_27, x_28);
switch (x_24) {
case 0:
{
lean_object* x_54; 
x_54 = l_Aesop_withNormTraceNode_fmt___closed__17;
x_30 = x_54;
goto block_53;
}
case 1:
{
lean_object* x_55; 
x_55 = l_Aesop_withNormTraceNode_fmt___closed__18;
x_30 = x_55;
goto block_53;
}
default: 
{
lean_object* x_56; 
x_56 = l_Aesop_withNormTraceNode_fmt___closed__19;
x_30 = x_56;
goto block_53;
}
}
block_53:
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = l_Aesop_withNormTraceNode_fmt___closed__6;
x_32 = lean_string_append(x_30, x_31);
switch (x_25) {
case 0:
{
lean_object* x_45; 
x_45 = l_Aesop_withNormTraceNode_fmt___closed__9;
x_33 = x_45;
goto block_44;
}
case 1:
{
lean_object* x_46; 
x_46 = l_Aesop_withNormTraceNode_fmt___closed__10;
x_33 = x_46;
goto block_44;
}
case 2:
{
lean_object* x_47; 
x_47 = l_Aesop_withNormTraceNode_fmt___closed__11;
x_33 = x_47;
goto block_44;
}
case 3:
{
lean_object* x_48; 
x_48 = l_Aesop_withNormTraceNode_fmt___closed__12;
x_33 = x_48;
goto block_44;
}
case 4:
{
lean_object* x_49; 
x_49 = l_Aesop_withNormTraceNode_fmt___closed__13;
x_33 = x_49;
goto block_44;
}
case 5:
{
lean_object* x_50; 
x_50 = l_Aesop_withNormTraceNode_fmt___closed__14;
x_33 = x_50;
goto block_44;
}
case 6:
{
lean_object* x_51; 
x_51 = l_Aesop_withNormTraceNode_fmt___closed__15;
x_33 = x_51;
goto block_44;
}
default: 
{
lean_object* x_52; 
x_52 = l_Aesop_withNormTraceNode_fmt___closed__16;
x_33 = x_52;
goto block_44;
}
}
block_44:
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_string_append(x_32, x_33);
lean_dec(x_33);
x_35 = lean_string_append(x_34, x_31);
if (x_26 == 0)
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_36 = l_Aesop_withNormTraceNode_fmt___closed__7;
x_37 = lean_string_append(x_35, x_36);
x_38 = lean_string_append(x_37, x_31);
x_39 = lean_string_append(x_38, x_29);
lean_dec(x_29);
x_16 = x_39;
goto block_22;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_40 = l_Aesop_withNormTraceNode_fmt___closed__8;
x_41 = lean_string_append(x_35, x_40);
x_42 = lean_string_append(x_41, x_31);
x_43 = lean_string_append(x_42, x_29);
lean_dec(x_29);
x_16 = x_43;
goto block_22;
}
}
}
}
case 1:
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_57 = l_Aesop_withNormTraceNode_fmt___closed__22;
x_58 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_58, 0, x_15);
lean_ctor_set(x_58, 1, x_57);
x_59 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_12);
x_60 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_60, 0, x_59);
lean_ctor_set(x_60, 1, x_8);
return x_60;
}
default: 
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
x_61 = l_Aesop_withNormTraceNode_fmt___closed__25;
x_62 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_62, 0, x_15);
lean_ctor_set(x_62, 1, x_61);
x_63 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_63, 0, x_62);
lean_ctor_set(x_63, 1, x_12);
x_64 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_8);
return x_64;
}
}
block_22:
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_17, 0, x_16);
x_18 = l_Lean_MessageData_ofFormat(x_17);
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_15);
lean_ctor_set(x_19, 1, x_18);
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_12);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_8);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode_fmt___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_withNormTraceNode_fmt(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_5, 2);
x_9 = lean_ctor_get(x_1, 1);
x_10 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_8, x_9);
x_11 = lean_box(x_10);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_7);
return x_12;
}
}
static double _init_l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; double x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = 0;
x_3 = l_Float_ofScientific(x_1, x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_9 = lean_ctor_get(x_6, 5);
x_10 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_4, x_5, x_6, x_7, x_8);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_st_ref_take(x_7, x_12);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; uint8_t x_16; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; double x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_17 = lean_ctor_get(x_13, 1);
x_18 = lean_ctor_get(x_15, 3);
x_19 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1;
x_20 = 0;
x_21 = l_Aesop_withNormTraceNode_fmt___closed__2;
x_22 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_22, 0, x_1);
lean_ctor_set(x_22, 1, x_21);
lean_ctor_set_float(x_22, sizeof(void*)*2, x_19);
lean_ctor_set_float(x_22, sizeof(void*)*2 + 8, x_19);
lean_ctor_set_uint8(x_22, sizeof(void*)*2 + 16, x_20);
x_23 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_24 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_11);
lean_ctor_set(x_24, 2, x_23);
lean_inc(x_9);
lean_ctor_set(x_13, 1, x_24);
lean_ctor_set(x_13, 0, x_9);
x_25 = l_Lean_PersistentArray_push___rarg(x_18, x_13);
lean_ctor_set(x_15, 3, x_25);
x_26 = lean_st_ref_set(x_7, x_15, x_17);
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_26, 0);
lean_dec(x_28);
x_29 = lean_box(0);
lean_ctor_set(x_26, 0, x_29);
return x_26;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_26, 1);
lean_inc(x_30);
lean_dec(x_26);
x_31 = lean_box(0);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_30);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; double x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_33 = lean_ctor_get(x_13, 1);
x_34 = lean_ctor_get(x_15, 0);
x_35 = lean_ctor_get(x_15, 1);
x_36 = lean_ctor_get(x_15, 2);
x_37 = lean_ctor_get(x_15, 3);
x_38 = lean_ctor_get(x_15, 4);
x_39 = lean_ctor_get(x_15, 5);
x_40 = lean_ctor_get(x_15, 6);
lean_inc(x_40);
lean_inc(x_39);
lean_inc(x_38);
lean_inc(x_37);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_15);
x_41 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1;
x_42 = 0;
x_43 = l_Aesop_withNormTraceNode_fmt___closed__2;
x_44 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_44, 0, x_1);
lean_ctor_set(x_44, 1, x_43);
lean_ctor_set_float(x_44, sizeof(void*)*2, x_41);
lean_ctor_set_float(x_44, sizeof(void*)*2 + 8, x_41);
lean_ctor_set_uint8(x_44, sizeof(void*)*2 + 16, x_42);
x_45 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_46 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_46, 0, x_44);
lean_ctor_set(x_46, 1, x_11);
lean_ctor_set(x_46, 2, x_45);
lean_inc(x_9);
lean_ctor_set(x_13, 1, x_46);
lean_ctor_set(x_13, 0, x_9);
x_47 = l_Lean_PersistentArray_push___rarg(x_37, x_13);
x_48 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_48, 0, x_34);
lean_ctor_set(x_48, 1, x_35);
lean_ctor_set(x_48, 2, x_36);
lean_ctor_set(x_48, 3, x_47);
lean_ctor_set(x_48, 4, x_38);
lean_ctor_set(x_48, 5, x_39);
lean_ctor_set(x_48, 6, x_40);
x_49 = lean_st_ref_set(x_7, x_48, x_33);
x_50 = lean_ctor_get(x_49, 1);
lean_inc(x_50);
if (lean_is_exclusive(x_49)) {
 lean_ctor_release(x_49, 0);
 lean_ctor_release(x_49, 1);
 x_51 = x_49;
} else {
 lean_dec_ref(x_49);
 x_51 = lean_box(0);
}
x_52 = lean_box(0);
if (lean_is_scalar(x_51)) {
 x_53 = lean_alloc_ctor(0, 2, 0);
} else {
 x_53 = x_51;
}
lean_ctor_set(x_53, 0, x_52);
lean_ctor_set(x_53, 1, x_50);
return x_53;
}
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; double x_64; uint8_t x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_54 = lean_ctor_get(x_13, 0);
x_55 = lean_ctor_get(x_13, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_13);
x_56 = lean_ctor_get(x_54, 0);
lean_inc(x_56);
x_57 = lean_ctor_get(x_54, 1);
lean_inc(x_57);
x_58 = lean_ctor_get(x_54, 2);
lean_inc(x_58);
x_59 = lean_ctor_get(x_54, 3);
lean_inc(x_59);
x_60 = lean_ctor_get(x_54, 4);
lean_inc(x_60);
x_61 = lean_ctor_get(x_54, 5);
lean_inc(x_61);
x_62 = lean_ctor_get(x_54, 6);
lean_inc(x_62);
if (lean_is_exclusive(x_54)) {
 lean_ctor_release(x_54, 0);
 lean_ctor_release(x_54, 1);
 lean_ctor_release(x_54, 2);
 lean_ctor_release(x_54, 3);
 lean_ctor_release(x_54, 4);
 lean_ctor_release(x_54, 5);
 lean_ctor_release(x_54, 6);
 x_63 = x_54;
} else {
 lean_dec_ref(x_54);
 x_63 = lean_box(0);
}
x_64 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1;
x_65 = 0;
x_66 = l_Aesop_withNormTraceNode_fmt___closed__2;
x_67 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_67, 0, x_1);
lean_ctor_set(x_67, 1, x_66);
lean_ctor_set_float(x_67, sizeof(void*)*2, x_64);
lean_ctor_set_float(x_67, sizeof(void*)*2 + 8, x_64);
lean_ctor_set_uint8(x_67, sizeof(void*)*2 + 16, x_65);
x_68 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_69 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_69, 0, x_67);
lean_ctor_set(x_69, 1, x_11);
lean_ctor_set(x_69, 2, x_68);
lean_inc(x_9);
x_70 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_70, 0, x_9);
lean_ctor_set(x_70, 1, x_69);
x_71 = l_Lean_PersistentArray_push___rarg(x_59, x_70);
if (lean_is_scalar(x_63)) {
 x_72 = lean_alloc_ctor(0, 7, 0);
} else {
 x_72 = x_63;
}
lean_ctor_set(x_72, 0, x_56);
lean_ctor_set(x_72, 1, x_57);
lean_ctor_set(x_72, 2, x_58);
lean_ctor_set(x_72, 3, x_71);
lean_ctor_set(x_72, 4, x_60);
lean_ctor_set(x_72, 5, x_61);
lean_ctor_set(x_72, 6, x_62);
x_73 = lean_st_ref_set(x_7, x_72, x_55);
x_74 = lean_ctor_get(x_73, 1);
lean_inc(x_74);
if (lean_is_exclusive(x_73)) {
 lean_ctor_release(x_73, 0);
 lean_ctor_release(x_73, 1);
 x_75 = x_73;
} else {
 lean_dec_ref(x_73);
 x_75 = lean_box(0);
}
x_76 = lean_box(0);
if (lean_is_scalar(x_75)) {
 x_77 = lean_alloc_ctor(0, 2, 0);
} else {
 x_77 = x_75;
}
lean_ctor_set(x_77, 0, x_76);
lean_ctor_set(x_77, 1, x_74);
return x_77;
}
}
}
static lean_object* _init_l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_inheritedTraceOptions;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___closed__1;
x_9 = lean_st_ref_get(x_8, x_7);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_5, 2);
x_13 = l___private_Lean_Util_Trace_0__Lean_checkTraceOption(x_11, x_12, x_1);
lean_dec(x_11);
x_14 = lean_box(x_13);
lean_ctor_set(x_9, 0, x_14);
return x_9;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_9, 0);
x_16 = lean_ctor_get(x_9, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_9);
x_17 = lean_ctor_get(x_5, 2);
x_18 = l___private_Lean_Util_Trace_0__Lean_checkTraceOption(x_15, x_17, x_1);
lean_dec(x_15);
x_19 = lean_box(x_18);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_16);
return x_20;
}
}
}
static lean_object* _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__2;
x_3 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1;
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_alloc_ctor(0, 4, sizeof(size_t)*1);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
lean_ctor_set(x_5, 3, x_4);
lean_ctor_set_usize(x_5, 4, x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_3 = lean_st_ref_get(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_ctor_get(x_4, 3);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_st_ref_take(x_1, x_5);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = lean_ctor_get(x_8, 3);
lean_dec(x_11);
x_12 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3;
lean_ctor_set(x_8, 3, x_12);
x_13 = lean_st_ref_set(x_1, x_8, x_9);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_13, 0);
lean_dec(x_15);
lean_ctor_set(x_13, 0, x_6);
return x_13;
}
else
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_16);
lean_dec(x_13);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_6);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_18 = lean_ctor_get(x_8, 0);
x_19 = lean_ctor_get(x_8, 1);
x_20 = lean_ctor_get(x_8, 2);
x_21 = lean_ctor_get(x_8, 4);
x_22 = lean_ctor_get(x_8, 5);
x_23 = lean_ctor_get(x_8, 6);
lean_inc(x_23);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_8);
x_24 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3;
x_25 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_25, 0, x_18);
lean_ctor_set(x_25, 1, x_19);
lean_ctor_set(x_25, 2, x_20);
lean_ctor_set(x_25, 3, x_24);
lean_ctor_set(x_25, 4, x_21);
lean_ctor_set(x_25, 5, x_22);
lean_ctor_set(x_25, 6, x_23);
x_26 = lean_st_ref_set(x_1, x_25, x_9);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
if (lean_is_exclusive(x_26)) {
 lean_ctor_release(x_26, 0);
 lean_ctor_release(x_26, 1);
 x_28 = x_26;
} else {
 lean_dec_ref(x_26);
 x_28 = lean_box(0);
}
if (lean_is_scalar(x_28)) {
 x_29 = lean_alloc_ctor(0, 2, 0);
} else {
 x_29 = x_28;
}
lean_ctor_set(x_29, 0, x_6);
lean_ctor_set(x_29, 1, x_27);
return x_29;
}
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_8);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_12 = lean_ctor_get(x_8, 5);
x_13 = l_Lean_replaceRef(x_3, x_12);
lean_dec(x_12);
lean_ctor_set(x_8, 5, x_13);
x_14 = lean_st_ref_get(x_9, x_10);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_15, 3);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_PersistentArray_toArray___rarg(x_17);
lean_dec(x_17);
x_19 = lean_array_size(x_18);
x_20 = 0;
x_21 = l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(x_19, x_20, x_18);
x_22 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_22, 0, x_2);
lean_ctor_set(x_22, 1, x_4);
lean_ctor_set(x_22, 2, x_21);
x_23 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_22, x_6, x_7, x_8, x_9, x_16);
lean_dec(x_8);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = lean_st_ref_take(x_9, x_25);
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; uint8_t x_29; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_30 = lean_ctor_get(x_26, 1);
x_31 = lean_ctor_get(x_28, 3);
lean_dec(x_31);
lean_ctor_set(x_26, 1, x_24);
lean_ctor_set(x_26, 0, x_3);
x_32 = l_Lean_PersistentArray_push___rarg(x_1, x_26);
lean_ctor_set(x_28, 3, x_32);
x_33 = lean_st_ref_set(x_9, x_28, x_30);
x_34 = !lean_is_exclusive(x_33);
if (x_34 == 0)
{
lean_object* x_35; lean_object* x_36; 
x_35 = lean_ctor_get(x_33, 0);
lean_dec(x_35);
x_36 = lean_box(0);
lean_ctor_set(x_33, 0, x_36);
return x_33;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_33, 1);
lean_inc(x_37);
lean_dec(x_33);
x_38 = lean_box(0);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_37);
return x_39;
}
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_40 = lean_ctor_get(x_26, 1);
x_41 = lean_ctor_get(x_28, 0);
x_42 = lean_ctor_get(x_28, 1);
x_43 = lean_ctor_get(x_28, 2);
x_44 = lean_ctor_get(x_28, 4);
x_45 = lean_ctor_get(x_28, 5);
x_46 = lean_ctor_get(x_28, 6);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_28);
lean_ctor_set(x_26, 1, x_24);
lean_ctor_set(x_26, 0, x_3);
x_47 = l_Lean_PersistentArray_push___rarg(x_1, x_26);
x_48 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_48, 0, x_41);
lean_ctor_set(x_48, 1, x_42);
lean_ctor_set(x_48, 2, x_43);
lean_ctor_set(x_48, 3, x_47);
lean_ctor_set(x_48, 4, x_44);
lean_ctor_set(x_48, 5, x_45);
lean_ctor_set(x_48, 6, x_46);
x_49 = lean_st_ref_set(x_9, x_48, x_40);
x_50 = lean_ctor_get(x_49, 1);
lean_inc(x_50);
if (lean_is_exclusive(x_49)) {
 lean_ctor_release(x_49, 0);
 lean_ctor_release(x_49, 1);
 x_51 = x_49;
} else {
 lean_dec_ref(x_49);
 x_51 = lean_box(0);
}
x_52 = lean_box(0);
if (lean_is_scalar(x_51)) {
 x_53 = lean_alloc_ctor(0, 2, 0);
} else {
 x_53 = x_51;
}
lean_ctor_set(x_53, 0, x_52);
lean_ctor_set(x_53, 1, x_50);
return x_53;
}
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_54 = lean_ctor_get(x_26, 0);
x_55 = lean_ctor_get(x_26, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_26);
x_56 = lean_ctor_get(x_54, 0);
lean_inc(x_56);
x_57 = lean_ctor_get(x_54, 1);
lean_inc(x_57);
x_58 = lean_ctor_get(x_54, 2);
lean_inc(x_58);
x_59 = lean_ctor_get(x_54, 4);
lean_inc(x_59);
x_60 = lean_ctor_get(x_54, 5);
lean_inc(x_60);
x_61 = lean_ctor_get(x_54, 6);
lean_inc(x_61);
if (lean_is_exclusive(x_54)) {
 lean_ctor_release(x_54, 0);
 lean_ctor_release(x_54, 1);
 lean_ctor_release(x_54, 2);
 lean_ctor_release(x_54, 3);
 lean_ctor_release(x_54, 4);
 lean_ctor_release(x_54, 5);
 lean_ctor_release(x_54, 6);
 x_62 = x_54;
} else {
 lean_dec_ref(x_54);
 x_62 = lean_box(0);
}
x_63 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_63, 0, x_3);
lean_ctor_set(x_63, 1, x_24);
x_64 = l_Lean_PersistentArray_push___rarg(x_1, x_63);
if (lean_is_scalar(x_62)) {
 x_65 = lean_alloc_ctor(0, 7, 0);
} else {
 x_65 = x_62;
}
lean_ctor_set(x_65, 0, x_56);
lean_ctor_set(x_65, 1, x_57);
lean_ctor_set(x_65, 2, x_58);
lean_ctor_set(x_65, 3, x_64);
lean_ctor_set(x_65, 4, x_59);
lean_ctor_set(x_65, 5, x_60);
lean_ctor_set(x_65, 6, x_61);
x_66 = lean_st_ref_set(x_9, x_65, x_55);
x_67 = lean_ctor_get(x_66, 1);
lean_inc(x_67);
if (lean_is_exclusive(x_66)) {
 lean_ctor_release(x_66, 0);
 lean_ctor_release(x_66, 1);
 x_68 = x_66;
} else {
 lean_dec_ref(x_66);
 x_68 = lean_box(0);
}
x_69 = lean_box(0);
if (lean_is_scalar(x_68)) {
 x_70 = lean_alloc_ctor(0, 2, 0);
} else {
 x_70 = x_68;
}
lean_ctor_set(x_70, 0, x_69);
lean_ctor_set(x_70, 1, x_67);
return x_70;
}
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; uint8_t x_82; lean_object* x_83; uint8_t x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; size_t x_92; size_t x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; 
x_71 = lean_ctor_get(x_8, 0);
x_72 = lean_ctor_get(x_8, 1);
x_73 = lean_ctor_get(x_8, 2);
x_74 = lean_ctor_get(x_8, 3);
x_75 = lean_ctor_get(x_8, 4);
x_76 = lean_ctor_get(x_8, 5);
x_77 = lean_ctor_get(x_8, 6);
x_78 = lean_ctor_get(x_8, 7);
x_79 = lean_ctor_get(x_8, 8);
x_80 = lean_ctor_get(x_8, 9);
x_81 = lean_ctor_get(x_8, 10);
x_82 = lean_ctor_get_uint8(x_8, sizeof(void*)*12);
x_83 = lean_ctor_get(x_8, 11);
x_84 = lean_ctor_get_uint8(x_8, sizeof(void*)*12 + 1);
lean_inc(x_83);
lean_inc(x_81);
lean_inc(x_80);
lean_inc(x_79);
lean_inc(x_78);
lean_inc(x_77);
lean_inc(x_76);
lean_inc(x_75);
lean_inc(x_74);
lean_inc(x_73);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_8);
x_85 = l_Lean_replaceRef(x_3, x_76);
lean_dec(x_76);
x_86 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_86, 0, x_71);
lean_ctor_set(x_86, 1, x_72);
lean_ctor_set(x_86, 2, x_73);
lean_ctor_set(x_86, 3, x_74);
lean_ctor_set(x_86, 4, x_75);
lean_ctor_set(x_86, 5, x_85);
lean_ctor_set(x_86, 6, x_77);
lean_ctor_set(x_86, 7, x_78);
lean_ctor_set(x_86, 8, x_79);
lean_ctor_set(x_86, 9, x_80);
lean_ctor_set(x_86, 10, x_81);
lean_ctor_set(x_86, 11, x_83);
lean_ctor_set_uint8(x_86, sizeof(void*)*12, x_82);
lean_ctor_set_uint8(x_86, sizeof(void*)*12 + 1, x_84);
x_87 = lean_st_ref_get(x_9, x_10);
x_88 = lean_ctor_get(x_87, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_87, 1);
lean_inc(x_89);
lean_dec(x_87);
x_90 = lean_ctor_get(x_88, 3);
lean_inc(x_90);
lean_dec(x_88);
x_91 = l_Lean_PersistentArray_toArray___rarg(x_90);
lean_dec(x_90);
x_92 = lean_array_size(x_91);
x_93 = 0;
x_94 = l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(x_92, x_93, x_91);
x_95 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_95, 0, x_2);
lean_ctor_set(x_95, 1, x_4);
lean_ctor_set(x_95, 2, x_94);
x_96 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_95, x_6, x_7, x_86, x_9, x_89);
lean_dec(x_86);
x_97 = lean_ctor_get(x_96, 0);
lean_inc(x_97);
x_98 = lean_ctor_get(x_96, 1);
lean_inc(x_98);
lean_dec(x_96);
x_99 = lean_st_ref_take(x_9, x_98);
x_100 = lean_ctor_get(x_99, 0);
lean_inc(x_100);
x_101 = lean_ctor_get(x_99, 1);
lean_inc(x_101);
if (lean_is_exclusive(x_99)) {
 lean_ctor_release(x_99, 0);
 lean_ctor_release(x_99, 1);
 x_102 = x_99;
} else {
 lean_dec_ref(x_99);
 x_102 = lean_box(0);
}
x_103 = lean_ctor_get(x_100, 0);
lean_inc(x_103);
x_104 = lean_ctor_get(x_100, 1);
lean_inc(x_104);
x_105 = lean_ctor_get(x_100, 2);
lean_inc(x_105);
x_106 = lean_ctor_get(x_100, 4);
lean_inc(x_106);
x_107 = lean_ctor_get(x_100, 5);
lean_inc(x_107);
x_108 = lean_ctor_get(x_100, 6);
lean_inc(x_108);
if (lean_is_exclusive(x_100)) {
 lean_ctor_release(x_100, 0);
 lean_ctor_release(x_100, 1);
 lean_ctor_release(x_100, 2);
 lean_ctor_release(x_100, 3);
 lean_ctor_release(x_100, 4);
 lean_ctor_release(x_100, 5);
 lean_ctor_release(x_100, 6);
 x_109 = x_100;
} else {
 lean_dec_ref(x_100);
 x_109 = lean_box(0);
}
if (lean_is_scalar(x_102)) {
 x_110 = lean_alloc_ctor(0, 2, 0);
} else {
 x_110 = x_102;
}
lean_ctor_set(x_110, 0, x_3);
lean_ctor_set(x_110, 1, x_97);
x_111 = l_Lean_PersistentArray_push___rarg(x_1, x_110);
if (lean_is_scalar(x_109)) {
 x_112 = lean_alloc_ctor(0, 7, 0);
} else {
 x_112 = x_109;
}
lean_ctor_set(x_112, 0, x_103);
lean_ctor_set(x_112, 1, x_104);
lean_ctor_set(x_112, 2, x_105);
lean_ctor_set(x_112, 3, x_111);
lean_ctor_set(x_112, 4, x_106);
lean_ctor_set(x_112, 5, x_107);
lean_ctor_set(x_112, 6, x_108);
x_113 = lean_st_ref_set(x_9, x_112, x_101);
x_114 = lean_ctor_get(x_113, 1);
lean_inc(x_114);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_115 = x_113;
} else {
 lean_dec_ref(x_113);
 x_115 = lean_box(0);
}
x_116 = lean_box(0);
if (lean_is_scalar(x_115)) {
 x_117 = lean_alloc_ctor(0, 2, 0);
} else {
 x_117 = x_115;
}
lean_ctor_set(x_117, 0, x_116);
lean_ctor_set(x_117, 1, x_114);
return x_117;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_inc(x_10);
x_13 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7(x_1, x_5, x_2, x_3, x_7, x_8, x_9, x_10, x_11, x_12);
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_15 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg(x_4, x_7, x_8, x_9, x_10, x_11, x_14);
lean_dec(x_10);
return x_15;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_profiler;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, uint8_t x_8, double x_9, double x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17) {
_start:
{
double x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_18 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1;
lean_inc(x_3);
lean_inc(x_1);
x_19 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_19, 0, x_1);
lean_ctor_set(x_19, 1, x_3);
lean_ctor_set_float(x_19, sizeof(void*)*2, x_18);
lean_ctor_set_float(x_19, sizeof(void*)*2 + 8, x_18);
lean_ctor_set_uint8(x_19, sizeof(void*)*2 + 16, x_2);
x_20 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1;
x_21 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_7, x_20);
if (x_21 == 0)
{
if (x_8 == 0)
{
lean_object* x_22; lean_object* x_23; 
lean_dec(x_3);
lean_dec(x_1);
x_22 = lean_box(0);
x_23 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1(x_4, x_5, x_11, x_6, x_19, x_22, x_12, x_13, x_14, x_15, x_16, x_17);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
lean_dec(x_19);
x_24 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_24, 0, x_1);
lean_ctor_set(x_24, 1, x_3);
lean_ctor_set_float(x_24, sizeof(void*)*2, x_9);
lean_ctor_set_float(x_24, sizeof(void*)*2 + 8, x_10);
lean_ctor_set_uint8(x_24, sizeof(void*)*2 + 16, x_2);
x_25 = lean_box(0);
x_26 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1(x_4, x_5, x_11, x_6, x_24, x_25, x_12, x_13, x_14, x_15, x_16, x_17);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_19);
x_27 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_27, 0, x_1);
lean_ctor_set(x_27, 1, x_3);
lean_ctor_set_float(x_27, sizeof(void*)*2, x_9);
lean_ctor_set_float(x_27, sizeof(void*)*2 + 8, x_10);
lean_ctor_set_uint8(x_27, sizeof(void*)*2 + 16, x_2);
x_28 = lean_box(0);
x_29 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1(x_4, x_5, x_11, x_6, x_27, x_28, x_12, x_13, x_14, x_15, x_16, x_17);
return x_29;
}
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("<exception thrown while producing trace node message>", 53, 53);
return x_1;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, uint8_t x_7, double x_8, double x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17) {
_start:
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_15, 5);
lean_inc(x_18);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_5);
x_19 = lean_apply_7(x_10, x_5, x_12, x_13, x_14, x_15, x_16, x_17);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2(x_1, x_2, x_3, x_4, x_18, x_5, x_6, x_7, x_8, x_9, x_20, x_12, x_13, x_14, x_15, x_16, x_21);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_5);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_23);
lean_dec(x_19);
x_24 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2;
x_25 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2(x_1, x_2, x_3, x_4, x_18, x_5, x_6, x_7, x_8, x_9, x_24, x_12, x_13, x_14, x_15, x_16, x_23);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_5);
return x_25;
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_inc(x_10);
x_13 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7(x_1, x_5, x_2, x_3, x_7, x_8, x_9, x_10, x_11, x_12);
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_15 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg(x_4, x_7, x_8, x_9, x_10, x_11, x_14);
lean_dec(x_10);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, uint8_t x_8, double x_9, double x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17) {
_start:
{
double x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_18 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1;
lean_inc(x_3);
lean_inc(x_1);
x_19 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_19, 0, x_1);
lean_ctor_set(x_19, 1, x_3);
lean_ctor_set_float(x_19, sizeof(void*)*2, x_18);
lean_ctor_set_float(x_19, sizeof(void*)*2 + 8, x_18);
lean_ctor_set_uint8(x_19, sizeof(void*)*2 + 16, x_2);
x_20 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1;
x_21 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_7, x_20);
if (x_21 == 0)
{
if (x_8 == 0)
{
lean_object* x_22; lean_object* x_23; 
lean_dec(x_3);
lean_dec(x_1);
x_22 = lean_box(0);
x_23 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4(x_4, x_5, x_11, x_6, x_19, x_22, x_12, x_13, x_14, x_15, x_16, x_17);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
lean_dec(x_19);
x_24 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_24, 0, x_1);
lean_ctor_set(x_24, 1, x_3);
lean_ctor_set_float(x_24, sizeof(void*)*2, x_9);
lean_ctor_set_float(x_24, sizeof(void*)*2 + 8, x_10);
lean_ctor_set_uint8(x_24, sizeof(void*)*2 + 16, x_2);
x_25 = lean_box(0);
x_26 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4(x_4, x_5, x_11, x_6, x_24, x_25, x_12, x_13, x_14, x_15, x_16, x_17);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_19);
x_27 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_27, 0, x_1);
lean_ctor_set(x_27, 1, x_3);
lean_ctor_set_float(x_27, sizeof(void*)*2, x_9);
lean_ctor_set_float(x_27, sizeof(void*)*2 + 8, x_10);
lean_ctor_set_uint8(x_27, sizeof(void*)*2 + 16, x_2);
x_28 = lean_box(0);
x_29 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4(x_4, x_5, x_11, x_6, x_27, x_28, x_12, x_13, x_14, x_15, x_16, x_17);
return x_29;
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, uint8_t x_7, double x_8, double x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17) {
_start:
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_15, 5);
lean_inc(x_18);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_5);
x_19 = lean_apply_7(x_10, x_5, x_12, x_13, x_14, x_15, x_16, x_17);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5(x_1, x_2, x_3, x_4, x_18, x_5, x_6, x_7, x_8, x_9, x_20, x_12, x_13, x_14, x_15, x_16, x_21);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_5);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_23);
lean_dec(x_19);
x_24 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2;
x_25 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5(x_1, x_2, x_3, x_4, x_18, x_5, x_6, x_7, x_8, x_9, x_24, x_12, x_13, x_14, x_15, x_16, x_23);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_5);
return x_25;
}
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_trace_profiler_useHeartbeats;
return x_1;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_trace_profiler;
return x_1;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_trace_profiler_threshold;
return x_1;
}
}
static double _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(1000u);
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_IO_monoNanosNow___boxed), 1, 0);
return x_1;
}
}
static double _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(1000000000u);
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_IO_getNumHeartbeats___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, uint8_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; uint8_t x_16; 
x_15 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg(x_13, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1;
x_20 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_1, x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_91; lean_object* x_92; 
x_21 = l_Aesop_instMonadStatsNormM;
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_91 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5;
lean_inc(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_92 = lean_apply_8(x_22, lean_box(0), x_91, x_9, x_10, x_11, x_12, x_13, x_18);
if (lean_obj_tag(x_92) == 0)
{
lean_object* x_93; lean_object* x_94; lean_object* x_95; 
x_93 = lean_ctor_get(x_92, 0);
lean_inc(x_93);
x_94 = lean_ctor_get(x_92, 1);
lean_inc(x_94);
lean_dec(x_92);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_95 = lean_apply_6(x_7, x_9, x_10, x_11, x_12, x_13, x_94);
if (lean_obj_tag(x_95) == 0)
{
uint8_t x_96; 
x_96 = !lean_is_exclusive(x_95);
if (x_96 == 0)
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_97 = lean_ctor_get(x_95, 0);
x_98 = lean_ctor_get(x_95, 1);
x_99 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_99, 0, x_97);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_100 = lean_apply_8(x_22, lean_box(0), x_91, x_9, x_10, x_11, x_12, x_13, x_98);
if (lean_obj_tag(x_100) == 0)
{
lean_object* x_101; lean_object* x_102; uint8_t x_103; lean_object* x_104; double x_105; double x_106; double x_107; double x_108; double x_109; lean_object* x_110; lean_object* x_111; 
x_101 = lean_ctor_get(x_100, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_100, 1);
lean_inc(x_102);
lean_dec(x_100);
x_103 = 0;
x_104 = lean_unsigned_to_nat(0u);
x_105 = l_Float_ofScientific(x_93, x_103, x_104);
lean_dec(x_93);
x_106 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
x_107 = lean_float_div(x_105, x_106);
x_108 = l_Float_ofScientific(x_101, x_103, x_104);
lean_dec(x_101);
x_109 = lean_float_div(x_108, x_106);
x_110 = lean_box_float(x_107);
x_111 = lean_box_float(x_109);
lean_ctor_set(x_95, 1, x_111);
lean_ctor_set(x_95, 0, x_110);
lean_ctor_set(x_15, 1, x_95);
lean_ctor_set(x_15, 0, x_99);
x_23 = x_15;
x_24 = x_102;
goto block_90;
}
else
{
uint8_t x_112; 
lean_dec(x_99);
lean_free_object(x_95);
lean_dec(x_93);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_112 = !lean_is_exclusive(x_100);
if (x_112 == 0)
{
return x_100;
}
else
{
lean_object* x_113; lean_object* x_114; lean_object* x_115; 
x_113 = lean_ctor_get(x_100, 0);
x_114 = lean_ctor_get(x_100, 1);
lean_inc(x_114);
lean_inc(x_113);
lean_dec(x_100);
x_115 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_115, 0, x_113);
lean_ctor_set(x_115, 1, x_114);
return x_115;
}
}
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; 
x_116 = lean_ctor_get(x_95, 0);
x_117 = lean_ctor_get(x_95, 1);
lean_inc(x_117);
lean_inc(x_116);
lean_dec(x_95);
x_118 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_118, 0, x_116);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_119 = lean_apply_8(x_22, lean_box(0), x_91, x_9, x_10, x_11, x_12, x_13, x_117);
if (lean_obj_tag(x_119) == 0)
{
lean_object* x_120; lean_object* x_121; uint8_t x_122; lean_object* x_123; double x_124; double x_125; double x_126; double x_127; double x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
x_120 = lean_ctor_get(x_119, 0);
lean_inc(x_120);
x_121 = lean_ctor_get(x_119, 1);
lean_inc(x_121);
lean_dec(x_119);
x_122 = 0;
x_123 = lean_unsigned_to_nat(0u);
x_124 = l_Float_ofScientific(x_93, x_122, x_123);
lean_dec(x_93);
x_125 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
x_126 = lean_float_div(x_124, x_125);
x_127 = l_Float_ofScientific(x_120, x_122, x_123);
lean_dec(x_120);
x_128 = lean_float_div(x_127, x_125);
x_129 = lean_box_float(x_126);
x_130 = lean_box_float(x_128);
x_131 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_131, 0, x_129);
lean_ctor_set(x_131, 1, x_130);
lean_ctor_set(x_15, 1, x_131);
lean_ctor_set(x_15, 0, x_118);
x_23 = x_15;
x_24 = x_121;
goto block_90;
}
else
{
lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; 
lean_dec(x_118);
lean_dec(x_93);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_132 = lean_ctor_get(x_119, 0);
lean_inc(x_132);
x_133 = lean_ctor_get(x_119, 1);
lean_inc(x_133);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 lean_ctor_release(x_119, 1);
 x_134 = x_119;
} else {
 lean_dec_ref(x_119);
 x_134 = lean_box(0);
}
if (lean_is_scalar(x_134)) {
 x_135 = lean_alloc_ctor(1, 2, 0);
} else {
 x_135 = x_134;
}
lean_ctor_set(x_135, 0, x_132);
lean_ctor_set(x_135, 1, x_133);
return x_135;
}
}
}
else
{
uint8_t x_136; 
x_136 = !lean_is_exclusive(x_95);
if (x_136 == 0)
{
lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; 
x_137 = lean_ctor_get(x_95, 0);
x_138 = lean_ctor_get(x_95, 1);
x_139 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_139, 0, x_137);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_140 = lean_apply_8(x_22, lean_box(0), x_91, x_9, x_10, x_11, x_12, x_13, x_138);
if (lean_obj_tag(x_140) == 0)
{
lean_object* x_141; lean_object* x_142; uint8_t x_143; lean_object* x_144; double x_145; double x_146; double x_147; double x_148; double x_149; lean_object* x_150; lean_object* x_151; 
x_141 = lean_ctor_get(x_140, 0);
lean_inc(x_141);
x_142 = lean_ctor_get(x_140, 1);
lean_inc(x_142);
lean_dec(x_140);
x_143 = 0;
x_144 = lean_unsigned_to_nat(0u);
x_145 = l_Float_ofScientific(x_93, x_143, x_144);
lean_dec(x_93);
x_146 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
x_147 = lean_float_div(x_145, x_146);
x_148 = l_Float_ofScientific(x_141, x_143, x_144);
lean_dec(x_141);
x_149 = lean_float_div(x_148, x_146);
x_150 = lean_box_float(x_147);
x_151 = lean_box_float(x_149);
lean_ctor_set_tag(x_95, 0);
lean_ctor_set(x_95, 1, x_151);
lean_ctor_set(x_95, 0, x_150);
lean_ctor_set(x_15, 1, x_95);
lean_ctor_set(x_15, 0, x_139);
x_23 = x_15;
x_24 = x_142;
goto block_90;
}
else
{
uint8_t x_152; 
lean_dec(x_139);
lean_free_object(x_95);
lean_dec(x_93);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_152 = !lean_is_exclusive(x_140);
if (x_152 == 0)
{
return x_140;
}
else
{
lean_object* x_153; lean_object* x_154; lean_object* x_155; 
x_153 = lean_ctor_get(x_140, 0);
x_154 = lean_ctor_get(x_140, 1);
lean_inc(x_154);
lean_inc(x_153);
lean_dec(x_140);
x_155 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_155, 0, x_153);
lean_ctor_set(x_155, 1, x_154);
return x_155;
}
}
}
else
{
lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; 
x_156 = lean_ctor_get(x_95, 0);
x_157 = lean_ctor_get(x_95, 1);
lean_inc(x_157);
lean_inc(x_156);
lean_dec(x_95);
x_158 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_158, 0, x_156);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_159 = lean_apply_8(x_22, lean_box(0), x_91, x_9, x_10, x_11, x_12, x_13, x_157);
if (lean_obj_tag(x_159) == 0)
{
lean_object* x_160; lean_object* x_161; uint8_t x_162; lean_object* x_163; double x_164; double x_165; double x_166; double x_167; double x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; 
x_160 = lean_ctor_get(x_159, 0);
lean_inc(x_160);
x_161 = lean_ctor_get(x_159, 1);
lean_inc(x_161);
lean_dec(x_159);
x_162 = 0;
x_163 = lean_unsigned_to_nat(0u);
x_164 = l_Float_ofScientific(x_93, x_162, x_163);
lean_dec(x_93);
x_165 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
x_166 = lean_float_div(x_164, x_165);
x_167 = l_Float_ofScientific(x_160, x_162, x_163);
lean_dec(x_160);
x_168 = lean_float_div(x_167, x_165);
x_169 = lean_box_float(x_166);
x_170 = lean_box_float(x_168);
x_171 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_171, 0, x_169);
lean_ctor_set(x_171, 1, x_170);
lean_ctor_set(x_15, 1, x_171);
lean_ctor_set(x_15, 0, x_158);
x_23 = x_15;
x_24 = x_161;
goto block_90;
}
else
{
lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; 
lean_dec(x_158);
lean_dec(x_93);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_172 = lean_ctor_get(x_159, 0);
lean_inc(x_172);
x_173 = lean_ctor_get(x_159, 1);
lean_inc(x_173);
if (lean_is_exclusive(x_159)) {
 lean_ctor_release(x_159, 0);
 lean_ctor_release(x_159, 1);
 x_174 = x_159;
} else {
 lean_dec_ref(x_159);
 x_174 = lean_box(0);
}
if (lean_is_scalar(x_174)) {
 x_175 = lean_alloc_ctor(1, 2, 0);
} else {
 x_175 = x_174;
}
lean_ctor_set(x_175, 0, x_172);
lean_ctor_set(x_175, 1, x_173);
return x_175;
}
}
}
}
else
{
uint8_t x_176; 
lean_dec(x_22);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_176 = !lean_is_exclusive(x_92);
if (x_176 == 0)
{
return x_92;
}
else
{
lean_object* x_177; lean_object* x_178; lean_object* x_179; 
x_177 = lean_ctor_get(x_92, 0);
x_178 = lean_ctor_get(x_92, 1);
lean_inc(x_178);
lean_inc(x_177);
lean_dec(x_92);
x_179 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_179, 0, x_177);
lean_ctor_set(x_179, 1, x_178);
return x_179;
}
}
block_90:
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; lean_object* x_76; uint8_t x_77; 
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
x_26 = lean_ctor_get(x_23, 0);
lean_inc(x_26);
lean_dec(x_23);
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_76 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2;
x_77 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_1, x_76);
if (x_77 == 0)
{
uint8_t x_78; 
x_78 = 0;
x_29 = x_78;
goto block_75;
}
else
{
double x_79; double x_80; double x_81; lean_object* x_82; lean_object* x_83; uint8_t x_84; lean_object* x_85; double x_86; double x_87; double x_88; uint8_t x_89; 
x_79 = lean_unbox_float(x_28);
x_80 = lean_unbox_float(x_27);
x_81 = lean_float_sub(x_79, x_80);
x_82 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3;
x_83 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_1, x_82);
x_84 = 0;
x_85 = lean_unsigned_to_nat(0u);
x_86 = l_Float_ofScientific(x_83, x_84, x_85);
lean_dec(x_83);
x_87 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__4;
x_88 = lean_float_div(x_86, x_87);
x_89 = lean_float_decLt(x_88, x_81);
x_29 = x_89;
goto block_75;
}
block_75:
{
if (x_6 == 0)
{
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
lean_dec(x_28);
lean_dec(x_27);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_30 = lean_st_ref_take(x_13, x_24);
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
lean_dec(x_30);
x_33 = !lean_is_exclusive(x_31);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_34 = lean_ctor_get(x_31, 3);
x_35 = l_Lean_PersistentArray_append___rarg(x_17, x_34);
lean_dec(x_34);
lean_ctor_set(x_31, 3, x_35);
x_36 = lean_st_ref_set(x_13, x_31, x_32);
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg(x_26, x_9, x_10, x_11, x_12, x_13, x_37);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_26);
if (lean_obj_tag(x_38) == 0)
{
uint8_t x_39; 
x_39 = !lean_is_exclusive(x_38);
if (x_39 == 0)
{
return x_38;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_38, 0);
x_41 = lean_ctor_get(x_38, 1);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_38);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set(x_42, 1, x_41);
return x_42;
}
}
else
{
uint8_t x_43; 
x_43 = !lean_is_exclusive(x_38);
if (x_43 == 0)
{
return x_38;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_38, 0);
x_45 = lean_ctor_get(x_38, 1);
lean_inc(x_45);
lean_inc(x_44);
lean_dec(x_38);
x_46 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_46, 0, x_44);
lean_ctor_set(x_46, 1, x_45);
return x_46;
}
}
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_47 = lean_ctor_get(x_31, 0);
x_48 = lean_ctor_get(x_31, 1);
x_49 = lean_ctor_get(x_31, 2);
x_50 = lean_ctor_get(x_31, 3);
x_51 = lean_ctor_get(x_31, 4);
x_52 = lean_ctor_get(x_31, 5);
x_53 = lean_ctor_get(x_31, 6);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_inc(x_49);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_31);
x_54 = l_Lean_PersistentArray_append___rarg(x_17, x_50);
lean_dec(x_50);
x_55 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_55, 0, x_47);
lean_ctor_set(x_55, 1, x_48);
lean_ctor_set(x_55, 2, x_49);
lean_ctor_set(x_55, 3, x_54);
lean_ctor_set(x_55, 4, x_51);
lean_ctor_set(x_55, 5, x_52);
lean_ctor_set(x_55, 6, x_53);
x_56 = lean_st_ref_set(x_13, x_55, x_32);
x_57 = lean_ctor_get(x_56, 1);
lean_inc(x_57);
lean_dec(x_56);
x_58 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg(x_26, x_9, x_10, x_11, x_12, x_13, x_57);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_26);
if (lean_obj_tag(x_58) == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_58, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_58, 1);
lean_inc(x_60);
if (lean_is_exclusive(x_58)) {
 lean_ctor_release(x_58, 0);
 lean_ctor_release(x_58, 1);
 x_61 = x_58;
} else {
 lean_dec_ref(x_58);
 x_61 = lean_box(0);
}
if (lean_is_scalar(x_61)) {
 x_62 = lean_alloc_ctor(0, 2, 0);
} else {
 x_62 = x_61;
}
lean_ctor_set(x_62, 0, x_59);
lean_ctor_set(x_62, 1, x_60);
return x_62;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_63 = lean_ctor_get(x_58, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_58, 1);
lean_inc(x_64);
if (lean_is_exclusive(x_58)) {
 lean_ctor_release(x_58, 0);
 lean_ctor_release(x_58, 1);
 x_65 = x_58;
} else {
 lean_dec_ref(x_58);
 x_65 = lean_box(0);
}
if (lean_is_scalar(x_65)) {
 x_66 = lean_alloc_ctor(1, 2, 0);
} else {
 x_66 = x_65;
}
lean_ctor_set(x_66, 0, x_63);
lean_ctor_set(x_66, 1, x_64);
return x_66;
}
}
}
else
{
lean_object* x_67; double x_68; double x_69; lean_object* x_70; 
x_67 = lean_box(0);
x_68 = lean_unbox_float(x_27);
lean_dec(x_27);
x_69 = lean_unbox_float(x_28);
lean_dec(x_28);
x_70 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(x_2, x_3, x_4, x_17, x_26, x_1, x_29, x_68, x_69, x_5, x_67, x_9, x_10, x_11, x_12, x_13, x_24);
return x_70;
}
}
else
{
lean_object* x_71; double x_72; double x_73; lean_object* x_74; 
x_71 = lean_box(0);
x_72 = lean_unbox_float(x_27);
lean_dec(x_27);
x_73 = lean_unbox_float(x_28);
lean_dec(x_28);
x_74 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(x_2, x_3, x_4, x_17, x_26, x_1, x_29, x_72, x_73, x_5, x_71, x_9, x_10, x_11, x_12, x_13, x_24);
return x_74;
}
}
}
}
else
{
lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_248; lean_object* x_249; 
x_180 = l_Aesop_instMonadStatsNormM;
x_181 = lean_ctor_get(x_180, 0);
lean_inc(x_181);
x_248 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7;
lean_inc(x_181);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_249 = lean_apply_8(x_181, lean_box(0), x_248, x_9, x_10, x_11, x_12, x_13, x_18);
if (lean_obj_tag(x_249) == 0)
{
lean_object* x_250; lean_object* x_251; lean_object* x_252; 
x_250 = lean_ctor_get(x_249, 0);
lean_inc(x_250);
x_251 = lean_ctor_get(x_249, 1);
lean_inc(x_251);
lean_dec(x_249);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_252 = lean_apply_6(x_7, x_9, x_10, x_11, x_12, x_13, x_251);
if (lean_obj_tag(x_252) == 0)
{
uint8_t x_253; 
x_253 = !lean_is_exclusive(x_252);
if (x_253 == 0)
{
lean_object* x_254; lean_object* x_255; lean_object* x_256; lean_object* x_257; 
x_254 = lean_ctor_get(x_252, 0);
x_255 = lean_ctor_get(x_252, 1);
x_256 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_256, 0, x_254);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_257 = lean_apply_8(x_181, lean_box(0), x_248, x_9, x_10, x_11, x_12, x_13, x_255);
if (lean_obj_tag(x_257) == 0)
{
lean_object* x_258; lean_object* x_259; uint8_t x_260; lean_object* x_261; double x_262; double x_263; lean_object* x_264; lean_object* x_265; 
x_258 = lean_ctor_get(x_257, 0);
lean_inc(x_258);
x_259 = lean_ctor_get(x_257, 1);
lean_inc(x_259);
lean_dec(x_257);
x_260 = 0;
x_261 = lean_unsigned_to_nat(0u);
x_262 = l_Float_ofScientific(x_250, x_260, x_261);
lean_dec(x_250);
x_263 = l_Float_ofScientific(x_258, x_260, x_261);
lean_dec(x_258);
x_264 = lean_box_float(x_262);
x_265 = lean_box_float(x_263);
lean_ctor_set(x_252, 1, x_265);
lean_ctor_set(x_252, 0, x_264);
lean_ctor_set(x_15, 1, x_252);
lean_ctor_set(x_15, 0, x_256);
x_182 = x_15;
x_183 = x_259;
goto block_247;
}
else
{
uint8_t x_266; 
lean_dec(x_256);
lean_free_object(x_252);
lean_dec(x_250);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_266 = !lean_is_exclusive(x_257);
if (x_266 == 0)
{
return x_257;
}
else
{
lean_object* x_267; lean_object* x_268; lean_object* x_269; 
x_267 = lean_ctor_get(x_257, 0);
x_268 = lean_ctor_get(x_257, 1);
lean_inc(x_268);
lean_inc(x_267);
lean_dec(x_257);
x_269 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_269, 0, x_267);
lean_ctor_set(x_269, 1, x_268);
return x_269;
}
}
}
else
{
lean_object* x_270; lean_object* x_271; lean_object* x_272; lean_object* x_273; 
x_270 = lean_ctor_get(x_252, 0);
x_271 = lean_ctor_get(x_252, 1);
lean_inc(x_271);
lean_inc(x_270);
lean_dec(x_252);
x_272 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_272, 0, x_270);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_273 = lean_apply_8(x_181, lean_box(0), x_248, x_9, x_10, x_11, x_12, x_13, x_271);
if (lean_obj_tag(x_273) == 0)
{
lean_object* x_274; lean_object* x_275; uint8_t x_276; lean_object* x_277; double x_278; double x_279; lean_object* x_280; lean_object* x_281; lean_object* x_282; 
x_274 = lean_ctor_get(x_273, 0);
lean_inc(x_274);
x_275 = lean_ctor_get(x_273, 1);
lean_inc(x_275);
lean_dec(x_273);
x_276 = 0;
x_277 = lean_unsigned_to_nat(0u);
x_278 = l_Float_ofScientific(x_250, x_276, x_277);
lean_dec(x_250);
x_279 = l_Float_ofScientific(x_274, x_276, x_277);
lean_dec(x_274);
x_280 = lean_box_float(x_278);
x_281 = lean_box_float(x_279);
x_282 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_282, 0, x_280);
lean_ctor_set(x_282, 1, x_281);
lean_ctor_set(x_15, 1, x_282);
lean_ctor_set(x_15, 0, x_272);
x_182 = x_15;
x_183 = x_275;
goto block_247;
}
else
{
lean_object* x_283; lean_object* x_284; lean_object* x_285; lean_object* x_286; 
lean_dec(x_272);
lean_dec(x_250);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_283 = lean_ctor_get(x_273, 0);
lean_inc(x_283);
x_284 = lean_ctor_get(x_273, 1);
lean_inc(x_284);
if (lean_is_exclusive(x_273)) {
 lean_ctor_release(x_273, 0);
 lean_ctor_release(x_273, 1);
 x_285 = x_273;
} else {
 lean_dec_ref(x_273);
 x_285 = lean_box(0);
}
if (lean_is_scalar(x_285)) {
 x_286 = lean_alloc_ctor(1, 2, 0);
} else {
 x_286 = x_285;
}
lean_ctor_set(x_286, 0, x_283);
lean_ctor_set(x_286, 1, x_284);
return x_286;
}
}
}
else
{
uint8_t x_287; 
x_287 = !lean_is_exclusive(x_252);
if (x_287 == 0)
{
lean_object* x_288; lean_object* x_289; lean_object* x_290; lean_object* x_291; 
x_288 = lean_ctor_get(x_252, 0);
x_289 = lean_ctor_get(x_252, 1);
x_290 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_290, 0, x_288);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_291 = lean_apply_8(x_181, lean_box(0), x_248, x_9, x_10, x_11, x_12, x_13, x_289);
if (lean_obj_tag(x_291) == 0)
{
lean_object* x_292; lean_object* x_293; uint8_t x_294; lean_object* x_295; double x_296; double x_297; lean_object* x_298; lean_object* x_299; 
x_292 = lean_ctor_get(x_291, 0);
lean_inc(x_292);
x_293 = lean_ctor_get(x_291, 1);
lean_inc(x_293);
lean_dec(x_291);
x_294 = 0;
x_295 = lean_unsigned_to_nat(0u);
x_296 = l_Float_ofScientific(x_250, x_294, x_295);
lean_dec(x_250);
x_297 = l_Float_ofScientific(x_292, x_294, x_295);
lean_dec(x_292);
x_298 = lean_box_float(x_296);
x_299 = lean_box_float(x_297);
lean_ctor_set_tag(x_252, 0);
lean_ctor_set(x_252, 1, x_299);
lean_ctor_set(x_252, 0, x_298);
lean_ctor_set(x_15, 1, x_252);
lean_ctor_set(x_15, 0, x_290);
x_182 = x_15;
x_183 = x_293;
goto block_247;
}
else
{
uint8_t x_300; 
lean_dec(x_290);
lean_free_object(x_252);
lean_dec(x_250);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_300 = !lean_is_exclusive(x_291);
if (x_300 == 0)
{
return x_291;
}
else
{
lean_object* x_301; lean_object* x_302; lean_object* x_303; 
x_301 = lean_ctor_get(x_291, 0);
x_302 = lean_ctor_get(x_291, 1);
lean_inc(x_302);
lean_inc(x_301);
lean_dec(x_291);
x_303 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_303, 0, x_301);
lean_ctor_set(x_303, 1, x_302);
return x_303;
}
}
}
else
{
lean_object* x_304; lean_object* x_305; lean_object* x_306; lean_object* x_307; 
x_304 = lean_ctor_get(x_252, 0);
x_305 = lean_ctor_get(x_252, 1);
lean_inc(x_305);
lean_inc(x_304);
lean_dec(x_252);
x_306 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_306, 0, x_304);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_307 = lean_apply_8(x_181, lean_box(0), x_248, x_9, x_10, x_11, x_12, x_13, x_305);
if (lean_obj_tag(x_307) == 0)
{
lean_object* x_308; lean_object* x_309; uint8_t x_310; lean_object* x_311; double x_312; double x_313; lean_object* x_314; lean_object* x_315; lean_object* x_316; 
x_308 = lean_ctor_get(x_307, 0);
lean_inc(x_308);
x_309 = lean_ctor_get(x_307, 1);
lean_inc(x_309);
lean_dec(x_307);
x_310 = 0;
x_311 = lean_unsigned_to_nat(0u);
x_312 = l_Float_ofScientific(x_250, x_310, x_311);
lean_dec(x_250);
x_313 = l_Float_ofScientific(x_308, x_310, x_311);
lean_dec(x_308);
x_314 = lean_box_float(x_312);
x_315 = lean_box_float(x_313);
x_316 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_316, 0, x_314);
lean_ctor_set(x_316, 1, x_315);
lean_ctor_set(x_15, 1, x_316);
lean_ctor_set(x_15, 0, x_306);
x_182 = x_15;
x_183 = x_309;
goto block_247;
}
else
{
lean_object* x_317; lean_object* x_318; lean_object* x_319; lean_object* x_320; 
lean_dec(x_306);
lean_dec(x_250);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_317 = lean_ctor_get(x_307, 0);
lean_inc(x_317);
x_318 = lean_ctor_get(x_307, 1);
lean_inc(x_318);
if (lean_is_exclusive(x_307)) {
 lean_ctor_release(x_307, 0);
 lean_ctor_release(x_307, 1);
 x_319 = x_307;
} else {
 lean_dec_ref(x_307);
 x_319 = lean_box(0);
}
if (lean_is_scalar(x_319)) {
 x_320 = lean_alloc_ctor(1, 2, 0);
} else {
 x_320 = x_319;
}
lean_ctor_set(x_320, 0, x_317);
lean_ctor_set(x_320, 1, x_318);
return x_320;
}
}
}
}
else
{
uint8_t x_321; 
lean_dec(x_181);
lean_free_object(x_15);
lean_dec(x_17);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_321 = !lean_is_exclusive(x_249);
if (x_321 == 0)
{
return x_249;
}
else
{
lean_object* x_322; lean_object* x_323; lean_object* x_324; 
x_322 = lean_ctor_get(x_249, 0);
x_323 = lean_ctor_get(x_249, 1);
lean_inc(x_323);
lean_inc(x_322);
lean_dec(x_249);
x_324 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_324, 0, x_322);
lean_ctor_set(x_324, 1, x_323);
return x_324;
}
}
block_247:
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; uint8_t x_188; lean_object* x_235; uint8_t x_236; 
x_184 = lean_ctor_get(x_182, 1);
lean_inc(x_184);
x_185 = lean_ctor_get(x_182, 0);
lean_inc(x_185);
lean_dec(x_182);
x_186 = lean_ctor_get(x_184, 0);
lean_inc(x_186);
x_187 = lean_ctor_get(x_184, 1);
lean_inc(x_187);
lean_dec(x_184);
x_235 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2;
x_236 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_1, x_235);
if (x_236 == 0)
{
uint8_t x_237; 
x_237 = 0;
x_188 = x_237;
goto block_234;
}
else
{
double x_238; double x_239; double x_240; lean_object* x_241; lean_object* x_242; uint8_t x_243; lean_object* x_244; double x_245; uint8_t x_246; 
x_238 = lean_unbox_float(x_187);
x_239 = lean_unbox_float(x_186);
x_240 = lean_float_sub(x_238, x_239);
x_241 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3;
x_242 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_1, x_241);
x_243 = 0;
x_244 = lean_unsigned_to_nat(0u);
x_245 = l_Float_ofScientific(x_242, x_243, x_244);
lean_dec(x_242);
x_246 = lean_float_decLt(x_245, x_240);
x_188 = x_246;
goto block_234;
}
block_234:
{
if (x_6 == 0)
{
if (x_188 == 0)
{
lean_object* x_189; lean_object* x_190; lean_object* x_191; uint8_t x_192; 
lean_dec(x_187);
lean_dec(x_186);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_189 = lean_st_ref_take(x_13, x_183);
x_190 = lean_ctor_get(x_189, 0);
lean_inc(x_190);
x_191 = lean_ctor_get(x_189, 1);
lean_inc(x_191);
lean_dec(x_189);
x_192 = !lean_is_exclusive(x_190);
if (x_192 == 0)
{
lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; 
x_193 = lean_ctor_get(x_190, 3);
x_194 = l_Lean_PersistentArray_append___rarg(x_17, x_193);
lean_dec(x_193);
lean_ctor_set(x_190, 3, x_194);
x_195 = lean_st_ref_set(x_13, x_190, x_191);
x_196 = lean_ctor_get(x_195, 1);
lean_inc(x_196);
lean_dec(x_195);
x_197 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg(x_185, x_9, x_10, x_11, x_12, x_13, x_196);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_185);
if (lean_obj_tag(x_197) == 0)
{
uint8_t x_198; 
x_198 = !lean_is_exclusive(x_197);
if (x_198 == 0)
{
return x_197;
}
else
{
lean_object* x_199; lean_object* x_200; lean_object* x_201; 
x_199 = lean_ctor_get(x_197, 0);
x_200 = lean_ctor_get(x_197, 1);
lean_inc(x_200);
lean_inc(x_199);
lean_dec(x_197);
x_201 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_201, 0, x_199);
lean_ctor_set(x_201, 1, x_200);
return x_201;
}
}
else
{
uint8_t x_202; 
x_202 = !lean_is_exclusive(x_197);
if (x_202 == 0)
{
return x_197;
}
else
{
lean_object* x_203; lean_object* x_204; lean_object* x_205; 
x_203 = lean_ctor_get(x_197, 0);
x_204 = lean_ctor_get(x_197, 1);
lean_inc(x_204);
lean_inc(x_203);
lean_dec(x_197);
x_205 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_205, 0, x_203);
lean_ctor_set(x_205, 1, x_204);
return x_205;
}
}
}
else
{
lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; 
x_206 = lean_ctor_get(x_190, 0);
x_207 = lean_ctor_get(x_190, 1);
x_208 = lean_ctor_get(x_190, 2);
x_209 = lean_ctor_get(x_190, 3);
x_210 = lean_ctor_get(x_190, 4);
x_211 = lean_ctor_get(x_190, 5);
x_212 = lean_ctor_get(x_190, 6);
lean_inc(x_212);
lean_inc(x_211);
lean_inc(x_210);
lean_inc(x_209);
lean_inc(x_208);
lean_inc(x_207);
lean_inc(x_206);
lean_dec(x_190);
x_213 = l_Lean_PersistentArray_append___rarg(x_17, x_209);
lean_dec(x_209);
x_214 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_214, 0, x_206);
lean_ctor_set(x_214, 1, x_207);
lean_ctor_set(x_214, 2, x_208);
lean_ctor_set(x_214, 3, x_213);
lean_ctor_set(x_214, 4, x_210);
lean_ctor_set(x_214, 5, x_211);
lean_ctor_set(x_214, 6, x_212);
x_215 = lean_st_ref_set(x_13, x_214, x_191);
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg(x_185, x_9, x_10, x_11, x_12, x_13, x_216);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_185);
if (lean_obj_tag(x_217) == 0)
{
lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; 
x_218 = lean_ctor_get(x_217, 0);
lean_inc(x_218);
x_219 = lean_ctor_get(x_217, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_217)) {
 lean_ctor_release(x_217, 0);
 lean_ctor_release(x_217, 1);
 x_220 = x_217;
} else {
 lean_dec_ref(x_217);
 x_220 = lean_box(0);
}
if (lean_is_scalar(x_220)) {
 x_221 = lean_alloc_ctor(0, 2, 0);
} else {
 x_221 = x_220;
}
lean_ctor_set(x_221, 0, x_218);
lean_ctor_set(x_221, 1, x_219);
return x_221;
}
else
{
lean_object* x_222; lean_object* x_223; lean_object* x_224; lean_object* x_225; 
x_222 = lean_ctor_get(x_217, 0);
lean_inc(x_222);
x_223 = lean_ctor_get(x_217, 1);
lean_inc(x_223);
if (lean_is_exclusive(x_217)) {
 lean_ctor_release(x_217, 0);
 lean_ctor_release(x_217, 1);
 x_224 = x_217;
} else {
 lean_dec_ref(x_217);
 x_224 = lean_box(0);
}
if (lean_is_scalar(x_224)) {
 x_225 = lean_alloc_ctor(1, 2, 0);
} else {
 x_225 = x_224;
}
lean_ctor_set(x_225, 0, x_222);
lean_ctor_set(x_225, 1, x_223);
return x_225;
}
}
}
else
{
lean_object* x_226; double x_227; double x_228; lean_object* x_229; 
x_226 = lean_box(0);
x_227 = lean_unbox_float(x_186);
lean_dec(x_186);
x_228 = lean_unbox_float(x_187);
lean_dec(x_187);
x_229 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(x_2, x_3, x_4, x_17, x_185, x_1, x_188, x_227, x_228, x_5, x_226, x_9, x_10, x_11, x_12, x_13, x_183);
return x_229;
}
}
else
{
lean_object* x_230; double x_231; double x_232; lean_object* x_233; 
x_230 = lean_box(0);
x_231 = lean_unbox_float(x_186);
lean_dec(x_186);
x_232 = lean_unbox_float(x_187);
lean_dec(x_187);
x_233 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(x_2, x_3, x_4, x_17, x_185, x_1, x_188, x_231, x_232, x_5, x_230, x_9, x_10, x_11, x_12, x_13, x_183);
return x_233;
}
}
}
}
}
else
{
lean_object* x_325; lean_object* x_326; lean_object* x_327; uint8_t x_328; 
x_325 = lean_ctor_get(x_15, 0);
x_326 = lean_ctor_get(x_15, 1);
lean_inc(x_326);
lean_inc(x_325);
lean_dec(x_15);
x_327 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1;
x_328 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_1, x_327);
if (x_328 == 0)
{
lean_object* x_329; lean_object* x_330; lean_object* x_331; lean_object* x_332; lean_object* x_386; lean_object* x_387; 
x_329 = l_Aesop_instMonadStatsNormM;
x_330 = lean_ctor_get(x_329, 0);
lean_inc(x_330);
x_386 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5;
lean_inc(x_330);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_387 = lean_apply_8(x_330, lean_box(0), x_386, x_9, x_10, x_11, x_12, x_13, x_326);
if (lean_obj_tag(x_387) == 0)
{
lean_object* x_388; lean_object* x_389; lean_object* x_390; 
x_388 = lean_ctor_get(x_387, 0);
lean_inc(x_388);
x_389 = lean_ctor_get(x_387, 1);
lean_inc(x_389);
lean_dec(x_387);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_390 = lean_apply_6(x_7, x_9, x_10, x_11, x_12, x_13, x_389);
if (lean_obj_tag(x_390) == 0)
{
lean_object* x_391; lean_object* x_392; lean_object* x_393; lean_object* x_394; lean_object* x_395; 
x_391 = lean_ctor_get(x_390, 0);
lean_inc(x_391);
x_392 = lean_ctor_get(x_390, 1);
lean_inc(x_392);
if (lean_is_exclusive(x_390)) {
 lean_ctor_release(x_390, 0);
 lean_ctor_release(x_390, 1);
 x_393 = x_390;
} else {
 lean_dec_ref(x_390);
 x_393 = lean_box(0);
}
x_394 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_394, 0, x_391);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_395 = lean_apply_8(x_330, lean_box(0), x_386, x_9, x_10, x_11, x_12, x_13, x_392);
if (lean_obj_tag(x_395) == 0)
{
lean_object* x_396; lean_object* x_397; uint8_t x_398; lean_object* x_399; double x_400; double x_401; double x_402; double x_403; double x_404; lean_object* x_405; lean_object* x_406; lean_object* x_407; lean_object* x_408; 
x_396 = lean_ctor_get(x_395, 0);
lean_inc(x_396);
x_397 = lean_ctor_get(x_395, 1);
lean_inc(x_397);
lean_dec(x_395);
x_398 = 0;
x_399 = lean_unsigned_to_nat(0u);
x_400 = l_Float_ofScientific(x_388, x_398, x_399);
lean_dec(x_388);
x_401 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
x_402 = lean_float_div(x_400, x_401);
x_403 = l_Float_ofScientific(x_396, x_398, x_399);
lean_dec(x_396);
x_404 = lean_float_div(x_403, x_401);
x_405 = lean_box_float(x_402);
x_406 = lean_box_float(x_404);
if (lean_is_scalar(x_393)) {
 x_407 = lean_alloc_ctor(0, 2, 0);
} else {
 x_407 = x_393;
}
lean_ctor_set(x_407, 0, x_405);
lean_ctor_set(x_407, 1, x_406);
x_408 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_408, 0, x_394);
lean_ctor_set(x_408, 1, x_407);
x_331 = x_408;
x_332 = x_397;
goto block_385;
}
else
{
lean_object* x_409; lean_object* x_410; lean_object* x_411; lean_object* x_412; 
lean_dec(x_394);
lean_dec(x_393);
lean_dec(x_388);
lean_dec(x_325);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_409 = lean_ctor_get(x_395, 0);
lean_inc(x_409);
x_410 = lean_ctor_get(x_395, 1);
lean_inc(x_410);
if (lean_is_exclusive(x_395)) {
 lean_ctor_release(x_395, 0);
 lean_ctor_release(x_395, 1);
 x_411 = x_395;
} else {
 lean_dec_ref(x_395);
 x_411 = lean_box(0);
}
if (lean_is_scalar(x_411)) {
 x_412 = lean_alloc_ctor(1, 2, 0);
} else {
 x_412 = x_411;
}
lean_ctor_set(x_412, 0, x_409);
lean_ctor_set(x_412, 1, x_410);
return x_412;
}
}
else
{
lean_object* x_413; lean_object* x_414; lean_object* x_415; lean_object* x_416; lean_object* x_417; 
x_413 = lean_ctor_get(x_390, 0);
lean_inc(x_413);
x_414 = lean_ctor_get(x_390, 1);
lean_inc(x_414);
if (lean_is_exclusive(x_390)) {
 lean_ctor_release(x_390, 0);
 lean_ctor_release(x_390, 1);
 x_415 = x_390;
} else {
 lean_dec_ref(x_390);
 x_415 = lean_box(0);
}
x_416 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_416, 0, x_413);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_417 = lean_apply_8(x_330, lean_box(0), x_386, x_9, x_10, x_11, x_12, x_13, x_414);
if (lean_obj_tag(x_417) == 0)
{
lean_object* x_418; lean_object* x_419; uint8_t x_420; lean_object* x_421; double x_422; double x_423; double x_424; double x_425; double x_426; lean_object* x_427; lean_object* x_428; lean_object* x_429; lean_object* x_430; 
x_418 = lean_ctor_get(x_417, 0);
lean_inc(x_418);
x_419 = lean_ctor_get(x_417, 1);
lean_inc(x_419);
lean_dec(x_417);
x_420 = 0;
x_421 = lean_unsigned_to_nat(0u);
x_422 = l_Float_ofScientific(x_388, x_420, x_421);
lean_dec(x_388);
x_423 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6;
x_424 = lean_float_div(x_422, x_423);
x_425 = l_Float_ofScientific(x_418, x_420, x_421);
lean_dec(x_418);
x_426 = lean_float_div(x_425, x_423);
x_427 = lean_box_float(x_424);
x_428 = lean_box_float(x_426);
if (lean_is_scalar(x_415)) {
 x_429 = lean_alloc_ctor(0, 2, 0);
} else {
 x_429 = x_415;
 lean_ctor_set_tag(x_429, 0);
}
lean_ctor_set(x_429, 0, x_427);
lean_ctor_set(x_429, 1, x_428);
x_430 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_430, 0, x_416);
lean_ctor_set(x_430, 1, x_429);
x_331 = x_430;
x_332 = x_419;
goto block_385;
}
else
{
lean_object* x_431; lean_object* x_432; lean_object* x_433; lean_object* x_434; 
lean_dec(x_416);
lean_dec(x_415);
lean_dec(x_388);
lean_dec(x_325);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_431 = lean_ctor_get(x_417, 0);
lean_inc(x_431);
x_432 = lean_ctor_get(x_417, 1);
lean_inc(x_432);
if (lean_is_exclusive(x_417)) {
 lean_ctor_release(x_417, 0);
 lean_ctor_release(x_417, 1);
 x_433 = x_417;
} else {
 lean_dec_ref(x_417);
 x_433 = lean_box(0);
}
if (lean_is_scalar(x_433)) {
 x_434 = lean_alloc_ctor(1, 2, 0);
} else {
 x_434 = x_433;
}
lean_ctor_set(x_434, 0, x_431);
lean_ctor_set(x_434, 1, x_432);
return x_434;
}
}
}
else
{
lean_object* x_435; lean_object* x_436; lean_object* x_437; lean_object* x_438; 
lean_dec(x_330);
lean_dec(x_325);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_435 = lean_ctor_get(x_387, 0);
lean_inc(x_435);
x_436 = lean_ctor_get(x_387, 1);
lean_inc(x_436);
if (lean_is_exclusive(x_387)) {
 lean_ctor_release(x_387, 0);
 lean_ctor_release(x_387, 1);
 x_437 = x_387;
} else {
 lean_dec_ref(x_387);
 x_437 = lean_box(0);
}
if (lean_is_scalar(x_437)) {
 x_438 = lean_alloc_ctor(1, 2, 0);
} else {
 x_438 = x_437;
}
lean_ctor_set(x_438, 0, x_435);
lean_ctor_set(x_438, 1, x_436);
return x_438;
}
block_385:
{
lean_object* x_333; lean_object* x_334; lean_object* x_335; lean_object* x_336; uint8_t x_337; lean_object* x_371; uint8_t x_372; 
x_333 = lean_ctor_get(x_331, 1);
lean_inc(x_333);
x_334 = lean_ctor_get(x_331, 0);
lean_inc(x_334);
lean_dec(x_331);
x_335 = lean_ctor_get(x_333, 0);
lean_inc(x_335);
x_336 = lean_ctor_get(x_333, 1);
lean_inc(x_336);
lean_dec(x_333);
x_371 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2;
x_372 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_1, x_371);
if (x_372 == 0)
{
uint8_t x_373; 
x_373 = 0;
x_337 = x_373;
goto block_370;
}
else
{
double x_374; double x_375; double x_376; lean_object* x_377; lean_object* x_378; uint8_t x_379; lean_object* x_380; double x_381; double x_382; double x_383; uint8_t x_384; 
x_374 = lean_unbox_float(x_336);
x_375 = lean_unbox_float(x_335);
x_376 = lean_float_sub(x_374, x_375);
x_377 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3;
x_378 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_1, x_377);
x_379 = 0;
x_380 = lean_unsigned_to_nat(0u);
x_381 = l_Float_ofScientific(x_378, x_379, x_380);
lean_dec(x_378);
x_382 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__4;
x_383 = lean_float_div(x_381, x_382);
x_384 = lean_float_decLt(x_383, x_376);
x_337 = x_384;
goto block_370;
}
block_370:
{
if (x_6 == 0)
{
if (x_337 == 0)
{
lean_object* x_338; lean_object* x_339; lean_object* x_340; lean_object* x_341; lean_object* x_342; lean_object* x_343; lean_object* x_344; lean_object* x_345; lean_object* x_346; lean_object* x_347; lean_object* x_348; lean_object* x_349; lean_object* x_350; lean_object* x_351; lean_object* x_352; lean_object* x_353; 
lean_dec(x_336);
lean_dec(x_335);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_338 = lean_st_ref_take(x_13, x_332);
x_339 = lean_ctor_get(x_338, 0);
lean_inc(x_339);
x_340 = lean_ctor_get(x_338, 1);
lean_inc(x_340);
lean_dec(x_338);
x_341 = lean_ctor_get(x_339, 0);
lean_inc(x_341);
x_342 = lean_ctor_get(x_339, 1);
lean_inc(x_342);
x_343 = lean_ctor_get(x_339, 2);
lean_inc(x_343);
x_344 = lean_ctor_get(x_339, 3);
lean_inc(x_344);
x_345 = lean_ctor_get(x_339, 4);
lean_inc(x_345);
x_346 = lean_ctor_get(x_339, 5);
lean_inc(x_346);
x_347 = lean_ctor_get(x_339, 6);
lean_inc(x_347);
if (lean_is_exclusive(x_339)) {
 lean_ctor_release(x_339, 0);
 lean_ctor_release(x_339, 1);
 lean_ctor_release(x_339, 2);
 lean_ctor_release(x_339, 3);
 lean_ctor_release(x_339, 4);
 lean_ctor_release(x_339, 5);
 lean_ctor_release(x_339, 6);
 x_348 = x_339;
} else {
 lean_dec_ref(x_339);
 x_348 = lean_box(0);
}
x_349 = l_Lean_PersistentArray_append___rarg(x_325, x_344);
lean_dec(x_344);
if (lean_is_scalar(x_348)) {
 x_350 = lean_alloc_ctor(0, 7, 0);
} else {
 x_350 = x_348;
}
lean_ctor_set(x_350, 0, x_341);
lean_ctor_set(x_350, 1, x_342);
lean_ctor_set(x_350, 2, x_343);
lean_ctor_set(x_350, 3, x_349);
lean_ctor_set(x_350, 4, x_345);
lean_ctor_set(x_350, 5, x_346);
lean_ctor_set(x_350, 6, x_347);
x_351 = lean_st_ref_set(x_13, x_350, x_340);
x_352 = lean_ctor_get(x_351, 1);
lean_inc(x_352);
lean_dec(x_351);
x_353 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg(x_334, x_9, x_10, x_11, x_12, x_13, x_352);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_334);
if (lean_obj_tag(x_353) == 0)
{
lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; 
x_354 = lean_ctor_get(x_353, 0);
lean_inc(x_354);
x_355 = lean_ctor_get(x_353, 1);
lean_inc(x_355);
if (lean_is_exclusive(x_353)) {
 lean_ctor_release(x_353, 0);
 lean_ctor_release(x_353, 1);
 x_356 = x_353;
} else {
 lean_dec_ref(x_353);
 x_356 = lean_box(0);
}
if (lean_is_scalar(x_356)) {
 x_357 = lean_alloc_ctor(0, 2, 0);
} else {
 x_357 = x_356;
}
lean_ctor_set(x_357, 0, x_354);
lean_ctor_set(x_357, 1, x_355);
return x_357;
}
else
{
lean_object* x_358; lean_object* x_359; lean_object* x_360; lean_object* x_361; 
x_358 = lean_ctor_get(x_353, 0);
lean_inc(x_358);
x_359 = lean_ctor_get(x_353, 1);
lean_inc(x_359);
if (lean_is_exclusive(x_353)) {
 lean_ctor_release(x_353, 0);
 lean_ctor_release(x_353, 1);
 x_360 = x_353;
} else {
 lean_dec_ref(x_353);
 x_360 = lean_box(0);
}
if (lean_is_scalar(x_360)) {
 x_361 = lean_alloc_ctor(1, 2, 0);
} else {
 x_361 = x_360;
}
lean_ctor_set(x_361, 0, x_358);
lean_ctor_set(x_361, 1, x_359);
return x_361;
}
}
else
{
lean_object* x_362; double x_363; double x_364; lean_object* x_365; 
x_362 = lean_box(0);
x_363 = lean_unbox_float(x_335);
lean_dec(x_335);
x_364 = lean_unbox_float(x_336);
lean_dec(x_336);
x_365 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(x_2, x_3, x_4, x_325, x_334, x_1, x_337, x_363, x_364, x_5, x_362, x_9, x_10, x_11, x_12, x_13, x_332);
return x_365;
}
}
else
{
lean_object* x_366; double x_367; double x_368; lean_object* x_369; 
x_366 = lean_box(0);
x_367 = lean_unbox_float(x_335);
lean_dec(x_335);
x_368 = lean_unbox_float(x_336);
lean_dec(x_336);
x_369 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(x_2, x_3, x_4, x_325, x_334, x_1, x_337, x_367, x_368, x_5, x_366, x_9, x_10, x_11, x_12, x_13, x_332);
return x_369;
}
}
}
}
else
{
lean_object* x_439; lean_object* x_440; lean_object* x_441; lean_object* x_442; lean_object* x_494; lean_object* x_495; 
x_439 = l_Aesop_instMonadStatsNormM;
x_440 = lean_ctor_get(x_439, 0);
lean_inc(x_440);
x_494 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7;
lean_inc(x_440);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_495 = lean_apply_8(x_440, lean_box(0), x_494, x_9, x_10, x_11, x_12, x_13, x_326);
if (lean_obj_tag(x_495) == 0)
{
lean_object* x_496; lean_object* x_497; lean_object* x_498; 
x_496 = lean_ctor_get(x_495, 0);
lean_inc(x_496);
x_497 = lean_ctor_get(x_495, 1);
lean_inc(x_497);
lean_dec(x_495);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_498 = lean_apply_6(x_7, x_9, x_10, x_11, x_12, x_13, x_497);
if (lean_obj_tag(x_498) == 0)
{
lean_object* x_499; lean_object* x_500; lean_object* x_501; lean_object* x_502; lean_object* x_503; 
x_499 = lean_ctor_get(x_498, 0);
lean_inc(x_499);
x_500 = lean_ctor_get(x_498, 1);
lean_inc(x_500);
if (lean_is_exclusive(x_498)) {
 lean_ctor_release(x_498, 0);
 lean_ctor_release(x_498, 1);
 x_501 = x_498;
} else {
 lean_dec_ref(x_498);
 x_501 = lean_box(0);
}
x_502 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_502, 0, x_499);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_503 = lean_apply_8(x_440, lean_box(0), x_494, x_9, x_10, x_11, x_12, x_13, x_500);
if (lean_obj_tag(x_503) == 0)
{
lean_object* x_504; lean_object* x_505; uint8_t x_506; lean_object* x_507; double x_508; double x_509; lean_object* x_510; lean_object* x_511; lean_object* x_512; lean_object* x_513; 
x_504 = lean_ctor_get(x_503, 0);
lean_inc(x_504);
x_505 = lean_ctor_get(x_503, 1);
lean_inc(x_505);
lean_dec(x_503);
x_506 = 0;
x_507 = lean_unsigned_to_nat(0u);
x_508 = l_Float_ofScientific(x_496, x_506, x_507);
lean_dec(x_496);
x_509 = l_Float_ofScientific(x_504, x_506, x_507);
lean_dec(x_504);
x_510 = lean_box_float(x_508);
x_511 = lean_box_float(x_509);
if (lean_is_scalar(x_501)) {
 x_512 = lean_alloc_ctor(0, 2, 0);
} else {
 x_512 = x_501;
}
lean_ctor_set(x_512, 0, x_510);
lean_ctor_set(x_512, 1, x_511);
x_513 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_513, 0, x_502);
lean_ctor_set(x_513, 1, x_512);
x_441 = x_513;
x_442 = x_505;
goto block_493;
}
else
{
lean_object* x_514; lean_object* x_515; lean_object* x_516; lean_object* x_517; 
lean_dec(x_502);
lean_dec(x_501);
lean_dec(x_496);
lean_dec(x_325);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_514 = lean_ctor_get(x_503, 0);
lean_inc(x_514);
x_515 = lean_ctor_get(x_503, 1);
lean_inc(x_515);
if (lean_is_exclusive(x_503)) {
 lean_ctor_release(x_503, 0);
 lean_ctor_release(x_503, 1);
 x_516 = x_503;
} else {
 lean_dec_ref(x_503);
 x_516 = lean_box(0);
}
if (lean_is_scalar(x_516)) {
 x_517 = lean_alloc_ctor(1, 2, 0);
} else {
 x_517 = x_516;
}
lean_ctor_set(x_517, 0, x_514);
lean_ctor_set(x_517, 1, x_515);
return x_517;
}
}
else
{
lean_object* x_518; lean_object* x_519; lean_object* x_520; lean_object* x_521; lean_object* x_522; 
x_518 = lean_ctor_get(x_498, 0);
lean_inc(x_518);
x_519 = lean_ctor_get(x_498, 1);
lean_inc(x_519);
if (lean_is_exclusive(x_498)) {
 lean_ctor_release(x_498, 0);
 lean_ctor_release(x_498, 1);
 x_520 = x_498;
} else {
 lean_dec_ref(x_498);
 x_520 = lean_box(0);
}
x_521 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_521, 0, x_518);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_522 = lean_apply_8(x_440, lean_box(0), x_494, x_9, x_10, x_11, x_12, x_13, x_519);
if (lean_obj_tag(x_522) == 0)
{
lean_object* x_523; lean_object* x_524; uint8_t x_525; lean_object* x_526; double x_527; double x_528; lean_object* x_529; lean_object* x_530; lean_object* x_531; lean_object* x_532; 
x_523 = lean_ctor_get(x_522, 0);
lean_inc(x_523);
x_524 = lean_ctor_get(x_522, 1);
lean_inc(x_524);
lean_dec(x_522);
x_525 = 0;
x_526 = lean_unsigned_to_nat(0u);
x_527 = l_Float_ofScientific(x_496, x_525, x_526);
lean_dec(x_496);
x_528 = l_Float_ofScientific(x_523, x_525, x_526);
lean_dec(x_523);
x_529 = lean_box_float(x_527);
x_530 = lean_box_float(x_528);
if (lean_is_scalar(x_520)) {
 x_531 = lean_alloc_ctor(0, 2, 0);
} else {
 x_531 = x_520;
 lean_ctor_set_tag(x_531, 0);
}
lean_ctor_set(x_531, 0, x_529);
lean_ctor_set(x_531, 1, x_530);
x_532 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_532, 0, x_521);
lean_ctor_set(x_532, 1, x_531);
x_441 = x_532;
x_442 = x_524;
goto block_493;
}
else
{
lean_object* x_533; lean_object* x_534; lean_object* x_535; lean_object* x_536; 
lean_dec(x_521);
lean_dec(x_520);
lean_dec(x_496);
lean_dec(x_325);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_533 = lean_ctor_get(x_522, 0);
lean_inc(x_533);
x_534 = lean_ctor_get(x_522, 1);
lean_inc(x_534);
if (lean_is_exclusive(x_522)) {
 lean_ctor_release(x_522, 0);
 lean_ctor_release(x_522, 1);
 x_535 = x_522;
} else {
 lean_dec_ref(x_522);
 x_535 = lean_box(0);
}
if (lean_is_scalar(x_535)) {
 x_536 = lean_alloc_ctor(1, 2, 0);
} else {
 x_536 = x_535;
}
lean_ctor_set(x_536, 0, x_533);
lean_ctor_set(x_536, 1, x_534);
return x_536;
}
}
}
else
{
lean_object* x_537; lean_object* x_538; lean_object* x_539; lean_object* x_540; 
lean_dec(x_440);
lean_dec(x_325);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_537 = lean_ctor_get(x_495, 0);
lean_inc(x_537);
x_538 = lean_ctor_get(x_495, 1);
lean_inc(x_538);
if (lean_is_exclusive(x_495)) {
 lean_ctor_release(x_495, 0);
 lean_ctor_release(x_495, 1);
 x_539 = x_495;
} else {
 lean_dec_ref(x_495);
 x_539 = lean_box(0);
}
if (lean_is_scalar(x_539)) {
 x_540 = lean_alloc_ctor(1, 2, 0);
} else {
 x_540 = x_539;
}
lean_ctor_set(x_540, 0, x_537);
lean_ctor_set(x_540, 1, x_538);
return x_540;
}
block_493:
{
lean_object* x_443; lean_object* x_444; lean_object* x_445; lean_object* x_446; uint8_t x_447; lean_object* x_481; uint8_t x_482; 
x_443 = lean_ctor_get(x_441, 1);
lean_inc(x_443);
x_444 = lean_ctor_get(x_441, 0);
lean_inc(x_444);
lean_dec(x_441);
x_445 = lean_ctor_get(x_443, 0);
lean_inc(x_445);
x_446 = lean_ctor_get(x_443, 1);
lean_inc(x_446);
lean_dec(x_443);
x_481 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2;
x_482 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_1, x_481);
if (x_482 == 0)
{
uint8_t x_483; 
x_483 = 0;
x_447 = x_483;
goto block_480;
}
else
{
double x_484; double x_485; double x_486; lean_object* x_487; lean_object* x_488; uint8_t x_489; lean_object* x_490; double x_491; uint8_t x_492; 
x_484 = lean_unbox_float(x_446);
x_485 = lean_unbox_float(x_445);
x_486 = lean_float_sub(x_484, x_485);
x_487 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3;
x_488 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_1, x_487);
x_489 = 0;
x_490 = lean_unsigned_to_nat(0u);
x_491 = l_Float_ofScientific(x_488, x_489, x_490);
lean_dec(x_488);
x_492 = lean_float_decLt(x_491, x_486);
x_447 = x_492;
goto block_480;
}
block_480:
{
if (x_6 == 0)
{
if (x_447 == 0)
{
lean_object* x_448; lean_object* x_449; lean_object* x_450; lean_object* x_451; lean_object* x_452; lean_object* x_453; lean_object* x_454; lean_object* x_455; lean_object* x_456; lean_object* x_457; lean_object* x_458; lean_object* x_459; lean_object* x_460; lean_object* x_461; lean_object* x_462; lean_object* x_463; 
lean_dec(x_446);
lean_dec(x_445);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_448 = lean_st_ref_take(x_13, x_442);
x_449 = lean_ctor_get(x_448, 0);
lean_inc(x_449);
x_450 = lean_ctor_get(x_448, 1);
lean_inc(x_450);
lean_dec(x_448);
x_451 = lean_ctor_get(x_449, 0);
lean_inc(x_451);
x_452 = lean_ctor_get(x_449, 1);
lean_inc(x_452);
x_453 = lean_ctor_get(x_449, 2);
lean_inc(x_453);
x_454 = lean_ctor_get(x_449, 3);
lean_inc(x_454);
x_455 = lean_ctor_get(x_449, 4);
lean_inc(x_455);
x_456 = lean_ctor_get(x_449, 5);
lean_inc(x_456);
x_457 = lean_ctor_get(x_449, 6);
lean_inc(x_457);
if (lean_is_exclusive(x_449)) {
 lean_ctor_release(x_449, 0);
 lean_ctor_release(x_449, 1);
 lean_ctor_release(x_449, 2);
 lean_ctor_release(x_449, 3);
 lean_ctor_release(x_449, 4);
 lean_ctor_release(x_449, 5);
 lean_ctor_release(x_449, 6);
 x_458 = x_449;
} else {
 lean_dec_ref(x_449);
 x_458 = lean_box(0);
}
x_459 = l_Lean_PersistentArray_append___rarg(x_325, x_454);
lean_dec(x_454);
if (lean_is_scalar(x_458)) {
 x_460 = lean_alloc_ctor(0, 7, 0);
} else {
 x_460 = x_458;
}
lean_ctor_set(x_460, 0, x_451);
lean_ctor_set(x_460, 1, x_452);
lean_ctor_set(x_460, 2, x_453);
lean_ctor_set(x_460, 3, x_459);
lean_ctor_set(x_460, 4, x_455);
lean_ctor_set(x_460, 5, x_456);
lean_ctor_set(x_460, 6, x_457);
x_461 = lean_st_ref_set(x_13, x_460, x_450);
x_462 = lean_ctor_get(x_461, 1);
lean_inc(x_462);
lean_dec(x_461);
x_463 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg(x_444, x_9, x_10, x_11, x_12, x_13, x_462);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_444);
if (lean_obj_tag(x_463) == 0)
{
lean_object* x_464; lean_object* x_465; lean_object* x_466; lean_object* x_467; 
x_464 = lean_ctor_get(x_463, 0);
lean_inc(x_464);
x_465 = lean_ctor_get(x_463, 1);
lean_inc(x_465);
if (lean_is_exclusive(x_463)) {
 lean_ctor_release(x_463, 0);
 lean_ctor_release(x_463, 1);
 x_466 = x_463;
} else {
 lean_dec_ref(x_463);
 x_466 = lean_box(0);
}
if (lean_is_scalar(x_466)) {
 x_467 = lean_alloc_ctor(0, 2, 0);
} else {
 x_467 = x_466;
}
lean_ctor_set(x_467, 0, x_464);
lean_ctor_set(x_467, 1, x_465);
return x_467;
}
else
{
lean_object* x_468; lean_object* x_469; lean_object* x_470; lean_object* x_471; 
x_468 = lean_ctor_get(x_463, 0);
lean_inc(x_468);
x_469 = lean_ctor_get(x_463, 1);
lean_inc(x_469);
if (lean_is_exclusive(x_463)) {
 lean_ctor_release(x_463, 0);
 lean_ctor_release(x_463, 1);
 x_470 = x_463;
} else {
 lean_dec_ref(x_463);
 x_470 = lean_box(0);
}
if (lean_is_scalar(x_470)) {
 x_471 = lean_alloc_ctor(1, 2, 0);
} else {
 x_471 = x_470;
}
lean_ctor_set(x_471, 0, x_468);
lean_ctor_set(x_471, 1, x_469);
return x_471;
}
}
else
{
lean_object* x_472; double x_473; double x_474; lean_object* x_475; 
x_472 = lean_box(0);
x_473 = lean_unbox_float(x_445);
lean_dec(x_445);
x_474 = lean_unbox_float(x_446);
lean_dec(x_446);
x_475 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(x_2, x_3, x_4, x_325, x_444, x_1, x_447, x_473, x_474, x_5, x_472, x_9, x_10, x_11, x_12, x_13, x_442);
return x_475;
}
}
else
{
lean_object* x_476; double x_477; double x_478; lean_object* x_479; 
x_476 = lean_box(0);
x_477 = lean_unbox_float(x_445);
lean_dec(x_445);
x_478 = lean_unbox_float(x_446);
lean_dec(x_446);
x_479 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(x_2, x_3, x_4, x_325, x_444, x_1, x_447, x_477, x_478, x_5, x_476, x_9, x_10, x_11, x_12, x_13, x_442);
return x_479;
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, uint8_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_9, 2);
lean_inc(x_12);
lean_inc(x_1);
x_13 = l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5(x_1, x_6, x_7, x_8, x_9, x_10, x_11);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_unbox(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_16);
lean_dec(x_13);
x_17 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2;
x_18 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_12, x_17);
if (x_18 == 0)
{
lean_object* x_19; 
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_19 = lean_apply_6(x_3, x_6, x_7, x_8, x_9, x_10, x_16);
if (lean_obj_tag(x_19) == 0)
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
return x_19;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_19);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
else
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_19);
if (x_24 == 0)
{
return x_19;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_19, 0);
x_26 = lean_ctor_get(x_19, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_19);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
else
{
lean_object* x_28; uint8_t x_29; lean_object* x_30; 
x_28 = lean_box(0);
x_29 = lean_unbox(x_14);
lean_dec(x_14);
x_30 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7(x_12, x_1, x_4, x_5, x_2, x_29, x_3, x_28, x_6, x_7, x_8, x_9, x_10, x_16);
lean_dec(x_12);
return x_30;
}
}
else
{
lean_object* x_31; lean_object* x_32; uint8_t x_33; lean_object* x_34; 
x_31 = lean_ctor_get(x_13, 1);
lean_inc(x_31);
lean_dec(x_13);
x_32 = lean_box(0);
x_33 = lean_unbox(x_14);
lean_dec(x_14);
x_34 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7(x_12, x_1, x_4, x_5, x_2, x_33, x_3, x_32, x_6, x_7, x_8, x_9, x_10, x_31);
lean_dec(x_12);
return x_34;
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, uint8_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_1, 0);
lean_inc(x_11);
lean_dec(x_1);
x_12 = l_Aesop_withNormTraceNode_fmt___closed__2;
x_13 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg(x_11, x_2, x_3, x_4, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
static lean_object* _init_l_Aesop_withNormTraceNode___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_steps;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; 
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
x_10 = l_Aesop_NormRuleResult_newGoal_x3f(x_9);
lean_dec(x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; 
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
else
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_13 = lean_ctor_get(x_10, 0);
x_14 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_15 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_14, x_2, x_3, x_4, x_5, x_6, x_7);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_unbox(x_16);
lean_dec(x_16);
if (x_17 == 0)
{
uint8_t x_18; 
lean_free_object(x_10);
lean_dec(x_13);
x_18 = !lean_is_exclusive(x_15);
if (x_18 == 0)
{
lean_object* x_19; 
x_19 = lean_ctor_get(x_15, 0);
lean_dec(x_19);
lean_ctor_set(x_15, 0, x_1);
return x_15;
}
else
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_dec(x_15);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_1);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; 
x_22 = lean_ctor_get(x_15, 1);
lean_inc(x_22);
lean_dec(x_15);
x_23 = l_Aesop_TraceOption_steps;
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_24, x_10, x_2, x_3, x_4, x_5, x_6, x_22);
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
lean_object* x_27; 
x_27 = lean_ctor_get(x_25, 0);
lean_dec(x_27);
lean_ctor_set(x_25, 0, x_1);
return x_25;
}
else
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_1);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_30 = lean_ctor_get(x_10, 0);
lean_inc(x_30);
lean_dec(x_10);
x_31 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_32 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_31, x_2, x_3, x_4, x_5, x_6, x_7);
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
x_34 = lean_unbox(x_33);
lean_dec(x_33);
if (x_34 == 0)
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
lean_dec(x_30);
x_35 = lean_ctor_get(x_32, 1);
lean_inc(x_35);
if (lean_is_exclusive(x_32)) {
 lean_ctor_release(x_32, 0);
 lean_ctor_release(x_32, 1);
 x_36 = x_32;
} else {
 lean_dec_ref(x_32);
 x_36 = lean_box(0);
}
if (lean_is_scalar(x_36)) {
 x_37 = lean_alloc_ctor(0, 2, 0);
} else {
 x_37 = x_36;
}
lean_ctor_set(x_37, 0, x_1);
lean_ctor_set(x_37, 1, x_35);
return x_37;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_38 = lean_ctor_get(x_32, 1);
lean_inc(x_38);
lean_dec(x_32);
x_39 = l_Aesop_TraceOption_steps;
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_30);
x_42 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_40, x_41, x_2, x_3, x_4, x_5, x_6, x_38);
x_43 = lean_ctor_get(x_42, 1);
lean_inc(x_43);
if (lean_is_exclusive(x_42)) {
 lean_ctor_release(x_42, 0);
 lean_ctor_release(x_42, 1);
 x_44 = x_42;
} else {
 lean_dec_ref(x_42);
 x_44 = lean_box(0);
}
if (lean_is_scalar(x_44)) {
 x_45 = lean_alloc_ctor(0, 2, 0);
} else {
 x_45 = x_44;
}
lean_ctor_set(x_45, 0, x_1);
lean_ctor_set(x_45, 1, x_43);
return x_45;
}
}
}
}
}
}
static lean_object* _init_l_Aesop_withNormTraceNode___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_withNormTraceNode___lambda__2___boxed), 7, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_9 = lean_alloc_closure((void*)(l_Aesop_withNormTraceNode_fmt___boxed), 8, 1);
lean_closure_set(x_9, 0, x_1);
x_10 = l_Aesop_withNormTraceNode___closed__1;
x_11 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 2);
lean_closure_set(x_11, 0, x_2);
lean_closure_set(x_11, 1, x_10);
x_12 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_13 = 1;
x_14 = l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg(x_12, x_9, x_11, x_13, x_3, x_4, x_5, x_6, x_7, x_8);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_withNormTraceNode___spec__7(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__8___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__9___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__10___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_MonadExcept_ofExcept___at_Aesop_withNormTraceNode___spec__11___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
_start:
{
uint8_t x_18; uint8_t x_19; double x_20; double x_21; lean_object* x_22; 
x_18 = lean_unbox(x_2);
lean_dec(x_2);
x_19 = lean_unbox(x_8);
lean_dec(x_8);
x_20 = lean_unbox_float(x_9);
lean_dec(x_9);
x_21 = lean_unbox_float(x_10);
lean_dec(x_10);
x_22 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2(x_1, x_18, x_3, x_4, x_5, x_6, x_7, x_19, x_20, x_21, x_11, x_12, x_13, x_14, x_15, x_16, x_17);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
return x_22;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
_start:
{
uint8_t x_18; uint8_t x_19; double x_20; double x_21; lean_object* x_22; 
x_18 = lean_unbox(x_2);
lean_dec(x_2);
x_19 = lean_unbox(x_7);
lean_dec(x_7);
x_20 = lean_unbox_float(x_8);
lean_dec(x_8);
x_21 = lean_unbox_float(x_9);
lean_dec(x_9);
x_22 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3(x_1, x_18, x_3, x_4, x_5, x_6, x_19, x_20, x_21, x_10, x_11, x_12, x_13, x_14, x_15, x_16, x_17);
lean_dec(x_11);
lean_dec(x_6);
return x_22;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
_start:
{
uint8_t x_18; uint8_t x_19; double x_20; double x_21; lean_object* x_22; 
x_18 = lean_unbox(x_2);
lean_dec(x_2);
x_19 = lean_unbox(x_8);
lean_dec(x_8);
x_20 = lean_unbox_float(x_9);
lean_dec(x_9);
x_21 = lean_unbox_float(x_10);
lean_dec(x_10);
x_22 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__5(x_1, x_18, x_3, x_4, x_5, x_6, x_7, x_19, x_20, x_21, x_11, x_12, x_13, x_14, x_15, x_16, x_17);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
return x_22;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
_start:
{
uint8_t x_18; uint8_t x_19; double x_20; double x_21; lean_object* x_22; 
x_18 = lean_unbox(x_2);
lean_dec(x_2);
x_19 = lean_unbox(x_7);
lean_dec(x_7);
x_20 = lean_unbox_float(x_8);
lean_dec(x_8);
x_21 = lean_unbox_float(x_9);
lean_dec(x_9);
x_22 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__6(x_1, x_18, x_3, x_4, x_5, x_6, x_19, x_20, x_21, x_10, x_11, x_12, x_13, x_14, x_15, x_16, x_17);
lean_dec(x_11);
lean_dec(x_6);
return x_22;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; uint8_t x_16; lean_object* x_17; 
x_15 = lean_unbox(x_3);
lean_dec(x_3);
x_16 = lean_unbox(x_6);
lean_dec(x_6);
x_17 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7(x_1, x_2, x_15, x_4, x_5, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_8);
lean_dec(x_1);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_4);
lean_dec(x_4);
x_13 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg(x_1, x_2, x_3, x_12, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = lean_unbox(x_4);
lean_dec(x_4);
x_12 = l_Aesop_withAesopTraceNode___at_Aesop_withNormTraceNode___spec__3___rarg(x_1, x_2, x_3, x_11, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_withNormTraceNode___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_withNormTraceNode___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_withNormTraceNode___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_ctor_get(x_4, 5);
x_8 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_8, 0);
lean_inc(x_7);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_7);
lean_ctor_set(x_11, 1, x_10);
lean_ctor_set_tag(x_8, 1);
lean_ctor_set(x_8, 0, x_11);
return x_8;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_ctor_get(x_8, 0);
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_8);
lean_inc(x_7);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_7);
lean_ctor_set(x_14, 1, x_12);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg___boxed), 6, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac_err___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: error while running norm rule ", 37, 37);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac_err___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac_err___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac_err___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(": ", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac_err___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac_err___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac_err___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nThe rule was run on this goal:", 31, 31);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac_err___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac_err___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac_err(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_35; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get_uint8(x_10, sizeof(void*)*1 + 9);
x_12 = lean_ctor_get_uint8(x_10, sizeof(void*)*1 + 8);
x_13 = lean_ctor_get_uint8(x_10, sizeof(void*)*1 + 10);
x_14 = lean_ctor_get(x_10, 0);
lean_inc(x_14);
lean_dec(x_10);
x_15 = 1;
x_16 = l_Lean_Name_toString(x_14, x_15);
x_17 = lean_ctor_get(x_2, 0);
lean_inc(x_17);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_17);
x_19 = l_Lean_indentD(x_18);
switch (x_11) {
case 0:
{
lean_object* x_59; 
x_59 = l_Aesop_withNormTraceNode_fmt___closed__17;
x_35 = x_59;
goto block_58;
}
case 1:
{
lean_object* x_60; 
x_60 = l_Aesop_withNormTraceNode_fmt___closed__18;
x_35 = x_60;
goto block_58;
}
default: 
{
lean_object* x_61; 
x_61 = l_Aesop_withNormTraceNode_fmt___closed__19;
x_35 = x_61;
goto block_58;
}
}
block_34:
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_21 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_21, 0, x_20);
x_22 = l_Lean_MessageData_ofFormat(x_21);
x_23 = l_Aesop_runNormRuleTac_err___closed__2;
x_24 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_22);
x_25 = l_Aesop_runNormRuleTac_err___closed__4;
x_26 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_4);
x_28 = l_Aesop_runNormRuleTac_err___closed__6;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_19);
x_31 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_32 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
x_33 = l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg(x_32, x_5, x_6, x_7, x_8, x_9);
return x_33;
}
block_58:
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = l_Aesop_withNormTraceNode_fmt___closed__6;
x_37 = lean_string_append(x_35, x_36);
switch (x_12) {
case 0:
{
lean_object* x_50; 
x_50 = l_Aesop_withNormTraceNode_fmt___closed__9;
x_38 = x_50;
goto block_49;
}
case 1:
{
lean_object* x_51; 
x_51 = l_Aesop_withNormTraceNode_fmt___closed__10;
x_38 = x_51;
goto block_49;
}
case 2:
{
lean_object* x_52; 
x_52 = l_Aesop_withNormTraceNode_fmt___closed__11;
x_38 = x_52;
goto block_49;
}
case 3:
{
lean_object* x_53; 
x_53 = l_Aesop_withNormTraceNode_fmt___closed__12;
x_38 = x_53;
goto block_49;
}
case 4:
{
lean_object* x_54; 
x_54 = l_Aesop_withNormTraceNode_fmt___closed__13;
x_38 = x_54;
goto block_49;
}
case 5:
{
lean_object* x_55; 
x_55 = l_Aesop_withNormTraceNode_fmt___closed__14;
x_38 = x_55;
goto block_49;
}
case 6:
{
lean_object* x_56; 
x_56 = l_Aesop_withNormTraceNode_fmt___closed__15;
x_38 = x_56;
goto block_49;
}
default: 
{
lean_object* x_57; 
x_57 = l_Aesop_withNormTraceNode_fmt___closed__16;
x_38 = x_57;
goto block_49;
}
}
block_49:
{
lean_object* x_39; lean_object* x_40; 
x_39 = lean_string_append(x_37, x_38);
lean_dec(x_38);
x_40 = lean_string_append(x_39, x_36);
if (x_13 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_41 = l_Aesop_withNormTraceNode_fmt___closed__7;
x_42 = lean_string_append(x_40, x_41);
x_43 = lean_string_append(x_42, x_36);
x_44 = lean_string_append(x_43, x_16);
lean_dec(x_16);
x_20 = x_44;
goto block_34;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_45 = l_Aesop_withNormTraceNode_fmt___closed__8;
x_46 = lean_string_append(x_40, x_45);
x_47 = lean_string_append(x_46, x_36);
x_48 = lean_string_append(x_47, x_16);
lean_dec(x_16);
x_20 = x_48;
goto block_34;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Aesop_runNormRuleTac_err___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac_err___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_runNormRuleTac_err(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_name_eq(x_6, x_1);
if (x_9 == 0)
{
lean_object* x_10; 
x_10 = l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(x_1, x_2, x_8);
lean_ctor_set(x_3, 2, x_10);
return x_3;
}
else
{
lean_dec(x_7);
lean_dec(x_6);
lean_ctor_set(x_3, 1, x_2);
lean_ctor_set(x_3, 0, x_1);
return x_3;
}
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
x_13 = lean_ctor_get(x_3, 2);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
x_14 = lean_name_eq(x_11, x_1);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(x_1, x_2, x_13);
x_16 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_16, 0, x_11);
lean_ctor_set(x_16, 1, x_12);
lean_ctor_set(x_16, 2, x_15);
return x_16;
}
else
{
lean_object* x_17; 
lean_dec(x_12);
lean_dec(x_11);
x_17 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_17, 0, x_1);
lean_ctor_set(x_17, 1, x_2);
lean_ctor_set(x_17, 2, x_13);
return x_17;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_dec(x_1);
return x_6;
}
else
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_array_uget(x_3, x_5);
x_9 = !lean_is_exclusive(x_6);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; size_t x_20; size_t x_21; size_t x_22; size_t x_23; size_t x_24; lean_object* x_25; uint8_t x_26; 
x_10 = lean_ctor_get(x_6, 0);
x_11 = lean_ctor_get(x_6, 1);
x_12 = lean_array_get_size(x_11);
x_13 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_14 = 32;
x_15 = lean_uint64_shift_right(x_13, x_14);
x_16 = lean_uint64_xor(x_13, x_15);
x_17 = 16;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = lean_uint64_to_usize(x_19);
x_21 = lean_usize_of_nat(x_12);
lean_dec(x_12);
x_22 = 1;
x_23 = lean_usize_sub(x_21, x_22);
x_24 = lean_usize_land(x_20, x_23);
x_25 = lean_array_uget(x_11, x_24);
x_26 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_8, x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; 
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_10, x_27);
lean_dec(x_10);
x_29 = lean_box(0);
x_30 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_30, 0, x_8);
lean_ctor_set(x_30, 1, x_29);
lean_ctor_set(x_30, 2, x_25);
x_31 = lean_array_uset(x_11, x_24, x_30);
x_32 = lean_unsigned_to_nat(4u);
x_33 = lean_nat_mul(x_28, x_32);
x_34 = lean_unsigned_to_nat(3u);
x_35 = lean_nat_div(x_33, x_34);
lean_dec(x_33);
x_36 = lean_array_get_size(x_31);
x_37 = lean_nat_dec_le(x_35, x_36);
lean_dec(x_36);
lean_dec(x_35);
if (x_37 == 0)
{
lean_object* x_38; size_t x_39; 
x_38 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_31);
lean_ctor_set(x_6, 1, x_38);
lean_ctor_set(x_6, 0, x_28);
x_39 = lean_usize_add(x_5, x_22);
x_5 = x_39;
goto _start;
}
else
{
size_t x_41; 
lean_ctor_set(x_6, 1, x_31);
lean_ctor_set(x_6, 0, x_28);
x_41 = lean_usize_add(x_5, x_22);
x_5 = x_41;
goto _start;
}
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; size_t x_47; 
lean_inc(x_1);
x_43 = lean_array_uset(x_11, x_24, x_1);
x_44 = lean_box(0);
x_45 = l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(x_8, x_44, x_25);
x_46 = lean_array_uset(x_43, x_24, x_45);
lean_ctor_set(x_6, 1, x_46);
x_47 = lean_usize_add(x_5, x_22);
x_5 = x_47;
goto _start;
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; uint64_t x_52; uint64_t x_53; uint64_t x_54; uint64_t x_55; uint64_t x_56; uint64_t x_57; uint64_t x_58; size_t x_59; size_t x_60; size_t x_61; size_t x_62; size_t x_63; lean_object* x_64; uint8_t x_65; 
x_49 = lean_ctor_get(x_6, 0);
x_50 = lean_ctor_get(x_6, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_6);
x_51 = lean_array_get_size(x_50);
x_52 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_53 = 32;
x_54 = lean_uint64_shift_right(x_52, x_53);
x_55 = lean_uint64_xor(x_52, x_54);
x_56 = 16;
x_57 = lean_uint64_shift_right(x_55, x_56);
x_58 = lean_uint64_xor(x_55, x_57);
x_59 = lean_uint64_to_usize(x_58);
x_60 = lean_usize_of_nat(x_51);
lean_dec(x_51);
x_61 = 1;
x_62 = lean_usize_sub(x_60, x_61);
x_63 = lean_usize_land(x_59, x_62);
x_64 = lean_array_uget(x_50, x_63);
x_65 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_8, x_64);
if (x_65 == 0)
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; uint8_t x_76; 
x_66 = lean_unsigned_to_nat(1u);
x_67 = lean_nat_add(x_49, x_66);
lean_dec(x_49);
x_68 = lean_box(0);
x_69 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_69, 0, x_8);
lean_ctor_set(x_69, 1, x_68);
lean_ctor_set(x_69, 2, x_64);
x_70 = lean_array_uset(x_50, x_63, x_69);
x_71 = lean_unsigned_to_nat(4u);
x_72 = lean_nat_mul(x_67, x_71);
x_73 = lean_unsigned_to_nat(3u);
x_74 = lean_nat_div(x_72, x_73);
lean_dec(x_72);
x_75 = lean_array_get_size(x_70);
x_76 = lean_nat_dec_le(x_74, x_75);
lean_dec(x_75);
lean_dec(x_74);
if (x_76 == 0)
{
lean_object* x_77; lean_object* x_78; size_t x_79; 
x_77 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_70);
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_67);
lean_ctor_set(x_78, 1, x_77);
x_79 = lean_usize_add(x_5, x_61);
x_5 = x_79;
x_6 = x_78;
goto _start;
}
else
{
lean_object* x_81; size_t x_82; 
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_67);
lean_ctor_set(x_81, 1, x_70);
x_82 = lean_usize_add(x_5, x_61);
x_5 = x_82;
x_6 = x_81;
goto _start;
}
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; size_t x_89; 
lean_inc(x_1);
x_84 = lean_array_uset(x_50, x_63, x_1);
x_85 = lean_box(0);
x_86 = l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(x_8, x_85, x_64);
x_87 = lean_array_uset(x_84, x_63, x_86);
x_88 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_88, 0, x_49);
lean_ctor_set(x_88, 1, x_87);
x_89 = lean_usize_add(x_5, x_61);
x_5 = x_89;
x_6 = x_88;
goto _start;
}
}
}
}
}
LEAN_EXPORT uint8_t l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint64_t x_5; uint64_t x_6; uint64_t x_7; uint64_t x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; size_t x_12; size_t x_13; size_t x_14; size_t x_15; size_t x_16; lean_object* x_17; uint8_t x_18; 
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_array_get_size(x_3);
x_5 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_2);
x_6 = 32;
x_7 = lean_uint64_shift_right(x_5, x_6);
x_8 = lean_uint64_xor(x_5, x_7);
x_9 = 16;
x_10 = lean_uint64_shift_right(x_8, x_9);
x_11 = lean_uint64_xor(x_8, x_10);
x_12 = lean_uint64_to_usize(x_11);
x_13 = lean_usize_of_nat(x_4);
lean_dec(x_4);
x_14 = 1;
x_15 = lean_usize_sub(x_13, x_14);
x_16 = lean_usize_land(x_12, x_15);
x_17 = lean_array_uget(x_3, x_16);
x_18 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_2, x_17);
lean_dec(x_17);
return x_18;
}
}
static lean_object* _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__1() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; 
x_1 = 0;
x_2 = lean_box(x_1);
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
}
static lean_object* _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__1;
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__2;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; 
lean_dec(x_2);
x_5 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
lean_dec(x_4);
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 2);
x_8 = l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3(x_1, x_6);
if (x_8 == 0)
{
lean_object* x_9; 
lean_dec(x_2);
x_9 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3;
return x_9;
}
else
{
lean_inc(x_2);
{
lean_object* _tmp_2 = x_7;
lean_object* _tmp_3 = x_2;
x_3 = _tmp_2;
x_4 = _tmp_3;
}
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_dec(x_2);
return x_6;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_array_uget(x_3, x_5);
lean_inc(x_2);
x_9 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5(x_1, x_2, x_8, x_6);
lean_dec(x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; 
lean_dec(x_2);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
return x_10;
}
else
{
lean_object* x_11; size_t x_12; size_t x_13; 
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
x_12 = 1;
x_13 = lean_usize_add(x_5, x_12);
x_5 = x_13;
x_6 = x_11;
goto _start;
}
}
}
}
LEAN_EXPORT uint8_t l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___lambda__1(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = 1;
return x_2;
}
}
static lean_object* _init_l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1() {
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
static lean_object* _init_l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2;
x_2 = lean_box(0);
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; size_t x_4; size_t x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_ctor_get(x_2, 1);
x_4 = lean_array_size(x_3);
x_5 = 0;
x_6 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1;
x_7 = l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__6(x_1, x_6, x_3, x_4, x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3;
return x_9;
}
else
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_8, 0);
lean_inc(x_10);
lean_dec(x_8);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; 
lean_dec(x_2);
x_5 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
lean_dec(x_4);
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 2);
x_8 = l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3(x_1, x_6);
if (x_8 == 0)
{
lean_object* x_9; 
lean_dec(x_2);
x_9 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3;
return x_9;
}
else
{
lean_inc(x_2);
{
lean_object* _tmp_2 = x_7;
lean_object* _tmp_3 = x_2;
x_3 = _tmp_2;
x_4 = _tmp_3;
}
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_dec(x_2);
return x_6;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_array_uget(x_3, x_5);
lean_inc(x_2);
x_9 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__8(x_1, x_2, x_8, x_6);
lean_dec(x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; 
lean_dec(x_2);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
return x_10;
}
else
{
lean_object* x_11; size_t x_12; size_t x_13; 
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
x_12 = 1;
x_13 = lean_usize_add(x_5, x_12);
x_5 = x_13;
x_6 = x_11;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; size_t x_4; size_t x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_ctor_get(x_2, 1);
x_4 = lean_array_size(x_3);
x_5 = 0;
x_6 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1;
x_7 = l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__9(x_1, x_6, x_3, x_4, x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3;
return x_9;
}
else
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_8, 0);
lean_inc(x_10);
lean_dec(x_8);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_box(0);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_1, 2);
lean_inc(x_9);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_2);
lean_ctor_set(x_10, 1, x_9);
x_11 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_11, 0, x_10);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_8);
return x_12;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule produced more than one subgoal.", 36, 36);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac___lambda__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_runNormRuleTac___lambda__3___closed__3;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Aesop_runNormRuleTac___lambda__3___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("the goal produced by the rule depends on different metavariables than the original goal.", 88, 88);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac___lambda__3___closed__6;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___lambda__3___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac___lambda__3___closed__7;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = lean_ctor_get(x_1, 0);
x_12 = lean_array_get_size(x_11);
x_13 = lean_unsigned_to_nat(1u);
x_14 = lean_nat_dec_eq(x_12, x_13);
lean_dec(x_12);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
lean_dec(x_4);
x_15 = l_Aesop_runNormRuleTac___lambda__3___closed__2;
x_16 = l_Aesop_runNormRuleTac_err(x_2, x_3, lean_box(0), x_15, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; size_t x_22; size_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_array_fget(x_11, x_17);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
lean_dec(x_18);
x_20 = lean_ctor_get(x_3, 1);
x_21 = lean_box(0);
x_22 = lean_array_size(x_20);
x_23 = 0;
x_24 = l_Aesop_runNormRuleTac___lambda__3___closed__5;
x_25 = l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__2(x_21, x_24, x_20, x_22, x_23, x_24);
x_26 = l_Aesop_Check_rules;
x_27 = l_Aesop_Check_isEnabled___at_Aesop_runRuleTac___spec__1(x_26, x_6, x_7, x_8, x_9, x_10);
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_unbox(x_28);
lean_dec(x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_25);
lean_dec(x_4);
lean_dec(x_2);
x_30 = lean_ctor_get(x_27, 1);
lean_inc(x_30);
lean_dec(x_27);
x_31 = lean_box(0);
x_32 = l_Aesop_runNormRuleTac___lambda__2(x_1, x_19, x_31, x_6, x_7, x_8, x_9, x_30);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_32;
}
else
{
lean_object* x_33; uint8_t x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_33 = lean_ctor_get(x_27, 1);
lean_inc(x_33);
lean_dec(x_27);
x_34 = 0;
x_35 = lean_box(x_34);
lean_inc(x_19);
x_36 = lean_alloc_closure((void*)(l_Lean_MVarId_getMVarDependencies___boxed), 7, 2);
lean_closure_set(x_36, 0, x_19);
lean_closure_set(x_36, 1, x_35);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_37 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_4, x_36, x_6, x_7, x_8, x_9, x_33);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_38 = lean_ctor_get(x_37, 0);
lean_inc(x_38);
x_39 = lean_ctor_get(x_37, 1);
lean_inc(x_39);
lean_dec(x_37);
x_40 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4(x_25, x_38);
x_41 = lean_unbox(x_40);
lean_dec(x_40);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; uint8_t x_44; 
lean_dec(x_38);
lean_dec(x_25);
lean_dec(x_19);
x_42 = l_Aesop_runNormRuleTac___lambda__3___closed__8;
x_43 = l_Aesop_runNormRuleTac_err(x_2, x_3, lean_box(0), x_42, x_6, x_7, x_8, x_9, x_39);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_44 = !lean_is_exclusive(x_43);
if (x_44 == 0)
{
return x_43;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_43, 0);
x_46 = lean_ctor_get(x_43, 1);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_43);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
else
{
lean_object* x_48; uint8_t x_49; 
x_48 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__7(x_38, x_25);
lean_dec(x_25);
lean_dec(x_38);
x_49 = lean_unbox(x_48);
lean_dec(x_48);
if (x_49 == 0)
{
lean_object* x_50; lean_object* x_51; uint8_t x_52; 
lean_dec(x_19);
x_50 = l_Aesop_runNormRuleTac___lambda__3___closed__8;
x_51 = l_Aesop_runNormRuleTac_err(x_2, x_3, lean_box(0), x_50, x_6, x_7, x_8, x_9, x_39);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_52 = !lean_is_exclusive(x_51);
if (x_52 == 0)
{
return x_51;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_51, 0);
x_54 = lean_ctor_get(x_51, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_51);
x_55 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_55, 0, x_53);
lean_ctor_set(x_55, 1, x_54);
return x_55;
}
}
else
{
lean_object* x_56; lean_object* x_57; 
lean_dec(x_2);
x_56 = lean_box(0);
x_57 = l_Aesop_runNormRuleTac___lambda__2(x_1, x_19, x_56, x_6, x_7, x_8, x_9, x_39);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_57;
}
}
}
else
{
uint8_t x_58; 
lean_dec(x_25);
lean_dec(x_19);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
x_58 = !lean_is_exclusive(x_37);
if (x_58 == 0)
{
return x_37;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_59 = lean_ctor_get(x_37, 0);
x_60 = lean_ctor_get(x_37, 1);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_37);
x_61 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
return x_61;
}
}
}
}
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_runNormRuleTac___lambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule did not produce exactly one rule application.", 50, 50);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormRuleTac___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormRuleTac___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = l_Lean_Meta_saveState___rarg(x_4, x_5, x_6, x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = lean_ctor_get(x_1, 4);
lean_inc(x_11);
x_12 = lean_alloc_closure((void*)(l_Aesop_RuleTacDescr_run), 7, 1);
lean_closure_set(x_12, 0, x_11);
x_13 = lean_ctor_get(x_1, 0);
lean_inc(x_13);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_14 = l_Aesop_runRuleTac(x_12, x_13, x_9, x_2, x_3, x_4, x_5, x_6, x_10);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
lean_dec(x_2);
lean_dec(x_1);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_19 = l_Aesop_TraceOption_isEnabled___at_Aesop_straightLineExt_go___spec__1(x_18, x_3, x_4, x_5, x_6, x_16);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_runNormRuleTac___closed__1;
x_23 = lean_unbox(x_20);
lean_dec(x_20);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; 
lean_dec(x_17);
x_24 = lean_box(0);
x_25 = lean_apply_6(x_22, x_24, x_3, x_4, x_5, x_6, x_21);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_26 = l_Aesop_TraceOption_steps;
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = l_Lean_Exception_toMessageData(x_17);
x_29 = l_Lean_addTrace___at_Lean_Meta_processPostponed_loop___spec__2(x_27, x_28, x_3, x_4, x_5, x_6, x_21);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = lean_apply_6(x_22, x_30, x_3, x_4, x_5, x_6, x_31);
return x_32;
}
}
else
{
lean_object* x_33; uint8_t x_34; 
x_33 = lean_ctor_get(x_14, 1);
lean_inc(x_33);
lean_dec(x_14);
x_34 = !lean_is_exclusive(x_15);
if (x_34 == 0)
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_35 = lean_ctor_get(x_15, 0);
x_36 = lean_array_get_size(x_35);
x_37 = lean_unsigned_to_nat(1u);
x_38 = lean_nat_dec_eq(x_36, x_37);
lean_dec(x_36);
if (x_38 == 0)
{
lean_object* x_39; lean_object* x_40; 
lean_free_object(x_15);
lean_dec(x_35);
x_39 = l_Aesop_runNormRuleTac___closed__3;
x_40 = l_Aesop_runNormRuleTac_err(x_1, x_2, lean_box(0), x_39, x_3, x_4, x_5, x_6, x_33);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_40;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_41 = lean_unsigned_to_nat(0u);
x_42 = lean_array_fget(x_35, x_41);
lean_dec(x_35);
x_43 = lean_ctor_get(x_42, 1);
lean_inc(x_43);
x_44 = l_Lean_Meta_SavedState_restore(x_43, x_3, x_4, x_5, x_6, x_33);
x_45 = !lean_is_exclusive(x_44);
if (x_45 == 0)
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; uint8_t x_49; 
x_46 = lean_ctor_get(x_44, 1);
x_47 = lean_ctor_get(x_44, 0);
lean_dec(x_47);
x_48 = lean_ctor_get(x_42, 0);
lean_inc(x_48);
x_49 = l_Array_isEmpty___rarg(x_48);
lean_dec(x_48);
if (x_49 == 0)
{
lean_object* x_50; lean_object* x_51; 
lean_free_object(x_44);
lean_free_object(x_15);
x_50 = lean_box(0);
x_51 = l_Aesop_runNormRuleTac___lambda__3(x_42, x_1, x_2, x_43, x_50, x_3, x_4, x_5, x_6, x_46);
lean_dec(x_2);
lean_dec(x_42);
return x_51;
}
else
{
lean_object* x_52; lean_object* x_53; 
lean_dec(x_43);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_52 = lean_ctor_get(x_42, 2);
lean_inc(x_52);
lean_dec(x_42);
lean_ctor_set(x_15, 0, x_52);
x_53 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_53, 0, x_15);
lean_ctor_set(x_44, 0, x_53);
return x_44;
}
}
else
{
lean_object* x_54; lean_object* x_55; uint8_t x_56; 
x_54 = lean_ctor_get(x_44, 1);
lean_inc(x_54);
lean_dec(x_44);
x_55 = lean_ctor_get(x_42, 0);
lean_inc(x_55);
x_56 = l_Array_isEmpty___rarg(x_55);
lean_dec(x_55);
if (x_56 == 0)
{
lean_object* x_57; lean_object* x_58; 
lean_free_object(x_15);
x_57 = lean_box(0);
x_58 = l_Aesop_runNormRuleTac___lambda__3(x_42, x_1, x_2, x_43, x_57, x_3, x_4, x_5, x_6, x_54);
lean_dec(x_2);
lean_dec(x_42);
return x_58;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; 
lean_dec(x_43);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_59 = lean_ctor_get(x_42, 2);
lean_inc(x_59);
lean_dec(x_42);
lean_ctor_set(x_15, 0, x_59);
x_60 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_60, 0, x_15);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_61, 1, x_54);
return x_61;
}
}
}
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; uint8_t x_65; 
x_62 = lean_ctor_get(x_15, 0);
lean_inc(x_62);
lean_dec(x_15);
x_63 = lean_array_get_size(x_62);
x_64 = lean_unsigned_to_nat(1u);
x_65 = lean_nat_dec_eq(x_63, x_64);
lean_dec(x_63);
if (x_65 == 0)
{
lean_object* x_66; lean_object* x_67; 
lean_dec(x_62);
x_66 = l_Aesop_runNormRuleTac___closed__3;
x_67 = l_Aesop_runNormRuleTac_err(x_1, x_2, lean_box(0), x_66, x_3, x_4, x_5, x_6, x_33);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_67;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; uint8_t x_75; 
x_68 = lean_unsigned_to_nat(0u);
x_69 = lean_array_fget(x_62, x_68);
lean_dec(x_62);
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
x_71 = l_Lean_Meta_SavedState_restore(x_70, x_3, x_4, x_5, x_6, x_33);
x_72 = lean_ctor_get(x_71, 1);
lean_inc(x_72);
if (lean_is_exclusive(x_71)) {
 lean_ctor_release(x_71, 0);
 lean_ctor_release(x_71, 1);
 x_73 = x_71;
} else {
 lean_dec_ref(x_71);
 x_73 = lean_box(0);
}
x_74 = lean_ctor_get(x_69, 0);
lean_inc(x_74);
x_75 = l_Array_isEmpty___rarg(x_74);
lean_dec(x_74);
if (x_75 == 0)
{
lean_object* x_76; lean_object* x_77; 
lean_dec(x_73);
x_76 = lean_box(0);
x_77 = l_Aesop_runNormRuleTac___lambda__3(x_69, x_1, x_2, x_70, x_76, x_3, x_4, x_5, x_6, x_72);
lean_dec(x_2);
lean_dec(x_69);
return x_77;
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
lean_dec(x_70);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_78 = lean_ctor_get(x_69, 2);
lean_inc(x_78);
lean_dec(x_69);
x_79 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_79, 0, x_78);
x_80 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_80, 0, x_79);
if (lean_is_scalar(x_73)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_73;
}
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_72);
return x_81;
}
}
}
}
}
else
{
uint8_t x_82; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_82 = !lean_is_exclusive(x_14);
if (x_82 == 0)
{
return x_14;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_14, 0);
x_84 = lean_ctor_get(x_14, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_14);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__2(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Std_HashSet_contains___at_Aesop_runNormRuleTac___spec__3(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5(x_1, x_2, x_3, x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__6(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___lambda__1___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___lambda__1(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__8(x_1, x_2, x_3, x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at_Aesop_runNormRuleTac___spec__9(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__7___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__7(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_runNormRuleTac___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_runNormRuleTac___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRuleTac___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_runNormRuleTac___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
static lean_object* _init_l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_collectStatsOption;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 2);
x_5 = l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___closed__1;
x_6 = l_Lean_Option_get___at_Aesop_Check_get___spec__2(x_4, x_5);
x_7 = lean_box(x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___boxed), 3, 0);
return x_4;
}
}
static lean_object* _init_l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_stats;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg(x_4, x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_8);
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___closed__1;
x_12 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_11, x_1, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
return x_7;
}
else
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_7, 1);
lean_inc(x_15);
lean_dec(x_7);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_8);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_runNormRule___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3(x_3, x_4, x_5, x_6, x_7, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_unbox(x_10);
lean_dec(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_1);
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
lean_dec(x_9);
x_13 = lean_apply_6(x_2, x_3, x_4, x_5, x_6, x_7, x_12);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_dec(x_9);
x_15 = l_Aesop_instMonadStatsNormM;
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5;
lean_inc(x_16);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_18 = lean_apply_8(x_16, lean_box(0), x_17, x_3, x_4, x_5, x_6, x_7, x_14);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_21 = lean_apply_6(x_2, x_3, x_4, x_5, x_6, x_7, x_20);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_21, 1);
lean_inc(x_23);
lean_dec(x_21);
lean_inc(x_3);
x_24 = lean_apply_8(x_16, lean_box(0), x_17, x_3, x_4, x_5, x_6, x_7, x_23);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = lean_nat_sub(x_25, x_19);
lean_dec(x_19);
lean_dec(x_25);
x_28 = lean_ctor_get(x_3, 3);
lean_inc(x_28);
lean_dec(x_3);
x_29 = lean_st_ref_take(x_28, x_26);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
lean_inc(x_22);
x_32 = lean_apply_3(x_1, x_30, x_22, x_27);
x_33 = lean_st_ref_set(x_28, x_32, x_31);
lean_dec(x_28);
x_34 = !lean_is_exclusive(x_33);
if (x_34 == 0)
{
lean_object* x_35; 
x_35 = lean_ctor_get(x_33, 0);
lean_dec(x_35);
lean_ctor_set(x_33, 0, x_22);
return x_33;
}
else
{
lean_object* x_36; lean_object* x_37; 
x_36 = lean_ctor_get(x_33, 1);
lean_inc(x_36);
lean_dec(x_33);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_22);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
else
{
uint8_t x_38; 
lean_dec(x_22);
lean_dec(x_19);
lean_dec(x_3);
lean_dec(x_1);
x_38 = !lean_is_exclusive(x_24);
if (x_38 == 0)
{
return x_24;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_24, 0);
x_40 = lean_ctor_get(x_24, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_24);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
else
{
uint8_t x_42; 
lean_dec(x_19);
lean_dec(x_16);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_42 = !lean_is_exclusive(x_21);
if (x_42 == 0)
{
return x_21;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_21, 0);
x_44 = lean_ctor_get(x_21, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_21);
x_45 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_45, 0, x_43);
lean_ctor_set(x_45, 1, x_44);
return x_45;
}
}
}
else
{
uint8_t x_46; 
lean_dec(x_16);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_46 = !lean_is_exclusive(x_18);
if (x_46 == 0)
{
return x_18;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_18, 0);
x_48 = lean_ctor_get(x_18, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_18);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_runNormRule___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_profiling___at_Aesop_runNormRule___spec__2___rarg), 8, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_apply_1(x_1, x_4);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
x_8 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_8, 0, x_2);
lean_ctor_set(x_8, 1, x_5);
lean_ctor_set_uint8(x_8, sizeof(void*)*2, x_7);
x_9 = !lean_is_exclusive(x_3);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_3, 7);
x_11 = lean_array_push(x_10, x_8);
lean_ctor_set(x_3, 7, x_11);
return x_3;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_12 = lean_ctor_get(x_3, 0);
x_13 = lean_ctor_get(x_3, 1);
x_14 = lean_ctor_get(x_3, 2);
x_15 = lean_ctor_get(x_3, 3);
x_16 = lean_ctor_get(x_3, 4);
x_17 = lean_ctor_get(x_3, 5);
x_18 = lean_ctor_get(x_3, 6);
x_19 = lean_ctor_get(x_3, 7);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_3);
x_20 = lean_array_push(x_19, x_8);
x_21 = lean_alloc_ctor(0, 8, 0);
lean_ctor_set(x_21, 0, x_12);
lean_ctor_set(x_21, 1, x_13);
lean_ctor_set(x_21, 2, x_14);
lean_ctor_set(x_21, 3, x_15);
lean_ctor_set(x_21, 4, x_16);
lean_ctor_set(x_21, 5, x_17);
lean_ctor_set(x_21, 6, x_18);
lean_ctor_set(x_21, 7, x_20);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_alloc_closure((void*)(l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg___lambda__1), 5, 2);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_1);
x_11 = l_Aesop_profiling___at_Aesop_runNormRule___spec__2___rarg(x_10, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_runNormRuleTac(x_1, x_2, x_4, x_5, x_6, x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_13 = lean_ctor_get(x_1, 1);
x_14 = lean_ctor_get(x_1, 2);
x_15 = lean_ctor_get(x_6, 0);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
x_16 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_16, 0, x_2);
lean_ctor_set(x_16, 1, x_3);
lean_ctor_set(x_16, 2, x_13);
lean_ctor_set(x_16, 3, x_14);
lean_ctor_set(x_16, 4, x_15);
x_17 = lean_alloc_closure((void*)(l_Aesop_runNormRule___lambda__1___boxed), 8, 2);
lean_closure_set(x_17, 0, x_4);
lean_closure_set(x_17, 1, x_16);
x_18 = l_Aesop_withNormTraceNode(x_5, x_17, x_7, x_8, x_9, x_10, x_11, x_12);
return x_18;
}
}
static lean_object* _init_l_Aesop_runNormRule___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Option_isSome___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRule(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_10 = lean_ctor_get(x_3, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_12, 0, x_11);
lean_inc(x_12);
x_13 = lean_alloc_closure((void*)(l_Aesop_runNormRule___lambda__2___boxed), 12, 5);
lean_closure_set(x_13, 0, x_3);
lean_closure_set(x_13, 1, x_1);
lean_closure_set(x_13, 2, x_2);
lean_closure_set(x_13, 3, x_10);
lean_closure_set(x_13, 4, x_12);
x_14 = l_Aesop_instMonadStatsNormM___closed__17;
x_15 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 2);
lean_closure_set(x_15, 0, x_14);
lean_closure_set(x_15, 1, x_13);
x_16 = l_Aesop_runNormRule___closed__1;
x_17 = l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg(x_12, x_16, x_15, x_4, x_5, x_6, x_7, x_8, x_9);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_runNormRule___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormRule___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_runNormRule___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_6);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runFirstNormRule___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; 
x_14 = lean_usize_dec_lt(x_6, x_5);
if (x_14 == 0)
{
lean_object* x_15; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_7);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; 
lean_dec(x_7);
x_16 = lean_array_uget(x_4, x_6);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_16);
lean_inc(x_2);
lean_inc(x_1);
x_17 = l_Aesop_runNormRule(x_1, x_2, x_16, x_8, x_9, x_10, x_11, x_12, x_13);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; size_t x_20; size_t x_21; 
lean_dec(x_16);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_6, x_20);
lean_inc(x_3);
{
size_t _tmp_5 = x_21;
lean_object* _tmp_6 = x_3;
lean_object* _tmp_12 = x_19;
x_6 = _tmp_5;
x_7 = _tmp_6;
x_13 = _tmp_12;
}
goto _start;
}
else
{
lean_object* x_23; uint8_t x_24; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_23 = lean_ctor_get(x_16, 0);
lean_inc(x_23);
lean_dec(x_16);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
lean_object* x_25; uint8_t x_26; 
x_25 = lean_ctor_get(x_17, 0);
lean_dec(x_25);
x_26 = !lean_is_exclusive(x_18);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_27 = lean_ctor_get(x_18, 0);
x_28 = lean_ctor_get(x_23, 0);
lean_inc(x_28);
lean_dec(x_23);
x_29 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_29, 0, x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_27);
lean_ctor_set(x_18, 0, x_30);
x_31 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_31, 0, x_18);
x_32 = lean_box(0);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
lean_ctor_set(x_17, 0, x_33);
return x_17;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_34 = lean_ctor_get(x_18, 0);
lean_inc(x_34);
lean_dec(x_18);
x_35 = lean_ctor_get(x_23, 0);
lean_inc(x_35);
lean_dec(x_23);
x_36 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_36, 0, x_35);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_34);
x_38 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_38, 0, x_37);
x_39 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_39, 0, x_38);
x_40 = lean_box(0);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
lean_ctor_set(x_17, 0, x_41);
return x_17;
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_42 = lean_ctor_get(x_17, 1);
lean_inc(x_42);
lean_dec(x_17);
x_43 = lean_ctor_get(x_18, 0);
lean_inc(x_43);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 x_44 = x_18;
} else {
 lean_dec_ref(x_18);
 x_44 = lean_box(0);
}
x_45 = lean_ctor_get(x_23, 0);
lean_inc(x_45);
lean_dec(x_23);
x_46 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_46, 0, x_45);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_43);
if (lean_is_scalar(x_44)) {
 x_48 = lean_alloc_ctor(1, 1, 0);
} else {
 x_48 = x_44;
}
lean_ctor_set(x_48, 0, x_47);
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_48);
x_50 = lean_box(0);
x_51 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_51, 0, x_49);
lean_ctor_set(x_51, 1, x_50);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_42);
return x_52;
}
}
}
else
{
uint8_t x_53; 
lean_dec(x_16);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_53 = !lean_is_exclusive(x_17);
if (x_53 == 0)
{
return x_17;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_17, 0);
x_55 = lean_ctor_get(x_17, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_17);
x_56 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
return x_56;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_runFirstNormRule(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; size_t x_11; size_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_box(0);
x_11 = lean_array_size(x_3);
x_12 = 0;
x_13 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1;
x_14 = l_Array_forInUnsafe_loop___at_Aesop_runFirstNormRule___spec__1(x_1, x_2, x_13, x_3, x_11, x_12, x_13, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
lean_dec(x_15);
if (lean_obj_tag(x_16) == 0)
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_14);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_14, 0);
lean_dec(x_18);
lean_ctor_set(x_14, 0, x_10);
return x_14;
}
else
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_14, 1);
lean_inc(x_19);
lean_dec(x_14);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_10);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
uint8_t x_21; 
x_21 = !lean_is_exclusive(x_14);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; 
x_22 = lean_ctor_get(x_14, 0);
lean_dec(x_22);
x_23 = lean_ctor_get(x_16, 0);
lean_inc(x_23);
lean_dec(x_16);
lean_ctor_set(x_14, 0, x_23);
return x_14;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_14, 1);
lean_inc(x_24);
lean_dec(x_14);
x_25 = lean_ctor_get(x_16, 0);
lean_inc(x_25);
lean_dec(x_16);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_24);
return x_26;
}
}
}
else
{
uint8_t x_27; 
x_27 = !lean_is_exclusive(x_14);
if (x_27 == 0)
{
return x_14;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_14, 0);
x_29 = lean_ctor_get(x_14, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_14);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runFirstNormRule___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
size_t x_14; size_t x_15; lean_object* x_16; 
x_14 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_15 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_16 = l_Array_forInUnsafe_loop___at_Aesop_runFirstNormRule___spec__1(x_1, x_2, x_3, x_4, x_14, x_15, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_4);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_runFirstNormRule___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_runFirstNormRule(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
return x_10;
}
}
static lean_object* _init_l_Aesop_mkNormSimpScriptStep___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_mkNormSimpScriptStep___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_mkNormSimpScriptStep(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_12 = lean_ctor_get(x_6, 2);
lean_inc(x_12);
x_13 = lean_ctor_get_uint8(x_12, sizeof(void*)*3 + 1);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_box(x_13);
lean_inc(x_5);
lean_inc(x_14);
lean_inc(x_1);
x_16 = lean_alloc_closure((void*)(l_Aesop_Script_TacticBuilder_simpAllOrSimpAtStar___boxed), 9, 4);
lean_closure_set(x_16, 0, x_15);
lean_closure_set(x_16, 1, x_1);
lean_closure_set(x_16, 2, x_14);
lean_closure_set(x_16, 3, x_5);
x_17 = lean_box(x_13);
lean_inc(x_1);
x_18 = lean_alloc_closure((void*)(l_Aesop_Script_TacticBuilder_simpAllOrSimpAtStarOnly___boxed), 9, 4);
lean_closure_set(x_18, 0, x_17);
lean_closure_set(x_18, 1, x_1);
lean_closure_set(x_18, 2, x_14);
lean_closure_set(x_18, 3, x_5);
x_19 = lean_ctor_get(x_6, 0);
lean_inc(x_19);
lean_dec(x_6);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_ctor_get_uint8(x_20, sizeof(void*)*9 + 9);
lean_dec(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; 
lean_dec(x_16);
x_22 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_23 = lean_array_push(x_22, x_18);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_25 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_25, 0, x_3);
lean_ctor_set(x_25, 1, x_1);
lean_ctor_set(x_25, 2, x_23);
lean_ctor_set(x_25, 3, x_4);
lean_ctor_set(x_25, 4, x_24);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_11);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_27 = lean_ctor_get(x_2, 0);
lean_inc(x_27);
lean_dec(x_2);
x_28 = lean_array_push(x_22, x_27);
x_29 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_29, 0, x_3);
lean_ctor_set(x_29, 1, x_1);
lean_ctor_set(x_29, 2, x_23);
lean_ctor_set(x_29, 3, x_4);
lean_ctor_set(x_29, 4, x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_11);
return x_30;
}
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = l_Aesop_mkNormSimpScriptStep___closed__2;
x_32 = lean_array_push(x_31, x_18);
x_33 = lean_array_push(x_32, x_16);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_35 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_35, 0, x_3);
lean_ctor_set(x_35, 1, x_1);
lean_ctor_set(x_35, 2, x_33);
lean_ctor_set(x_35, 3, x_4);
lean_ctor_set(x_35, 4, x_34);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_11);
return x_36;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_37 = lean_ctor_get(x_2, 0);
lean_inc(x_37);
lean_dec(x_2);
x_38 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_39 = lean_array_push(x_38, x_37);
x_40 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_40, 0, x_3);
lean_ctor_set(x_40, 1, x_1);
lean_ctor_set(x_40, 2, x_33);
lean_ctor_set(x_40, 3, x_4);
lean_ctor_set(x_40, 4, x_39);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_11);
return x_41;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_mkNormSimpScriptStep___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Aesop_mkNormSimpScriptStep(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_SimpResult_toNormRuleResult(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
switch (lean_obj_tag(x_4)) {
case 0:
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_4);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_4, 0);
x_13 = lean_box(0);
x_14 = l_Aesop_mkNormSimpScriptStep(x_1, x_13, x_2, x_3, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_18 = lean_array_push(x_17, x_16);
lean_ctor_set_tag(x_4, 1);
lean_ctor_set(x_4, 0, x_18);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_4);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_14, 0, x_20);
return x_14;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_14, 0);
x_22 = lean_ctor_get(x_14, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_14);
x_23 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_24 = lean_array_push(x_23, x_21);
lean_ctor_set_tag(x_4, 1);
lean_ctor_set(x_4, 0, x_24);
x_25 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_25, 0, x_4);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_25);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_22);
return x_27;
}
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_28 = lean_ctor_get(x_4, 0);
lean_inc(x_28);
lean_dec(x_4);
x_29 = lean_box(0);
x_30 = l_Aesop_mkNormSimpScriptStep(x_1, x_29, x_2, x_3, x_28, x_5, x_6, x_7, x_8, x_9, x_10);
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
if (lean_is_exclusive(x_30)) {
 lean_ctor_release(x_30, 0);
 lean_ctor_release(x_30, 1);
 x_33 = x_30;
} else {
 lean_dec_ref(x_30);
 x_33 = lean_box(0);
}
x_34 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_35 = lean_array_push(x_34, x_31);
x_36 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_36, 0, x_35);
x_37 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_37, 0, x_36);
x_38 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_38, 0, x_37);
if (lean_is_scalar(x_33)) {
 x_39 = lean_alloc_ctor(0, 2, 0);
} else {
 x_39 = x_33;
}
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_32);
return x_39;
}
}
case 1:
{
lean_object* x_40; lean_object* x_41; 
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_40 = lean_box(0);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_10);
return x_41;
}
default: 
{
uint8_t x_42; 
x_42 = !lean_is_exclusive(x_4);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_43 = lean_ctor_get(x_4, 0);
x_44 = lean_ctor_get(x_4, 1);
lean_inc(x_43);
x_45 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_45, 0, x_43);
x_46 = l_Aesop_mkNormSimpScriptStep(x_1, x_45, x_2, x_3, x_44, x_5, x_6, x_7, x_8, x_9, x_10);
x_47 = !lean_is_exclusive(x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_48 = lean_ctor_get(x_46, 0);
x_49 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_50 = lean_array_push(x_49, x_48);
x_51 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_51, 0, x_50);
lean_ctor_set_tag(x_4, 0);
lean_ctor_set(x_4, 1, x_51);
x_52 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_52, 0, x_4);
lean_ctor_set(x_46, 0, x_52);
return x_46;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_53 = lean_ctor_get(x_46, 0);
x_54 = lean_ctor_get(x_46, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_46);
x_55 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_56 = lean_array_push(x_55, x_53);
x_57 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_57, 0, x_56);
lean_ctor_set_tag(x_4, 0);
lean_ctor_set(x_4, 1, x_57);
x_58 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_58, 0, x_4);
x_59 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_54);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_60 = lean_ctor_get(x_4, 0);
x_61 = lean_ctor_get(x_4, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_4);
lean_inc(x_60);
x_62 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_62, 0, x_60);
x_63 = l_Aesop_mkNormSimpScriptStep(x_1, x_62, x_2, x_3, x_61, x_5, x_6, x_7, x_8, x_9, x_10);
x_64 = lean_ctor_get(x_63, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_63, 1);
lean_inc(x_65);
if (lean_is_exclusive(x_63)) {
 lean_ctor_release(x_63, 0);
 lean_ctor_release(x_63, 1);
 x_66 = x_63;
} else {
 lean_dec_ref(x_63);
 x_66 = lean_box(0);
}
x_67 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_68 = lean_array_push(x_67, x_64);
x_69 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_69, 0, x_68);
x_70 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_70, 0, x_60);
lean_ctor_set(x_70, 1, x_69);
x_71 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_71, 0, x_70);
if (lean_is_scalar(x_66)) {
 x_72 = lean_alloc_ctor(0, 2, 0);
} else {
 x_72 = x_66;
}
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_65);
return x_72;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_SimpResult_toNormRuleResult___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_SimpResult_toNormRuleResult(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_normSimpCore_addLocalRules___spec__1(lean_object* x_1, uint8_t x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_eq(x_4, x_5);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_array_uget(x_3, x_4);
x_15 = !lean_is_exclusive(x_6);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_6, 0);
x_17 = lean_ctor_get(x_6, 1);
x_18 = lean_ctor_get(x_14, 1);
lean_inc(x_18);
lean_dec(x_14);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_1);
x_19 = l_Aesop_elabRuleTermForSimpMetaM(x_1, x_18, x_16, x_17, x_2, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; size_t x_22; size_t x_23; 
lean_free_object(x_6);
lean_dec(x_17);
lean_dec(x_16);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = 1;
x_23 = lean_usize_add(x_4, x_22);
x_4 = x_23;
x_6 = x_20;
x_12 = x_21;
goto _start;
}
else
{
uint8_t x_25; 
x_25 = !lean_is_exclusive(x_19);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_26 = lean_ctor_get(x_19, 0);
x_27 = lean_ctor_get(x_19, 1);
x_28 = l_Lean_Exception_isInterrupt(x_26);
if (x_28 == 0)
{
uint8_t x_29; 
x_29 = l_Lean_Exception_isRuntime(x_26);
if (x_29 == 0)
{
size_t x_30; size_t x_31; 
lean_free_object(x_19);
lean_dec(x_26);
x_30 = 1;
x_31 = lean_usize_add(x_4, x_30);
x_4 = x_31;
x_12 = x_27;
goto _start;
}
else
{
lean_free_object(x_6);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
return x_19;
}
}
else
{
lean_free_object(x_6);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
return x_19;
}
}
else
{
lean_object* x_33; lean_object* x_34; uint8_t x_35; 
x_33 = lean_ctor_get(x_19, 0);
x_34 = lean_ctor_get(x_19, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_19);
x_35 = l_Lean_Exception_isInterrupt(x_33);
if (x_35 == 0)
{
uint8_t x_36; 
x_36 = l_Lean_Exception_isRuntime(x_33);
if (x_36 == 0)
{
size_t x_37; size_t x_38; 
lean_dec(x_33);
x_37 = 1;
x_38 = lean_usize_add(x_4, x_37);
x_4 = x_38;
x_12 = x_34;
goto _start;
}
else
{
lean_object* x_40; 
lean_free_object(x_6);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_33);
lean_ctor_set(x_40, 1, x_34);
return x_40;
}
}
else
{
lean_object* x_41; 
lean_free_object(x_6);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_33);
lean_ctor_set(x_41, 1, x_34);
return x_41;
}
}
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_42 = lean_ctor_get(x_6, 0);
x_43 = lean_ctor_get(x_6, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_6);
x_44 = lean_ctor_get(x_14, 1);
lean_inc(x_44);
lean_dec(x_14);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_1);
x_45 = l_Aesop_elabRuleTermForSimpMetaM(x_1, x_44, x_42, x_43, x_2, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; lean_object* x_47; size_t x_48; size_t x_49; 
lean_dec(x_43);
lean_dec(x_42);
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
x_47 = lean_ctor_get(x_45, 1);
lean_inc(x_47);
lean_dec(x_45);
x_48 = 1;
x_49 = lean_usize_add(x_4, x_48);
x_4 = x_49;
x_6 = x_46;
x_12 = x_47;
goto _start;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; uint8_t x_54; 
x_51 = lean_ctor_get(x_45, 0);
lean_inc(x_51);
x_52 = lean_ctor_get(x_45, 1);
lean_inc(x_52);
if (lean_is_exclusive(x_45)) {
 lean_ctor_release(x_45, 0);
 lean_ctor_release(x_45, 1);
 x_53 = x_45;
} else {
 lean_dec_ref(x_45);
 x_53 = lean_box(0);
}
x_54 = l_Lean_Exception_isInterrupt(x_51);
if (x_54 == 0)
{
uint8_t x_55; 
x_55 = l_Lean_Exception_isRuntime(x_51);
if (x_55 == 0)
{
lean_object* x_56; size_t x_57; size_t x_58; 
lean_dec(x_53);
lean_dec(x_51);
x_56 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_56, 0, x_42);
lean_ctor_set(x_56, 1, x_43);
x_57 = 1;
x_58 = lean_usize_add(x_4, x_57);
x_4 = x_58;
x_6 = x_56;
x_12 = x_52;
goto _start;
}
else
{
lean_object* x_60; 
lean_dec(x_43);
lean_dec(x_42);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
if (lean_is_scalar(x_53)) {
 x_60 = lean_alloc_ctor(1, 2, 0);
} else {
 x_60 = x_53;
}
lean_ctor_set(x_60, 0, x_51);
lean_ctor_set(x_60, 1, x_52);
return x_60;
}
}
else
{
lean_object* x_61; 
lean_dec(x_43);
lean_dec(x_42);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
if (lean_is_scalar(x_53)) {
 x_61 = lean_alloc_ctor(1, 2, 0);
} else {
 x_61 = x_53;
}
lean_ctor_set(x_61, 0, x_51);
lean_ctor_set(x_61, 1, x_52);
return x_61;
}
}
}
}
else
{
lean_object* x_62; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
x_62 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_62, 0, x_6);
lean_ctor_set(x_62, 1, x_12);
return x_62;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore_addLocalRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_3);
lean_ctor_set(x_12, 1, x_4);
x_13 = lean_array_get_size(x_2);
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_nat_dec_lt(x_14, x_13);
if (x_15 == 0)
{
lean_object* x_16; 
lean_dec(x_13);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_12);
lean_ctor_set(x_16, 1, x_11);
return x_16;
}
else
{
uint8_t x_17; 
x_17 = lean_nat_dec_le(x_13, x_13);
if (x_17 == 0)
{
lean_object* x_18; 
lean_dec(x_13);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_1);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_12);
lean_ctor_set(x_18, 1, x_11);
return x_18;
}
else
{
size_t x_19; size_t x_20; lean_object* x_21; 
x_19 = 0;
x_20 = lean_usize_of_nat(x_13);
lean_dec(x_13);
x_21 = l_Array_foldlMUnsafe_fold___at_Aesop_normSimpCore_addLocalRules___spec__1(x_1, x_5, x_2, x_19, x_20, x_12, x_6, x_7, x_8, x_9, x_10, x_11);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_normSimpCore_addLocalRules___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; size_t x_14; size_t x_15; lean_object* x_16; 
x_13 = lean_unbox(x_2);
lean_dec(x_2);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_16 = l_Array_foldlMUnsafe_fold___at_Aesop_normSimpCore_addLocalRules___spec__1(x_1, x_13, x_3, x_14, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_7);
lean_dec(x_3);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore_addLocalRules___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_5);
lean_dec(x_5);
x_13 = l_Aesop_normSimpCore_addLocalRules(x_1, x_2, x_3, x_4, x_12, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_6);
lean_dec(x_2);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Aesop_normSimpCore___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_4, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_ctor_get(x_11, 7);
lean_inc(x_12);
x_13 = l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isAssigned___spec__1(x_12, x_1);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_11, 8);
lean_inc(x_14);
lean_dec(x_11);
x_15 = l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isDelayedAssigned___spec__1(x_14, x_1);
x_16 = lean_box(x_15);
lean_ctor_set(x_8, 0, x_16);
return x_8;
}
else
{
uint8_t x_17; lean_object* x_18; 
lean_dec(x_11);
x_17 = 1;
x_18 = lean_box(x_17);
lean_ctor_set(x_8, 0, x_18);
return x_8;
}
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_19 = lean_ctor_get(x_8, 0);
x_20 = lean_ctor_get(x_8, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_8);
x_21 = lean_ctor_get(x_19, 0);
lean_inc(x_21);
lean_dec(x_19);
x_22 = lean_ctor_get(x_21, 7);
lean_inc(x_22);
x_23 = l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isAssigned___spec__1(x_22, x_1);
if (x_23 == 0)
{
lean_object* x_24; uint8_t x_25; lean_object* x_26; lean_object* x_27; 
x_24 = lean_ctor_get(x_21, 8);
lean_inc(x_24);
lean_dec(x_21);
x_25 = l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isDelayedAssigned___spec__1(x_24, x_1);
x_26 = lean_box(x_25);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_20);
return x_27;
}
else
{
uint8_t x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_21);
x_28 = 1;
x_29 = lean_box(x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_20);
return x_30;
}
}
}
}
static lean_object* _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__1() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; 
x_1 = 1;
x_2 = lean_box(x_1);
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
}
static lean_object* _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__1;
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__2;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_10; lean_object* x_11; 
lean_dec(x_1);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_3);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
lean_dec(x_3);
x_12 = lean_ctor_get(x_2, 0);
x_13 = lean_ctor_get(x_2, 2);
x_14 = l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Aesop_normSimpCore___spec__1(x_12, x_4, x_5, x_6, x_7, x_8, x_9);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_unbox(x_15);
lean_dec(x_15);
if (x_16 == 0)
{
uint8_t x_17; 
lean_dec(x_1);
x_17 = !lean_is_exclusive(x_14);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_14, 0);
lean_dec(x_18);
x_19 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3;
lean_ctor_set(x_14, 0, x_19);
return x_14;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_14, 1);
lean_inc(x_20);
lean_dec(x_14);
x_21 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3;
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
}
else
{
lean_object* x_23; 
x_23 = lean_ctor_get(x_14, 1);
lean_inc(x_23);
lean_dec(x_14);
lean_inc(x_1);
{
lean_object* _tmp_1 = x_13;
lean_object* _tmp_2 = x_1;
lean_object* _tmp_8 = x_23;
x_2 = _tmp_1;
x_3 = _tmp_2;
x_9 = _tmp_8;
}
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normSimpCore___spec__4(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_4, x_3);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_1);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_5);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_array_uget(x_2, x_4);
lean_inc(x_1);
x_15 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3(x_1, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_14);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
if (lean_obj_tag(x_16) == 0)
{
uint8_t x_17; 
lean_dec(x_1);
x_17 = !lean_is_exclusive(x_15);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_15, 0);
lean_dec(x_18);
x_19 = lean_ctor_get(x_16, 0);
lean_inc(x_19);
lean_dec(x_16);
lean_ctor_set(x_15, 0, x_19);
return x_15;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_dec(x_15);
x_21 = lean_ctor_get(x_16, 0);
lean_inc(x_21);
lean_dec(x_16);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
}
else
{
lean_object* x_23; lean_object* x_24; size_t x_25; size_t x_26; 
x_23 = lean_ctor_get(x_15, 1);
lean_inc(x_23);
lean_dec(x_15);
x_24 = lean_ctor_get(x_16, 0);
lean_inc(x_24);
lean_dec(x_16);
x_25 = 1;
x_26 = lean_usize_add(x_4, x_25);
x_4 = x_26;
x_5 = x_24;
x_11 = x_23;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; 
x_8 = 0;
x_9 = lean_box(x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_7);
return x_10;
}
}
static lean_object* _init_l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___lambda__1___boxed), 7, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = lean_ctor_get(x_1, 1);
x_9 = lean_array_size(x_8);
x_10 = 0;
x_11 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1;
x_12 = l_Array_forInUnsafe_loop___at_Aesop_normSimpCore___spec__4(x_11, x_8, x_9, x_10, x_11, x_2, x_3, x_4, x_5, x_6, x_7);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
lean_dec(x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
x_16 = l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___closed__1;
x_17 = lean_box(0);
x_18 = lean_apply_7(x_16, x_17, x_2, x_3, x_4, x_5, x_6, x_15);
return x_18;
}
else
{
uint8_t x_19; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_19 = !lean_is_exclusive(x_12);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_12, 0);
lean_dec(x_20);
x_21 = lean_ctor_get(x_14, 0);
lean_inc(x_21);
lean_dec(x_14);
lean_ctor_set(x_12, 0, x_21);
return x_12;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_12, 1);
lean_inc(x_22);
lean_dec(x_12);
x_23 = lean_ctor_get(x_14, 0);
lean_inc(x_23);
lean_dec(x_14);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_22);
return x_24;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_normSimpCore___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_apply_1(x_2, x_3);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_withMVarContextImp___rarg(x_1, x_9, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
return x_10;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
else
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_10);
if (x_15 == 0)
{
return x_10;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_10, 0);
x_17 = lean_ctor_get(x_10, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_10);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_normSimpCore___spec__5(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_MVarId_withContext___at_Aesop_normSimpCore___spec__5___rarg), 8, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Aesop_SimpResult_toNormRuleResult(x_1, x_2, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = l_Lean_Meta_SavedState_restore(x_1, x_5, x_6, x_7, x_8, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_box(1);
x_13 = lean_apply_7(x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_11);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_apply_7(x_1, x_2, x_4, x_5, x_6, x_7, x_8, x_9);
return x_10;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Normalisation simp solved the goal but dropped some metavariables. Skipping normalisation simp.", 95, 95);
return x_1;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_normSimpCore___lambda__4___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__4___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("norm simp left the goal unchanged", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__4___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_normSimpCore___lambda__4___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
switch (lean_obj_tag(x_4)) {
case 0:
{
lean_object* x_11; lean_object* x_12; 
lean_inc(x_2);
lean_inc(x_1);
x_11 = lean_alloc_closure((void*)(l_Aesop_normSimpCore___lambda__1___boxed), 9, 2);
lean_closure_set(x_11, 0, x_1);
lean_closure_set(x_11, 1, x_2);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_12 = l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2(x_3, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_unbox(x_13);
lean_dec(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
lean_dec(x_11);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
x_16 = l_Aesop_normSimpCore___lambda__1(x_1, x_2, x_4, x_5, x_6, x_7, x_8, x_9, x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
lean_dec(x_4);
lean_dec(x_1);
x_17 = lean_ctor_get(x_12, 1);
lean_inc(x_17);
lean_dec(x_12);
x_18 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_19 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_18, x_5, x_6, x_7, x_8, x_9, x_17);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_unbox(x_20);
lean_dec(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_dec(x_19);
x_23 = lean_box(0);
x_24 = l_Aesop_normSimpCore___lambda__2(x_2, x_11, x_23, x_5, x_6, x_7, x_8, x_9, x_22);
lean_dec(x_2);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_25 = lean_ctor_get(x_19, 1);
lean_inc(x_25);
lean_dec(x_19);
x_26 = l_Aesop_TraceOption_steps;
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = l_Aesop_normSimpCore___lambda__4___closed__2;
x_29 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_27, x_28, x_5, x_6, x_7, x_8, x_9, x_25);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = l_Aesop_normSimpCore___lambda__2(x_2, x_11, x_30, x_5, x_6, x_7, x_8, x_9, x_31);
lean_dec(x_30);
lean_dec(x_2);
return x_32;
}
}
}
else
{
uint8_t x_33; 
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_33 = !lean_is_exclusive(x_12);
if (x_33 == 0)
{
return x_12;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_12, 0);
x_35 = lean_ctor_get(x_12, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_12);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
case 1:
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; uint8_t x_40; 
x_37 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_38 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_37, x_5, x_6, x_7, x_8, x_9, x_10);
x_39 = lean_ctor_get(x_38, 0);
lean_inc(x_39);
x_40 = lean_unbox(x_39);
lean_dec(x_39);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; 
x_41 = lean_ctor_get(x_38, 1);
lean_inc(x_41);
lean_dec(x_38);
x_42 = l_Aesop_normSimpCore___lambda__1(x_1, x_2, x_4, x_5, x_6, x_7, x_8, x_9, x_41);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_42;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_43 = lean_ctor_get(x_38, 1);
lean_inc(x_43);
lean_dec(x_38);
x_44 = l_Aesop_TraceOption_steps;
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = l_Aesop_normSimpCore___lambda__4___closed__4;
x_47 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_45, x_46, x_5, x_6, x_7, x_8, x_9, x_43);
x_48 = lean_ctor_get(x_47, 1);
lean_inc(x_48);
lean_dec(x_47);
x_49 = l_Aesop_normSimpCore___lambda__1(x_1, x_2, x_4, x_5, x_6, x_7, x_8, x_9, x_48);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_49;
}
}
default: 
{
lean_object* x_50; 
x_50 = l_Aesop_normSimpCore___lambda__1(x_1, x_2, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_50;
}
}
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__5___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_normSimpCore___lambda__5___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__5___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_normSimpCore___lambda__5___closed__2;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__5___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_normSimpCore___lambda__5___closed__2;
x_2 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3;
x_3 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_1);
lean_ctor_set(x_3, 3, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_normSimpCore___lambda__5___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_normSimpCore___lambda__5___closed__3;
x_2 = l_Aesop_normSimpCore___lambda__5___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_ctor_get_uint8(x_3, sizeof(void*)*3 + 1);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_12 = lean_ctor_get(x_5, 1);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 3);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_3, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_3, 2);
lean_inc(x_15);
lean_dec(x_3);
x_16 = 0;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_1);
x_17 = l_Aesop_normSimpCore_addLocalRules(x_1, x_13, x_14, x_15, x_16, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_13);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = lean_ctor_get(x_18, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_18, 1);
lean_inc(x_21);
lean_dec(x_18);
x_22 = lean_box(0);
x_23 = 1;
x_24 = l_Aesop_normSimpCore___lambda__5___closed__5;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_1);
x_25 = l_Aesop_simpGoalWithAllHypotheses(x_1, x_20, x_21, x_22, x_23, x_24, x_6, x_7, x_8, x_9, x_19);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_25, 1);
lean_inc(x_27);
lean_dec(x_25);
x_28 = l_Aesop_normSimpCore___lambda__4(x_1, x_4, x_2, x_26, x_5, x_6, x_7, x_8, x_9, x_27);
return x_28;
}
else
{
uint8_t x_29; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_29 = !lean_is_exclusive(x_25);
if (x_29 == 0)
{
return x_25;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_25, 0);
x_31 = lean_ctor_get(x_25, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_25);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
else
{
uint8_t x_33; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_33 = !lean_is_exclusive(x_17);
if (x_33 == 0)
{
return x_17;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_17, 0);
x_35 = lean_ctor_get(x_17, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_17);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; lean_object* x_42; 
x_37 = lean_ctor_get(x_5, 1);
lean_inc(x_37);
x_38 = lean_ctor_get(x_37, 3);
lean_inc(x_38);
lean_dec(x_37);
x_39 = lean_ctor_get(x_3, 0);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 2);
lean_inc(x_40);
lean_dec(x_3);
x_41 = 1;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_1);
x_42 = l_Aesop_normSimpCore_addLocalRules(x_1, x_38, x_39, x_40, x_41, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_38);
if (lean_obj_tag(x_42) == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_43 = lean_ctor_get(x_42, 0);
lean_inc(x_43);
x_44 = lean_ctor_get(x_42, 1);
lean_inc(x_44);
lean_dec(x_42);
x_45 = lean_ctor_get(x_43, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_43, 1);
lean_inc(x_46);
lean_dec(x_43);
x_47 = l_Aesop_normSimpCore___lambda__5___closed__5;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_1);
x_48 = l_Aesop_simpAll(x_1, x_45, x_46, x_47, x_6, x_7, x_8, x_9, x_44);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_48, 1);
lean_inc(x_50);
lean_dec(x_48);
x_51 = l_Aesop_normSimpCore___lambda__4(x_1, x_4, x_2, x_49, x_5, x_6, x_7, x_8, x_9, x_50);
return x_51;
}
else
{
uint8_t x_52; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_52 = !lean_is_exclusive(x_48);
if (x_52 == 0)
{
return x_48;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_48, 0);
x_54 = lean_ctor_get(x_48, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_48);
x_55 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_55, 0, x_53);
lean_ctor_set(x_55, 1, x_54);
return x_55;
}
}
}
else
{
uint8_t x_56; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_56 = !lean_is_exclusive(x_42);
if (x_56 == 0)
{
return x_42;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_57 = lean_ctor_get(x_42, 0);
x_58 = lean_ctor_get(x_42, 1);
lean_inc(x_58);
lean_inc(x_57);
lean_dec(x_42);
x_59 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_59, 0, x_57);
lean_ctor_set(x_59, 1, x_58);
return x_59;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_9 = lean_ctor_get(x_3, 2);
lean_inc(x_9);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_Aesop_normSimpCore___lambda__5___boxed), 10, 3);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_2);
lean_closure_set(x_10, 2, x_9);
x_11 = l_Aesop_instMonadBacktrackSavedStateNormM___closed__1;
x_12 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 2);
lean_closure_set(x_12, 0, x_11);
lean_closure_set(x_12, 1, x_10);
x_13 = l_Lean_MVarId_withContext___at_Aesop_normSimpCore___spec__5___rarg(x_1, x_12, x_3, x_4, x_5, x_6, x_7, x_8);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Aesop_normSimpCore___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Aesop_normSimpCore___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normSimpCore___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_13 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_14 = l_Array_forInUnsafe_loop___at_Aesop_normSimpCore___spec__4(x_1, x_2, x_12, x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_normSimpCore___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_normSimpCore___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_normSimpCore___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_normSimpCore___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimpCore___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_normSimpCore___lambda__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_checkSimp___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_5, 2);
x_9 = l_Aesop_Check_get(x_8, x_1);
x_10 = lean_box(x_9);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_checkSimp___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_5, 5);
x_9 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_8);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_8);
lean_ctor_set(x_12, 1, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 0, x_12);
return x_9;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_9, 0);
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_9);
lean_inc(x_8);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_8);
lean_ctor_set(x_15, 1, x_13);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssigned___at_Aesop_checkSimp___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_4, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_ctor_get(x_11, 7);
lean_inc(x_12);
lean_dec(x_11);
x_13 = l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isAssigned___spec__1(x_12, x_1);
x_14 = lean_box(x_13);
lean_ctor_set(x_8, 0, x_14);
return x_8;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; lean_object* x_21; 
x_15 = lean_ctor_get(x_8, 0);
x_16 = lean_ctor_get(x_8, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_8);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_ctor_get(x_17, 7);
lean_inc(x_18);
lean_dec(x_17);
x_19 = l_Lean_PersistentHashMap_contains___at_Lean_MVarId_isAssigned___spec__1(x_18, x_1);
x_20 = lean_box(x_19);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_16);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4(size_t x_1, size_t x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_usize_dec_lt(x_2, x_1);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; lean_object* x_10; 
x_5 = lean_array_uget(x_3, x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_array_uset(x_3, x_2, x_6);
x_8 = 1;
x_9 = lean_usize_add(x_2, x_8);
x_10 = lean_array_uset(x_7, x_2, x_5);
x_2 = x_9;
x_3 = x_10;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__5(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
x_8 = lean_name_eq(x_7, x_1);
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
if (x_8 == 0)
{
lean_object* x_11; 
x_11 = lean_array_push(x_5, x_7);
x_3 = x_10;
x_5 = x_11;
goto _start;
}
else
{
lean_dec(x_7);
x_3 = x_10;
goto _start;
}
}
else
{
return x_5;
}
}
}
LEAN_EXPORT uint8_t l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Aesop_checkSimp___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
x_4 = 0;
return x_4;
}
}
else
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_5; 
x_5 = 0;
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_6 = lean_ctor_get(x_1, 0);
x_7 = lean_ctor_get(x_2, 0);
x_8 = lean_name_eq(x_6, x_7);
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__7(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; size_t x_10; size_t x_11; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_7);
x_8 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_8, 0, x_7);
x_9 = l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Aesop_checkSimp___spec__6(x_8, x_1);
lean_dec(x_8);
x_10 = 1;
x_11 = lean_usize_add(x_3, x_10);
if (x_9 == 0)
{
lean_object* x_12; 
x_12 = lean_array_push(x_5, x_7);
x_3 = x_11;
x_5 = x_12;
goto _start;
}
else
{
lean_dec(x_7);
x_3 = x_11;
goto _start;
}
}
else
{
return x_5;
}
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Check_rules;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_Lean_MessageData_ofName(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_2 = l_Aesop_checkSimp___lambda__1___closed__1;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_checkSimp___lambda__1___closed__2;
x_2 = l_Aesop_runNormRuleTac_err___closed__4;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" solved the goal", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkSimp___lambda__1___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__1(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
if (x_3 == 0)
{
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_27 = l_Lean_MVarId_isAssigned___at_Aesop_checkSimp___spec__3(x_5, x_7, x_8, x_9, x_10, x_11, x_12);
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_27, 1);
lean_inc(x_29);
lean_dec(x_27);
x_30 = lean_unbox(x_28);
lean_dec(x_28);
x_13 = x_30;
x_14 = x_29;
goto block_26;
}
else
{
uint8_t x_31; 
x_31 = 0;
x_13 = x_31;
x_14 = x_12;
goto block_26;
}
}
else
{
uint8_t x_32; 
x_32 = 0;
x_13 = x_32;
x_14 = x_12;
goto block_26;
}
block_26:
{
if (x_13 == 0)
{
lean_object* x_15; 
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_1);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; 
lean_dec(x_1);
x_16 = l_Lean_stringToMessageData(x_2);
x_17 = l_Aesop_checkSimp___lambda__1___closed__3;
x_18 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
x_19 = l_Aesop_checkSimp___lambda__1___closed__5;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = l_Lean_throwError___at_Aesop_checkSimp___spec__2(x_20, x_7, x_8, x_9, x_10, x_11, x_14);
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
return x_21;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_21, 0);
x_24 = lean_ctor_get(x_21, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_21);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" assigned mvars:", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkSimp___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkSimp___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static uint8_t _init_l_Aesop_checkSimp___lambda__2___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; 
x_1 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_2 = l_Array_isEmpty___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; 
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_16 = l_Lean_Meta_getAssignedExprMVars(x_1, x_2, x_11, x_12, x_13, x_14, x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_array_get_size(x_17);
x_20 = lean_unsigned_to_nat(0u);
x_21 = lean_nat_dec_lt(x_20, x_19);
if (x_21 == 0)
{
uint8_t x_44; 
lean_dec(x_19);
lean_dec(x_17);
x_44 = l_Aesop_checkSimp___lambda__2___closed__3;
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_3);
x_45 = lean_box(0);
x_22 = x_45;
goto block_43;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_dec(x_8);
x_46 = lean_box(0);
x_47 = l_Aesop_checkSimp___lambda__1(x_3, x_4, x_5, x_6, x_7, x_46, x_10, x_11, x_12, x_13, x_14, x_18);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
return x_47;
}
}
else
{
uint8_t x_48; 
x_48 = lean_nat_dec_le(x_19, x_19);
if (x_48 == 0)
{
uint8_t x_49; 
lean_dec(x_19);
lean_dec(x_17);
x_49 = l_Aesop_checkSimp___lambda__2___closed__3;
if (x_49 == 0)
{
lean_object* x_50; 
lean_dec(x_3);
x_50 = lean_box(0);
x_22 = x_50;
goto block_43;
}
else
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_8);
x_51 = lean_box(0);
x_52 = l_Aesop_checkSimp___lambda__1(x_3, x_4, x_5, x_6, x_7, x_51, x_10, x_11, x_12, x_13, x_14, x_18);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
return x_52;
}
}
else
{
size_t x_53; size_t x_54; lean_object* x_55; lean_object* x_56; uint8_t x_57; 
x_53 = 0;
x_54 = lean_usize_of_nat(x_19);
lean_dec(x_19);
x_55 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_56 = l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__5(x_7, x_17, x_53, x_54, x_55);
lean_dec(x_17);
x_57 = l_Array_isEmpty___rarg(x_56);
lean_dec(x_56);
if (x_57 == 0)
{
lean_object* x_58; 
lean_dec(x_3);
x_58 = lean_box(0);
x_22 = x_58;
goto block_43;
}
else
{
lean_object* x_59; lean_object* x_60; 
lean_dec(x_8);
x_59 = lean_box(0);
x_60 = l_Aesop_checkSimp___lambda__1(x_3, x_4, x_5, x_6, x_7, x_59, x_10, x_11, x_12, x_13, x_14, x_18);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
return x_60;
}
}
}
block_43:
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; size_t x_28; size_t x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; 
lean_dec(x_22);
x_23 = l_Lean_stringToMessageData(x_4);
x_24 = l_Aesop_checkSimp___lambda__1___closed__3;
x_25 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_23);
x_26 = l_Aesop_checkSimp___lambda__2___closed__2;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
x_28 = lean_array_size(x_8);
x_29 = 0;
x_30 = l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4(x_28, x_29, x_8);
x_31 = lean_array_to_list(lean_box(0), x_30);
x_32 = lean_box(0);
x_33 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_31, x_32);
x_34 = l_Lean_MessageData_ofList(x_33);
x_35 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_35, 0, x_27);
lean_ctor_set(x_35, 1, x_34);
x_36 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_37 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
x_38 = l_Lean_throwError___at_Aesop_checkSimp___spec__2(x_37, x_10, x_11, x_12, x_13, x_14, x_18);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
x_39 = !lean_is_exclusive(x_38);
if (x_39 == 0)
{
return x_38;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_38, 0);
x_41 = lean_ctor_get(x_38, 1);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_38);
x_42 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set(x_42, 1, x_41);
return x_42;
}
}
}
else
{
uint8_t x_61; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_3);
x_61 = !lean_is_exclusive(x_16);
if (x_61 == 0)
{
return x_16;
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; 
x_62 = lean_ctor_get(x_16, 0);
x_63 = lean_ctor_get(x_16, 1);
lean_inc(x_63);
lean_inc(x_62);
lean_dec(x_16);
x_64 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_64, 0, x_62);
lean_ctor_set(x_64, 1, x_63);
return x_64;
}
}
}
}
static lean_object* _init_l_Aesop_checkSimp___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" introduced mvars:", 18, 18);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkSimp___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkSimp___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkSimp(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = l_Aesop_Check_rules;
x_12 = l_Aesop_Check_isEnabled___at_Aesop_checkSimp___spec__1(x_11, x_5, x_6, x_7, x_8, x_9, x_10);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_unbox(x_13);
lean_dec(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
x_16 = lean_apply_6(x_4, x_5, x_6, x_7, x_8, x_9, x_15);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_17 = lean_ctor_get(x_12, 1);
lean_inc(x_17);
if (lean_is_exclusive(x_12)) {
 lean_ctor_release(x_12, 0);
 lean_ctor_release(x_12, 1);
 x_18 = x_12;
} else {
 lean_dec_ref(x_12);
 x_18 = lean_box(0);
}
x_19 = l_Lean_Meta_saveState___rarg(x_7, x_8, x_9, x_17);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
if (lean_is_exclusive(x_19)) {
 lean_ctor_release(x_19, 0);
 lean_ctor_release(x_19, 1);
 x_22 = x_19;
} else {
 lean_dec_ref(x_19);
 x_22 = lean_box(0);
}
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_23 = lean_apply_6(x_4, x_5, x_6, x_7, x_8, x_9, x_21);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_72; 
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_72 = l_Lean_Meta_saveState___rarg(x_7, x_8, x_9, x_25);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_73 = lean_ctor_get(x_72, 0);
lean_inc(x_73);
x_74 = lean_ctor_get(x_72, 1);
lean_inc(x_74);
lean_dec(x_72);
x_75 = lean_box(0);
x_26 = x_75;
x_27 = x_73;
x_28 = x_74;
goto block_71;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_76 = lean_ctor_get(x_24, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_72, 0);
lean_inc(x_77);
x_78 = lean_ctor_get(x_72, 1);
lean_inc(x_78);
lean_dec(x_72);
x_79 = l_Aesop_NormRuleResult_newGoal_x3f(x_76);
lean_dec(x_76);
x_26 = x_79;
x_27 = x_77;
x_28 = x_78;
goto block_71;
}
block_71:
{
lean_object* x_29; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_27);
lean_inc(x_20);
x_29 = l_Lean_Meta_getIntroducedExprMVars(x_20, x_27, x_6, x_7, x_8, x_9, x_28);
if (lean_obj_tag(x_29) == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_57; lean_object* x_58; uint8_t x_59; 
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_57 = lean_array_get_size(x_30);
x_58 = lean_unsigned_to_nat(0u);
x_59 = lean_nat_dec_lt(x_58, x_57);
if (x_59 == 0)
{
lean_object* x_60; 
lean_dec(x_57);
lean_dec(x_30);
x_60 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_32 = x_60;
goto block_56;
}
else
{
uint8_t x_61; 
x_61 = lean_nat_dec_le(x_57, x_57);
if (x_61 == 0)
{
lean_object* x_62; 
lean_dec(x_57);
lean_dec(x_30);
x_62 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_32 = x_62;
goto block_56;
}
else
{
size_t x_63; size_t x_64; lean_object* x_65; lean_object* x_66; 
x_63 = 0;
x_64 = lean_usize_of_nat(x_57);
lean_dec(x_57);
x_65 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_66 = l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__7(x_26, x_30, x_63, x_64, x_65);
lean_dec(x_30);
x_32 = x_66;
goto block_56;
}
}
block_56:
{
uint8_t x_33; 
x_33 = l_Array_isEmpty___rarg(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; size_t x_39; size_t x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; uint8_t x_50; 
lean_dec(x_27);
lean_dec(x_26);
lean_dec(x_24);
lean_dec(x_20);
x_34 = l_Lean_stringToMessageData(x_1);
x_35 = l_Aesop_checkSimp___lambda__1___closed__3;
if (lean_is_scalar(x_22)) {
 x_36 = lean_alloc_ctor(7, 2, 0);
} else {
 x_36 = x_22;
 lean_ctor_set_tag(x_36, 7);
}
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_34);
x_37 = l_Aesop_checkSimp___closed__2;
if (lean_is_scalar(x_18)) {
 x_38 = lean_alloc_ctor(7, 2, 0);
} else {
 x_38 = x_18;
 lean_ctor_set_tag(x_38, 7);
}
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
x_39 = lean_array_size(x_32);
x_40 = 0;
x_41 = l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4(x_39, x_40, x_32);
x_42 = lean_array_to_list(lean_box(0), x_41);
x_43 = lean_box(0);
x_44 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_42, x_43);
x_45 = l_Lean_MessageData_ofList(x_44);
x_46 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_46, 0, x_38);
lean_ctor_set(x_46, 1, x_45);
x_47 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_48 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
x_49 = l_Lean_throwError___at_Aesop_checkSimp___spec__2(x_48, x_5, x_6, x_7, x_8, x_9, x_31);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_50 = !lean_is_exclusive(x_49);
if (x_50 == 0)
{
return x_49;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_51 = lean_ctor_get(x_49, 0);
x_52 = lean_ctor_get(x_49, 1);
lean_inc(x_52);
lean_inc(x_51);
lean_dec(x_49);
x_53 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_53, 0, x_51);
lean_ctor_set(x_53, 1, x_52);
return x_53;
}
}
else
{
lean_object* x_54; lean_object* x_55; 
lean_dec(x_22);
lean_dec(x_18);
x_54 = lean_box(0);
x_55 = l_Aesop_checkSimp___lambda__2(x_20, x_27, x_24, x_1, x_2, x_26, x_3, x_32, x_54, x_5, x_6, x_7, x_8, x_9, x_31);
lean_dec(x_5);
lean_dec(x_26);
return x_55;
}
}
}
else
{
uint8_t x_67; 
lean_dec(x_27);
lean_dec(x_26);
lean_dec(x_24);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_67 = !lean_is_exclusive(x_29);
if (x_67 == 0)
{
return x_29;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_29, 0);
x_69 = lean_ctor_get(x_29, 1);
lean_inc(x_69);
lean_inc(x_68);
lean_dec(x_29);
x_70 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_70, 0, x_68);
lean_ctor_set(x_70, 1, x_69);
return x_70;
}
}
}
}
else
{
uint8_t x_80; 
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_80 = !lean_is_exclusive(x_23);
if (x_80 == 0)
{
return x_23;
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_81 = lean_ctor_get(x_23, 0);
x_82 = lean_ctor_get(x_23, 1);
lean_inc(x_82);
lean_inc(x_81);
lean_dec(x_23);
x_83 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_83, 0, x_81);
lean_ctor_set(x_83, 1, x_82);
return x_83;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_checkSimp___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_Check_isEnabled___at_Aesop_checkSimp___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_checkSimp___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_throwError___at_Aesop_checkSimp___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_isAssigned___at_Aesop_checkSimp___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_MVarId_isAssigned___at_Aesop_checkSimp___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at_Aesop_checkSimp___spec__4(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__5(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Aesop_checkSimp___spec__6___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Aesop_checkSimp___spec__6(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_Aesop_checkSimp___spec__7(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
x_13 = lean_unbox(x_3);
lean_dec(x_3);
x_14 = l_Aesop_checkSimp___lambda__1(x_1, x_2, x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkSimp___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
uint8_t x_16; lean_object* x_17; 
x_16 = lean_unbox(x_5);
lean_dec(x_5);
x_17 = l_Aesop_checkSimp___lambda__2(x_1, x_2, x_3, x_4, x_16, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkSimp___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = lean_unbox(x_2);
lean_dec(x_2);
x_12 = l_Aesop_checkSimp(x_1, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
lean_dec(x_1);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = l_Aesop_instMonadStatsNormM;
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_12 = lean_apply_8(x_10, lean_box(0), x_11, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = !lean_is_exclusive(x_6);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_6, 9);
lean_dec(x_16);
x_17 = lean_ctor_get(x_6, 8);
lean_dec(x_17);
x_18 = lean_unsigned_to_nat(1000u);
x_19 = lean_nat_mul(x_1, x_18);
lean_ctor_set(x_6, 9, x_19);
lean_ctor_set(x_6, 8, x_13);
x_20 = lean_apply_6(x_2, x_3, x_4, x_5, x_6, x_7, x_14);
return x_20;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; lean_object* x_31; uint8_t x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_21 = lean_ctor_get(x_6, 0);
x_22 = lean_ctor_get(x_6, 1);
x_23 = lean_ctor_get(x_6, 2);
x_24 = lean_ctor_get(x_6, 3);
x_25 = lean_ctor_get(x_6, 4);
x_26 = lean_ctor_get(x_6, 5);
x_27 = lean_ctor_get(x_6, 6);
x_28 = lean_ctor_get(x_6, 7);
x_29 = lean_ctor_get(x_6, 10);
x_30 = lean_ctor_get_uint8(x_6, sizeof(void*)*12);
x_31 = lean_ctor_get(x_6, 11);
x_32 = lean_ctor_get_uint8(x_6, sizeof(void*)*12 + 1);
lean_inc(x_31);
lean_inc(x_29);
lean_inc(x_28);
lean_inc(x_27);
lean_inc(x_26);
lean_inc(x_25);
lean_inc(x_24);
lean_inc(x_23);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_6);
x_33 = lean_unsigned_to_nat(1000u);
x_34 = lean_nat_mul(x_1, x_33);
x_35 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_35, 0, x_21);
lean_ctor_set(x_35, 1, x_22);
lean_ctor_set(x_35, 2, x_23);
lean_ctor_set(x_35, 3, x_24);
lean_ctor_set(x_35, 4, x_25);
lean_ctor_set(x_35, 5, x_26);
lean_ctor_set(x_35, 6, x_27);
lean_ctor_set(x_35, 7, x_28);
lean_ctor_set(x_35, 8, x_13);
lean_ctor_set(x_35, 9, x_34);
lean_ctor_set(x_35, 10, x_29);
lean_ctor_set(x_35, 11, x_31);
lean_ctor_set_uint8(x_35, sizeof(void*)*12, x_30);
lean_ctor_set_uint8(x_35, sizeof(void*)*12 + 1, x_32);
x_36 = lean_apply_6(x_2, x_3, x_4, x_5, x_35, x_7, x_14);
return x_36;
}
}
else
{
uint8_t x_37; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_37 = !lean_is_exclusive(x_12);
if (x_37 == 0)
{
return x_12;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_12, 0);
x_39 = lean_ctor_get(x_12, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_12);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_normSimp___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_5, 5);
x_9 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_8);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_8);
lean_ctor_set(x_12, 1, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 0, x_12);
return x_9;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_9, 0);
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_9);
lean_inc(x_8);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_8);
lean_ctor_set(x_15, 1, x_13);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimp___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_3, 0);
x_11 = lean_ctor_get(x_10, 0);
x_12 = lean_ctor_get(x_11, 6);
x_13 = lean_alloc_closure((void*)(l_Aesop_normSimpCore), 8, 2);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_2);
x_14 = l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1(x_12, x_13, x_4, x_5, x_6, x_7, x_8, x_9);
return x_14;
}
}
static lean_object* _init_l_Aesop_normSimp___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: error in norm simp: ", 27, 27);
return x_1;
}
}
static lean_object* _init_l_Aesop_normSimp___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_normSimp___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimp___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_box(1);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_9 = l_Aesop_withNormTraceNode(x_8, x_1, x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_9) == 0)
{
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
else
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_9, 1);
x_13 = l_Lean_Exception_isInterrupt(x_11);
if (x_13 == 0)
{
uint8_t x_14; 
x_14 = l_Lean_Exception_isRuntime(x_11);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_free_object(x_9);
x_15 = l_Lean_Exception_toMessageData(x_11);
x_16 = l_Aesop_normSimp___lambda__2___closed__2;
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
x_18 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = l_Lean_throwError___at_Aesop_normSimp___spec__2(x_19, x_2, x_3, x_4, x_5, x_6, x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_20;
}
else
{
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
else
{
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
else
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_9, 0);
x_22 = lean_ctor_get(x_9, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_9);
x_23 = l_Lean_Exception_isInterrupt(x_21);
if (x_23 == 0)
{
uint8_t x_24; 
x_24 = l_Lean_Exception_isRuntime(x_21);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_25 = l_Lean_Exception_toMessageData(x_21);
x_26 = l_Aesop_normSimp___lambda__2___closed__2;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = l_Lean_throwError___at_Aesop_normSimp___spec__2(x_29, x_2, x_3, x_4, x_5, x_6, x_22);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_30;
}
else
{
lean_object* x_31; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_21);
lean_ctor_set(x_31, 1, x_22);
return x_31;
}
}
else
{
lean_object* x_32; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_21);
lean_ctor_set(x_32, 1, x_22);
return x_32;
}
}
}
}
}
static lean_object* _init_l_Aesop_normSimp___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("norm simp", 9, 9);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimp(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_Aesop_normSimp___lambda__1___boxed), 9, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
x_10 = l_Aesop_instMonadStatsNormM___closed__17;
x_11 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 2);
lean_closure_set(x_11, 0, x_10);
lean_closure_set(x_11, 1, x_9);
x_12 = lean_alloc_closure((void*)(l_Aesop_normSimp___lambda__2), 7, 1);
lean_closure_set(x_12, 0, x_11);
x_13 = l_Aesop_normSimp___closed__1;
x_14 = 1;
x_15 = lean_box(x_14);
x_16 = lean_alloc_closure((void*)(l_Aesop_checkSimp___boxed), 10, 4);
lean_closure_set(x_16, 0, x_13);
lean_closure_set(x_16, 1, x_15);
lean_closure_set(x_16, 2, x_1);
lean_closure_set(x_16, 3, x_12);
x_17 = lean_box(1);
x_18 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2;
x_19 = l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg(x_17, x_18, x_16, x_3, x_4, x_5, x_6, x_7, x_8);
return x_19;
}
}
LEAN_EXPORT lean_object* l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_normSimp___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_throwError___at_Aesop_normSimp___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_normSimp___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_normSimp___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_ScriptT_run___at_Aesop_normUnfoldCore___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_8 = lean_st_mk_ref(x_7, x_6);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
x_12 = lean_apply_6(x_1, x_10, x_2, x_3, x_4, x_5, x_11);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_st_ref_get(x_10, x_14);
lean_dec(x_10);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_ctor_set(x_8, 1, x_17);
lean_ctor_set(x_8, 0, x_13);
lean_ctor_set(x_15, 0, x_8);
return x_15;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_15, 0);
x_19 = lean_ctor_get(x_15, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_15);
lean_ctor_set(x_8, 1, x_18);
lean_ctor_set(x_8, 0, x_13);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_8);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
uint8_t x_21; 
lean_free_object(x_8);
lean_dec(x_10);
x_21 = !lean_is_exclusive(x_12);
if (x_21 == 0)
{
return x_12;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_12, 0);
x_23 = lean_ctor_get(x_12, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_12);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_8, 0);
x_26 = lean_ctor_get(x_8, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_8);
lean_inc(x_25);
x_27 = lean_apply_6(x_1, x_25, x_2, x_3, x_4, x_5, x_26);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_27, 1);
lean_inc(x_29);
lean_dec(x_27);
x_30 = lean_st_ref_get(x_25, x_29);
lean_dec(x_25);
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
if (lean_is_exclusive(x_30)) {
 lean_ctor_release(x_30, 0);
 lean_ctor_release(x_30, 1);
 x_33 = x_30;
} else {
 lean_dec_ref(x_30);
 x_33 = lean_box(0);
}
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_28);
lean_ctor_set(x_34, 1, x_31);
if (lean_is_scalar(x_33)) {
 x_35 = lean_alloc_ctor(0, 2, 0);
} else {
 x_35 = x_33;
}
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_32);
return x_35;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
lean_dec(x_25);
x_36 = lean_ctor_get(x_27, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_27, 1);
lean_inc(x_37);
if (lean_is_exclusive(x_27)) {
 lean_ctor_release(x_27, 0);
 lean_ctor_release(x_27, 1);
 x_38 = x_27;
} else {
 lean_dec_ref(x_27);
 x_38 = lean_box(0);
}
if (lean_is_scalar(x_38)) {
 x_39 = lean_alloc_ctor(1, 2, 0);
} else {
 x_39 = x_38;
}
lean_ctor_set(x_39, 0, x_36);
lean_ctor_set(x_39, 1, x_37);
return x_39;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfoldCore___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_box(0);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
}
static lean_object* _init_l_Aesop_normUnfoldCore___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_normUnfoldCore___lambda__1___boxed), 7, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_normUnfoldCore___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("nothing to unfold", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Aesop_normUnfoldCore___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_normUnfoldCore___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfoldCore(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_ctor_get(x_2, 1);
lean_inc(x_8);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_ctor_get(x_9, 3);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_alloc_closure((void*)(l_Lean_PersistentHashMap_find_x3f___at_Aesop_BaseRuleSet_merge___spec__1___boxed), 2, 1);
lean_closure_set(x_11, 0, x_10);
x_12 = lean_alloc_closure((void*)(l_Aesop_unfoldManyStarS), 8, 2);
lean_closure_set(x_12, 0, x_1);
lean_closure_set(x_12, 1, x_11);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_13 = l_Aesop_ScriptT_run___at_Aesop_normUnfoldCore___spec__1(x_12, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; 
lean_dec(x_14);
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_16);
lean_dec(x_13);
x_17 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_18 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_17, x_2, x_3, x_4, x_5, x_6, x_16);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = l_Aesop_normUnfoldCore___closed__1;
x_22 = lean_unbox(x_19);
lean_dec(x_19);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_box(0);
x_24 = lean_apply_7(x_21, x_23, x_2, x_3, x_4, x_5, x_6, x_20);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = l_Aesop_TraceOption_steps;
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = l_Aesop_normUnfoldCore___closed__3;
x_28 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_26, x_27, x_2, x_3, x_4, x_5, x_6, x_20);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_apply_7(x_21, x_29, x_2, x_3, x_4, x_5, x_6, x_30);
return x_31;
}
}
else
{
uint8_t x_32; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_32 = !lean_is_exclusive(x_13);
if (x_32 == 0)
{
lean_object* x_33; uint8_t x_34; 
x_33 = lean_ctor_get(x_13, 0);
lean_dec(x_33);
x_34 = !lean_is_exclusive(x_14);
if (x_34 == 0)
{
lean_object* x_35; lean_object* x_36; uint8_t x_37; 
x_35 = lean_ctor_get(x_14, 1);
x_36 = lean_ctor_get(x_14, 0);
lean_dec(x_36);
x_37 = !lean_is_exclusive(x_15);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_ctor_get(x_15, 0);
lean_ctor_set(x_15, 0, x_35);
lean_ctor_set(x_14, 1, x_15);
lean_ctor_set(x_14, 0, x_38);
x_39 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_39, 0, x_14);
lean_ctor_set(x_13, 0, x_39);
return x_13;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_15, 0);
lean_inc(x_40);
lean_dec(x_15);
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_35);
lean_ctor_set(x_14, 1, x_41);
lean_ctor_set(x_14, 0, x_40);
x_42 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_42, 0, x_14);
lean_ctor_set(x_13, 0, x_42);
return x_13;
}
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_43 = lean_ctor_get(x_14, 1);
lean_inc(x_43);
lean_dec(x_14);
x_44 = lean_ctor_get(x_15, 0);
lean_inc(x_44);
if (lean_is_exclusive(x_15)) {
 lean_ctor_release(x_15, 0);
 x_45 = x_15;
} else {
 lean_dec_ref(x_15);
 x_45 = lean_box(0);
}
if (lean_is_scalar(x_45)) {
 x_46 = lean_alloc_ctor(1, 1, 0);
} else {
 x_46 = x_45;
}
lean_ctor_set(x_46, 0, x_43);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_44);
lean_ctor_set(x_47, 1, x_46);
x_48 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_13, 0, x_48);
return x_13;
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; 
x_49 = lean_ctor_get(x_13, 1);
lean_inc(x_49);
lean_dec(x_13);
x_50 = lean_ctor_get(x_14, 1);
lean_inc(x_50);
if (lean_is_exclusive(x_14)) {
 lean_ctor_release(x_14, 0);
 lean_ctor_release(x_14, 1);
 x_51 = x_14;
} else {
 lean_dec_ref(x_14);
 x_51 = lean_box(0);
}
x_52 = lean_ctor_get(x_15, 0);
lean_inc(x_52);
if (lean_is_exclusive(x_15)) {
 lean_ctor_release(x_15, 0);
 x_53 = x_15;
} else {
 lean_dec_ref(x_15);
 x_53 = lean_box(0);
}
if (lean_is_scalar(x_53)) {
 x_54 = lean_alloc_ctor(1, 1, 0);
} else {
 x_54 = x_53;
}
lean_ctor_set(x_54, 0, x_50);
if (lean_is_scalar(x_51)) {
 x_55 = lean_alloc_ctor(0, 2, 0);
} else {
 x_55 = x_51;
}
lean_ctor_set(x_55, 0, x_52);
lean_ctor_set(x_55, 1, x_54);
x_56 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_56, 0, x_55);
x_57 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_57, 0, x_56);
lean_ctor_set(x_57, 1, x_49);
return x_57;
}
}
}
else
{
uint8_t x_58; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_58 = !lean_is_exclusive(x_13);
if (x_58 == 0)
{
return x_13;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_59 = lean_ctor_get(x_13, 0);
x_60 = lean_ctor_get(x_13, 1);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_13);
x_61 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
return x_61;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfoldCore___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_normUnfoldCore___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfold___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_9 = lean_ctor_get(x_2, 0);
x_10 = lean_ctor_get(x_9, 0);
x_11 = lean_ctor_get(x_10, 7);
x_12 = lean_alloc_closure((void*)(l_Aesop_normUnfoldCore), 7, 1);
lean_closure_set(x_12, 0, x_1);
x_13 = l_Aesop_withMaxHeartbeats___at_Aesop_normSimp___spec__1(x_11, x_12, x_3, x_4, x_5, x_6, x_7, x_8);
return x_13;
}
}
static lean_object* _init_l_Aesop_normUnfold___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: error in norm unfold: ", 29, 29);
return x_1;
}
}
static lean_object* _init_l_Aesop_normUnfold___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_normUnfold___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfold___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_box(2);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_9 = l_Aesop_withNormTraceNode(x_8, x_1, x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_9) == 0)
{
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
else
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_9, 1);
x_13 = l_Lean_Exception_isInterrupt(x_11);
if (x_13 == 0)
{
uint8_t x_14; 
x_14 = l_Lean_Exception_isRuntime(x_11);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_free_object(x_9);
x_15 = l_Lean_Exception_toMessageData(x_11);
x_16 = l_Aesop_normUnfold___lambda__2___closed__2;
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
x_18 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = l_Lean_throwError___at_Aesop_normSimp___spec__2(x_19, x_2, x_3, x_4, x_5, x_6, x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_20;
}
else
{
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
else
{
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
else
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_9, 0);
x_22 = lean_ctor_get(x_9, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_9);
x_23 = l_Lean_Exception_isInterrupt(x_21);
if (x_23 == 0)
{
uint8_t x_24; 
x_24 = l_Lean_Exception_isRuntime(x_21);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_25 = l_Lean_Exception_toMessageData(x_21);
x_26 = l_Aesop_normUnfold___lambda__2___closed__2;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = l_Aesop_withNormTraceNode_fmt___closed__3;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = l_Lean_throwError___at_Aesop_normSimp___spec__2(x_29, x_2, x_3, x_4, x_5, x_6, x_22);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_30;
}
else
{
lean_object* x_31; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_21);
lean_ctor_set(x_31, 1, x_22);
return x_31;
}
}
else
{
lean_object* x_32; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_21);
lean_ctor_set(x_32, 1, x_22);
return x_32;
}
}
}
}
}
static lean_object* _init_l_Aesop_normUnfold___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unfold simp", 11, 11);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfold(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_Aesop_normUnfold___lambda__1___boxed), 8, 1);
lean_closure_set(x_8, 0, x_1);
x_9 = l_Aesop_instMonadStatsNormM___closed__17;
x_10 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_instMonadStatsNormM___spec__2___rarg), 8, 2);
lean_closure_set(x_10, 0, x_9);
lean_closure_set(x_10, 1, x_8);
x_11 = lean_alloc_closure((void*)(l_Aesop_normUnfold___lambda__2), 7, 1);
lean_closure_set(x_11, 0, x_10);
x_12 = l_Aesop_normUnfold___closed__1;
x_13 = 0;
x_14 = lean_box(x_13);
x_15 = lean_alloc_closure((void*)(l_Aesop_checkSimp___boxed), 10, 4);
lean_closure_set(x_15, 0, x_12);
lean_closure_set(x_15, 1, x_14);
lean_closure_set(x_15, 2, x_1);
lean_closure_set(x_15, 3, x_11);
x_16 = lean_box(2);
x_17 = l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2;
x_18 = l_Aesop_profilingRule___at_Aesop_runNormRule___spec__1___rarg(x_16, x_17, x_15, x_2, x_3, x_4, x_5, x_6, x_7);
return x_18;
}
}
LEAN_EXPORT lean_object* l_Aesop_normUnfold___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_normUnfold___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormRuleResult_toNormSeqResult(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_2, 0);
lean_ctor_set(x_2, 0, x_1);
x_5 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_6 = lean_array_push(x_5, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_1);
lean_ctor_set(x_10, 1, x_9);
x_11 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_12 = lean_array_push(x_11, x_10);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_8);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
else
{
uint8_t x_14; 
x_14 = !lean_is_exclusive(x_2);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_2, 0);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_1);
lean_ctor_set(x_16, 1, x_15);
x_17 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_18 = lean_array_push(x_17, x_16);
lean_ctor_set_tag(x_2, 0);
lean_ctor_set(x_2, 0, x_18);
return x_2;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_19 = lean_ctor_get(x_2, 0);
lean_inc(x_19);
lean_dec(x_2);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_1);
lean_ctor_set(x_20, 1, x_19);
x_21 = l_Aesop_mkNormSimpScriptStep___closed__1;
x_22 = lean_array_push(x_21, x_20);
x_23 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_23, 0, x_22);
return x_23;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_optNormRuleResultToNormSeqResult(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = lean_box(2);
return x_2;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
x_6 = l_Aesop_NormRuleResult_toNormSeqResult(x_4, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 4);
x_6 = lean_nat_add(x_5, x_3);
lean_dec(x_5);
lean_ctor_set(x_1, 4, x_6);
return x_1;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_7 = lean_ctor_get(x_1, 0);
x_8 = lean_ctor_get(x_1, 1);
x_9 = lean_ctor_get(x_1, 2);
x_10 = lean_ctor_get(x_1, 3);
x_11 = lean_ctor_get(x_1, 4);
x_12 = lean_ctor_get(x_1, 5);
x_13 = lean_ctor_get(x_1, 6);
x_14 = lean_ctor_get(x_1, 7);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_1);
x_15 = lean_nat_add(x_11, x_3);
lean_dec(x_11);
x_16 = lean_alloc_ctor(0, 8, 0);
lean_ctor_set(x_16, 0, x_7);
lean_ctor_set(x_16, 1, x_8);
lean_ctor_set(x_16, 2, x_9);
lean_ctor_set(x_16, 3, x_10);
lean_ctor_set(x_16, 4, x_15);
lean_ctor_set(x_16, 5, x_12);
lean_ctor_set(x_16, 6, x_13);
lean_ctor_set(x_16, 7, x_14);
return x_16;
}
}
}
static lean_object* _init_l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1___boxed), 3, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___closed__1;
x_9 = l_Aesop_profiling___at_Aesop_runNormRule___spec__2___rarg(x_8, x_1, x_2, x_3, x_4, x_5, x_6, x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg), 7, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_LocalRuleSet_applicableNormalizationRules___lambda__1___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___closed__1;
x_10 = l_Aesop_LocalRuleSet_applicableNormalizationRulesWith(x_1, x_2, x_9, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_alloc_closure((void*)(l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___boxed), 8, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
x_10 = lean_alloc_closure((void*)(l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1___boxed), 3, 0);
x_11 = l_Aesop_profiling___at_Aesop_runNormRule___spec__2___rarg(x_10, x_9, x_3, x_4, x_5, x_6, x_7, x_8);
return x_11;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_lt(x_3, x_2);
if (x_5 == 0)
{
return x_4;
}
else
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_array_uget(x_1, x_3);
x_7 = !lean_is_exclusive(x_4);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_8 = lean_ctor_get(x_4, 0);
x_9 = lean_ctor_get(x_4, 1);
x_10 = lean_ctor_get(x_6, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 3);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1;
x_13 = lean_int_dec_lt(x_11, x_12);
lean_dec(x_11);
if (x_13 == 0)
{
lean_object* x_14; size_t x_15; size_t x_16; 
x_14 = lean_array_push(x_9, x_6);
lean_ctor_set(x_4, 1, x_14);
x_15 = 1;
x_16 = lean_usize_add(x_3, x_15);
x_3 = x_16;
goto _start;
}
else
{
lean_object* x_18; size_t x_19; size_t x_20; 
x_18 = lean_array_push(x_8, x_6);
lean_ctor_set(x_4, 0, x_18);
x_19 = 1;
x_20 = lean_usize_add(x_3, x_19);
x_3 = x_20;
goto _start;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_22 = lean_ctor_get(x_4, 0);
x_23 = lean_ctor_get(x_4, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_4);
x_24 = lean_ctor_get(x_6, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_24, 3);
lean_inc(x_25);
lean_dec(x_24);
x_26 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1;
x_27 = lean_int_dec_lt(x_25, x_26);
lean_dec(x_25);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; size_t x_30; size_t x_31; 
x_28 = lean_array_push(x_23, x_6);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_22);
lean_ctor_set(x_29, 1, x_28);
x_30 = 1;
x_31 = lean_usize_add(x_3, x_30);
x_3 = x_31;
x_4 = x_29;
goto _start;
}
else
{
lean_object* x_33; lean_object* x_34; size_t x_35; size_t x_36; 
x_33 = lean_array_push(x_22, x_6);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_23);
x_35 = 1;
x_36 = lean_usize_add(x_3, x_35);
x_3 = x_36;
x_4 = x_34;
goto _start;
}
}
}
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(2);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18) {
_start:
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_array_fget(x_1, x_11);
lean_inc(x_8);
lean_inc(x_9);
lean_inc(x_6);
x_20 = lean_apply_9(x_19, x_6, x_9, x_8, x_13, x_14, x_15, x_16, x_17, x_18);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
switch (lean_obj_tag(x_21)) {
case 0:
{
uint8_t x_22; 
lean_dec(x_3);
lean_dec(x_2);
x_22 = !lean_is_exclusive(x_20);
if (x_22 == 0)
{
lean_object* x_23; uint8_t x_24; 
x_23 = lean_ctor_get(x_20, 0);
lean_dec(x_23);
x_24 = !lean_is_exclusive(x_21);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_25 = lean_ctor_get(x_21, 0);
x_26 = l_Array_append___rarg(x_10, x_25);
lean_dec(x_25);
lean_inc(x_26);
lean_ctor_set(x_21, 0, x_26);
x_27 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_27, 0, x_21);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_11);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_9);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_8);
lean_ctor_set(x_30, 1, x_29);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_7);
lean_ctor_set(x_31, 1, x_30);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_6);
lean_ctor_set(x_32, 1, x_31);
x_33 = lean_box(x_5);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_32);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_27);
lean_ctor_set(x_35, 1, x_34);
x_36 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_20, 0, x_36);
return x_20;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_37 = lean_ctor_get(x_21, 0);
lean_inc(x_37);
lean_dec(x_21);
x_38 = l_Array_append___rarg(x_10, x_37);
lean_dec(x_37);
lean_inc(x_38);
x_39 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_39, 0, x_38);
x_40 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_40, 0, x_39);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_38);
lean_ctor_set(x_41, 1, x_11);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_9);
lean_ctor_set(x_42, 1, x_41);
x_43 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_43, 0, x_8);
lean_ctor_set(x_43, 1, x_42);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_7);
lean_ctor_set(x_44, 1, x_43);
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_6);
lean_ctor_set(x_45, 1, x_44);
x_46 = lean_box(x_5);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_45);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_40);
lean_ctor_set(x_48, 1, x_47);
x_49 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_20, 0, x_49);
return x_20;
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_50 = lean_ctor_get(x_20, 1);
lean_inc(x_50);
lean_dec(x_20);
x_51 = lean_ctor_get(x_21, 0);
lean_inc(x_51);
if (lean_is_exclusive(x_21)) {
 lean_ctor_release(x_21, 0);
 x_52 = x_21;
} else {
 lean_dec_ref(x_21);
 x_52 = lean_box(0);
}
x_53 = l_Array_append___rarg(x_10, x_51);
lean_dec(x_51);
lean_inc(x_53);
if (lean_is_scalar(x_52)) {
 x_54 = lean_alloc_ctor(0, 1, 0);
} else {
 x_54 = x_52;
}
lean_ctor_set(x_54, 0, x_53);
x_55 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_55, 0, x_54);
x_56 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_56, 0, x_53);
lean_ctor_set(x_56, 1, x_11);
x_57 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_57, 0, x_9);
lean_ctor_set(x_57, 1, x_56);
x_58 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_58, 0, x_8);
lean_ctor_set(x_58, 1, x_57);
x_59 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_59, 0, x_7);
lean_ctor_set(x_59, 1, x_58);
x_60 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_60, 0, x_6);
lean_ctor_set(x_60, 1, x_59);
x_61 = lean_box(x_5);
x_62 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_60);
x_63 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_63, 0, x_55);
lean_ctor_set(x_63, 1, x_62);
x_64 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_64, 0, x_63);
x_65 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_65, 0, x_64);
lean_ctor_set(x_65, 1, x_50);
return x_65;
}
}
case 1:
{
uint8_t x_66; 
lean_dec(x_11);
lean_dec(x_6);
x_66 = !lean_is_exclusive(x_20);
if (x_66 == 0)
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; uint8_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_67 = lean_ctor_get(x_20, 0);
lean_dec(x_67);
x_68 = lean_ctor_get(x_21, 0);
lean_inc(x_68);
x_69 = lean_ctor_get(x_21, 1);
lean_inc(x_69);
lean_dec(x_21);
x_70 = l_Array_append___rarg(x_10, x_69);
lean_dec(x_69);
x_71 = lean_unsigned_to_nat(1u);
x_72 = lean_nat_add(x_7, x_71);
lean_dec(x_7);
x_73 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_73, 0, x_70);
lean_ctor_set(x_73, 1, x_2);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_9);
lean_ctor_set(x_74, 1, x_73);
x_75 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_75, 0, x_8);
lean_ctor_set(x_75, 1, x_74);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_72);
lean_ctor_set(x_76, 1, x_75);
x_77 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_77, 0, x_68);
lean_ctor_set(x_77, 1, x_76);
x_78 = 1;
x_79 = lean_box(x_78);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_79);
lean_ctor_set(x_80, 1, x_77);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_3);
lean_ctor_set(x_81, 1, x_80);
x_82 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_82, 0, x_81);
lean_ctor_set(x_20, 0, x_82);
return x_20;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint8_t x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_83 = lean_ctor_get(x_20, 1);
lean_inc(x_83);
lean_dec(x_20);
x_84 = lean_ctor_get(x_21, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_21, 1);
lean_inc(x_85);
lean_dec(x_21);
x_86 = l_Array_append___rarg(x_10, x_85);
lean_dec(x_85);
x_87 = lean_unsigned_to_nat(1u);
x_88 = lean_nat_add(x_7, x_87);
lean_dec(x_7);
x_89 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_89, 0, x_86);
lean_ctor_set(x_89, 1, x_2);
x_90 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_90, 0, x_9);
lean_ctor_set(x_90, 1, x_89);
x_91 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_91, 0, x_8);
lean_ctor_set(x_91, 1, x_90);
x_92 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_92, 0, x_88);
lean_ctor_set(x_92, 1, x_91);
x_93 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_93, 0, x_84);
lean_ctor_set(x_93, 1, x_92);
x_94 = 1;
x_95 = lean_box(x_94);
x_96 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_96, 0, x_95);
lean_ctor_set(x_96, 1, x_93);
x_97 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_97, 0, x_3);
lean_ctor_set(x_97, 1, x_96);
x_98 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_98, 0, x_97);
x_99 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_99, 0, x_98);
lean_ctor_set(x_99, 1, x_83);
return x_99;
}
}
default: 
{
uint8_t x_100; 
lean_dec(x_2);
x_100 = !lean_is_exclusive(x_20);
if (x_100 == 0)
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; uint8_t x_104; 
x_101 = lean_ctor_get(x_20, 0);
lean_dec(x_101);
x_102 = lean_unsigned_to_nat(1u);
x_103 = lean_nat_add(x_11, x_102);
x_104 = lean_nat_dec_lt(x_103, x_4);
if (x_104 == 0)
{
lean_dec(x_103);
lean_dec(x_3);
if (x_5 == 0)
{
lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; 
x_105 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_105, 0, x_10);
lean_ctor_set(x_105, 1, x_11);
x_106 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_106, 0, x_9);
lean_ctor_set(x_106, 1, x_105);
x_107 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_107, 0, x_8);
lean_ctor_set(x_107, 1, x_106);
x_108 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_108, 0, x_7);
lean_ctor_set(x_108, 1, x_107);
x_109 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_109, 0, x_6);
lean_ctor_set(x_109, 1, x_108);
x_110 = lean_box(x_5);
x_111 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_109);
x_112 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1;
x_113 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_113, 0, x_112);
lean_ctor_set(x_113, 1, x_111);
x_114 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_114, 0, x_113);
lean_ctor_set(x_20, 0, x_114);
return x_20;
}
else
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; 
lean_inc(x_10);
lean_inc(x_6);
x_115 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_115, 0, x_6);
lean_ctor_set(x_115, 1, x_10);
x_116 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_116, 0, x_115);
x_117 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_117, 0, x_10);
lean_ctor_set(x_117, 1, x_11);
x_118 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_118, 0, x_9);
lean_ctor_set(x_118, 1, x_117);
x_119 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_119, 0, x_8);
lean_ctor_set(x_119, 1, x_118);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_7);
lean_ctor_set(x_120, 1, x_119);
x_121 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_121, 0, x_6);
lean_ctor_set(x_121, 1, x_120);
x_122 = lean_box(x_5);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_122);
lean_ctor_set(x_123, 1, x_121);
x_124 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_124, 0, x_116);
lean_ctor_set(x_124, 1, x_123);
x_125 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_125, 0, x_124);
lean_ctor_set(x_20, 0, x_125);
return x_20;
}
}
else
{
lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; 
lean_dec(x_11);
x_126 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_126, 0, x_10);
lean_ctor_set(x_126, 1, x_103);
x_127 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_127, 0, x_9);
lean_ctor_set(x_127, 1, x_126);
x_128 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_128, 0, x_8);
lean_ctor_set(x_128, 1, x_127);
x_129 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_129, 0, x_7);
lean_ctor_set(x_129, 1, x_128);
x_130 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_130, 0, x_6);
lean_ctor_set(x_130, 1, x_129);
x_131 = lean_box(x_5);
x_132 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_132, 0, x_131);
lean_ctor_set(x_132, 1, x_130);
x_133 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_133, 0, x_3);
lean_ctor_set(x_133, 1, x_132);
x_134 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_134, 0, x_133);
lean_ctor_set(x_20, 0, x_134);
return x_20;
}
}
else
{
lean_object* x_135; lean_object* x_136; lean_object* x_137; uint8_t x_138; 
x_135 = lean_ctor_get(x_20, 1);
lean_inc(x_135);
lean_dec(x_20);
x_136 = lean_unsigned_to_nat(1u);
x_137 = lean_nat_add(x_11, x_136);
x_138 = lean_nat_dec_lt(x_137, x_4);
if (x_138 == 0)
{
lean_dec(x_137);
lean_dec(x_3);
if (x_5 == 0)
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; 
x_139 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_139, 0, x_10);
lean_ctor_set(x_139, 1, x_11);
x_140 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_140, 0, x_9);
lean_ctor_set(x_140, 1, x_139);
x_141 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_141, 0, x_8);
lean_ctor_set(x_141, 1, x_140);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_7);
lean_ctor_set(x_142, 1, x_141);
x_143 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_143, 0, x_6);
lean_ctor_set(x_143, 1, x_142);
x_144 = lean_box(x_5);
x_145 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_145, 0, x_144);
lean_ctor_set(x_145, 1, x_143);
x_146 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1;
x_147 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_147, 0, x_146);
lean_ctor_set(x_147, 1, x_145);
x_148 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_148, 0, x_147);
x_149 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_149, 0, x_148);
lean_ctor_set(x_149, 1, x_135);
return x_149;
}
else
{
lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; 
lean_inc(x_10);
lean_inc(x_6);
x_150 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_150, 0, x_6);
lean_ctor_set(x_150, 1, x_10);
x_151 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_151, 0, x_150);
x_152 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_152, 0, x_10);
lean_ctor_set(x_152, 1, x_11);
x_153 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_153, 0, x_9);
lean_ctor_set(x_153, 1, x_152);
x_154 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_154, 0, x_8);
lean_ctor_set(x_154, 1, x_153);
x_155 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_155, 0, x_7);
lean_ctor_set(x_155, 1, x_154);
x_156 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_156, 0, x_6);
lean_ctor_set(x_156, 1, x_155);
x_157 = lean_box(x_5);
x_158 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_158, 0, x_157);
lean_ctor_set(x_158, 1, x_156);
x_159 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_159, 0, x_151);
lean_ctor_set(x_159, 1, x_158);
x_160 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_160, 0, x_159);
x_161 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_161, 0, x_160);
lean_ctor_set(x_161, 1, x_135);
return x_161;
}
}
else
{
lean_object* x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; 
lean_dec(x_11);
x_162 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_162, 0, x_10);
lean_ctor_set(x_162, 1, x_137);
x_163 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_163, 0, x_9);
lean_ctor_set(x_163, 1, x_162);
x_164 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_164, 0, x_8);
lean_ctor_set(x_164, 1, x_163);
x_165 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_165, 0, x_7);
lean_ctor_set(x_165, 1, x_164);
x_166 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_166, 0, x_6);
lean_ctor_set(x_166, 1, x_165);
x_167 = lean_box(x_5);
x_168 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_168, 0, x_167);
lean_ctor_set(x_168, 1, x_166);
x_169 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_169, 0, x_3);
lean_ctor_set(x_169, 1, x_168);
x_170 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_170, 0, x_169);
x_171 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_171, 0, x_170);
lean_ctor_set(x_171, 1, x_135);
return x_171;
}
}
}
}
}
else
{
uint8_t x_172; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
x_172 = !lean_is_exclusive(x_20);
if (x_172 == 0)
{
return x_20;
}
else
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; 
x_173 = lean_ctor_get(x_20, 0);
x_174 = lean_ctor_get(x_20, 1);
lean_inc(x_174);
lean_inc(x_173);
lean_dec(x_20);
x_175 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_175, 0, x_173);
lean_ctor_set(x_175, 1, x_174);
return x_175;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_15 = lean_ctor_get(x_8, 1);
lean_inc(x_15);
lean_dec(x_8);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
x_21 = !lean_is_exclusive(x_15);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_15, 0);
x_23 = lean_ctor_get(x_15, 1);
lean_dec(x_23);
x_24 = !lean_is_exclusive(x_16);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_25 = lean_ctor_get(x_16, 0);
x_26 = lean_ctor_get(x_16, 1);
lean_dec(x_26);
x_27 = !lean_is_exclusive(x_17);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_28 = lean_ctor_get(x_17, 0);
x_29 = lean_ctor_get(x_17, 1);
lean_dec(x_29);
x_30 = !lean_is_exclusive(x_18);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_31 = lean_ctor_get(x_18, 0);
x_32 = lean_ctor_get(x_18, 1);
lean_dec(x_32);
x_33 = !lean_is_exclusive(x_19);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; uint8_t x_36; 
x_34 = lean_ctor_get(x_19, 0);
x_35 = lean_ctor_get(x_19, 1);
lean_dec(x_35);
x_36 = !lean_is_exclusive(x_20);
if (x_36 == 0)
{
lean_object* x_37; lean_object* x_38; uint8_t x_39; 
x_37 = lean_ctor_get(x_20, 0);
x_38 = lean_ctor_get(x_20, 1);
x_39 = lean_nat_dec_lt(x_28, x_3);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_7);
lean_ctor_set(x_40, 1, x_15);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_14);
return x_41;
}
else
{
lean_object* x_42; uint8_t x_43; 
lean_free_object(x_19);
lean_free_object(x_18);
lean_free_object(x_17);
lean_free_object(x_16);
lean_free_object(x_15);
x_42 = lean_unsigned_to_nat(0u);
x_43 = lean_nat_dec_eq(x_38, x_42);
if (x_43 == 0)
{
lean_object* x_44; uint8_t x_45; lean_object* x_46; 
lean_free_object(x_20);
x_44 = lean_box(0);
x_45 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_46 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_45, x_25, x_28, x_31, x_34, x_37, x_38, x_44, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
if (lean_obj_tag(x_47) == 0)
{
uint8_t x_48; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_48 = !lean_is_exclusive(x_46);
if (x_48 == 0)
{
lean_object* x_49; lean_object* x_50; 
x_49 = lean_ctor_get(x_46, 0);
lean_dec(x_49);
x_50 = lean_ctor_get(x_47, 0);
lean_inc(x_50);
lean_dec(x_47);
lean_ctor_set(x_46, 0, x_50);
return x_46;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_51 = lean_ctor_get(x_46, 1);
lean_inc(x_51);
lean_dec(x_46);
x_52 = lean_ctor_get(x_47, 0);
lean_inc(x_52);
lean_dec(x_47);
x_53 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_53, 0, x_52);
lean_ctor_set(x_53, 1, x_51);
return x_53;
}
}
else
{
lean_object* x_54; lean_object* x_55; 
x_54 = lean_ctor_get(x_46, 1);
lean_inc(x_54);
lean_dec(x_46);
x_55 = lean_ctor_get(x_47, 0);
lean_inc(x_55);
lean_dec(x_47);
x_8 = x_55;
x_14 = x_54;
goto _start;
}
}
else
{
uint8_t x_57; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_57 = !lean_is_exclusive(x_46);
if (x_57 == 0)
{
return x_46;
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_58 = lean_ctor_get(x_46, 0);
x_59 = lean_ctor_get(x_46, 1);
lean_inc(x_59);
lean_inc(x_58);
lean_dec(x_46);
x_60 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
return x_60;
}
}
}
else
{
lean_object* x_61; lean_object* x_62; 
lean_dec(x_34);
lean_dec(x_31);
x_61 = lean_ctor_get(x_2, 1);
lean_inc(x_61);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_25);
x_62 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_61, x_25, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; size_t x_65; size_t x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; uint8_t x_71; lean_object* x_72; 
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
lean_dec(x_62);
lean_inc_n(x_6, 2);
lean_ctor_set(x_20, 1, x_6);
lean_ctor_set(x_20, 0, x_6);
x_65 = lean_array_size(x_63);
x_66 = 0;
x_67 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_63, x_65, x_66, x_20);
lean_dec(x_63);
x_68 = lean_ctor_get(x_67, 0);
lean_inc(x_68);
x_69 = lean_ctor_get(x_67, 1);
lean_inc(x_69);
lean_dec(x_67);
x_70 = lean_box(0);
x_71 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_72 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_71, x_25, x_28, x_69, x_68, x_37, x_38, x_70, x_9, x_10, x_11, x_12, x_13, x_64);
if (lean_obj_tag(x_72) == 0)
{
lean_object* x_73; 
x_73 = lean_ctor_get(x_72, 0);
lean_inc(x_73);
if (lean_obj_tag(x_73) == 0)
{
uint8_t x_74; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_74 = !lean_is_exclusive(x_72);
if (x_74 == 0)
{
lean_object* x_75; lean_object* x_76; 
x_75 = lean_ctor_get(x_72, 0);
lean_dec(x_75);
x_76 = lean_ctor_get(x_73, 0);
lean_inc(x_76);
lean_dec(x_73);
lean_ctor_set(x_72, 0, x_76);
return x_72;
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_77 = lean_ctor_get(x_72, 1);
lean_inc(x_77);
lean_dec(x_72);
x_78 = lean_ctor_get(x_73, 0);
lean_inc(x_78);
lean_dec(x_73);
x_79 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_79, 0, x_78);
lean_ctor_set(x_79, 1, x_77);
return x_79;
}
}
else
{
lean_object* x_80; lean_object* x_81; 
x_80 = lean_ctor_get(x_72, 1);
lean_inc(x_80);
lean_dec(x_72);
x_81 = lean_ctor_get(x_73, 0);
lean_inc(x_81);
lean_dec(x_73);
x_8 = x_81;
x_14 = x_80;
goto _start;
}
}
else
{
uint8_t x_83; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_83 = !lean_is_exclusive(x_72);
if (x_83 == 0)
{
return x_72;
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; 
x_84 = lean_ctor_get(x_72, 0);
x_85 = lean_ctor_get(x_72, 1);
lean_inc(x_85);
lean_inc(x_84);
lean_dec(x_72);
x_86 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_86, 0, x_84);
lean_ctor_set(x_86, 1, x_85);
return x_86;
}
}
}
else
{
uint8_t x_87; 
lean_free_object(x_20);
lean_dec(x_38);
lean_dec(x_37);
lean_dec(x_28);
lean_dec(x_25);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_87 = !lean_is_exclusive(x_62);
if (x_87 == 0)
{
return x_62;
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_88 = lean_ctor_get(x_62, 0);
x_89 = lean_ctor_get(x_62, 1);
lean_inc(x_89);
lean_inc(x_88);
lean_dec(x_62);
x_90 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_90, 0, x_88);
lean_ctor_set(x_90, 1, x_89);
return x_90;
}
}
}
}
}
else
{
lean_object* x_91; lean_object* x_92; uint8_t x_93; 
x_91 = lean_ctor_get(x_20, 0);
x_92 = lean_ctor_get(x_20, 1);
lean_inc(x_92);
lean_inc(x_91);
lean_dec(x_20);
x_93 = lean_nat_dec_lt(x_28, x_3);
if (x_93 == 0)
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_94 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_94, 0, x_91);
lean_ctor_set(x_94, 1, x_92);
lean_ctor_set(x_19, 1, x_94);
x_95 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_95, 0, x_7);
lean_ctor_set(x_95, 1, x_15);
x_96 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_96, 0, x_95);
lean_ctor_set(x_96, 1, x_14);
return x_96;
}
else
{
lean_object* x_97; uint8_t x_98; 
lean_free_object(x_19);
lean_free_object(x_18);
lean_free_object(x_17);
lean_free_object(x_16);
lean_free_object(x_15);
x_97 = lean_unsigned_to_nat(0u);
x_98 = lean_nat_dec_eq(x_92, x_97);
if (x_98 == 0)
{
lean_object* x_99; uint8_t x_100; lean_object* x_101; 
x_99 = lean_box(0);
x_100 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_101 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_100, x_25, x_28, x_31, x_34, x_91, x_92, x_99, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_101) == 0)
{
lean_object* x_102; 
x_102 = lean_ctor_get(x_101, 0);
lean_inc(x_102);
if (lean_obj_tag(x_102) == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_103 = lean_ctor_get(x_101, 1);
lean_inc(x_103);
if (lean_is_exclusive(x_101)) {
 lean_ctor_release(x_101, 0);
 lean_ctor_release(x_101, 1);
 x_104 = x_101;
} else {
 lean_dec_ref(x_101);
 x_104 = lean_box(0);
}
x_105 = lean_ctor_get(x_102, 0);
lean_inc(x_105);
lean_dec(x_102);
if (lean_is_scalar(x_104)) {
 x_106 = lean_alloc_ctor(0, 2, 0);
} else {
 x_106 = x_104;
}
lean_ctor_set(x_106, 0, x_105);
lean_ctor_set(x_106, 1, x_103);
return x_106;
}
else
{
lean_object* x_107; lean_object* x_108; 
x_107 = lean_ctor_get(x_101, 1);
lean_inc(x_107);
lean_dec(x_101);
x_108 = lean_ctor_get(x_102, 0);
lean_inc(x_108);
lean_dec(x_102);
x_8 = x_108;
x_14 = x_107;
goto _start;
}
}
else
{
lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_110 = lean_ctor_get(x_101, 0);
lean_inc(x_110);
x_111 = lean_ctor_get(x_101, 1);
lean_inc(x_111);
if (lean_is_exclusive(x_101)) {
 lean_ctor_release(x_101, 0);
 lean_ctor_release(x_101, 1);
 x_112 = x_101;
} else {
 lean_dec_ref(x_101);
 x_112 = lean_box(0);
}
if (lean_is_scalar(x_112)) {
 x_113 = lean_alloc_ctor(1, 2, 0);
} else {
 x_113 = x_112;
}
lean_ctor_set(x_113, 0, x_110);
lean_ctor_set(x_113, 1, x_111);
return x_113;
}
}
else
{
lean_object* x_114; lean_object* x_115; 
lean_dec(x_34);
lean_dec(x_31);
x_114 = lean_ctor_get(x_2, 1);
lean_inc(x_114);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_25);
x_115 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_114, x_25, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_115) == 0)
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; size_t x_119; size_t x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; uint8_t x_125; lean_object* x_126; 
x_116 = lean_ctor_get(x_115, 0);
lean_inc(x_116);
x_117 = lean_ctor_get(x_115, 1);
lean_inc(x_117);
lean_dec(x_115);
lean_inc_n(x_6, 2);
x_118 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_118, 0, x_6);
lean_ctor_set(x_118, 1, x_6);
x_119 = lean_array_size(x_116);
x_120 = 0;
x_121 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_116, x_119, x_120, x_118);
lean_dec(x_116);
x_122 = lean_ctor_get(x_121, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_121, 1);
lean_inc(x_123);
lean_dec(x_121);
x_124 = lean_box(0);
x_125 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_126 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_125, x_25, x_28, x_123, x_122, x_91, x_92, x_124, x_9, x_10, x_11, x_12, x_13, x_117);
if (lean_obj_tag(x_126) == 0)
{
lean_object* x_127; 
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
if (lean_obj_tag(x_127) == 0)
{
lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_128 = lean_ctor_get(x_126, 1);
lean_inc(x_128);
if (lean_is_exclusive(x_126)) {
 lean_ctor_release(x_126, 0);
 lean_ctor_release(x_126, 1);
 x_129 = x_126;
} else {
 lean_dec_ref(x_126);
 x_129 = lean_box(0);
}
x_130 = lean_ctor_get(x_127, 0);
lean_inc(x_130);
lean_dec(x_127);
if (lean_is_scalar(x_129)) {
 x_131 = lean_alloc_ctor(0, 2, 0);
} else {
 x_131 = x_129;
}
lean_ctor_set(x_131, 0, x_130);
lean_ctor_set(x_131, 1, x_128);
return x_131;
}
else
{
lean_object* x_132; lean_object* x_133; 
x_132 = lean_ctor_get(x_126, 1);
lean_inc(x_132);
lean_dec(x_126);
x_133 = lean_ctor_get(x_127, 0);
lean_inc(x_133);
lean_dec(x_127);
x_8 = x_133;
x_14 = x_132;
goto _start;
}
}
else
{
lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_135 = lean_ctor_get(x_126, 0);
lean_inc(x_135);
x_136 = lean_ctor_get(x_126, 1);
lean_inc(x_136);
if (lean_is_exclusive(x_126)) {
 lean_ctor_release(x_126, 0);
 lean_ctor_release(x_126, 1);
 x_137 = x_126;
} else {
 lean_dec_ref(x_126);
 x_137 = lean_box(0);
}
if (lean_is_scalar(x_137)) {
 x_138 = lean_alloc_ctor(1, 2, 0);
} else {
 x_138 = x_137;
}
lean_ctor_set(x_138, 0, x_135);
lean_ctor_set(x_138, 1, x_136);
return x_138;
}
}
else
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; 
lean_dec(x_92);
lean_dec(x_91);
lean_dec(x_28);
lean_dec(x_25);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_139 = lean_ctor_get(x_115, 0);
lean_inc(x_139);
x_140 = lean_ctor_get(x_115, 1);
lean_inc(x_140);
if (lean_is_exclusive(x_115)) {
 lean_ctor_release(x_115, 0);
 lean_ctor_release(x_115, 1);
 x_141 = x_115;
} else {
 lean_dec_ref(x_115);
 x_141 = lean_box(0);
}
if (lean_is_scalar(x_141)) {
 x_142 = lean_alloc_ctor(1, 2, 0);
} else {
 x_142 = x_141;
}
lean_ctor_set(x_142, 0, x_139);
lean_ctor_set(x_142, 1, x_140);
return x_142;
}
}
}
}
}
else
{
lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; uint8_t x_147; 
x_143 = lean_ctor_get(x_19, 0);
lean_inc(x_143);
lean_dec(x_19);
x_144 = lean_ctor_get(x_20, 0);
lean_inc(x_144);
x_145 = lean_ctor_get(x_20, 1);
lean_inc(x_145);
if (lean_is_exclusive(x_20)) {
 lean_ctor_release(x_20, 0);
 lean_ctor_release(x_20, 1);
 x_146 = x_20;
} else {
 lean_dec_ref(x_20);
 x_146 = lean_box(0);
}
x_147 = lean_nat_dec_lt(x_28, x_3);
if (x_147 == 0)
{
lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
if (lean_is_scalar(x_146)) {
 x_148 = lean_alloc_ctor(0, 2, 0);
} else {
 x_148 = x_146;
}
lean_ctor_set(x_148, 0, x_144);
lean_ctor_set(x_148, 1, x_145);
x_149 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_149, 0, x_143);
lean_ctor_set(x_149, 1, x_148);
lean_ctor_set(x_18, 1, x_149);
x_150 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_150, 0, x_7);
lean_ctor_set(x_150, 1, x_15);
x_151 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_151, 0, x_150);
lean_ctor_set(x_151, 1, x_14);
return x_151;
}
else
{
lean_object* x_152; uint8_t x_153; 
lean_free_object(x_18);
lean_free_object(x_17);
lean_free_object(x_16);
lean_free_object(x_15);
x_152 = lean_unsigned_to_nat(0u);
x_153 = lean_nat_dec_eq(x_145, x_152);
if (x_153 == 0)
{
lean_object* x_154; uint8_t x_155; lean_object* x_156; 
lean_dec(x_146);
x_154 = lean_box(0);
x_155 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_156 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_155, x_25, x_28, x_31, x_143, x_144, x_145, x_154, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_156) == 0)
{
lean_object* x_157; 
x_157 = lean_ctor_get(x_156, 0);
lean_inc(x_157);
if (lean_obj_tag(x_157) == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_158 = lean_ctor_get(x_156, 1);
lean_inc(x_158);
if (lean_is_exclusive(x_156)) {
 lean_ctor_release(x_156, 0);
 lean_ctor_release(x_156, 1);
 x_159 = x_156;
} else {
 lean_dec_ref(x_156);
 x_159 = lean_box(0);
}
x_160 = lean_ctor_get(x_157, 0);
lean_inc(x_160);
lean_dec(x_157);
if (lean_is_scalar(x_159)) {
 x_161 = lean_alloc_ctor(0, 2, 0);
} else {
 x_161 = x_159;
}
lean_ctor_set(x_161, 0, x_160);
lean_ctor_set(x_161, 1, x_158);
return x_161;
}
else
{
lean_object* x_162; lean_object* x_163; 
x_162 = lean_ctor_get(x_156, 1);
lean_inc(x_162);
lean_dec(x_156);
x_163 = lean_ctor_get(x_157, 0);
lean_inc(x_163);
lean_dec(x_157);
x_8 = x_163;
x_14 = x_162;
goto _start;
}
}
else
{
lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_165 = lean_ctor_get(x_156, 0);
lean_inc(x_165);
x_166 = lean_ctor_get(x_156, 1);
lean_inc(x_166);
if (lean_is_exclusive(x_156)) {
 lean_ctor_release(x_156, 0);
 lean_ctor_release(x_156, 1);
 x_167 = x_156;
} else {
 lean_dec_ref(x_156);
 x_167 = lean_box(0);
}
if (lean_is_scalar(x_167)) {
 x_168 = lean_alloc_ctor(1, 2, 0);
} else {
 x_168 = x_167;
}
lean_ctor_set(x_168, 0, x_165);
lean_ctor_set(x_168, 1, x_166);
return x_168;
}
}
else
{
lean_object* x_169; lean_object* x_170; 
lean_dec(x_143);
lean_dec(x_31);
x_169 = lean_ctor_get(x_2, 1);
lean_inc(x_169);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_25);
x_170 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_169, x_25, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_170) == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; size_t x_174; size_t x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; uint8_t x_180; lean_object* x_181; 
x_171 = lean_ctor_get(x_170, 0);
lean_inc(x_171);
x_172 = lean_ctor_get(x_170, 1);
lean_inc(x_172);
lean_dec(x_170);
lean_inc_n(x_6, 2);
if (lean_is_scalar(x_146)) {
 x_173 = lean_alloc_ctor(0, 2, 0);
} else {
 x_173 = x_146;
}
lean_ctor_set(x_173, 0, x_6);
lean_ctor_set(x_173, 1, x_6);
x_174 = lean_array_size(x_171);
x_175 = 0;
x_176 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_171, x_174, x_175, x_173);
lean_dec(x_171);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_box(0);
x_180 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_181 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_180, x_25, x_28, x_178, x_177, x_144, x_145, x_179, x_9, x_10, x_11, x_12, x_13, x_172);
if (lean_obj_tag(x_181) == 0)
{
lean_object* x_182; 
x_182 = lean_ctor_get(x_181, 0);
lean_inc(x_182);
if (lean_obj_tag(x_182) == 0)
{
lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_183 = lean_ctor_get(x_181, 1);
lean_inc(x_183);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_184 = x_181;
} else {
 lean_dec_ref(x_181);
 x_184 = lean_box(0);
}
x_185 = lean_ctor_get(x_182, 0);
lean_inc(x_185);
lean_dec(x_182);
if (lean_is_scalar(x_184)) {
 x_186 = lean_alloc_ctor(0, 2, 0);
} else {
 x_186 = x_184;
}
lean_ctor_set(x_186, 0, x_185);
lean_ctor_set(x_186, 1, x_183);
return x_186;
}
else
{
lean_object* x_187; lean_object* x_188; 
x_187 = lean_ctor_get(x_181, 1);
lean_inc(x_187);
lean_dec(x_181);
x_188 = lean_ctor_get(x_182, 0);
lean_inc(x_188);
lean_dec(x_182);
x_8 = x_188;
x_14 = x_187;
goto _start;
}
}
else
{
lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_190 = lean_ctor_get(x_181, 0);
lean_inc(x_190);
x_191 = lean_ctor_get(x_181, 1);
lean_inc(x_191);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_192 = x_181;
} else {
 lean_dec_ref(x_181);
 x_192 = lean_box(0);
}
if (lean_is_scalar(x_192)) {
 x_193 = lean_alloc_ctor(1, 2, 0);
} else {
 x_193 = x_192;
}
lean_ctor_set(x_193, 0, x_190);
lean_ctor_set(x_193, 1, x_191);
return x_193;
}
}
else
{
lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; 
lean_dec(x_146);
lean_dec(x_145);
lean_dec(x_144);
lean_dec(x_28);
lean_dec(x_25);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_194 = lean_ctor_get(x_170, 0);
lean_inc(x_194);
x_195 = lean_ctor_get(x_170, 1);
lean_inc(x_195);
if (lean_is_exclusive(x_170)) {
 lean_ctor_release(x_170, 0);
 lean_ctor_release(x_170, 1);
 x_196 = x_170;
} else {
 lean_dec_ref(x_170);
 x_196 = lean_box(0);
}
if (lean_is_scalar(x_196)) {
 x_197 = lean_alloc_ctor(1, 2, 0);
} else {
 x_197 = x_196;
}
lean_ctor_set(x_197, 0, x_194);
lean_ctor_set(x_197, 1, x_195);
return x_197;
}
}
}
}
}
else
{
lean_object* x_198; lean_object* x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; uint8_t x_204; 
x_198 = lean_ctor_get(x_18, 0);
lean_inc(x_198);
lean_dec(x_18);
x_199 = lean_ctor_get(x_19, 0);
lean_inc(x_199);
if (lean_is_exclusive(x_19)) {
 lean_ctor_release(x_19, 0);
 lean_ctor_release(x_19, 1);
 x_200 = x_19;
} else {
 lean_dec_ref(x_19);
 x_200 = lean_box(0);
}
x_201 = lean_ctor_get(x_20, 0);
lean_inc(x_201);
x_202 = lean_ctor_get(x_20, 1);
lean_inc(x_202);
if (lean_is_exclusive(x_20)) {
 lean_ctor_release(x_20, 0);
 lean_ctor_release(x_20, 1);
 x_203 = x_20;
} else {
 lean_dec_ref(x_20);
 x_203 = lean_box(0);
}
x_204 = lean_nat_dec_lt(x_28, x_3);
if (x_204 == 0)
{
lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
if (lean_is_scalar(x_203)) {
 x_205 = lean_alloc_ctor(0, 2, 0);
} else {
 x_205 = x_203;
}
lean_ctor_set(x_205, 0, x_201);
lean_ctor_set(x_205, 1, x_202);
if (lean_is_scalar(x_200)) {
 x_206 = lean_alloc_ctor(0, 2, 0);
} else {
 x_206 = x_200;
}
lean_ctor_set(x_206, 0, x_199);
lean_ctor_set(x_206, 1, x_205);
x_207 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_207, 0, x_198);
lean_ctor_set(x_207, 1, x_206);
lean_ctor_set(x_17, 1, x_207);
x_208 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_208, 0, x_7);
lean_ctor_set(x_208, 1, x_15);
x_209 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_209, 0, x_208);
lean_ctor_set(x_209, 1, x_14);
return x_209;
}
else
{
lean_object* x_210; uint8_t x_211; 
lean_dec(x_200);
lean_free_object(x_17);
lean_free_object(x_16);
lean_free_object(x_15);
x_210 = lean_unsigned_to_nat(0u);
x_211 = lean_nat_dec_eq(x_202, x_210);
if (x_211 == 0)
{
lean_object* x_212; uint8_t x_213; lean_object* x_214; 
lean_dec(x_203);
x_212 = lean_box(0);
x_213 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_214 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_213, x_25, x_28, x_198, x_199, x_201, x_202, x_212, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_214) == 0)
{
lean_object* x_215; 
x_215 = lean_ctor_get(x_214, 0);
lean_inc(x_215);
if (lean_obj_tag(x_215) == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; lean_object* x_219; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_216 = lean_ctor_get(x_214, 1);
lean_inc(x_216);
if (lean_is_exclusive(x_214)) {
 lean_ctor_release(x_214, 0);
 lean_ctor_release(x_214, 1);
 x_217 = x_214;
} else {
 lean_dec_ref(x_214);
 x_217 = lean_box(0);
}
x_218 = lean_ctor_get(x_215, 0);
lean_inc(x_218);
lean_dec(x_215);
if (lean_is_scalar(x_217)) {
 x_219 = lean_alloc_ctor(0, 2, 0);
} else {
 x_219 = x_217;
}
lean_ctor_set(x_219, 0, x_218);
lean_ctor_set(x_219, 1, x_216);
return x_219;
}
else
{
lean_object* x_220; lean_object* x_221; 
x_220 = lean_ctor_get(x_214, 1);
lean_inc(x_220);
lean_dec(x_214);
x_221 = lean_ctor_get(x_215, 0);
lean_inc(x_221);
lean_dec(x_215);
x_8 = x_221;
x_14 = x_220;
goto _start;
}
}
else
{
lean_object* x_223; lean_object* x_224; lean_object* x_225; lean_object* x_226; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_223 = lean_ctor_get(x_214, 0);
lean_inc(x_223);
x_224 = lean_ctor_get(x_214, 1);
lean_inc(x_224);
if (lean_is_exclusive(x_214)) {
 lean_ctor_release(x_214, 0);
 lean_ctor_release(x_214, 1);
 x_225 = x_214;
} else {
 lean_dec_ref(x_214);
 x_225 = lean_box(0);
}
if (lean_is_scalar(x_225)) {
 x_226 = lean_alloc_ctor(1, 2, 0);
} else {
 x_226 = x_225;
}
lean_ctor_set(x_226, 0, x_223);
lean_ctor_set(x_226, 1, x_224);
return x_226;
}
}
else
{
lean_object* x_227; lean_object* x_228; 
lean_dec(x_199);
lean_dec(x_198);
x_227 = lean_ctor_get(x_2, 1);
lean_inc(x_227);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_25);
x_228 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_227, x_25, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_228) == 0)
{
lean_object* x_229; lean_object* x_230; lean_object* x_231; size_t x_232; size_t x_233; lean_object* x_234; lean_object* x_235; lean_object* x_236; lean_object* x_237; uint8_t x_238; lean_object* x_239; 
x_229 = lean_ctor_get(x_228, 0);
lean_inc(x_229);
x_230 = lean_ctor_get(x_228, 1);
lean_inc(x_230);
lean_dec(x_228);
lean_inc_n(x_6, 2);
if (lean_is_scalar(x_203)) {
 x_231 = lean_alloc_ctor(0, 2, 0);
} else {
 x_231 = x_203;
}
lean_ctor_set(x_231, 0, x_6);
lean_ctor_set(x_231, 1, x_6);
x_232 = lean_array_size(x_229);
x_233 = 0;
x_234 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_229, x_232, x_233, x_231);
lean_dec(x_229);
x_235 = lean_ctor_get(x_234, 0);
lean_inc(x_235);
x_236 = lean_ctor_get(x_234, 1);
lean_inc(x_236);
lean_dec(x_234);
x_237 = lean_box(0);
x_238 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_239 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_238, x_25, x_28, x_236, x_235, x_201, x_202, x_237, x_9, x_10, x_11, x_12, x_13, x_230);
if (lean_obj_tag(x_239) == 0)
{
lean_object* x_240; 
x_240 = lean_ctor_get(x_239, 0);
lean_inc(x_240);
if (lean_obj_tag(x_240) == 0)
{
lean_object* x_241; lean_object* x_242; lean_object* x_243; lean_object* x_244; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_241 = lean_ctor_get(x_239, 1);
lean_inc(x_241);
if (lean_is_exclusive(x_239)) {
 lean_ctor_release(x_239, 0);
 lean_ctor_release(x_239, 1);
 x_242 = x_239;
} else {
 lean_dec_ref(x_239);
 x_242 = lean_box(0);
}
x_243 = lean_ctor_get(x_240, 0);
lean_inc(x_243);
lean_dec(x_240);
if (lean_is_scalar(x_242)) {
 x_244 = lean_alloc_ctor(0, 2, 0);
} else {
 x_244 = x_242;
}
lean_ctor_set(x_244, 0, x_243);
lean_ctor_set(x_244, 1, x_241);
return x_244;
}
else
{
lean_object* x_245; lean_object* x_246; 
x_245 = lean_ctor_get(x_239, 1);
lean_inc(x_245);
lean_dec(x_239);
x_246 = lean_ctor_get(x_240, 0);
lean_inc(x_246);
lean_dec(x_240);
x_8 = x_246;
x_14 = x_245;
goto _start;
}
}
else
{
lean_object* x_248; lean_object* x_249; lean_object* x_250; lean_object* x_251; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_248 = lean_ctor_get(x_239, 0);
lean_inc(x_248);
x_249 = lean_ctor_get(x_239, 1);
lean_inc(x_249);
if (lean_is_exclusive(x_239)) {
 lean_ctor_release(x_239, 0);
 lean_ctor_release(x_239, 1);
 x_250 = x_239;
} else {
 lean_dec_ref(x_239);
 x_250 = lean_box(0);
}
if (lean_is_scalar(x_250)) {
 x_251 = lean_alloc_ctor(1, 2, 0);
} else {
 x_251 = x_250;
}
lean_ctor_set(x_251, 0, x_248);
lean_ctor_set(x_251, 1, x_249);
return x_251;
}
}
else
{
lean_object* x_252; lean_object* x_253; lean_object* x_254; lean_object* x_255; 
lean_dec(x_203);
lean_dec(x_202);
lean_dec(x_201);
lean_dec(x_28);
lean_dec(x_25);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_252 = lean_ctor_get(x_228, 0);
lean_inc(x_252);
x_253 = lean_ctor_get(x_228, 1);
lean_inc(x_253);
if (lean_is_exclusive(x_228)) {
 lean_ctor_release(x_228, 0);
 lean_ctor_release(x_228, 1);
 x_254 = x_228;
} else {
 lean_dec_ref(x_228);
 x_254 = lean_box(0);
}
if (lean_is_scalar(x_254)) {
 x_255 = lean_alloc_ctor(1, 2, 0);
} else {
 x_255 = x_254;
}
lean_ctor_set(x_255, 0, x_252);
lean_ctor_set(x_255, 1, x_253);
return x_255;
}
}
}
}
}
else
{
lean_object* x_256; lean_object* x_257; lean_object* x_258; lean_object* x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; uint8_t x_264; 
x_256 = lean_ctor_get(x_17, 0);
lean_inc(x_256);
lean_dec(x_17);
x_257 = lean_ctor_get(x_18, 0);
lean_inc(x_257);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 lean_ctor_release(x_18, 1);
 x_258 = x_18;
} else {
 lean_dec_ref(x_18);
 x_258 = lean_box(0);
}
x_259 = lean_ctor_get(x_19, 0);
lean_inc(x_259);
if (lean_is_exclusive(x_19)) {
 lean_ctor_release(x_19, 0);
 lean_ctor_release(x_19, 1);
 x_260 = x_19;
} else {
 lean_dec_ref(x_19);
 x_260 = lean_box(0);
}
x_261 = lean_ctor_get(x_20, 0);
lean_inc(x_261);
x_262 = lean_ctor_get(x_20, 1);
lean_inc(x_262);
if (lean_is_exclusive(x_20)) {
 lean_ctor_release(x_20, 0);
 lean_ctor_release(x_20, 1);
 x_263 = x_20;
} else {
 lean_dec_ref(x_20);
 x_263 = lean_box(0);
}
x_264 = lean_nat_dec_lt(x_256, x_3);
if (x_264 == 0)
{
lean_object* x_265; lean_object* x_266; lean_object* x_267; lean_object* x_268; lean_object* x_269; lean_object* x_270; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
if (lean_is_scalar(x_263)) {
 x_265 = lean_alloc_ctor(0, 2, 0);
} else {
 x_265 = x_263;
}
lean_ctor_set(x_265, 0, x_261);
lean_ctor_set(x_265, 1, x_262);
if (lean_is_scalar(x_260)) {
 x_266 = lean_alloc_ctor(0, 2, 0);
} else {
 x_266 = x_260;
}
lean_ctor_set(x_266, 0, x_259);
lean_ctor_set(x_266, 1, x_265);
if (lean_is_scalar(x_258)) {
 x_267 = lean_alloc_ctor(0, 2, 0);
} else {
 x_267 = x_258;
}
lean_ctor_set(x_267, 0, x_257);
lean_ctor_set(x_267, 1, x_266);
x_268 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_268, 0, x_256);
lean_ctor_set(x_268, 1, x_267);
lean_ctor_set(x_16, 1, x_268);
x_269 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_269, 0, x_7);
lean_ctor_set(x_269, 1, x_15);
x_270 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_270, 0, x_269);
lean_ctor_set(x_270, 1, x_14);
return x_270;
}
else
{
lean_object* x_271; uint8_t x_272; 
lean_dec(x_260);
lean_dec(x_258);
lean_free_object(x_16);
lean_free_object(x_15);
x_271 = lean_unsigned_to_nat(0u);
x_272 = lean_nat_dec_eq(x_262, x_271);
if (x_272 == 0)
{
lean_object* x_273; uint8_t x_274; lean_object* x_275; 
lean_dec(x_263);
x_273 = lean_box(0);
x_274 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_275 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_274, x_25, x_256, x_257, x_259, x_261, x_262, x_273, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_275) == 0)
{
lean_object* x_276; 
x_276 = lean_ctor_get(x_275, 0);
lean_inc(x_276);
if (lean_obj_tag(x_276) == 0)
{
lean_object* x_277; lean_object* x_278; lean_object* x_279; lean_object* x_280; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_277 = lean_ctor_get(x_275, 1);
lean_inc(x_277);
if (lean_is_exclusive(x_275)) {
 lean_ctor_release(x_275, 0);
 lean_ctor_release(x_275, 1);
 x_278 = x_275;
} else {
 lean_dec_ref(x_275);
 x_278 = lean_box(0);
}
x_279 = lean_ctor_get(x_276, 0);
lean_inc(x_279);
lean_dec(x_276);
if (lean_is_scalar(x_278)) {
 x_280 = lean_alloc_ctor(0, 2, 0);
} else {
 x_280 = x_278;
}
lean_ctor_set(x_280, 0, x_279);
lean_ctor_set(x_280, 1, x_277);
return x_280;
}
else
{
lean_object* x_281; lean_object* x_282; 
x_281 = lean_ctor_get(x_275, 1);
lean_inc(x_281);
lean_dec(x_275);
x_282 = lean_ctor_get(x_276, 0);
lean_inc(x_282);
lean_dec(x_276);
x_8 = x_282;
x_14 = x_281;
goto _start;
}
}
else
{
lean_object* x_284; lean_object* x_285; lean_object* x_286; lean_object* x_287; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_284 = lean_ctor_get(x_275, 0);
lean_inc(x_284);
x_285 = lean_ctor_get(x_275, 1);
lean_inc(x_285);
if (lean_is_exclusive(x_275)) {
 lean_ctor_release(x_275, 0);
 lean_ctor_release(x_275, 1);
 x_286 = x_275;
} else {
 lean_dec_ref(x_275);
 x_286 = lean_box(0);
}
if (lean_is_scalar(x_286)) {
 x_287 = lean_alloc_ctor(1, 2, 0);
} else {
 x_287 = x_286;
}
lean_ctor_set(x_287, 0, x_284);
lean_ctor_set(x_287, 1, x_285);
return x_287;
}
}
else
{
lean_object* x_288; lean_object* x_289; 
lean_dec(x_259);
lean_dec(x_257);
x_288 = lean_ctor_get(x_2, 1);
lean_inc(x_288);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_25);
x_289 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_288, x_25, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_289) == 0)
{
lean_object* x_290; lean_object* x_291; lean_object* x_292; size_t x_293; size_t x_294; lean_object* x_295; lean_object* x_296; lean_object* x_297; lean_object* x_298; uint8_t x_299; lean_object* x_300; 
x_290 = lean_ctor_get(x_289, 0);
lean_inc(x_290);
x_291 = lean_ctor_get(x_289, 1);
lean_inc(x_291);
lean_dec(x_289);
lean_inc_n(x_6, 2);
if (lean_is_scalar(x_263)) {
 x_292 = lean_alloc_ctor(0, 2, 0);
} else {
 x_292 = x_263;
}
lean_ctor_set(x_292, 0, x_6);
lean_ctor_set(x_292, 1, x_6);
x_293 = lean_array_size(x_290);
x_294 = 0;
x_295 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_290, x_293, x_294, x_292);
lean_dec(x_290);
x_296 = lean_ctor_get(x_295, 0);
lean_inc(x_296);
x_297 = lean_ctor_get(x_295, 1);
lean_inc(x_297);
lean_dec(x_295);
x_298 = lean_box(0);
x_299 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_300 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_299, x_25, x_256, x_297, x_296, x_261, x_262, x_298, x_9, x_10, x_11, x_12, x_13, x_291);
if (lean_obj_tag(x_300) == 0)
{
lean_object* x_301; 
x_301 = lean_ctor_get(x_300, 0);
lean_inc(x_301);
if (lean_obj_tag(x_301) == 0)
{
lean_object* x_302; lean_object* x_303; lean_object* x_304; lean_object* x_305; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_302 = lean_ctor_get(x_300, 1);
lean_inc(x_302);
if (lean_is_exclusive(x_300)) {
 lean_ctor_release(x_300, 0);
 lean_ctor_release(x_300, 1);
 x_303 = x_300;
} else {
 lean_dec_ref(x_300);
 x_303 = lean_box(0);
}
x_304 = lean_ctor_get(x_301, 0);
lean_inc(x_304);
lean_dec(x_301);
if (lean_is_scalar(x_303)) {
 x_305 = lean_alloc_ctor(0, 2, 0);
} else {
 x_305 = x_303;
}
lean_ctor_set(x_305, 0, x_304);
lean_ctor_set(x_305, 1, x_302);
return x_305;
}
else
{
lean_object* x_306; lean_object* x_307; 
x_306 = lean_ctor_get(x_300, 1);
lean_inc(x_306);
lean_dec(x_300);
x_307 = lean_ctor_get(x_301, 0);
lean_inc(x_307);
lean_dec(x_301);
x_8 = x_307;
x_14 = x_306;
goto _start;
}
}
else
{
lean_object* x_309; lean_object* x_310; lean_object* x_311; lean_object* x_312; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_309 = lean_ctor_get(x_300, 0);
lean_inc(x_309);
x_310 = lean_ctor_get(x_300, 1);
lean_inc(x_310);
if (lean_is_exclusive(x_300)) {
 lean_ctor_release(x_300, 0);
 lean_ctor_release(x_300, 1);
 x_311 = x_300;
} else {
 lean_dec_ref(x_300);
 x_311 = lean_box(0);
}
if (lean_is_scalar(x_311)) {
 x_312 = lean_alloc_ctor(1, 2, 0);
} else {
 x_312 = x_311;
}
lean_ctor_set(x_312, 0, x_309);
lean_ctor_set(x_312, 1, x_310);
return x_312;
}
}
else
{
lean_object* x_313; lean_object* x_314; lean_object* x_315; lean_object* x_316; 
lean_dec(x_263);
lean_dec(x_262);
lean_dec(x_261);
lean_dec(x_256);
lean_dec(x_25);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_313 = lean_ctor_get(x_289, 0);
lean_inc(x_313);
x_314 = lean_ctor_get(x_289, 1);
lean_inc(x_314);
if (lean_is_exclusive(x_289)) {
 lean_ctor_release(x_289, 0);
 lean_ctor_release(x_289, 1);
 x_315 = x_289;
} else {
 lean_dec_ref(x_289);
 x_315 = lean_box(0);
}
if (lean_is_scalar(x_315)) {
 x_316 = lean_alloc_ctor(1, 2, 0);
} else {
 x_316 = x_315;
}
lean_ctor_set(x_316, 0, x_313);
lean_ctor_set(x_316, 1, x_314);
return x_316;
}
}
}
}
}
else
{
lean_object* x_317; lean_object* x_318; lean_object* x_319; lean_object* x_320; lean_object* x_321; lean_object* x_322; lean_object* x_323; lean_object* x_324; lean_object* x_325; lean_object* x_326; uint8_t x_327; 
x_317 = lean_ctor_get(x_16, 0);
lean_inc(x_317);
lean_dec(x_16);
x_318 = lean_ctor_get(x_17, 0);
lean_inc(x_318);
if (lean_is_exclusive(x_17)) {
 lean_ctor_release(x_17, 0);
 lean_ctor_release(x_17, 1);
 x_319 = x_17;
} else {
 lean_dec_ref(x_17);
 x_319 = lean_box(0);
}
x_320 = lean_ctor_get(x_18, 0);
lean_inc(x_320);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 lean_ctor_release(x_18, 1);
 x_321 = x_18;
} else {
 lean_dec_ref(x_18);
 x_321 = lean_box(0);
}
x_322 = lean_ctor_get(x_19, 0);
lean_inc(x_322);
if (lean_is_exclusive(x_19)) {
 lean_ctor_release(x_19, 0);
 lean_ctor_release(x_19, 1);
 x_323 = x_19;
} else {
 lean_dec_ref(x_19);
 x_323 = lean_box(0);
}
x_324 = lean_ctor_get(x_20, 0);
lean_inc(x_324);
x_325 = lean_ctor_get(x_20, 1);
lean_inc(x_325);
if (lean_is_exclusive(x_20)) {
 lean_ctor_release(x_20, 0);
 lean_ctor_release(x_20, 1);
 x_326 = x_20;
} else {
 lean_dec_ref(x_20);
 x_326 = lean_box(0);
}
x_327 = lean_nat_dec_lt(x_318, x_3);
if (x_327 == 0)
{
lean_object* x_328; lean_object* x_329; lean_object* x_330; lean_object* x_331; lean_object* x_332; lean_object* x_333; lean_object* x_334; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
if (lean_is_scalar(x_326)) {
 x_328 = lean_alloc_ctor(0, 2, 0);
} else {
 x_328 = x_326;
}
lean_ctor_set(x_328, 0, x_324);
lean_ctor_set(x_328, 1, x_325);
if (lean_is_scalar(x_323)) {
 x_329 = lean_alloc_ctor(0, 2, 0);
} else {
 x_329 = x_323;
}
lean_ctor_set(x_329, 0, x_322);
lean_ctor_set(x_329, 1, x_328);
if (lean_is_scalar(x_321)) {
 x_330 = lean_alloc_ctor(0, 2, 0);
} else {
 x_330 = x_321;
}
lean_ctor_set(x_330, 0, x_320);
lean_ctor_set(x_330, 1, x_329);
if (lean_is_scalar(x_319)) {
 x_331 = lean_alloc_ctor(0, 2, 0);
} else {
 x_331 = x_319;
}
lean_ctor_set(x_331, 0, x_318);
lean_ctor_set(x_331, 1, x_330);
x_332 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_332, 0, x_317);
lean_ctor_set(x_332, 1, x_331);
lean_ctor_set(x_15, 1, x_332);
x_333 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_333, 0, x_7);
lean_ctor_set(x_333, 1, x_15);
x_334 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_334, 0, x_333);
lean_ctor_set(x_334, 1, x_14);
return x_334;
}
else
{
lean_object* x_335; uint8_t x_336; 
lean_dec(x_323);
lean_dec(x_321);
lean_dec(x_319);
lean_free_object(x_15);
x_335 = lean_unsigned_to_nat(0u);
x_336 = lean_nat_dec_eq(x_325, x_335);
if (x_336 == 0)
{
lean_object* x_337; uint8_t x_338; lean_object* x_339; 
lean_dec(x_326);
x_337 = lean_box(0);
x_338 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_339 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_338, x_317, x_318, x_320, x_322, x_324, x_325, x_337, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_339) == 0)
{
lean_object* x_340; 
x_340 = lean_ctor_get(x_339, 0);
lean_inc(x_340);
if (lean_obj_tag(x_340) == 0)
{
lean_object* x_341; lean_object* x_342; lean_object* x_343; lean_object* x_344; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_341 = lean_ctor_get(x_339, 1);
lean_inc(x_341);
if (lean_is_exclusive(x_339)) {
 lean_ctor_release(x_339, 0);
 lean_ctor_release(x_339, 1);
 x_342 = x_339;
} else {
 lean_dec_ref(x_339);
 x_342 = lean_box(0);
}
x_343 = lean_ctor_get(x_340, 0);
lean_inc(x_343);
lean_dec(x_340);
if (lean_is_scalar(x_342)) {
 x_344 = lean_alloc_ctor(0, 2, 0);
} else {
 x_344 = x_342;
}
lean_ctor_set(x_344, 0, x_343);
lean_ctor_set(x_344, 1, x_341);
return x_344;
}
else
{
lean_object* x_345; lean_object* x_346; 
x_345 = lean_ctor_get(x_339, 1);
lean_inc(x_345);
lean_dec(x_339);
x_346 = lean_ctor_get(x_340, 0);
lean_inc(x_346);
lean_dec(x_340);
x_8 = x_346;
x_14 = x_345;
goto _start;
}
}
else
{
lean_object* x_348; lean_object* x_349; lean_object* x_350; lean_object* x_351; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_348 = lean_ctor_get(x_339, 0);
lean_inc(x_348);
x_349 = lean_ctor_get(x_339, 1);
lean_inc(x_349);
if (lean_is_exclusive(x_339)) {
 lean_ctor_release(x_339, 0);
 lean_ctor_release(x_339, 1);
 x_350 = x_339;
} else {
 lean_dec_ref(x_339);
 x_350 = lean_box(0);
}
if (lean_is_scalar(x_350)) {
 x_351 = lean_alloc_ctor(1, 2, 0);
} else {
 x_351 = x_350;
}
lean_ctor_set(x_351, 0, x_348);
lean_ctor_set(x_351, 1, x_349);
return x_351;
}
}
else
{
lean_object* x_352; lean_object* x_353; 
lean_dec(x_322);
lean_dec(x_320);
x_352 = lean_ctor_get(x_2, 1);
lean_inc(x_352);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_317);
x_353 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_352, x_317, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_353) == 0)
{
lean_object* x_354; lean_object* x_355; lean_object* x_356; size_t x_357; size_t x_358; lean_object* x_359; lean_object* x_360; lean_object* x_361; lean_object* x_362; uint8_t x_363; lean_object* x_364; 
x_354 = lean_ctor_get(x_353, 0);
lean_inc(x_354);
x_355 = lean_ctor_get(x_353, 1);
lean_inc(x_355);
lean_dec(x_353);
lean_inc_n(x_6, 2);
if (lean_is_scalar(x_326)) {
 x_356 = lean_alloc_ctor(0, 2, 0);
} else {
 x_356 = x_326;
}
lean_ctor_set(x_356, 0, x_6);
lean_ctor_set(x_356, 1, x_6);
x_357 = lean_array_size(x_354);
x_358 = 0;
x_359 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_354, x_357, x_358, x_356);
lean_dec(x_354);
x_360 = lean_ctor_get(x_359, 0);
lean_inc(x_360);
x_361 = lean_ctor_get(x_359, 1);
lean_inc(x_361);
lean_dec(x_359);
x_362 = lean_box(0);
x_363 = lean_unbox(x_22);
lean_dec(x_22);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_364 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_363, x_317, x_318, x_361, x_360, x_324, x_325, x_362, x_9, x_10, x_11, x_12, x_13, x_355);
if (lean_obj_tag(x_364) == 0)
{
lean_object* x_365; 
x_365 = lean_ctor_get(x_364, 0);
lean_inc(x_365);
if (lean_obj_tag(x_365) == 0)
{
lean_object* x_366; lean_object* x_367; lean_object* x_368; lean_object* x_369; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_366 = lean_ctor_get(x_364, 1);
lean_inc(x_366);
if (lean_is_exclusive(x_364)) {
 lean_ctor_release(x_364, 0);
 lean_ctor_release(x_364, 1);
 x_367 = x_364;
} else {
 lean_dec_ref(x_364);
 x_367 = lean_box(0);
}
x_368 = lean_ctor_get(x_365, 0);
lean_inc(x_368);
lean_dec(x_365);
if (lean_is_scalar(x_367)) {
 x_369 = lean_alloc_ctor(0, 2, 0);
} else {
 x_369 = x_367;
}
lean_ctor_set(x_369, 0, x_368);
lean_ctor_set(x_369, 1, x_366);
return x_369;
}
else
{
lean_object* x_370; lean_object* x_371; 
x_370 = lean_ctor_get(x_364, 1);
lean_inc(x_370);
lean_dec(x_364);
x_371 = lean_ctor_get(x_365, 0);
lean_inc(x_371);
lean_dec(x_365);
x_8 = x_371;
x_14 = x_370;
goto _start;
}
}
else
{
lean_object* x_373; lean_object* x_374; lean_object* x_375; lean_object* x_376; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_373 = lean_ctor_get(x_364, 0);
lean_inc(x_373);
x_374 = lean_ctor_get(x_364, 1);
lean_inc(x_374);
if (lean_is_exclusive(x_364)) {
 lean_ctor_release(x_364, 0);
 lean_ctor_release(x_364, 1);
 x_375 = x_364;
} else {
 lean_dec_ref(x_364);
 x_375 = lean_box(0);
}
if (lean_is_scalar(x_375)) {
 x_376 = lean_alloc_ctor(1, 2, 0);
} else {
 x_376 = x_375;
}
lean_ctor_set(x_376, 0, x_373);
lean_ctor_set(x_376, 1, x_374);
return x_376;
}
}
else
{
lean_object* x_377; lean_object* x_378; lean_object* x_379; lean_object* x_380; 
lean_dec(x_326);
lean_dec(x_325);
lean_dec(x_324);
lean_dec(x_318);
lean_dec(x_317);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_377 = lean_ctor_get(x_353, 0);
lean_inc(x_377);
x_378 = lean_ctor_get(x_353, 1);
lean_inc(x_378);
if (lean_is_exclusive(x_353)) {
 lean_ctor_release(x_353, 0);
 lean_ctor_release(x_353, 1);
 x_379 = x_353;
} else {
 lean_dec_ref(x_353);
 x_379 = lean_box(0);
}
if (lean_is_scalar(x_379)) {
 x_380 = lean_alloc_ctor(1, 2, 0);
} else {
 x_380 = x_379;
}
lean_ctor_set(x_380, 0, x_377);
lean_ctor_set(x_380, 1, x_378);
return x_380;
}
}
}
}
}
else
{
lean_object* x_381; lean_object* x_382; lean_object* x_383; lean_object* x_384; lean_object* x_385; lean_object* x_386; lean_object* x_387; lean_object* x_388; lean_object* x_389; lean_object* x_390; lean_object* x_391; lean_object* x_392; uint8_t x_393; 
x_381 = lean_ctor_get(x_15, 0);
lean_inc(x_381);
lean_dec(x_15);
x_382 = lean_ctor_get(x_16, 0);
lean_inc(x_382);
if (lean_is_exclusive(x_16)) {
 lean_ctor_release(x_16, 0);
 lean_ctor_release(x_16, 1);
 x_383 = x_16;
} else {
 lean_dec_ref(x_16);
 x_383 = lean_box(0);
}
x_384 = lean_ctor_get(x_17, 0);
lean_inc(x_384);
if (lean_is_exclusive(x_17)) {
 lean_ctor_release(x_17, 0);
 lean_ctor_release(x_17, 1);
 x_385 = x_17;
} else {
 lean_dec_ref(x_17);
 x_385 = lean_box(0);
}
x_386 = lean_ctor_get(x_18, 0);
lean_inc(x_386);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 lean_ctor_release(x_18, 1);
 x_387 = x_18;
} else {
 lean_dec_ref(x_18);
 x_387 = lean_box(0);
}
x_388 = lean_ctor_get(x_19, 0);
lean_inc(x_388);
if (lean_is_exclusive(x_19)) {
 lean_ctor_release(x_19, 0);
 lean_ctor_release(x_19, 1);
 x_389 = x_19;
} else {
 lean_dec_ref(x_19);
 x_389 = lean_box(0);
}
x_390 = lean_ctor_get(x_20, 0);
lean_inc(x_390);
x_391 = lean_ctor_get(x_20, 1);
lean_inc(x_391);
if (lean_is_exclusive(x_20)) {
 lean_ctor_release(x_20, 0);
 lean_ctor_release(x_20, 1);
 x_392 = x_20;
} else {
 lean_dec_ref(x_20);
 x_392 = lean_box(0);
}
x_393 = lean_nat_dec_lt(x_384, x_3);
if (x_393 == 0)
{
lean_object* x_394; lean_object* x_395; lean_object* x_396; lean_object* x_397; lean_object* x_398; lean_object* x_399; lean_object* x_400; lean_object* x_401; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
if (lean_is_scalar(x_392)) {
 x_394 = lean_alloc_ctor(0, 2, 0);
} else {
 x_394 = x_392;
}
lean_ctor_set(x_394, 0, x_390);
lean_ctor_set(x_394, 1, x_391);
if (lean_is_scalar(x_389)) {
 x_395 = lean_alloc_ctor(0, 2, 0);
} else {
 x_395 = x_389;
}
lean_ctor_set(x_395, 0, x_388);
lean_ctor_set(x_395, 1, x_394);
if (lean_is_scalar(x_387)) {
 x_396 = lean_alloc_ctor(0, 2, 0);
} else {
 x_396 = x_387;
}
lean_ctor_set(x_396, 0, x_386);
lean_ctor_set(x_396, 1, x_395);
if (lean_is_scalar(x_385)) {
 x_397 = lean_alloc_ctor(0, 2, 0);
} else {
 x_397 = x_385;
}
lean_ctor_set(x_397, 0, x_384);
lean_ctor_set(x_397, 1, x_396);
if (lean_is_scalar(x_383)) {
 x_398 = lean_alloc_ctor(0, 2, 0);
} else {
 x_398 = x_383;
}
lean_ctor_set(x_398, 0, x_382);
lean_ctor_set(x_398, 1, x_397);
x_399 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_399, 0, x_381);
lean_ctor_set(x_399, 1, x_398);
x_400 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_400, 0, x_7);
lean_ctor_set(x_400, 1, x_399);
x_401 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_401, 0, x_400);
lean_ctor_set(x_401, 1, x_14);
return x_401;
}
else
{
lean_object* x_402; uint8_t x_403; 
lean_dec(x_389);
lean_dec(x_387);
lean_dec(x_385);
lean_dec(x_383);
x_402 = lean_unsigned_to_nat(0u);
x_403 = lean_nat_dec_eq(x_391, x_402);
if (x_403 == 0)
{
lean_object* x_404; uint8_t x_405; lean_object* x_406; 
lean_dec(x_392);
x_404 = lean_box(0);
x_405 = lean_unbox(x_381);
lean_dec(x_381);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_406 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_405, x_382, x_384, x_386, x_388, x_390, x_391, x_404, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_406) == 0)
{
lean_object* x_407; 
x_407 = lean_ctor_get(x_406, 0);
lean_inc(x_407);
if (lean_obj_tag(x_407) == 0)
{
lean_object* x_408; lean_object* x_409; lean_object* x_410; lean_object* x_411; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_408 = lean_ctor_get(x_406, 1);
lean_inc(x_408);
if (lean_is_exclusive(x_406)) {
 lean_ctor_release(x_406, 0);
 lean_ctor_release(x_406, 1);
 x_409 = x_406;
} else {
 lean_dec_ref(x_406);
 x_409 = lean_box(0);
}
x_410 = lean_ctor_get(x_407, 0);
lean_inc(x_410);
lean_dec(x_407);
if (lean_is_scalar(x_409)) {
 x_411 = lean_alloc_ctor(0, 2, 0);
} else {
 x_411 = x_409;
}
lean_ctor_set(x_411, 0, x_410);
lean_ctor_set(x_411, 1, x_408);
return x_411;
}
else
{
lean_object* x_412; lean_object* x_413; 
x_412 = lean_ctor_get(x_406, 1);
lean_inc(x_412);
lean_dec(x_406);
x_413 = lean_ctor_get(x_407, 0);
lean_inc(x_413);
lean_dec(x_407);
x_8 = x_413;
x_14 = x_412;
goto _start;
}
}
else
{
lean_object* x_415; lean_object* x_416; lean_object* x_417; lean_object* x_418; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_415 = lean_ctor_get(x_406, 0);
lean_inc(x_415);
x_416 = lean_ctor_get(x_406, 1);
lean_inc(x_416);
if (lean_is_exclusive(x_406)) {
 lean_ctor_release(x_406, 0);
 lean_ctor_release(x_406, 1);
 x_417 = x_406;
} else {
 lean_dec_ref(x_406);
 x_417 = lean_box(0);
}
if (lean_is_scalar(x_417)) {
 x_418 = lean_alloc_ctor(1, 2, 0);
} else {
 x_418 = x_417;
}
lean_ctor_set(x_418, 0, x_415);
lean_ctor_set(x_418, 1, x_416);
return x_418;
}
}
else
{
lean_object* x_419; lean_object* x_420; 
lean_dec(x_388);
lean_dec(x_386);
x_419 = lean_ctor_get(x_2, 1);
lean_inc(x_419);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_382);
x_420 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1(x_419, x_382, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_420) == 0)
{
lean_object* x_421; lean_object* x_422; lean_object* x_423; size_t x_424; size_t x_425; lean_object* x_426; lean_object* x_427; lean_object* x_428; lean_object* x_429; uint8_t x_430; lean_object* x_431; 
x_421 = lean_ctor_get(x_420, 0);
lean_inc(x_421);
x_422 = lean_ctor_get(x_420, 1);
lean_inc(x_422);
lean_dec(x_420);
lean_inc_n(x_6, 2);
if (lean_is_scalar(x_392)) {
 x_423 = lean_alloc_ctor(0, 2, 0);
} else {
 x_423 = x_392;
}
lean_ctor_set(x_423, 0, x_6);
lean_ctor_set(x_423, 1, x_6);
x_424 = lean_array_size(x_421);
x_425 = 0;
x_426 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_421, x_424, x_425, x_423);
lean_dec(x_421);
x_427 = lean_ctor_get(x_426, 0);
lean_inc(x_427);
x_428 = lean_ctor_get(x_426, 1);
lean_inc(x_428);
lean_dec(x_426);
x_429 = lean_box(0);
x_430 = lean_unbox(x_381);
lean_dec(x_381);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_7);
lean_inc(x_5);
x_431 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_5, x_7, x_4, x_430, x_382, x_384, x_428, x_427, x_390, x_391, x_429, x_9, x_10, x_11, x_12, x_13, x_422);
if (lean_obj_tag(x_431) == 0)
{
lean_object* x_432; 
x_432 = lean_ctor_get(x_431, 0);
lean_inc(x_432);
if (lean_obj_tag(x_432) == 0)
{
lean_object* x_433; lean_object* x_434; lean_object* x_435; lean_object* x_436; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_433 = lean_ctor_get(x_431, 1);
lean_inc(x_433);
if (lean_is_exclusive(x_431)) {
 lean_ctor_release(x_431, 0);
 lean_ctor_release(x_431, 1);
 x_434 = x_431;
} else {
 lean_dec_ref(x_431);
 x_434 = lean_box(0);
}
x_435 = lean_ctor_get(x_432, 0);
lean_inc(x_435);
lean_dec(x_432);
if (lean_is_scalar(x_434)) {
 x_436 = lean_alloc_ctor(0, 2, 0);
} else {
 x_436 = x_434;
}
lean_ctor_set(x_436, 0, x_435);
lean_ctor_set(x_436, 1, x_433);
return x_436;
}
else
{
lean_object* x_437; lean_object* x_438; 
x_437 = lean_ctor_get(x_431, 1);
lean_inc(x_437);
lean_dec(x_431);
x_438 = lean_ctor_get(x_432, 0);
lean_inc(x_438);
lean_dec(x_432);
x_8 = x_438;
x_14 = x_437;
goto _start;
}
}
else
{
lean_object* x_440; lean_object* x_441; lean_object* x_442; lean_object* x_443; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_440 = lean_ctor_get(x_431, 0);
lean_inc(x_440);
x_441 = lean_ctor_get(x_431, 1);
lean_inc(x_441);
if (lean_is_exclusive(x_431)) {
 lean_ctor_release(x_431, 0);
 lean_ctor_release(x_431, 1);
 x_442 = x_431;
} else {
 lean_dec_ref(x_431);
 x_442 = lean_box(0);
}
if (lean_is_scalar(x_442)) {
 x_443 = lean_alloc_ctor(1, 2, 0);
} else {
 x_443 = x_442;
}
lean_ctor_set(x_443, 0, x_440);
lean_ctor_set(x_443, 1, x_441);
return x_443;
}
}
else
{
lean_object* x_444; lean_object* x_445; lean_object* x_446; lean_object* x_447; 
lean_dec(x_392);
lean_dec(x_391);
lean_dec(x_390);
lean_dec(x_384);
lean_dec(x_382);
lean_dec(x_381);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_444 = lean_ctor_get(x_420, 0);
lean_inc(x_444);
x_445 = lean_ctor_get(x_420, 1);
lean_inc(x_445);
if (lean_is_exclusive(x_420)) {
 lean_ctor_release(x_420, 0);
 lean_ctor_release(x_420, 1);
 x_446 = x_420;
} else {
 lean_dec_ref(x_420);
 x_446 = lean_box(0);
}
if (lean_is_scalar(x_446)) {
 x_447 = lean_alloc_ctor(1, 2, 0);
} else {
 x_447 = x_446;
}
lean_ctor_set(x_447, 0, x_444);
lean_ctor_set(x_447, 1, x_445);
return x_447;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormSteps___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_5, 5);
x_9 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_8);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_8);
lean_ctor_set(x_12, 1, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 0, x_12);
return x_9;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_9, 0);
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_9);
lean_inc(x_8);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_8);
lean_ctor_set(x_15, 1, x_13);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
}
}
static lean_object* _init_l_Aesop_runNormSteps___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: exceeded maximum number of normalisation iterations (", 60, 60);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormSteps___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormSteps___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_runNormSteps___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("). This means normalisation probably got stuck in an infinite loop.", 67, 67);
return x_1;
}
}
static lean_object* _init_l_Aesop_runNormSteps___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_runNormSteps___lambda__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormSteps___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_9 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
x_10 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_10, 0, x_9);
x_11 = l_Lean_MessageData_ofFormat(x_10);
x_12 = l_Aesop_runNormSteps___lambda__1___closed__2;
x_13 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
x_14 = l_Aesop_runNormSteps___lambda__1___closed__4;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
x_16 = l_Lean_throwError___at_Aesop_runNormSteps___spec__5(x_15, x_3, x_4, x_5, x_6, x_7, x_8);
return x_16;
}
}
static lean_object* _init_l_Aesop_runNormSteps___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_runNormSteps___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_2 = l_Aesop_runNormSteps___closed__1;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_runNormSteps___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_2 = l_Aesop_runNormSteps___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_runNormSteps___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Aesop_runNormSteps___closed__3;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormSteps(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_10 = lean_ctor_get(x_4, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_ctor_get(x_11, 3);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_array_get_size(x_2);
x_14 = lean_box(0);
x_15 = l_Aesop_runNormSteps___closed__4;
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_1);
lean_ctor_set(x_16, 1, x_15);
x_17 = 0;
x_18 = lean_box(x_17);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_16);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_14);
lean_ctor_set(x_20, 1, x_19);
x_21 = lean_unsigned_to_nat(0u);
x_22 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc_n(x_4, 2);
x_23 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4(x_2, x_4, x_12, x_13, x_21, x_22, x_14, x_20, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_13);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
lean_dec(x_24);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_23, 1);
lean_inc(x_26);
lean_dec(x_23);
x_27 = lean_box(0);
x_28 = l_Aesop_runNormSteps___lambda__1(x_12, x_27, x_4, x_5, x_6, x_7, x_8, x_26);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_28;
}
else
{
uint8_t x_29; 
lean_dec(x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_29 = !lean_is_exclusive(x_23);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_ctor_get(x_23, 0);
lean_dec(x_30);
x_31 = lean_ctor_get(x_25, 0);
lean_inc(x_31);
lean_dec(x_25);
lean_ctor_set(x_23, 0, x_31);
return x_23;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_23, 1);
lean_inc(x_32);
lean_dec(x_23);
x_33 = lean_ctor_get(x_25, 0);
lean_inc(x_33);
lean_dec(x_25);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_32);
return x_34;
}
}
}
else
{
uint8_t x_35; 
lean_dec(x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_35 = !lean_is_exclusive(x_23);
if (x_35 == 0)
{
return x_23;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_23, 0);
x_37 = lean_ctor_get(x_23, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_23);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
return x_38;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
lean_object* x_18 = _args[17];
_start:
{
uint8_t x_19; lean_object* x_20; 
x_19 = lean_unbox(x_5);
lean_dec(x_5);
x_20 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1(x_1, x_2, x_3, x_4, x_19, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_18);
lean_dec(x_12);
lean_dec(x_4);
lean_dec(x_1);
return x_20;
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; 
x_15 = l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_runNormSteps___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_throwError___at_Aesop_runNormSteps___spec__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormSteps___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_runNormSteps___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_runNormSteps___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_runNormSteps(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPreSimpRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_runFirstNormRule(x_2, x_1, x_3, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = l_Aesop_optNormRuleResultToNormSeqResult(x_13);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
x_17 = l_Aesop_optNormRuleResultToNormSeqResult(x_15);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
else
{
uint8_t x_19; 
x_19 = !lean_is_exclusive(x_11);
if (x_19 == 0)
{
return x_11;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_11, 0);
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_11);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPreSimpRules___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_NormStep_runPreSimpRules(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPostSimpRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_runFirstNormRule(x_2, x_1, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = l_Aesop_optNormRuleResultToNormSeqResult(x_13);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
x_17 = l_Aesop_optNormRuleResultToNormSeqResult(x_15);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
else
{
uint8_t x_19; 
x_19 = !lean_is_exclusive(x_11);
if (x_19 == 0)
{
return x_11;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_11, 0);
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_11);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_runPostSimpRules___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_NormStep_runPostSimpRules(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_box(2);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
}
static lean_object* _init_l_Aesop_NormStep_unfold___lambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = l_Aesop_optNormRuleResultToNormSeqResult(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_normUnfold(x_1, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_9);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_9, 0);
lean_dec(x_12);
x_13 = l_Aesop_NormStep_unfold___lambda__2___closed__1;
lean_ctor_set(x_9, 0, x_13);
return x_9;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_dec(x_9);
x_15 = l_Aesop_NormStep_unfold___lambda__2___closed__1;
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_9);
if (x_17 == 0)
{
lean_object* x_18; uint8_t x_19; 
x_18 = lean_ctor_get(x_9, 0);
lean_dec(x_18);
x_19 = !lean_is_exclusive(x_10);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_20 = lean_ctor_get(x_10, 0);
x_21 = lean_box(2);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
lean_ctor_set(x_10, 0, x_22);
x_23 = l_Aesop_optNormRuleResultToNormSeqResult(x_10);
lean_ctor_set(x_9, 0, x_23);
return x_9;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_24 = lean_ctor_get(x_10, 0);
lean_inc(x_24);
lean_dec(x_10);
x_25 = lean_box(2);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_24);
x_27 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_27, 0, x_26);
x_28 = l_Aesop_optNormRuleResultToNormSeqResult(x_27);
lean_ctor_set(x_9, 0, x_28);
return x_9;
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_29 = lean_ctor_get(x_9, 1);
lean_inc(x_29);
lean_dec(x_9);
x_30 = lean_ctor_get(x_10, 0);
lean_inc(x_30);
if (lean_is_exclusive(x_10)) {
 lean_ctor_release(x_10, 0);
 x_31 = x_10;
} else {
 lean_dec_ref(x_10);
 x_31 = lean_box(0);
}
x_32 = lean_box(2);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_30);
if (lean_is_scalar(x_31)) {
 x_34 = lean_alloc_ctor(1, 1, 0);
} else {
 x_34 = x_31;
}
lean_ctor_set(x_34, 0, x_33);
x_35 = l_Aesop_optNormRuleResultToNormSeqResult(x_34);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_29);
return x_36;
}
}
}
else
{
uint8_t x_37; 
x_37 = !lean_is_exclusive(x_9);
if (x_37 == 0)
{
return x_9;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_9, 0);
x_39 = lean_ctor_get(x_9, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_9);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
static lean_object* _init_l_Aesop_NormStep_unfold___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_NormStep_unfold___lambda__1___boxed), 7, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_NormStep_unfold___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("norm unfold is disabled (options := { ..., enableUnfold := false })", 67, 67);
return x_1;
}
}
static lean_object* _init_l_Aesop_NormStep_unfold___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_NormStep_unfold___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_4, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_ctor_get_uint8(x_11, sizeof(void*)*9 + 10);
lean_dec(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
lean_dec(x_1);
x_13 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_14 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_13, x_4, x_5, x_6, x_7, x_8, x_9);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Aesop_NormStep_unfold___closed__1;
x_18 = lean_unbox(x_15);
lean_dec(x_15);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_box(0);
x_20 = lean_apply_7(x_17, x_19, x_4, x_5, x_6, x_7, x_8, x_16);
return x_20;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = l_Aesop_TraceOption_steps;
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = l_Aesop_NormStep_unfold___closed__3;
x_24 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_22, x_23, x_4, x_5, x_6, x_7, x_8, x_16);
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = lean_apply_7(x_17, x_25, x_4, x_5, x_6, x_7, x_8, x_26);
return x_27;
}
}
else
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_box(0);
x_29 = l_Aesop_NormStep_unfold___lambda__2(x_1, x_28, x_4, x_5, x_6, x_7, x_8, x_9);
return x_29;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_NormStep_unfold___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_NormStep_unfold___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_unfold___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_NormStep_unfold(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_normSimp(x_1, x_2, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_10, 0);
lean_dec(x_13);
x_14 = l_Aesop_NormStep_unfold___lambda__2___closed__1;
lean_ctor_set(x_10, 0, x_14);
return x_10;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_10, 1);
lean_inc(x_15);
lean_dec(x_10);
x_16 = l_Aesop_NormStep_unfold___lambda__2___closed__1;
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
return x_17;
}
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_10);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = lean_ctor_get(x_10, 0);
lean_dec(x_19);
x_20 = !lean_is_exclusive(x_11);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_11, 0);
x_22 = lean_box(1);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_21);
lean_ctor_set(x_11, 0, x_23);
x_24 = l_Aesop_optNormRuleResultToNormSeqResult(x_11);
lean_ctor_set(x_10, 0, x_24);
return x_10;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_25 = lean_ctor_get(x_11, 0);
lean_inc(x_25);
lean_dec(x_11);
x_26 = lean_box(1);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_28, 0, x_27);
x_29 = l_Aesop_optNormRuleResultToNormSeqResult(x_28);
lean_ctor_set(x_10, 0, x_29);
return x_10;
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_30 = lean_ctor_get(x_10, 1);
lean_inc(x_30);
lean_dec(x_10);
x_31 = lean_ctor_get(x_11, 0);
lean_inc(x_31);
if (lean_is_exclusive(x_11)) {
 lean_ctor_release(x_11, 0);
 x_32 = x_11;
} else {
 lean_dec_ref(x_11);
 x_32 = lean_box(0);
}
x_33 = lean_box(1);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_31);
if (lean_is_scalar(x_32)) {
 x_35 = lean_alloc_ctor(1, 1, 0);
} else {
 x_35 = x_32;
}
lean_ctor_set(x_35, 0, x_34);
x_36 = l_Aesop_optNormRuleResultToNormSeqResult(x_35);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_30);
return x_37;
}
}
}
else
{
uint8_t x_38; 
x_38 = !lean_is_exclusive(x_10);
if (x_38 == 0)
{
return x_10;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_10, 0);
x_40 = lean_ctor_get(x_10, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_10);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
}
static lean_object* _init_l_Aesop_NormStep_simp___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("norm simp is disabled (simp_options := { ..., enabled := false })", 65, 65);
return x_1;
}
}
static lean_object* _init_l_Aesop_NormStep_simp___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_NormStep_simp___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = lean_ctor_get(x_5, 2);
lean_inc(x_11);
x_12 = lean_ctor_get_uint8(x_11, sizeof(void*)*3);
lean_dec(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
lean_dec(x_2);
lean_dec(x_1);
x_13 = l_Aesop_withNormTraceNode___lambda__2___closed__1;
x_14 = l_Aesop_TraceOption_isEnabled___at_Aesop_withNormTraceNode___spec__1(x_13, x_5, x_6, x_7, x_8, x_9, x_10);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_unbox(x_15);
lean_dec(x_15);
if (x_16 == 0)
{
uint8_t x_17; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_17 = !lean_is_exclusive(x_14);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_14, 0);
lean_dec(x_18);
x_19 = lean_box(2);
lean_ctor_set(x_14, 0, x_19);
return x_14;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_14, 1);
lean_inc(x_20);
lean_dec(x_14);
x_21 = lean_box(2);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_23 = lean_ctor_get(x_14, 1);
lean_inc(x_23);
lean_dec(x_14);
x_24 = l_Aesop_TraceOption_steps;
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = l_Aesop_NormStep_simp___closed__2;
x_27 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2(x_25, x_26, x_5, x_6, x_7, x_8, x_9, x_23);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_ctor_get(x_27, 0);
lean_dec(x_29);
x_30 = lean_box(2);
lean_ctor_set(x_27, 0, x_30);
return x_27;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_27, 1);
lean_inc(x_31);
lean_dec(x_27);
x_32 = lean_box(2);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_31);
return x_33;
}
}
}
else
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_box(0);
x_35 = l_Aesop_NormStep_simp___lambda__1(x_2, x_1, x_34, x_5, x_6, x_7, x_8, x_9, x_10);
return x_35;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_NormStep_simp___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_NormStep_simp___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_NormStep_simp(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normalizeGoalMVar___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_dec(x_1);
return x_6;
}
else
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_array_uget(x_3, x_5);
x_9 = !lean_is_exclusive(x_6);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; size_t x_20; size_t x_21; size_t x_22; size_t x_23; size_t x_24; lean_object* x_25; uint8_t x_26; 
x_10 = lean_ctor_get(x_6, 0);
x_11 = lean_ctor_get(x_6, 1);
x_12 = lean_array_get_size(x_11);
x_13 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_14 = 32;
x_15 = lean_uint64_shift_right(x_13, x_14);
x_16 = lean_uint64_xor(x_13, x_15);
x_17 = 16;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = lean_uint64_to_usize(x_19);
x_21 = lean_usize_of_nat(x_12);
lean_dec(x_12);
x_22 = 1;
x_23 = lean_usize_sub(x_21, x_22);
x_24 = lean_usize_land(x_20, x_23);
x_25 = lean_array_uget(x_11, x_24);
x_26 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_8, x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; 
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_10, x_27);
lean_dec(x_10);
x_29 = lean_box(0);
x_30 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_30, 0, x_8);
lean_ctor_set(x_30, 1, x_29);
lean_ctor_set(x_30, 2, x_25);
x_31 = lean_array_uset(x_11, x_24, x_30);
x_32 = lean_unsigned_to_nat(4u);
x_33 = lean_nat_mul(x_28, x_32);
x_34 = lean_unsigned_to_nat(3u);
x_35 = lean_nat_div(x_33, x_34);
lean_dec(x_33);
x_36 = lean_array_get_size(x_31);
x_37 = lean_nat_dec_le(x_35, x_36);
lean_dec(x_36);
lean_dec(x_35);
if (x_37 == 0)
{
lean_object* x_38; size_t x_39; 
x_38 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_31);
lean_ctor_set(x_6, 1, x_38);
lean_ctor_set(x_6, 0, x_28);
x_39 = lean_usize_add(x_5, x_22);
x_5 = x_39;
goto _start;
}
else
{
size_t x_41; 
lean_ctor_set(x_6, 1, x_31);
lean_ctor_set(x_6, 0, x_28);
x_41 = lean_usize_add(x_5, x_22);
x_5 = x_41;
goto _start;
}
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; size_t x_47; 
lean_inc(x_1);
x_43 = lean_array_uset(x_11, x_24, x_1);
x_44 = lean_box(0);
x_45 = l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(x_8, x_44, x_25);
x_46 = lean_array_uset(x_43, x_24, x_45);
lean_ctor_set(x_6, 1, x_46);
x_47 = lean_usize_add(x_5, x_22);
x_5 = x_47;
goto _start;
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; uint64_t x_52; uint64_t x_53; uint64_t x_54; uint64_t x_55; uint64_t x_56; uint64_t x_57; uint64_t x_58; size_t x_59; size_t x_60; size_t x_61; size_t x_62; size_t x_63; lean_object* x_64; uint8_t x_65; 
x_49 = lean_ctor_get(x_6, 0);
x_50 = lean_ctor_get(x_6, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_6);
x_51 = lean_array_get_size(x_50);
x_52 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_53 = 32;
x_54 = lean_uint64_shift_right(x_52, x_53);
x_55 = lean_uint64_xor(x_52, x_54);
x_56 = 16;
x_57 = lean_uint64_shift_right(x_55, x_56);
x_58 = lean_uint64_xor(x_55, x_57);
x_59 = lean_uint64_to_usize(x_58);
x_60 = lean_usize_of_nat(x_51);
lean_dec(x_51);
x_61 = 1;
x_62 = lean_usize_sub(x_60, x_61);
x_63 = lean_usize_land(x_59, x_62);
x_64 = lean_array_uget(x_50, x_63);
x_65 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_8, x_64);
if (x_65 == 0)
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; uint8_t x_76; 
x_66 = lean_unsigned_to_nat(1u);
x_67 = lean_nat_add(x_49, x_66);
lean_dec(x_49);
x_68 = lean_box(0);
x_69 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_69, 0, x_8);
lean_ctor_set(x_69, 1, x_68);
lean_ctor_set(x_69, 2, x_64);
x_70 = lean_array_uset(x_50, x_63, x_69);
x_71 = lean_unsigned_to_nat(4u);
x_72 = lean_nat_mul(x_67, x_71);
x_73 = lean_unsigned_to_nat(3u);
x_74 = lean_nat_div(x_72, x_73);
lean_dec(x_72);
x_75 = lean_array_get_size(x_70);
x_76 = lean_nat_dec_le(x_74, x_75);
lean_dec(x_75);
lean_dec(x_74);
if (x_76 == 0)
{
lean_object* x_77; lean_object* x_78; size_t x_79; 
x_77 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_70);
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_67);
lean_ctor_set(x_78, 1, x_77);
x_79 = lean_usize_add(x_5, x_61);
x_5 = x_79;
x_6 = x_78;
goto _start;
}
else
{
lean_object* x_81; size_t x_82; 
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_67);
lean_ctor_set(x_81, 1, x_70);
x_82 = lean_usize_add(x_5, x_61);
x_5 = x_82;
x_6 = x_81;
goto _start;
}
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; size_t x_89; 
lean_inc(x_1);
x_84 = lean_array_uset(x_50, x_63, x_1);
x_85 = lean_box(0);
x_86 = l_Std_DHashMap_Internal_AssocList_replace___at_Aesop_runNormRuleTac___spec__1(x_8, x_85, x_64);
x_87 = lean_array_uset(x_84, x_63, x_86);
x_88 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_88, 0, x_49);
lean_ctor_set(x_88, 1, x_87);
x_89 = lean_usize_add(x_5, x_61);
x_5 = x_89;
x_6 = x_88;
goto _start;
}
}
}
}
}
static lean_object* _init_l_Aesop_normalizeGoalMVar___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(4u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_normalizeGoalMVar___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_NormStep_unfold___boxed), 9, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalMVar(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_9 = lean_box(0);
x_10 = lean_array_size(x_2);
x_11 = 0;
x_12 = l_Aesop_runNormRuleTac___lambda__3___closed__5;
x_13 = l_Array_forInUnsafe_loop___at_Aesop_normalizeGoalMVar___spec__1(x_9, x_12, x_2, x_10, x_11, x_12);
lean_inc(x_2);
x_14 = lean_alloc_closure((void*)(l_Aesop_NormStep_runPreSimpRules___boxed), 10, 1);
lean_closure_set(x_14, 0, x_2);
x_15 = lean_alloc_closure((void*)(l_Aesop_NormStep_simp___boxed), 10, 1);
lean_closure_set(x_15, 0, x_13);
x_16 = lean_alloc_closure((void*)(l_Aesop_NormStep_runPostSimpRules___boxed), 10, 1);
lean_closure_set(x_16, 0, x_2);
x_17 = l_Aesop_normalizeGoalMVar___closed__1;
x_18 = lean_array_push(x_17, x_14);
x_19 = l_Aesop_normalizeGoalMVar___closed__2;
x_20 = lean_array_push(x_18, x_19);
x_21 = lean_array_push(x_20, x_15);
x_22 = lean_array_push(x_21, x_16);
x_23 = l_Aesop_runNormSteps(x_1, x_22, lean_box(0), x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_22);
return x_23;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_normalizeGoalMVar___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at_Aesop_normalizeGoalMVar___spec__1(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_1);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_1, 0);
x_12 = lean_ctor_get(x_1, 1);
x_13 = lean_ctor_get(x_1, 2);
lean_ctor_set(x_1, 2, x_12);
lean_ctor_set(x_1, 1, x_11);
lean_ctor_set(x_1, 0, x_13);
x_14 = lean_st_ref_get(x_2, x_9);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = l_Aesop_normalizeGoalMVar(x_3, x_4, x_1, x_5, x_6, x_7, x_8, x_15);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_17 = lean_ctor_get(x_1, 0);
x_18 = lean_ctor_get(x_1, 1);
x_19 = lean_ctor_get(x_1, 2);
x_20 = lean_ctor_get(x_1, 3);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_1);
x_21 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_17);
lean_ctor_set(x_21, 2, x_18);
lean_ctor_set(x_21, 3, x_20);
x_22 = lean_st_ref_get(x_2, x_9);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = l_Aesop_normalizeGoalMVar(x_3, x_4, x_21, x_5, x_6, x_7, x_8, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_st_ref_get(x_1, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_2, 7);
lean_inc(x_17);
lean_dec(x_2);
lean_inc(x_3);
lean_inc(x_7);
lean_inc(x_6);
x_18 = lean_alloc_closure((void*)(l_Aesop_normalizeGoalIfNecessary___rarg___lambda__1___boxed), 9, 4);
lean_closure_set(x_18, 0, x_6);
lean_closure_set(x_18, 1, x_7);
lean_closure_set(x_18, 2, x_3);
lean_closure_set(x_18, 3, x_17);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_19 = l_Aesop_Goal_runMetaMInParentState___rarg(x_18, x_15, x_9, x_10, x_11, x_12, x_16);
lean_dec(x_15);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
switch (lean_obj_tag(x_21)) {
case 0:
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
lean_dec(x_3);
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_dec(x_19);
x_23 = lean_ctor_get(x_20, 1);
lean_inc(x_23);
lean_dec(x_20);
x_24 = !lean_is_exclusive(x_21);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_25 = lean_ctor_get(x_21, 0);
x_26 = lean_st_ref_take(x_1, x_22);
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; uint8_t x_31; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = lean_ctor_get(x_26, 1);
lean_ctor_set_tag(x_26, 2);
lean_ctor_set(x_26, 1, x_25);
lean_ctor_set(x_26, 0, x_23);
x_30 = l_Aesop_treeImpl___elambda__5(x_28);
lean_dec(x_28);
x_31 = !lean_is_exclusive(x_30);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_32 = lean_ctor_get(x_30, 6);
lean_dec(x_32);
lean_ctor_set(x_30, 6, x_26);
lean_ctor_set(x_21, 0, x_30);
x_33 = lean_st_ref_set(x_1, x_21, x_29);
x_34 = lean_ctor_get(x_33, 1);
lean_inc(x_34);
lean_dec(x_33);
x_35 = lean_alloc_closure((void*)(l_Aesop_GoalRef_markProvenByNormalization___boxed), 2, 1);
lean_closure_set(x_35, 0, x_1);
x_36 = lean_apply_10(x_4, lean_box(0), x_35, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_34);
if (lean_obj_tag(x_36) == 0)
{
uint8_t x_37; 
x_37 = !lean_is_exclusive(x_36);
if (x_37 == 0)
{
lean_object* x_38; uint8_t x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_36, 0);
lean_dec(x_38);
x_39 = 1;
x_40 = lean_box(x_39);
lean_ctor_set(x_36, 0, x_40);
return x_36;
}
else
{
lean_object* x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; 
x_41 = lean_ctor_get(x_36, 1);
lean_inc(x_41);
lean_dec(x_36);
x_42 = 1;
x_43 = lean_box(x_42);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_43);
lean_ctor_set(x_44, 1, x_41);
return x_44;
}
}
else
{
uint8_t x_45; 
x_45 = !lean_is_exclusive(x_36);
if (x_45 == 0)
{
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_46 = lean_ctor_get(x_36, 0);
x_47 = lean_ctor_get(x_36, 1);
lean_inc(x_47);
lean_inc(x_46);
lean_dec(x_36);
x_48 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
return x_48;
}
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; uint8_t x_54; uint8_t x_55; uint8_t x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; uint8_t x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_49 = lean_ctor_get(x_30, 0);
x_50 = lean_ctor_get(x_30, 1);
x_51 = lean_ctor_get(x_30, 2);
x_52 = lean_ctor_get(x_30, 3);
x_53 = lean_ctor_get(x_30, 4);
x_54 = lean_ctor_get_uint8(x_30, sizeof(void*)*13);
x_55 = lean_ctor_get_uint8(x_30, sizeof(void*)*13 + 1);
x_56 = lean_ctor_get_uint8(x_30, sizeof(void*)*13 + 2);
x_57 = lean_ctor_get(x_30, 5);
x_58 = lean_ctor_get(x_30, 7);
x_59 = lean_ctor_get(x_30, 8);
x_60 = lean_ctor_get(x_30, 9);
x_61 = lean_ctor_get(x_30, 10);
x_62 = lean_ctor_get_uint8(x_30, sizeof(void*)*13 + 3);
x_63 = lean_ctor_get(x_30, 11);
x_64 = lean_ctor_get(x_30, 12);
lean_inc(x_64);
lean_inc(x_63);
lean_inc(x_61);
lean_inc(x_60);
lean_inc(x_59);
lean_inc(x_58);
lean_inc(x_57);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_30);
x_65 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_65, 0, x_49);
lean_ctor_set(x_65, 1, x_50);
lean_ctor_set(x_65, 2, x_51);
lean_ctor_set(x_65, 3, x_52);
lean_ctor_set(x_65, 4, x_53);
lean_ctor_set(x_65, 5, x_57);
lean_ctor_set(x_65, 6, x_26);
lean_ctor_set(x_65, 7, x_58);
lean_ctor_set(x_65, 8, x_59);
lean_ctor_set(x_65, 9, x_60);
lean_ctor_set(x_65, 10, x_61);
lean_ctor_set(x_65, 11, x_63);
lean_ctor_set(x_65, 12, x_64);
lean_ctor_set_uint8(x_65, sizeof(void*)*13, x_54);
lean_ctor_set_uint8(x_65, sizeof(void*)*13 + 1, x_55);
lean_ctor_set_uint8(x_65, sizeof(void*)*13 + 2, x_56);
lean_ctor_set_uint8(x_65, sizeof(void*)*13 + 3, x_62);
lean_ctor_set(x_21, 0, x_65);
x_66 = lean_st_ref_set(x_1, x_21, x_29);
x_67 = lean_ctor_get(x_66, 1);
lean_inc(x_67);
lean_dec(x_66);
x_68 = lean_alloc_closure((void*)(l_Aesop_GoalRef_markProvenByNormalization___boxed), 2, 1);
lean_closure_set(x_68, 0, x_1);
x_69 = lean_apply_10(x_4, lean_box(0), x_68, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_67);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; uint8_t x_72; lean_object* x_73; lean_object* x_74; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_71 = x_69;
} else {
 lean_dec_ref(x_69);
 x_71 = lean_box(0);
}
x_72 = 1;
x_73 = lean_box(x_72);
if (lean_is_scalar(x_71)) {
 x_74 = lean_alloc_ctor(0, 2, 0);
} else {
 x_74 = x_71;
}
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_70);
return x_74;
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_75 = lean_ctor_get(x_69, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_69, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_77 = x_69;
} else {
 lean_dec_ref(x_69);
 x_77 = lean_box(0);
}
if (lean_is_scalar(x_77)) {
 x_78 = lean_alloc_ctor(1, 2, 0);
} else {
 x_78 = x_77;
}
lean_ctor_set(x_78, 0, x_75);
lean_ctor_set(x_78, 1, x_76);
return x_78;
}
}
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; uint8_t x_88; uint8_t x_89; uint8_t x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; uint8_t x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; 
x_79 = lean_ctor_get(x_26, 0);
x_80 = lean_ctor_get(x_26, 1);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_26);
x_81 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_81, 0, x_23);
lean_ctor_set(x_81, 1, x_25);
x_82 = l_Aesop_treeImpl___elambda__5(x_79);
lean_dec(x_79);
x_83 = lean_ctor_get(x_82, 0);
lean_inc(x_83);
x_84 = lean_ctor_get(x_82, 1);
lean_inc(x_84);
x_85 = lean_ctor_get(x_82, 2);
lean_inc(x_85);
x_86 = lean_ctor_get(x_82, 3);
lean_inc(x_86);
x_87 = lean_ctor_get(x_82, 4);
lean_inc(x_87);
x_88 = lean_ctor_get_uint8(x_82, sizeof(void*)*13);
x_89 = lean_ctor_get_uint8(x_82, sizeof(void*)*13 + 1);
x_90 = lean_ctor_get_uint8(x_82, sizeof(void*)*13 + 2);
x_91 = lean_ctor_get(x_82, 5);
lean_inc(x_91);
x_92 = lean_ctor_get(x_82, 7);
lean_inc(x_92);
x_93 = lean_ctor_get(x_82, 8);
lean_inc(x_93);
x_94 = lean_ctor_get(x_82, 9);
lean_inc(x_94);
x_95 = lean_ctor_get(x_82, 10);
lean_inc(x_95);
x_96 = lean_ctor_get_uint8(x_82, sizeof(void*)*13 + 3);
x_97 = lean_ctor_get(x_82, 11);
lean_inc(x_97);
x_98 = lean_ctor_get(x_82, 12);
lean_inc(x_98);
if (lean_is_exclusive(x_82)) {
 lean_ctor_release(x_82, 0);
 lean_ctor_release(x_82, 1);
 lean_ctor_release(x_82, 2);
 lean_ctor_release(x_82, 3);
 lean_ctor_release(x_82, 4);
 lean_ctor_release(x_82, 5);
 lean_ctor_release(x_82, 6);
 lean_ctor_release(x_82, 7);
 lean_ctor_release(x_82, 8);
 lean_ctor_release(x_82, 9);
 lean_ctor_release(x_82, 10);
 lean_ctor_release(x_82, 11);
 lean_ctor_release(x_82, 12);
 x_99 = x_82;
} else {
 lean_dec_ref(x_82);
 x_99 = lean_box(0);
}
if (lean_is_scalar(x_99)) {
 x_100 = lean_alloc_ctor(0, 13, 4);
} else {
 x_100 = x_99;
}
lean_ctor_set(x_100, 0, x_83);
lean_ctor_set(x_100, 1, x_84);
lean_ctor_set(x_100, 2, x_85);
lean_ctor_set(x_100, 3, x_86);
lean_ctor_set(x_100, 4, x_87);
lean_ctor_set(x_100, 5, x_91);
lean_ctor_set(x_100, 6, x_81);
lean_ctor_set(x_100, 7, x_92);
lean_ctor_set(x_100, 8, x_93);
lean_ctor_set(x_100, 9, x_94);
lean_ctor_set(x_100, 10, x_95);
lean_ctor_set(x_100, 11, x_97);
lean_ctor_set(x_100, 12, x_98);
lean_ctor_set_uint8(x_100, sizeof(void*)*13, x_88);
lean_ctor_set_uint8(x_100, sizeof(void*)*13 + 1, x_89);
lean_ctor_set_uint8(x_100, sizeof(void*)*13 + 2, x_90);
lean_ctor_set_uint8(x_100, sizeof(void*)*13 + 3, x_96);
lean_ctor_set(x_21, 0, x_100);
x_101 = lean_st_ref_set(x_1, x_21, x_80);
x_102 = lean_ctor_get(x_101, 1);
lean_inc(x_102);
lean_dec(x_101);
x_103 = lean_alloc_closure((void*)(l_Aesop_GoalRef_markProvenByNormalization___boxed), 2, 1);
lean_closure_set(x_103, 0, x_1);
x_104 = lean_apply_10(x_4, lean_box(0), x_103, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_102);
if (lean_obj_tag(x_104) == 0)
{
lean_object* x_105; lean_object* x_106; uint8_t x_107; lean_object* x_108; lean_object* x_109; 
x_105 = lean_ctor_get(x_104, 1);
lean_inc(x_105);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_106 = x_104;
} else {
 lean_dec_ref(x_104);
 x_106 = lean_box(0);
}
x_107 = 1;
x_108 = lean_box(x_107);
if (lean_is_scalar(x_106)) {
 x_109 = lean_alloc_ctor(0, 2, 0);
} else {
 x_109 = x_106;
}
lean_ctor_set(x_109, 0, x_108);
lean_ctor_set(x_109, 1, x_105);
return x_109;
}
else
{
lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; 
x_110 = lean_ctor_get(x_104, 0);
lean_inc(x_110);
x_111 = lean_ctor_get(x_104, 1);
lean_inc(x_111);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_112 = x_104;
} else {
 lean_dec_ref(x_104);
 x_112 = lean_box(0);
}
if (lean_is_scalar(x_112)) {
 x_113 = lean_alloc_ctor(1, 2, 0);
} else {
 x_113 = x_112;
}
lean_ctor_set(x_113, 0, x_110);
lean_ctor_set(x_113, 1, x_111);
return x_113;
}
}
}
else
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; uint8_t x_126; uint8_t x_127; uint8_t x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; 
x_114 = lean_ctor_get(x_21, 0);
lean_inc(x_114);
lean_dec(x_21);
x_115 = lean_st_ref_take(x_1, x_22);
x_116 = lean_ctor_get(x_115, 0);
lean_inc(x_116);
x_117 = lean_ctor_get(x_115, 1);
lean_inc(x_117);
if (lean_is_exclusive(x_115)) {
 lean_ctor_release(x_115, 0);
 lean_ctor_release(x_115, 1);
 x_118 = x_115;
} else {
 lean_dec_ref(x_115);
 x_118 = lean_box(0);
}
if (lean_is_scalar(x_118)) {
 x_119 = lean_alloc_ctor(2, 2, 0);
} else {
 x_119 = x_118;
 lean_ctor_set_tag(x_119, 2);
}
lean_ctor_set(x_119, 0, x_23);
lean_ctor_set(x_119, 1, x_114);
x_120 = l_Aesop_treeImpl___elambda__5(x_116);
lean_dec(x_116);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
x_123 = lean_ctor_get(x_120, 2);
lean_inc(x_123);
x_124 = lean_ctor_get(x_120, 3);
lean_inc(x_124);
x_125 = lean_ctor_get(x_120, 4);
lean_inc(x_125);
x_126 = lean_ctor_get_uint8(x_120, sizeof(void*)*13);
x_127 = lean_ctor_get_uint8(x_120, sizeof(void*)*13 + 1);
x_128 = lean_ctor_get_uint8(x_120, sizeof(void*)*13 + 2);
x_129 = lean_ctor_get(x_120, 5);
lean_inc(x_129);
x_130 = lean_ctor_get(x_120, 7);
lean_inc(x_130);
x_131 = lean_ctor_get(x_120, 8);
lean_inc(x_131);
x_132 = lean_ctor_get(x_120, 9);
lean_inc(x_132);
x_133 = lean_ctor_get(x_120, 10);
lean_inc(x_133);
x_134 = lean_ctor_get_uint8(x_120, sizeof(void*)*13 + 3);
x_135 = lean_ctor_get(x_120, 11);
lean_inc(x_135);
x_136 = lean_ctor_get(x_120, 12);
lean_inc(x_136);
if (lean_is_exclusive(x_120)) {
 lean_ctor_release(x_120, 0);
 lean_ctor_release(x_120, 1);
 lean_ctor_release(x_120, 2);
 lean_ctor_release(x_120, 3);
 lean_ctor_release(x_120, 4);
 lean_ctor_release(x_120, 5);
 lean_ctor_release(x_120, 6);
 lean_ctor_release(x_120, 7);
 lean_ctor_release(x_120, 8);
 lean_ctor_release(x_120, 9);
 lean_ctor_release(x_120, 10);
 lean_ctor_release(x_120, 11);
 lean_ctor_release(x_120, 12);
 x_137 = x_120;
} else {
 lean_dec_ref(x_120);
 x_137 = lean_box(0);
}
if (lean_is_scalar(x_137)) {
 x_138 = lean_alloc_ctor(0, 13, 4);
} else {
 x_138 = x_137;
}
lean_ctor_set(x_138, 0, x_121);
lean_ctor_set(x_138, 1, x_122);
lean_ctor_set(x_138, 2, x_123);
lean_ctor_set(x_138, 3, x_124);
lean_ctor_set(x_138, 4, x_125);
lean_ctor_set(x_138, 5, x_129);
lean_ctor_set(x_138, 6, x_119);
lean_ctor_set(x_138, 7, x_130);
lean_ctor_set(x_138, 8, x_131);
lean_ctor_set(x_138, 9, x_132);
lean_ctor_set(x_138, 10, x_133);
lean_ctor_set(x_138, 11, x_135);
lean_ctor_set(x_138, 12, x_136);
lean_ctor_set_uint8(x_138, sizeof(void*)*13, x_126);
lean_ctor_set_uint8(x_138, sizeof(void*)*13 + 1, x_127);
lean_ctor_set_uint8(x_138, sizeof(void*)*13 + 2, x_128);
lean_ctor_set_uint8(x_138, sizeof(void*)*13 + 3, x_134);
x_139 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_139, 0, x_138);
x_140 = lean_st_ref_set(x_1, x_139, x_117);
x_141 = lean_ctor_get(x_140, 1);
lean_inc(x_141);
lean_dec(x_140);
x_142 = lean_alloc_closure((void*)(l_Aesop_GoalRef_markProvenByNormalization___boxed), 2, 1);
lean_closure_set(x_142, 0, x_1);
x_143 = lean_apply_10(x_4, lean_box(0), x_142, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_141);
if (lean_obj_tag(x_143) == 0)
{
lean_object* x_144; lean_object* x_145; uint8_t x_146; lean_object* x_147; lean_object* x_148; 
x_144 = lean_ctor_get(x_143, 1);
lean_inc(x_144);
if (lean_is_exclusive(x_143)) {
 lean_ctor_release(x_143, 0);
 lean_ctor_release(x_143, 1);
 x_145 = x_143;
} else {
 lean_dec_ref(x_143);
 x_145 = lean_box(0);
}
x_146 = 1;
x_147 = lean_box(x_146);
if (lean_is_scalar(x_145)) {
 x_148 = lean_alloc_ctor(0, 2, 0);
} else {
 x_148 = x_145;
}
lean_ctor_set(x_148, 0, x_147);
lean_ctor_set(x_148, 1, x_144);
return x_148;
}
else
{
lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; 
x_149 = lean_ctor_get(x_143, 0);
lean_inc(x_149);
x_150 = lean_ctor_get(x_143, 1);
lean_inc(x_150);
if (lean_is_exclusive(x_143)) {
 lean_ctor_release(x_143, 0);
 lean_ctor_release(x_143, 1);
 x_151 = x_143;
} else {
 lean_dec_ref(x_143);
 x_151 = lean_box(0);
}
if (lean_is_scalar(x_151)) {
 x_152 = lean_alloc_ctor(1, 2, 0);
} else {
 x_152 = x_151;
}
lean_ctor_set(x_152, 0, x_149);
lean_ctor_set(x_152, 1, x_150);
return x_152;
}
}
}
case 1:
{
lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; uint8_t x_162; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
x_153 = lean_ctor_get(x_19, 1);
lean_inc(x_153);
lean_dec(x_19);
x_154 = lean_ctor_get(x_20, 1);
lean_inc(x_154);
lean_dec(x_20);
x_155 = lean_ctor_get(x_21, 0);
lean_inc(x_155);
x_156 = lean_ctor_get(x_21, 1);
lean_inc(x_156);
lean_dec(x_21);
x_157 = lean_st_ref_take(x_1, x_153);
x_158 = lean_ctor_get(x_157, 0);
lean_inc(x_158);
x_159 = lean_ctor_get(x_157, 1);
lean_inc(x_159);
lean_dec(x_157);
x_160 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_160, 0, x_155);
lean_ctor_set(x_160, 1, x_154);
lean_ctor_set(x_160, 2, x_156);
x_161 = l_Aesop_treeImpl___elambda__5(x_158);
lean_dec(x_158);
x_162 = !lean_is_exclusive(x_161);
if (x_162 == 0)
{
lean_object* x_163; lean_object* x_164; lean_object* x_165; uint8_t x_166; 
x_163 = lean_ctor_get(x_161, 6);
lean_dec(x_163);
lean_ctor_set(x_161, 6, x_160);
x_164 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_164, 0, x_161);
x_165 = lean_st_ref_set(x_1, x_164, x_159);
lean_dec(x_1);
x_166 = !lean_is_exclusive(x_165);
if (x_166 == 0)
{
lean_object* x_167; uint8_t x_168; lean_object* x_169; 
x_167 = lean_ctor_get(x_165, 0);
lean_dec(x_167);
x_168 = 0;
x_169 = lean_box(x_168);
lean_ctor_set(x_165, 0, x_169);
return x_165;
}
else
{
lean_object* x_170; uint8_t x_171; lean_object* x_172; lean_object* x_173; 
x_170 = lean_ctor_get(x_165, 1);
lean_inc(x_170);
lean_dec(x_165);
x_171 = 0;
x_172 = lean_box(x_171);
x_173 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_173, 0, x_172);
lean_ctor_set(x_173, 1, x_170);
return x_173;
}
}
else
{
lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; uint8_t x_179; uint8_t x_180; uint8_t x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; uint8_t x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; uint8_t x_195; lean_object* x_196; lean_object* x_197; 
x_174 = lean_ctor_get(x_161, 0);
x_175 = lean_ctor_get(x_161, 1);
x_176 = lean_ctor_get(x_161, 2);
x_177 = lean_ctor_get(x_161, 3);
x_178 = lean_ctor_get(x_161, 4);
x_179 = lean_ctor_get_uint8(x_161, sizeof(void*)*13);
x_180 = lean_ctor_get_uint8(x_161, sizeof(void*)*13 + 1);
x_181 = lean_ctor_get_uint8(x_161, sizeof(void*)*13 + 2);
x_182 = lean_ctor_get(x_161, 5);
x_183 = lean_ctor_get(x_161, 7);
x_184 = lean_ctor_get(x_161, 8);
x_185 = lean_ctor_get(x_161, 9);
x_186 = lean_ctor_get(x_161, 10);
x_187 = lean_ctor_get_uint8(x_161, sizeof(void*)*13 + 3);
x_188 = lean_ctor_get(x_161, 11);
x_189 = lean_ctor_get(x_161, 12);
lean_inc(x_189);
lean_inc(x_188);
lean_inc(x_186);
lean_inc(x_185);
lean_inc(x_184);
lean_inc(x_183);
lean_inc(x_182);
lean_inc(x_178);
lean_inc(x_177);
lean_inc(x_176);
lean_inc(x_175);
lean_inc(x_174);
lean_dec(x_161);
x_190 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_190, 0, x_174);
lean_ctor_set(x_190, 1, x_175);
lean_ctor_set(x_190, 2, x_176);
lean_ctor_set(x_190, 3, x_177);
lean_ctor_set(x_190, 4, x_178);
lean_ctor_set(x_190, 5, x_182);
lean_ctor_set(x_190, 6, x_160);
lean_ctor_set(x_190, 7, x_183);
lean_ctor_set(x_190, 8, x_184);
lean_ctor_set(x_190, 9, x_185);
lean_ctor_set(x_190, 10, x_186);
lean_ctor_set(x_190, 11, x_188);
lean_ctor_set(x_190, 12, x_189);
lean_ctor_set_uint8(x_190, sizeof(void*)*13, x_179);
lean_ctor_set_uint8(x_190, sizeof(void*)*13 + 1, x_180);
lean_ctor_set_uint8(x_190, sizeof(void*)*13 + 2, x_181);
lean_ctor_set_uint8(x_190, sizeof(void*)*13 + 3, x_187);
x_191 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_191, 0, x_190);
x_192 = lean_st_ref_set(x_1, x_191, x_159);
lean_dec(x_1);
x_193 = lean_ctor_get(x_192, 1);
lean_inc(x_193);
if (lean_is_exclusive(x_192)) {
 lean_ctor_release(x_192, 0);
 lean_ctor_release(x_192, 1);
 x_194 = x_192;
} else {
 lean_dec_ref(x_192);
 x_194 = lean_box(0);
}
x_195 = 0;
x_196 = lean_box(x_195);
if (lean_is_scalar(x_194)) {
 x_197 = lean_alloc_ctor(0, 2, 0);
} else {
 x_197 = x_194;
}
lean_ctor_set(x_197, 0, x_196);
lean_ctor_set(x_197, 1, x_193);
return x_197;
}
}
default: 
{
lean_object* x_198; lean_object* x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; uint8_t x_206; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_198 = lean_ctor_get(x_19, 1);
lean_inc(x_198);
lean_dec(x_19);
x_199 = lean_ctor_get(x_20, 1);
lean_inc(x_199);
lean_dec(x_20);
x_200 = lean_st_ref_take(x_1, x_198);
x_201 = lean_ctor_get(x_200, 0);
lean_inc(x_201);
x_202 = lean_ctor_get(x_200, 1);
lean_inc(x_202);
lean_dec(x_200);
x_203 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_204 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_204, 0, x_3);
lean_ctor_set(x_204, 1, x_199);
lean_ctor_set(x_204, 2, x_203);
x_205 = l_Aesop_treeImpl___elambda__5(x_201);
lean_dec(x_201);
x_206 = !lean_is_exclusive(x_205);
if (x_206 == 0)
{
lean_object* x_207; lean_object* x_208; lean_object* x_209; uint8_t x_210; 
x_207 = lean_ctor_get(x_205, 6);
lean_dec(x_207);
lean_ctor_set(x_205, 6, x_204);
x_208 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_208, 0, x_205);
x_209 = lean_st_ref_set(x_1, x_208, x_202);
lean_dec(x_1);
x_210 = !lean_is_exclusive(x_209);
if (x_210 == 0)
{
lean_object* x_211; uint8_t x_212; lean_object* x_213; 
x_211 = lean_ctor_get(x_209, 0);
lean_dec(x_211);
x_212 = 0;
x_213 = lean_box(x_212);
lean_ctor_set(x_209, 0, x_213);
return x_209;
}
else
{
lean_object* x_214; uint8_t x_215; lean_object* x_216; lean_object* x_217; 
x_214 = lean_ctor_get(x_209, 1);
lean_inc(x_214);
lean_dec(x_209);
x_215 = 0;
x_216 = lean_box(x_215);
x_217 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_217, 0, x_216);
lean_ctor_set(x_217, 1, x_214);
return x_217;
}
}
else
{
lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; uint8_t x_223; uint8_t x_224; uint8_t x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; uint8_t x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; lean_object* x_235; lean_object* x_236; lean_object* x_237; lean_object* x_238; uint8_t x_239; lean_object* x_240; lean_object* x_241; 
x_218 = lean_ctor_get(x_205, 0);
x_219 = lean_ctor_get(x_205, 1);
x_220 = lean_ctor_get(x_205, 2);
x_221 = lean_ctor_get(x_205, 3);
x_222 = lean_ctor_get(x_205, 4);
x_223 = lean_ctor_get_uint8(x_205, sizeof(void*)*13);
x_224 = lean_ctor_get_uint8(x_205, sizeof(void*)*13 + 1);
x_225 = lean_ctor_get_uint8(x_205, sizeof(void*)*13 + 2);
x_226 = lean_ctor_get(x_205, 5);
x_227 = lean_ctor_get(x_205, 7);
x_228 = lean_ctor_get(x_205, 8);
x_229 = lean_ctor_get(x_205, 9);
x_230 = lean_ctor_get(x_205, 10);
x_231 = lean_ctor_get_uint8(x_205, sizeof(void*)*13 + 3);
x_232 = lean_ctor_get(x_205, 11);
x_233 = lean_ctor_get(x_205, 12);
lean_inc(x_233);
lean_inc(x_232);
lean_inc(x_230);
lean_inc(x_229);
lean_inc(x_228);
lean_inc(x_227);
lean_inc(x_226);
lean_inc(x_222);
lean_inc(x_221);
lean_inc(x_220);
lean_inc(x_219);
lean_inc(x_218);
lean_dec(x_205);
x_234 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_234, 0, x_218);
lean_ctor_set(x_234, 1, x_219);
lean_ctor_set(x_234, 2, x_220);
lean_ctor_set(x_234, 3, x_221);
lean_ctor_set(x_234, 4, x_222);
lean_ctor_set(x_234, 5, x_226);
lean_ctor_set(x_234, 6, x_204);
lean_ctor_set(x_234, 7, x_227);
lean_ctor_set(x_234, 8, x_228);
lean_ctor_set(x_234, 9, x_229);
lean_ctor_set(x_234, 10, x_230);
lean_ctor_set(x_234, 11, x_232);
lean_ctor_set(x_234, 12, x_233);
lean_ctor_set_uint8(x_234, sizeof(void*)*13, x_223);
lean_ctor_set_uint8(x_234, sizeof(void*)*13 + 1, x_224);
lean_ctor_set_uint8(x_234, sizeof(void*)*13 + 2, x_225);
lean_ctor_set_uint8(x_234, sizeof(void*)*13 + 3, x_231);
x_235 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_235, 0, x_234);
x_236 = lean_st_ref_set(x_1, x_235, x_202);
lean_dec(x_1);
x_237 = lean_ctor_get(x_236, 1);
lean_inc(x_237);
if (lean_is_exclusive(x_236)) {
 lean_ctor_release(x_236, 0);
 lean_ctor_release(x_236, 1);
 x_238 = x_236;
} else {
 lean_dec_ref(x_236);
 x_238 = lean_box(0);
}
x_239 = 0;
x_240 = lean_box(x_239);
if (lean_is_scalar(x_238)) {
 x_241 = lean_alloc_ctor(0, 2, 0);
} else {
 x_241 = x_238;
}
lean_ctor_set(x_241, 0, x_240);
lean_ctor_set(x_241, 1, x_237);
return x_241;
}
}
}
}
else
{
uint8_t x_242; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_242 = !lean_is_exclusive(x_19);
if (x_242 == 0)
{
return x_19;
}
else
{
lean_object* x_243; lean_object* x_244; lean_object* x_245; 
x_243 = lean_ctor_get(x_19, 0);
x_244 = lean_ctor_get(x_19, 1);
lean_inc(x_244);
lean_inc(x_243);
lean_dec(x_19);
x_245 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_245, 0, x_243);
lean_ctor_set(x_245, 1, x_244);
return x_245;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; 
x_14 = lean_ctor_get(x_1, 6);
lean_inc(x_14);
switch (lean_obj_tag(x_14)) {
case 0:
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_box(0);
x_16 = l_Aesop_normalizeGoalIfNecessary___rarg___lambda__2(x_2, x_1, x_3, x_4, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
return x_16;
}
case 1:
{
uint8_t x_17; lean_object* x_18; lean_object* x_19; 
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_17 = 0;
x_18 = lean_box(x_17);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_13);
return x_19;
}
default: 
{
uint8_t x_20; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_20 = !lean_is_exclusive(x_14);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_14, 1);
lean_dec(x_21);
x_22 = lean_ctor_get(x_14, 0);
lean_dec(x_22);
x_23 = 1;
x_24 = lean_box(x_23);
lean_ctor_set_tag(x_14, 0);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set(x_14, 0, x_24);
return x_14;
}
else
{
uint8_t x_25; lean_object* x_26; lean_object* x_27; 
lean_dec(x_14);
x_25 = 1;
x_26 = lean_box(x_25);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_13);
return x_27;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_11 = l_Aesop_SearchM_instMonadStats___rarg(x_2);
x_12 = lean_st_ref_get(x_1, x_10);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = l_Aesop_treeImpl___elambda__5(x_13);
x_16 = lean_ctor_get(x_15, 5);
lean_inc(x_16);
x_17 = lean_alloc_closure((void*)(l_Aesop_Goal_isRoot___boxed), 2, 1);
lean_closure_set(x_17, 0, x_13);
x_18 = lean_ctor_get(x_11, 0);
lean_inc(x_18);
lean_dec(x_11);
lean_inc(x_18);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_19 = lean_apply_10(x_18, lean_box(0), x_17, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_14);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; uint8_t x_21; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_unbox(x_20);
lean_dec(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_dec(x_19);
x_23 = lean_box(0);
x_24 = l_Aesop_normalizeGoalIfNecessary___rarg___lambda__3(x_15, x_1, x_16, x_18, x_23, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_22);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; 
lean_dec(x_18);
lean_dec(x_15);
lean_dec(x_3);
x_25 = lean_ctor_get(x_19, 1);
lean_inc(x_25);
lean_dec(x_19);
x_26 = lean_st_ref_get(x_4, x_25);
lean_dec(x_4);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Aesop_getRootMetaState___rarg(x_5, x_6, x_7, x_8, x_9, x_27);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_take(x_1, x_30);
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_31, 1);
lean_inc(x_33);
lean_dec(x_31);
x_34 = l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2;
x_35 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_35, 0, x_16);
lean_ctor_set(x_35, 1, x_29);
lean_ctor_set(x_35, 2, x_34);
x_36 = l_Aesop_treeImpl___elambda__5(x_32);
lean_dec(x_32);
x_37 = !lean_is_exclusive(x_36);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_38 = lean_ctor_get(x_36, 6);
lean_dec(x_38);
lean_ctor_set(x_36, 6, x_35);
x_39 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_39, 0, x_36);
x_40 = lean_st_ref_set(x_1, x_39, x_33);
lean_dec(x_1);
x_41 = !lean_is_exclusive(x_40);
if (x_41 == 0)
{
lean_object* x_42; uint8_t x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_40, 0);
lean_dec(x_42);
x_43 = 0;
x_44 = lean_box(x_43);
lean_ctor_set(x_40, 0, x_44);
return x_40;
}
else
{
lean_object* x_45; uint8_t x_46; lean_object* x_47; lean_object* x_48; 
x_45 = lean_ctor_get(x_40, 1);
lean_inc(x_45);
lean_dec(x_40);
x_46 = 0;
x_47 = lean_box(x_46);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_45);
return x_48;
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; uint8_t x_54; uint8_t x_55; uint8_t x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; uint8_t x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; uint8_t x_70; lean_object* x_71; lean_object* x_72; 
x_49 = lean_ctor_get(x_36, 0);
x_50 = lean_ctor_get(x_36, 1);
x_51 = lean_ctor_get(x_36, 2);
x_52 = lean_ctor_get(x_36, 3);
x_53 = lean_ctor_get(x_36, 4);
x_54 = lean_ctor_get_uint8(x_36, sizeof(void*)*13);
x_55 = lean_ctor_get_uint8(x_36, sizeof(void*)*13 + 1);
x_56 = lean_ctor_get_uint8(x_36, sizeof(void*)*13 + 2);
x_57 = lean_ctor_get(x_36, 5);
x_58 = lean_ctor_get(x_36, 7);
x_59 = lean_ctor_get(x_36, 8);
x_60 = lean_ctor_get(x_36, 9);
x_61 = lean_ctor_get(x_36, 10);
x_62 = lean_ctor_get_uint8(x_36, sizeof(void*)*13 + 3);
x_63 = lean_ctor_get(x_36, 11);
x_64 = lean_ctor_get(x_36, 12);
lean_inc(x_64);
lean_inc(x_63);
lean_inc(x_61);
lean_inc(x_60);
lean_inc(x_59);
lean_inc(x_58);
lean_inc(x_57);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_36);
x_65 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_65, 0, x_49);
lean_ctor_set(x_65, 1, x_50);
lean_ctor_set(x_65, 2, x_51);
lean_ctor_set(x_65, 3, x_52);
lean_ctor_set(x_65, 4, x_53);
lean_ctor_set(x_65, 5, x_57);
lean_ctor_set(x_65, 6, x_35);
lean_ctor_set(x_65, 7, x_58);
lean_ctor_set(x_65, 8, x_59);
lean_ctor_set(x_65, 9, x_60);
lean_ctor_set(x_65, 10, x_61);
lean_ctor_set(x_65, 11, x_63);
lean_ctor_set(x_65, 12, x_64);
lean_ctor_set_uint8(x_65, sizeof(void*)*13, x_54);
lean_ctor_set_uint8(x_65, sizeof(void*)*13 + 1, x_55);
lean_ctor_set_uint8(x_65, sizeof(void*)*13 + 2, x_56);
lean_ctor_set_uint8(x_65, sizeof(void*)*13 + 3, x_62);
x_66 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_66, 0, x_65);
x_67 = lean_st_ref_set(x_1, x_66, x_33);
lean_dec(x_1);
x_68 = lean_ctor_get(x_67, 1);
lean_inc(x_68);
if (lean_is_exclusive(x_67)) {
 lean_ctor_release(x_67, 0);
 lean_ctor_release(x_67, 1);
 x_69 = x_67;
} else {
 lean_dec_ref(x_67);
 x_69 = lean_box(0);
}
x_70 = 0;
x_71 = lean_box(x_70);
if (lean_is_scalar(x_69)) {
 x_72 = lean_alloc_ctor(0, 2, 0);
} else {
 x_72 = x_69;
}
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_68);
return x_72;
}
}
}
else
{
uint8_t x_73; 
lean_dec(x_18);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_73 = !lean_is_exclusive(x_19);
if (x_73 == 0)
{
return x_19;
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; 
x_74 = lean_ctor_get(x_19, 0);
x_75 = lean_ctor_get(x_19, 1);
lean_inc(x_75);
lean_inc(x_74);
lean_dec(x_19);
x_76 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_76, 0, x_74);
lean_ctor_set(x_76, 1, x_75);
return x_76;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_normalizeGoalIfNecessary___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_normalizeGoalIfNecessary___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; 
x_14 = l_Aesop_normalizeGoalIfNecessary___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_5);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; 
x_14 = l_Aesop_normalizeGoalIfNecessary___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_5);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_normalizeGoalIfNecessary___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_normalizeGoalIfNecessary___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_2);
return x_11;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_ElabRuleTerm(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Script_SpecificTactics(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_Expansion_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_Expansion_Simp(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_RuleSelection(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_SearchM(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_State(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Lean_HashSet(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Search_Expansion_Norm(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_ElabRuleTerm(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Script_SpecificTactics(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_Expansion_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_Expansion_Simp(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_RuleSelection(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_SearchM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_State(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Lean_HashSet(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instMonadBacktrackSavedStateNormM___closed__1 = _init_l_Aesop_instMonadBacktrackSavedStateNormM___closed__1();
lean_mark_persistent(l_Aesop_instMonadBacktrackSavedStateNormM___closed__1);
l_Aesop_instMonadBacktrackSavedStateNormM___closed__2 = _init_l_Aesop_instMonadBacktrackSavedStateNormM___closed__2();
lean_mark_persistent(l_Aesop_instMonadBacktrackSavedStateNormM___closed__2);
l_Aesop_instMonadBacktrackSavedStateNormM___closed__3 = _init_l_Aesop_instMonadBacktrackSavedStateNormM___closed__3();
lean_mark_persistent(l_Aesop_instMonadBacktrackSavedStateNormM___closed__3);
l_Aesop_instMonadBacktrackSavedStateNormM = _init_l_Aesop_instMonadBacktrackSavedStateNormM();
lean_mark_persistent(l_Aesop_instMonadBacktrackSavedStateNormM);
l_Aesop_instMonadStatsNormM___closed__1 = _init_l_Aesop_instMonadStatsNormM___closed__1();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__1);
l_Aesop_instMonadStatsNormM___closed__2 = _init_l_Aesop_instMonadStatsNormM___closed__2();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__2);
l_Aesop_instMonadStatsNormM___closed__3 = _init_l_Aesop_instMonadStatsNormM___closed__3();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__3);
l_Aesop_instMonadStatsNormM___closed__4 = _init_l_Aesop_instMonadStatsNormM___closed__4();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__4);
l_Aesop_instMonadStatsNormM___closed__5 = _init_l_Aesop_instMonadStatsNormM___closed__5();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__5);
l_Aesop_instMonadStatsNormM___closed__6 = _init_l_Aesop_instMonadStatsNormM___closed__6();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__6);
l_Aesop_instMonadStatsNormM___closed__7 = _init_l_Aesop_instMonadStatsNormM___closed__7();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__7);
l_Aesop_instMonadStatsNormM___closed__8 = _init_l_Aesop_instMonadStatsNormM___closed__8();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__8);
l_Aesop_instMonadStatsNormM___closed__9 = _init_l_Aesop_instMonadStatsNormM___closed__9();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__9);
l_Aesop_instMonadStatsNormM___closed__10 = _init_l_Aesop_instMonadStatsNormM___closed__10();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__10);
l_Aesop_instMonadStatsNormM___closed__11 = _init_l_Aesop_instMonadStatsNormM___closed__11();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__11);
l_Aesop_instMonadStatsNormM___closed__12 = _init_l_Aesop_instMonadStatsNormM___closed__12();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__12);
l_Aesop_instMonadStatsNormM___closed__13 = _init_l_Aesop_instMonadStatsNormM___closed__13();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__13);
l_Aesop_instMonadStatsNormM___closed__14 = _init_l_Aesop_instMonadStatsNormM___closed__14();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__14);
l_Aesop_instMonadStatsNormM___closed__15 = _init_l_Aesop_instMonadStatsNormM___closed__15();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__15);
l_Aesop_instMonadStatsNormM___closed__16 = _init_l_Aesop_instMonadStatsNormM___closed__16();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__16);
l_Aesop_instMonadStatsNormM___closed__17 = _init_l_Aesop_instMonadStatsNormM___closed__17();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__17);
l_Aesop_instMonadStatsNormM___closed__18 = _init_l_Aesop_instMonadStatsNormM___closed__18();
lean_mark_persistent(l_Aesop_instMonadStatsNormM___closed__18);
l_Aesop_instMonadStatsNormM = _init_l_Aesop_instMonadStatsNormM();
lean_mark_persistent(l_Aesop_instMonadStatsNormM);
l_Aesop_withNormTraceNode_fmt___closed__1 = _init_l_Aesop_withNormTraceNode_fmt___closed__1();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__1);
l_Aesop_withNormTraceNode_fmt___closed__2 = _init_l_Aesop_withNormTraceNode_fmt___closed__2();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__2);
l_Aesop_withNormTraceNode_fmt___closed__3 = _init_l_Aesop_withNormTraceNode_fmt___closed__3();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__3);
l_Aesop_withNormTraceNode_fmt___closed__4 = _init_l_Aesop_withNormTraceNode_fmt___closed__4();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__4);
l_Aesop_withNormTraceNode_fmt___closed__5 = _init_l_Aesop_withNormTraceNode_fmt___closed__5();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__5);
l_Aesop_withNormTraceNode_fmt___closed__6 = _init_l_Aesop_withNormTraceNode_fmt___closed__6();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__6);
l_Aesop_withNormTraceNode_fmt___closed__7 = _init_l_Aesop_withNormTraceNode_fmt___closed__7();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__7);
l_Aesop_withNormTraceNode_fmt___closed__8 = _init_l_Aesop_withNormTraceNode_fmt___closed__8();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__8);
l_Aesop_withNormTraceNode_fmt___closed__9 = _init_l_Aesop_withNormTraceNode_fmt___closed__9();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__9);
l_Aesop_withNormTraceNode_fmt___closed__10 = _init_l_Aesop_withNormTraceNode_fmt___closed__10();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__10);
l_Aesop_withNormTraceNode_fmt___closed__11 = _init_l_Aesop_withNormTraceNode_fmt___closed__11();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__11);
l_Aesop_withNormTraceNode_fmt___closed__12 = _init_l_Aesop_withNormTraceNode_fmt___closed__12();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__12);
l_Aesop_withNormTraceNode_fmt___closed__13 = _init_l_Aesop_withNormTraceNode_fmt___closed__13();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__13);
l_Aesop_withNormTraceNode_fmt___closed__14 = _init_l_Aesop_withNormTraceNode_fmt___closed__14();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__14);
l_Aesop_withNormTraceNode_fmt___closed__15 = _init_l_Aesop_withNormTraceNode_fmt___closed__15();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__15);
l_Aesop_withNormTraceNode_fmt___closed__16 = _init_l_Aesop_withNormTraceNode_fmt___closed__16();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__16);
l_Aesop_withNormTraceNode_fmt___closed__17 = _init_l_Aesop_withNormTraceNode_fmt___closed__17();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__17);
l_Aesop_withNormTraceNode_fmt___closed__18 = _init_l_Aesop_withNormTraceNode_fmt___closed__18();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__18);
l_Aesop_withNormTraceNode_fmt___closed__19 = _init_l_Aesop_withNormTraceNode_fmt___closed__19();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__19);
l_Aesop_withNormTraceNode_fmt___closed__20 = _init_l_Aesop_withNormTraceNode_fmt___closed__20();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__20);
l_Aesop_withNormTraceNode_fmt___closed__21 = _init_l_Aesop_withNormTraceNode_fmt___closed__21();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__21);
l_Aesop_withNormTraceNode_fmt___closed__22 = _init_l_Aesop_withNormTraceNode_fmt___closed__22();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__22);
l_Aesop_withNormTraceNode_fmt___closed__23 = _init_l_Aesop_withNormTraceNode_fmt___closed__23();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__23);
l_Aesop_withNormTraceNode_fmt___closed__24 = _init_l_Aesop_withNormTraceNode_fmt___closed__24();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__24);
l_Aesop_withNormTraceNode_fmt___closed__25 = _init_l_Aesop_withNormTraceNode_fmt___closed__25();
lean_mark_persistent(l_Aesop_withNormTraceNode_fmt___closed__25);
l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1 = _init_l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__1();
l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2 = _init_l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2();
lean_mark_persistent(l_Lean_addTrace___at_Aesop_withNormTraceNode___spec__2___closed__2);
l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___closed__1 = _init_l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___closed__1();
lean_mark_persistent(l_Lean_isTracingEnabledFor___at_Aesop_withNormTraceNode___spec__5___closed__1);
l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1 = _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1();
lean_mark_persistent(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__1);
l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__2 = _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__2();
lean_mark_persistent(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__2);
l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3 = _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3();
lean_mark_persistent(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_withNormTraceNode___spec__6___rarg___closed__3);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__2___closed__1);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__1 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__1();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__1);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__3___closed__2);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__1);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__2);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__3);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__4 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__4();
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__5);
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__6();
l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7 = _init_l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_withNormTraceNode___spec__4___rarg___lambda__7___closed__7);
l_Aesop_withNormTraceNode___lambda__2___closed__1 = _init_l_Aesop_withNormTraceNode___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_withNormTraceNode___lambda__2___closed__1);
l_Aesop_withNormTraceNode___closed__1 = _init_l_Aesop_withNormTraceNode___closed__1();
lean_mark_persistent(l_Aesop_withNormTraceNode___closed__1);
l_Aesop_runNormRuleTac_err___closed__1 = _init_l_Aesop_runNormRuleTac_err___closed__1();
lean_mark_persistent(l_Aesop_runNormRuleTac_err___closed__1);
l_Aesop_runNormRuleTac_err___closed__2 = _init_l_Aesop_runNormRuleTac_err___closed__2();
lean_mark_persistent(l_Aesop_runNormRuleTac_err___closed__2);
l_Aesop_runNormRuleTac_err___closed__3 = _init_l_Aesop_runNormRuleTac_err___closed__3();
lean_mark_persistent(l_Aesop_runNormRuleTac_err___closed__3);
l_Aesop_runNormRuleTac_err___closed__4 = _init_l_Aesop_runNormRuleTac_err___closed__4();
lean_mark_persistent(l_Aesop_runNormRuleTac_err___closed__4);
l_Aesop_runNormRuleTac_err___closed__5 = _init_l_Aesop_runNormRuleTac_err___closed__5();
lean_mark_persistent(l_Aesop_runNormRuleTac_err___closed__5);
l_Aesop_runNormRuleTac_err___closed__6 = _init_l_Aesop_runNormRuleTac_err___closed__6();
lean_mark_persistent(l_Aesop_runNormRuleTac_err___closed__6);
l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__1 = _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__1();
lean_mark_persistent(l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__1);
l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__2 = _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__2();
lean_mark_persistent(l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__2);
l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3 = _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3();
lean_mark_persistent(l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_runNormRuleTac___spec__5___closed__3);
l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1 = _init_l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1();
lean_mark_persistent(l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__1);
l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2 = _init_l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2();
lean_mark_persistent(l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__2);
l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3 = _init_l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3();
lean_mark_persistent(l_Std_HashSet_allM___at_Aesop_runNormRuleTac___spec__4___closed__3);
l_Aesop_runNormRuleTac___lambda__3___closed__1 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__1();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__1);
l_Aesop_runNormRuleTac___lambda__3___closed__2 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__2();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__2);
l_Aesop_runNormRuleTac___lambda__3___closed__3 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__3();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__3);
l_Aesop_runNormRuleTac___lambda__3___closed__4 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__4();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__4);
l_Aesop_runNormRuleTac___lambda__3___closed__5 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__5();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__5);
l_Aesop_runNormRuleTac___lambda__3___closed__6 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__6();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__6);
l_Aesop_runNormRuleTac___lambda__3___closed__7 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__7();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__7);
l_Aesop_runNormRuleTac___lambda__3___closed__8 = _init_l_Aesop_runNormRuleTac___lambda__3___closed__8();
lean_mark_persistent(l_Aesop_runNormRuleTac___lambda__3___closed__8);
l_Aesop_runNormRuleTac___closed__1 = _init_l_Aesop_runNormRuleTac___closed__1();
lean_mark_persistent(l_Aesop_runNormRuleTac___closed__1);
l_Aesop_runNormRuleTac___closed__2 = _init_l_Aesop_runNormRuleTac___closed__2();
lean_mark_persistent(l_Aesop_runNormRuleTac___closed__2);
l_Aesop_runNormRuleTac___closed__3 = _init_l_Aesop_runNormRuleTac___closed__3();
lean_mark_persistent(l_Aesop_runNormRuleTac___closed__3);
l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___closed__1 = _init_l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___closed__1();
lean_mark_persistent(l_Aesop_isStatsCollectionEnabled___at_Aesop_runNormRule___spec__4___rarg___closed__1);
l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___closed__1 = _init_l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___closed__1();
lean_mark_persistent(l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_runNormRule___spec__3___closed__1);
l_Aesop_runNormRule___closed__1 = _init_l_Aesop_runNormRule___closed__1();
lean_mark_persistent(l_Aesop_runNormRule___closed__1);
l_Aesop_mkNormSimpScriptStep___closed__1 = _init_l_Aesop_mkNormSimpScriptStep___closed__1();
lean_mark_persistent(l_Aesop_mkNormSimpScriptStep___closed__1);
l_Aesop_mkNormSimpScriptStep___closed__2 = _init_l_Aesop_mkNormSimpScriptStep___closed__2();
lean_mark_persistent(l_Aesop_mkNormSimpScriptStep___closed__2);
l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__1 = _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__1();
lean_mark_persistent(l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__1);
l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__2 = _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__2();
lean_mark_persistent(l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__2);
l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3 = _init_l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3();
lean_mark_persistent(l_Std_DHashMap_Internal_AssocList_forInStep_go___at_Aesop_normSimpCore___spec__3___closed__3);
l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___closed__1 = _init_l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___closed__1();
lean_mark_persistent(l_Std_HashSet_anyM___at_Aesop_normSimpCore___spec__2___closed__1);
l_Aesop_normSimpCore___lambda__4___closed__1 = _init_l_Aesop_normSimpCore___lambda__4___closed__1();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__4___closed__1);
l_Aesop_normSimpCore___lambda__4___closed__2 = _init_l_Aesop_normSimpCore___lambda__4___closed__2();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__4___closed__2);
l_Aesop_normSimpCore___lambda__4___closed__3 = _init_l_Aesop_normSimpCore___lambda__4___closed__3();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__4___closed__3);
l_Aesop_normSimpCore___lambda__4___closed__4 = _init_l_Aesop_normSimpCore___lambda__4___closed__4();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__4___closed__4);
l_Aesop_normSimpCore___lambda__5___closed__1 = _init_l_Aesop_normSimpCore___lambda__5___closed__1();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__5___closed__1);
l_Aesop_normSimpCore___lambda__5___closed__2 = _init_l_Aesop_normSimpCore___lambda__5___closed__2();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__5___closed__2);
l_Aesop_normSimpCore___lambda__5___closed__3 = _init_l_Aesop_normSimpCore___lambda__5___closed__3();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__5___closed__3);
l_Aesop_normSimpCore___lambda__5___closed__4 = _init_l_Aesop_normSimpCore___lambda__5___closed__4();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__5___closed__4);
l_Aesop_normSimpCore___lambda__5___closed__5 = _init_l_Aesop_normSimpCore___lambda__5___closed__5();
lean_mark_persistent(l_Aesop_normSimpCore___lambda__5___closed__5);
l_Aesop_checkSimp___lambda__1___closed__1 = _init_l_Aesop_checkSimp___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_checkSimp___lambda__1___closed__1);
l_Aesop_checkSimp___lambda__1___closed__2 = _init_l_Aesop_checkSimp___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_checkSimp___lambda__1___closed__2);
l_Aesop_checkSimp___lambda__1___closed__3 = _init_l_Aesop_checkSimp___lambda__1___closed__3();
lean_mark_persistent(l_Aesop_checkSimp___lambda__1___closed__3);
l_Aesop_checkSimp___lambda__1___closed__4 = _init_l_Aesop_checkSimp___lambda__1___closed__4();
lean_mark_persistent(l_Aesop_checkSimp___lambda__1___closed__4);
l_Aesop_checkSimp___lambda__1___closed__5 = _init_l_Aesop_checkSimp___lambda__1___closed__5();
lean_mark_persistent(l_Aesop_checkSimp___lambda__1___closed__5);
l_Aesop_checkSimp___lambda__2___closed__1 = _init_l_Aesop_checkSimp___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_checkSimp___lambda__2___closed__1);
l_Aesop_checkSimp___lambda__2___closed__2 = _init_l_Aesop_checkSimp___lambda__2___closed__2();
lean_mark_persistent(l_Aesop_checkSimp___lambda__2___closed__2);
l_Aesop_checkSimp___lambda__2___closed__3 = _init_l_Aesop_checkSimp___lambda__2___closed__3();
l_Aesop_checkSimp___closed__1 = _init_l_Aesop_checkSimp___closed__1();
lean_mark_persistent(l_Aesop_checkSimp___closed__1);
l_Aesop_checkSimp___closed__2 = _init_l_Aesop_checkSimp___closed__2();
lean_mark_persistent(l_Aesop_checkSimp___closed__2);
l_Aesop_normSimp___lambda__2___closed__1 = _init_l_Aesop_normSimp___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_normSimp___lambda__2___closed__1);
l_Aesop_normSimp___lambda__2___closed__2 = _init_l_Aesop_normSimp___lambda__2___closed__2();
lean_mark_persistent(l_Aesop_normSimp___lambda__2___closed__2);
l_Aesop_normSimp___closed__1 = _init_l_Aesop_normSimp___closed__1();
lean_mark_persistent(l_Aesop_normSimp___closed__1);
l_Aesop_normUnfoldCore___closed__1 = _init_l_Aesop_normUnfoldCore___closed__1();
lean_mark_persistent(l_Aesop_normUnfoldCore___closed__1);
l_Aesop_normUnfoldCore___closed__2 = _init_l_Aesop_normUnfoldCore___closed__2();
lean_mark_persistent(l_Aesop_normUnfoldCore___closed__2);
l_Aesop_normUnfoldCore___closed__3 = _init_l_Aesop_normUnfoldCore___closed__3();
lean_mark_persistent(l_Aesop_normUnfoldCore___closed__3);
l_Aesop_normUnfold___lambda__2___closed__1 = _init_l_Aesop_normUnfold___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_normUnfold___lambda__2___closed__1);
l_Aesop_normUnfold___lambda__2___closed__2 = _init_l_Aesop_normUnfold___lambda__2___closed__2();
lean_mark_persistent(l_Aesop_normUnfold___lambda__2___closed__2);
l_Aesop_normUnfold___closed__1 = _init_l_Aesop_normUnfold___closed__1();
lean_mark_persistent(l_Aesop_normUnfold___closed__1);
l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___closed__1 = _init_l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___closed__1();
lean_mark_persistent(l_Aesop_profilingRuleSelection___at_Aesop_runNormSteps___spec__2___rarg___closed__1);
l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___closed__1 = _init_l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_selectNormRules___at_Aesop_runNormSteps___spec__1___lambda__1___closed__1);
l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1 = _init_l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_runNormSteps___spec__3___closed__1);
l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1 = _init_l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Aesop_runNormSteps___spec__4___lambda__1___closed__1);
l_Aesop_runNormSteps___lambda__1___closed__1 = _init_l_Aesop_runNormSteps___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_runNormSteps___lambda__1___closed__1);
l_Aesop_runNormSteps___lambda__1___closed__2 = _init_l_Aesop_runNormSteps___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_runNormSteps___lambda__1___closed__2);
l_Aesop_runNormSteps___lambda__1___closed__3 = _init_l_Aesop_runNormSteps___lambda__1___closed__3();
lean_mark_persistent(l_Aesop_runNormSteps___lambda__1___closed__3);
l_Aesop_runNormSteps___lambda__1___closed__4 = _init_l_Aesop_runNormSteps___lambda__1___closed__4();
lean_mark_persistent(l_Aesop_runNormSteps___lambda__1___closed__4);
l_Aesop_runNormSteps___closed__1 = _init_l_Aesop_runNormSteps___closed__1();
lean_mark_persistent(l_Aesop_runNormSteps___closed__1);
l_Aesop_runNormSteps___closed__2 = _init_l_Aesop_runNormSteps___closed__2();
lean_mark_persistent(l_Aesop_runNormSteps___closed__2);
l_Aesop_runNormSteps___closed__3 = _init_l_Aesop_runNormSteps___closed__3();
lean_mark_persistent(l_Aesop_runNormSteps___closed__3);
l_Aesop_runNormSteps___closed__4 = _init_l_Aesop_runNormSteps___closed__4();
lean_mark_persistent(l_Aesop_runNormSteps___closed__4);
l_Aesop_NormStep_unfold___lambda__2___closed__1 = _init_l_Aesop_NormStep_unfold___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_NormStep_unfold___lambda__2___closed__1);
l_Aesop_NormStep_unfold___closed__1 = _init_l_Aesop_NormStep_unfold___closed__1();
lean_mark_persistent(l_Aesop_NormStep_unfold___closed__1);
l_Aesop_NormStep_unfold___closed__2 = _init_l_Aesop_NormStep_unfold___closed__2();
lean_mark_persistent(l_Aesop_NormStep_unfold___closed__2);
l_Aesop_NormStep_unfold___closed__3 = _init_l_Aesop_NormStep_unfold___closed__3();
lean_mark_persistent(l_Aesop_NormStep_unfold___closed__3);
l_Aesop_NormStep_simp___closed__1 = _init_l_Aesop_NormStep_simp___closed__1();
lean_mark_persistent(l_Aesop_NormStep_simp___closed__1);
l_Aesop_NormStep_simp___closed__2 = _init_l_Aesop_NormStep_simp___closed__2();
lean_mark_persistent(l_Aesop_NormStep_simp___closed__2);
l_Aesop_normalizeGoalMVar___closed__1 = _init_l_Aesop_normalizeGoalMVar___closed__1();
lean_mark_persistent(l_Aesop_normalizeGoalMVar___closed__1);
l_Aesop_normalizeGoalMVar___closed__2 = _init_l_Aesop_normalizeGoalMVar___closed__2();
lean_mark_persistent(l_Aesop_normalizeGoalMVar___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
