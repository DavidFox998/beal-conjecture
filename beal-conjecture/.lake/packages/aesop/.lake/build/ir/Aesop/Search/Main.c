// Lean compiler output
// Module: Aesop.Search.Main
// Imports: Init Aesop.Check Aesop.Options Aesop.RuleSet Aesop.Script.Check Aesop.Script.Main Aesop.Search.Expansion Aesop.Search.ExpandSafePrefix Aesop.Search.Queue Aesop.Tree Aesop.Frontend.Extension
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
static lean_object* l_Aesop_handleNonfatalError___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___boxed(lean_object**);
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__2;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__4;
double l_Aesop_Goal_priority(lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__5;
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1;
static lean_object* l_Aesop_checkGoalLimit___rarg___closed__5;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__4;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_nextActiveGoal___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_run___at_Aesop_search___spec__2(lean_object*);
lean_object* l_IO_getNumHeartbeats___boxed(lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Options_queue(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2(size_t, size_t, lean_object*);
extern lean_object* l_Lean_profiler;
lean_object* l_Aesop_expandSafePrefix___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___boxed(lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Aesop_Percent_toHumanString(double);
lean_object* l_Aesop_RegularRule_name(lean_object*);
lean_object* l_Aesop_Script_UScript_optimize(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__3;
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_popGoal_x3f___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_Check_script;
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__6;
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentArray_toArray___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint32_t l_UInt32_ofNatTruncate(lean_object*);
extern lean_object* l_Lean_maxRecDepthErrorMessage;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__8;
lean_object* l_Aesop_getRootGoal___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_indentD(lean_object*);
double lean_float_div(double, double);
lean_object* l_Lean_MVarId_checkNotAssigned(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_getIteration___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__4___closed__1;
static double l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_FileMap_toPosition(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___closed__1;
lean_object* l_Lean_MessageData_joinSep(lean_object*, lean_object*);
lean_object* l_Aesop_extractProof(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkRappLimit___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_incrementIteration___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2(lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofList(lean_object*);
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentArray_push___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Aesop_checkGoalLimit___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static double l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__4;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__5(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Core_checkSystem(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Aesop_Check_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceTree___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__7;
static lean_object* l_Aesop_traceScript___rarg___lambda__6___closed__4;
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___closed__1;
uint8_t l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_treeImpl___elambda__5(lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finalizeProof(lean_object*);
lean_object* l_Lean_replaceRef(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__3;
LEAN_EXPORT lean_object* l_Aesop_search(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getPos_x3f(lean_object*, uint8_t);
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* l_Aesop_setMaxRuleApplicationDepthReached___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__2___closed__1;
uint8_t l_Aesop_NodeState_isUnprovable(uint8_t);
lean_object* l_Lean_Syntax_getTailPos_x3f(lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__4(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_extractSafePrefixScript(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_checkInvariantsIfEnabled___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_float_decLt(double, double);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal(lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__6___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__1;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10(lean_object*, lean_object*);
static lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1;
static lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_hasSyntheticSorry(lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__2;
extern lean_object* l_Aesop_TraceOption_stats;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__6(lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__15;
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__2;
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__7(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__2;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9(lean_object*, lean_object*);
lean_object* l_Aesop_Goal_currentGoalAndMetaState(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_Check_script_steps;
extern lean_object* l_Lean_trace_profiler_useHeartbeats;
lean_object* l_List_mapTR_loop___at_Lean_Elab_goalsToMessageData___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
lean_object* l_Aesop_SearchM_run_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2(lean_object*);
uint8_t l___private_Lean_Util_Trace_0__Lean_checkTraceOption(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_maxRecDepth;
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__7;
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_SearchM_instMonadStats___rarg(lean_object*);
static lean_object* l_Aesop_checkRappLimit___rarg___closed__2;
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_string_dec_eq(lean_object*, lean_object*);
lean_object* l_Aesop_freeTree___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_extractSafePrefix(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_mkInitialTree(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg(lean_object*, lean_object*);
lean_object* l_Lean_Meta_getSimpCongrTheorems___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_aesop_dev_generateScript;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__1;
lean_object* l_Lean_Kernel_enableDiag(lean_object*, uint8_t);
static lean_object* l_Aesop_checkRappLimit___rarg___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__5;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Kernel_isDiagnosticsEnabled(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
uint8_t l_Lean_Expr_hasMVar(lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqPhaseName____x40_Aesop_Rule_Name___hyg_19_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_getTree___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__2;
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__5;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___boxed(lean_object*, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_nextActiveGoal(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_treeHasProgress(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_throwAesopEx(lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(uint8_t, uint8_t);
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2;
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5;
lean_object* l_Aesop_Goal_isActive___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_Goal_traceMetadata(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_treeImpl___elambda__1(lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
lean_object* l_Aesop_Frontend_getDefaultGlobalRuleSets(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_traceNewRapps___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finishIfProven(lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___closed__1;
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_ExtractScriptM_run___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finishIfProven___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__8;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___boxed(lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofSyntax(lean_object*);
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___boxed(lean_object*, lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqBuilderName____x40_Aesop_Rule_Name___hyg_237_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_traceTree___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_nextActiveGoal___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError(lean_object*);
lean_object* l_Lean_MVarId_getType(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_withAesopTraceNode___at_Aesop_straightLineExt_go___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__2;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__3(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkRappLimit___rarg___closed__3;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkRappLimit(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__3(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Queue_init_x27___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_exceptRuleResultToEmoji___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3;
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__16;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2(lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
lean_object* l_Aesop_Goal_withHeadlineTraceNode___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentArray_append___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_traceScript___spec__15___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9(lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_collectStatsOption;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Rapp_withHeadlineTraceNode___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_traceNewRapps___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__5;
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3(lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__14;
static lean_object* l_Aesop_handleNonfatalError___rarg___closed__2;
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__6(lean_object*);
lean_object* l_Lean_Meta_SavedState_runMetaM_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6(lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__8;
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_traceScript___spec__5(lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getProof_x3f___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_throwAesopEx___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___boxed(lean_object*, lean_object*);
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_throwAesopEx___rarg(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12(lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4___closed__1;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Script_UScript_checkIfEnabled(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Lean_Meta_Basic_0__Lean_Meta_withMVarContextImp___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_MessageData_hasTag(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___boxed(lean_object*, lean_object*, lean_object*);
static double l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_ReaderT_bind___at_Aesop_extractScript___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__2;
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_addTryThisTacticSeqSuggestion(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__9(lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7(lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_expandGoal___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_TraceOption_script;
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__8(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__4;
static lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__2;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9___boxed(lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7;
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__3;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__3___closed__2;
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Aesop_finishIfProven___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__6;
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkGoalLimit___rarg___closed__3;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__11(lean_object*);
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_traceScript___spec__15(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__8___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_warningAsError;
static lean_object* l_Aesop_search___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2;
static lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__3;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5___boxed(lean_object**);
static lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__4;
extern lean_object* l_Lean_trace_profiler_threshold;
lean_object* l_Lean_MetavarContext_getExprAssignmentCore_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__1___closed__1;
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__4;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_GoalRef_markForcedUnprovable___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__5;
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_newNodeEmoji;
LEAN_EXPORT lean_object* l_Aesop_traceTree___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Aesop_getProof_x3f(lean_object*);
extern lean_object* l_Lean_diagnostics;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__1;
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__7;
LEAN_EXPORT lean_object* l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__8___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg___lambda__1(lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__6___closed__1;
lean_object* l_Aesop_treeImpl___elambda__3(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__11;
LEAN_EXPORT lean_object* l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__3___closed__1;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__9;
lean_object* l_Aesop_withAesopTraceNode___at_Aesop_straightLineExt_go___spec__4___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_KVMap_setBool(lean_object*, lean_object*, uint8_t);
lean_object* l_Aesop_mkLocalRuleSet(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__2(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__5;
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2(lean_object*);
static lean_object* l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__1;
uint8_t l_Aesop_RegularRule_isUnsafe(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11(lean_object*);
extern lean_object* l_Lean_inheritedTraceOptions;
lean_object* l_Lean_MessageData_ofExpr(lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__3___closed__3;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_Rapp_forSubgoalsM___at_Aesop_Rapp_traceTreeCore___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Goal_traceTree(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkGoalLimit___rarg___closed__4;
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkRappLimit___rarg___closed__4;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_traceNewRapps(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_aesop_smallErrorMessages;
double l_Float_ofScientific(lean_object*, uint8_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_enqueueGoals___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_traceScript___spec__16(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_searchLoop___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__4;
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__1;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_nextActiveGoal___rarg___closed__2;
lean_object* l_Aesop_getRootMVarId(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__7;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__6;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__17;
lean_object* l_Lean_exceptEmoji___rarg(lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4___closed__4;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, double, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2(lean_object*);
extern lean_object* l_Aesop_TraceOption_steps;
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__6(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__3;
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__6___closed__3;
lean_object* l_Aesop_RuleResult_toEmoji___boxed(lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4___closed__2;
static lean_object* l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___closed__1;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6___boxed(lean_object**);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* l_Aesop_withAesopTraceNode___at_Aesop_extractScript___spec__2___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__6___closed__2;
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4;
LEAN_EXPORT lean_object* l_Aesop_checkRappLimit___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg(lean_object*, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_getRootMVarCluster___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_preprocessRule;
LEAN_EXPORT lean_object* l_Aesop_getProof_x3f___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_search___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at_Aesop_Goal_traceMetadata___spec__1(size_t, size_t, lean_object*);
lean_object* l_Lean_indentExpr(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_TraceOption_proof;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_getMVarsNoDelayed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__4___closed__1;
lean_object* l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17(lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13(lean_object*, lean_object*);
uint8_t l_Aesop_NodeState_isProven(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4(lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
static lean_object* l_Aesop_traceScript___rarg___lambda__6___closed__1;
static lean_object* l_Aesop_throwAesopEx___rarg___closed__13;
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__8(lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2(lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__18;
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__6___closed__4;
static lean_object* l_Aesop_traceTree___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4(lean_object*);
lean_object* l_Aesop_Check_isEnabled___at_Aesop_MVarClusterRef_checkInvariantsIfEnabled___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
lean_object* l_Aesop_Rapp_traceMetadata___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__12;
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_straightLineExt_go___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__5(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceTree(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1(lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__2___closed__1;
uint8_t lean_uint64_dec_eq(uint64_t, uint64_t);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__3;
lean_object* l_IO_monoNanosNow___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__2;
static lean_object* l_Aesop_traceScript___rarg___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Aesop_traceScript(lean_object*);
lean_object* l_Lean_instantiateMVarsCore(lean_object*, lean_object*);
static lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__2___closed__2;
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__4;
size_t lean_usize_add(size_t, size_t);
static lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_search___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_getRootMetaState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
lean_object* l_Aesop_Script_UScript_renderTacticSeq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_array_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___boxed(lean_object**);
extern lean_object* l_Lean_trace_profiler;
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_addTrace___at_Lean_Meta_processPostponed_loop___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_finalizeProof___rarg___lambda__3___closed__1;
static lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4___closed__3;
lean_object* l_Aesop_GoalRef_extractScriptCore___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1;
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
static lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__1;
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14(lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_searchLoop(lean_object*);
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___boxed(lean_object**);
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_handleNonfatalError___rarg___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_traceScript___spec__15___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1(lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__7;
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12(lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__4___closed__2;
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__6;
lean_object* l_Aesop_getRootGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__2(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal_fmt___rarg___closed__9;
lean_object* l_Aesop_NormalizationState_normalizedGoal_x3f(lean_object*);
lean_object* l_List_mapTR_loop___at_Lean_compileDecl___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_checkGoalLimit___rarg___closed__2;
extern lean_object* l_Aesop_TraceOption_tree;
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_traceScript___rarg___lambda__6___closed__3;
static lean_object* l_Aesop_finalizeProof___rarg___lambda__4___closed__6;
LEAN_EXPORT lean_object* l_Aesop_finishIfProven___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_throwAesopEx___rarg___closed__10;
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__3;
lean_object* l_Lean_MessageData_ofName(lean_object*);
lean_object* l_Aesop_checkRenderedScriptIfEnabled(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8(lean_object*, lean_object*);
uint8_t l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_clearForwardImplDetailHyps(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_expandNextGoal___rarg___lambda__6___closed__2;
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageLog_add(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__2;
static lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__3;
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__2(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___boxed(lean_object*, lean_object*);
double lean_float_sub(double, double);
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_checkRootUnprovable___rarg___closed__3;
uint8_t l_Lean_Expr_hasExprMVar(lean_object*);
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
static lean_object* _init_l_Aesop_nextActiveGoal___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop/expandNextGoal: internal error: no active goals left", 58, 58);
return x_1;
}
}
static lean_object* _init_l_Aesop_nextActiveGoal___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_nextActiveGoal___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_nextActiveGoal___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_10 = l_Aesop_popGoal_x3f___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_1);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Aesop_nextActiveGoal___rarg___closed__2;
x_14 = l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg(x_13, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_15 = lean_ctor_get(x_10, 1);
lean_inc(x_15);
lean_dec(x_10);
x_16 = lean_ctor_get(x_11, 0);
lean_inc(x_16);
lean_dec(x_11);
x_17 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
x_18 = lean_st_ref_get(x_16, x_15);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_alloc_closure((void*)(l_Aesop_Goal_isActive___boxed), 2, 1);
lean_closure_set(x_21, 0, x_19);
x_22 = lean_ctor_get(x_17, 0);
lean_inc(x_22);
lean_dec(x_17);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_23 = lean_apply_10(x_22, lean_box(0), x_21, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_20);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; uint8_t x_25; 
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_unbox(x_24);
lean_dec(x_24);
if (x_25 == 0)
{
lean_object* x_26; 
lean_dec(x_16);
x_26 = lean_ctor_get(x_23, 1);
lean_inc(x_26);
lean_dec(x_23);
x_9 = x_26;
goto _start;
}
else
{
uint8_t x_28; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_28 = !lean_is_exclusive(x_23);
if (x_28 == 0)
{
lean_object* x_29; 
x_29 = lean_ctor_get(x_23, 0);
lean_dec(x_29);
lean_ctor_set(x_23, 0, x_16);
return x_23;
}
else
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_ctor_get(x_23, 1);
lean_inc(x_30);
lean_dec(x_23);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_16);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
else
{
uint8_t x_32; 
lean_dec(x_16);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_32 = !lean_is_exclusive(x_23);
if (x_32 == 0)
{
return x_23;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_23, 0);
x_34 = lean_ctor_get(x_23, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_23);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
else
{
uint8_t x_36; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_36 = !lean_is_exclusive(x_10);
if (x_36 == 0)
{
return x_10;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_10, 0);
x_38 = lean_ctor_get(x_10, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_10);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_nextActiveGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_nextActiveGoal___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_throwError___at_Aesop_nextActiveGoal___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_MVarId_getType(x_1, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = l_Lean_MessageData_ofExpr(x_8);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_10, x_2, x_3, x_4, x_5, x_9);
return x_11;
}
else
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_7);
if (x_12 == 0)
{
return x_7;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_7, 0);
x_14 = lean_ctor_get(x_7, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_7);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_RuleResult_toEmoji___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" (G", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal_fmt___rarg___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(") [", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal_fmt___rarg___closed__6;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("] ⋯ ⊢ ", 10, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal_fmt___rarg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal_fmt___rarg___closed__8;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg(lean_object* x_1, double x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
lean_inc(x_3);
x_14 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal_fmt___rarg___lambda__1___boxed), 6, 1);
lean_closure_set(x_14, 0, x_3);
x_15 = lean_alloc_closure((void*)(l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg), 7, 2);
lean_closure_set(x_15, 0, x_3);
lean_closure_set(x_15, 1, x_14);
x_16 = lean_st_ref_get(x_7, x_13);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_16, 1);
x_19 = lean_ctor_get(x_16, 0);
lean_dec(x_19);
x_20 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_4, x_15, x_9, x_10, x_11, x_12, x_18);
if (lean_obj_tag(x_20) == 0)
{
uint8_t x_21; 
x_21 = !lean_is_exclusive(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_22 = lean_ctor_get(x_20, 0);
x_23 = l_Aesop_expandNextGoal_fmt___rarg___closed__3;
x_24 = l_Aesop_exceptRuleResultToEmoji___rarg(x_23, x_5);
x_25 = l_Lean_stringToMessageData(x_24);
lean_dec(x_24);
x_26 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
lean_ctor_set_tag(x_16, 7);
lean_ctor_set(x_16, 1, x_25);
lean_ctor_set(x_16, 0, x_26);
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__5;
x_28 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_28, 0, x_16);
lean_ctor_set(x_28, 1, x_27);
x_29 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
x_30 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_30, 0, x_29);
x_31 = l_Lean_MessageData_ofFormat(x_30);
x_32 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_32, 0, x_28);
lean_ctor_set(x_32, 1, x_31);
x_33 = l_Aesop_expandNextGoal_fmt___rarg___closed__7;
x_34 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
x_35 = l_Aesop_Percent_toHumanString(x_2);
x_36 = l_Lean_stringToMessageData(x_35);
lean_dec(x_35);
x_37 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_37, 0, x_34);
lean_ctor_set(x_37, 1, x_36);
x_38 = l_Aesop_expandNextGoal_fmt___rarg___closed__9;
x_39 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
x_40 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_40, 0, x_39);
lean_ctor_set(x_40, 1, x_22);
x_41 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_26);
lean_ctor_set(x_20, 0, x_41);
return x_20;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_42 = lean_ctor_get(x_20, 0);
x_43 = lean_ctor_get(x_20, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_20);
x_44 = l_Aesop_expandNextGoal_fmt___rarg___closed__3;
x_45 = l_Aesop_exceptRuleResultToEmoji___rarg(x_44, x_5);
x_46 = l_Lean_stringToMessageData(x_45);
lean_dec(x_45);
x_47 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
lean_ctor_set_tag(x_16, 7);
lean_ctor_set(x_16, 1, x_46);
lean_ctor_set(x_16, 0, x_47);
x_48 = l_Aesop_expandNextGoal_fmt___rarg___closed__5;
x_49 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_49, 0, x_16);
lean_ctor_set(x_49, 1, x_48);
x_50 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
x_51 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_51, 0, x_50);
x_52 = l_Lean_MessageData_ofFormat(x_51);
x_53 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_53, 0, x_49);
lean_ctor_set(x_53, 1, x_52);
x_54 = l_Aesop_expandNextGoal_fmt___rarg___closed__7;
x_55 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_55, 0, x_53);
lean_ctor_set(x_55, 1, x_54);
x_56 = l_Aesop_Percent_toHumanString(x_2);
x_57 = l_Lean_stringToMessageData(x_56);
lean_dec(x_56);
x_58 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_58, 0, x_55);
lean_ctor_set(x_58, 1, x_57);
x_59 = l_Aesop_expandNextGoal_fmt___rarg___closed__9;
x_60 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
x_61 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_61, 1, x_42);
x_62 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_47);
x_63 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_63, 0, x_62);
lean_ctor_set(x_63, 1, x_43);
return x_63;
}
}
else
{
uint8_t x_64; 
lean_free_object(x_16);
lean_dec(x_5);
lean_dec(x_1);
x_64 = !lean_is_exclusive(x_20);
if (x_64 == 0)
{
return x_20;
}
else
{
lean_object* x_65; lean_object* x_66; lean_object* x_67; 
x_65 = lean_ctor_get(x_20, 0);
x_66 = lean_ctor_get(x_20, 1);
lean_inc(x_66);
lean_inc(x_65);
lean_dec(x_20);
x_67 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_67, 0, x_65);
lean_ctor_set(x_67, 1, x_66);
return x_67;
}
}
}
else
{
lean_object* x_68; lean_object* x_69; 
x_68 = lean_ctor_get(x_16, 1);
lean_inc(x_68);
lean_dec(x_16);
x_69 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_4, x_15, x_9, x_10, x_11, x_12, x_68);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_70 = lean_ctor_get(x_69, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_69, 1);
lean_inc(x_71);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_72 = x_69;
} else {
 lean_dec_ref(x_69);
 x_72 = lean_box(0);
}
x_73 = l_Aesop_expandNextGoal_fmt___rarg___closed__3;
x_74 = l_Aesop_exceptRuleResultToEmoji___rarg(x_73, x_5);
x_75 = l_Lean_stringToMessageData(x_74);
lean_dec(x_74);
x_76 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_77 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_77, 0, x_76);
lean_ctor_set(x_77, 1, x_75);
x_78 = l_Aesop_expandNextGoal_fmt___rarg___closed__5;
x_79 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_79, 0, x_77);
lean_ctor_set(x_79, 1, x_78);
x_80 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
x_81 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_81, 0, x_80);
x_82 = l_Lean_MessageData_ofFormat(x_81);
x_83 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_83, 0, x_79);
lean_ctor_set(x_83, 1, x_82);
x_84 = l_Aesop_expandNextGoal_fmt___rarg___closed__7;
x_85 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
x_86 = l_Aesop_Percent_toHumanString(x_2);
x_87 = l_Lean_stringToMessageData(x_86);
lean_dec(x_86);
x_88 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_88, 0, x_85);
lean_ctor_set(x_88, 1, x_87);
x_89 = l_Aesop_expandNextGoal_fmt___rarg___closed__9;
x_90 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_90, 0, x_88);
lean_ctor_set(x_90, 1, x_89);
x_91 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_91, 0, x_90);
lean_ctor_set(x_91, 1, x_70);
x_92 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_92, 0, x_91);
lean_ctor_set(x_92, 1, x_76);
if (lean_is_scalar(x_72)) {
 x_93 = lean_alloc_ctor(0, 2, 0);
} else {
 x_93 = x_72;
}
lean_ctor_set(x_93, 0, x_92);
lean_ctor_set(x_93, 1, x_71);
return x_93;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; 
lean_dec(x_5);
lean_dec(x_1);
x_94 = lean_ctor_get(x_69, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_69, 1);
lean_inc(x_95);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_96 = x_69;
} else {
 lean_dec_ref(x_69);
 x_96 = lean_box(0);
}
if (lean_is_scalar(x_96)) {
 x_97 = lean_alloc_ctor(1, 2, 0);
} else {
 x_97 = x_96;
}
lean_ctor_set(x_97, 0, x_94);
lean_ctor_set(x_97, 1, x_95);
return x_97;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal_fmt___rarg___boxed), 13, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_expandNextGoal_fmt___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
double x_14; lean_object* x_15; 
x_14 = lean_unbox_float(x_2);
lean_dec(x_2);
x_15 = l_Aesop_expandNextGoal_fmt___rarg(x_1, x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_fmt___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_expandNextGoal_fmt(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = lean_ctor_get(x_1, 1);
x_12 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_10, x_11);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Metadata", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__3;
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_newNodeEmoji;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_2 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__1;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" ", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__2;
x_2 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__4;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__5;
x_8 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_1);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_6);
return x_9;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_steps;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; 
x_10 = l_Lean_addTrace___at_Lean_Meta_processPostponed_loop___spec__2(x_1, x_2, x_5, x_6, x_7, x_8, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_13 = lean_alloc_closure((void*)(l_Aesop_Goal_traceMetadata), 7, 2);
lean_closure_set(x_13, 0, x_3);
lean_closure_set(x_13, 1, x_12);
x_14 = 1;
x_15 = l_Aesop_withAesopTraceNode___at_Aesop_straightLineExt_go___spec__4___rarg(x_12, x_4, x_13, x_14, x_5, x_6, x_7, x_8, x_11);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; 
x_9 = lean_st_ref_get(x_3, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = l_Aesop_TraceOption_steps;
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = l_Aesop_treeImpl___elambda__5(x_10);
x_15 = lean_ctor_get(x_14, 5);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_16, 0, x_15);
lean_inc(x_10);
x_17 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3), 9, 4);
lean_closure_set(x_17, 0, x_13);
lean_closure_set(x_17, 1, x_16);
lean_closure_set(x_17, 2, x_10);
lean_closure_set(x_17, 3, x_1);
x_18 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_19 = 1;
x_20 = l_Aesop_Goal_withHeadlineTraceNode___rarg(x_10, x_18, x_17, x_19, x_2, x_4, x_5, x_6, x_7, x_11);
return x_20;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___boxed), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; 
x_14 = lean_usize_dec_lt(x_4, x_3);
if (x_14 == 0)
{
lean_object* x_15; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_5);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_5);
x_16 = lean_array_uget(x_2, x_4);
x_17 = lean_st_ref_get(x_16, x_13);
lean_dec(x_16);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
lean_inc(x_18);
x_21 = lean_alloc_closure((void*)(l_Aesop_Rapp_traceMetadata___boxed), 7, 2);
lean_closure_set(x_21, 0, x_18);
lean_closure_set(x_21, 1, x_20);
x_22 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__1;
x_23 = 1;
x_24 = lean_box(x_23);
x_25 = lean_alloc_closure((void*)(l_Aesop_withAesopTraceNode___at_Aesop_straightLineExt_go___spec__4___rarg___boxed), 9, 4);
lean_closure_set(x_25, 0, x_20);
lean_closure_set(x_25, 1, x_22);
lean_closure_set(x_25, 2, x_21);
lean_closure_set(x_25, 3, x_24);
x_26 = lean_st_ref_get(x_7, x_19);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__2;
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_29 = l_Aesop_Rapp_withHeadlineTraceNode___rarg(x_18, x_20, x_25, x_23, x_28, x_9, x_10, x_11, x_12, x_27);
if (lean_obj_tag(x_29) == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_30 = lean_ctor_get(x_29, 1);
lean_inc(x_30);
lean_dec(x_29);
x_31 = l_Aesop_treeImpl___elambda__3(x_18);
x_32 = lean_ctor_get(x_31, 7);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__4___boxed), 8, 2);
lean_closure_set(x_33, 0, x_22);
lean_closure_set(x_33, 1, x_28);
x_34 = lean_alloc_closure((void*)(l_Aesop_Rapp_forSubgoalsM___at_Aesop_Rapp_traceTreeCore___spec__1___boxed), 7, 2);
lean_closure_set(x_34, 0, x_33);
lean_closure_set(x_34, 1, x_18);
x_35 = lean_st_ref_get(x_7, x_30);
x_36 = lean_ctor_get(x_35, 1);
lean_inc(x_36);
lean_dec(x_35);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_37 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_32, x_34, x_9, x_10, x_11, x_12, x_36);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; size_t x_39; size_t x_40; lean_object* x_41; 
x_38 = lean_ctor_get(x_37, 1);
lean_inc(x_38);
lean_dec(x_37);
x_39 = 1;
x_40 = lean_usize_add(x_4, x_39);
x_41 = lean_box(0);
x_4 = x_40;
x_5 = x_41;
x_13 = x_38;
goto _start;
}
else
{
uint8_t x_43; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
x_43 = !lean_is_exclusive(x_37);
if (x_43 == 0)
{
return x_37;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_37, 0);
x_45 = lean_ctor_get(x_37, 1);
lean_inc(x_45);
lean_inc(x_44);
lean_dec(x_37);
x_46 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_46, 0, x_44);
lean_ctor_set(x_46, 1, x_45);
return x_46;
}
}
}
else
{
uint8_t x_47; 
lean_dec(x_18);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
x_47 = !lean_is_exclusive(x_29);
if (x_47 == 0)
{
return x_29;
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_29, 0);
x_49 = lean_ctor_get(x_29, 1);
lean_inc(x_49);
lean_inc(x_48);
lean_dec(x_29);
x_50 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_50, 0, x_48);
lean_ctor_set(x_50, 1, x_49);
return x_50;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___boxed), 13, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_traceNewRapps___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_12 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg(x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_unbox(x_13);
lean_dec(x_13);
if (x_14 == 0)
{
uint8_t x_15; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_15 = !lean_is_exclusive(x_12);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_ctor_get(x_12, 0);
lean_dec(x_16);
x_17 = lean_box(0);
lean_ctor_set(x_12, 0, x_17);
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_12, 1);
lean_inc(x_18);
lean_dec(x_12);
x_19 = lean_box(0);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
return x_20;
}
}
else
{
lean_object* x_21; size_t x_22; size_t x_23; lean_object* x_24; lean_object* x_25; 
x_21 = lean_ctor_get(x_12, 1);
lean_inc(x_21);
lean_dec(x_12);
x_22 = lean_array_size(x_2);
x_23 = 0;
x_24 = lean_box(0);
x_25 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg(x_1, x_2, x_22, x_23, x_24, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_21);
if (lean_obj_tag(x_25) == 0)
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
lean_object* x_27; 
x_27 = lean_ctor_get(x_25, 0);
lean_dec(x_27);
lean_ctor_set(x_25, 0, x_24);
return x_25;
}
else
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_24);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
else
{
uint8_t x_30; 
x_30 = !lean_is_exclusive(x_25);
if (x_30 == 0)
{
return x_25;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_25, 0);
x_32 = lean_ctor_get(x_25, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_25);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_traceNewRapps(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal_traceNewRapps___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal_traceNewRapps___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
size_t x_14; size_t x_15; lean_object* x_16; 
x_14 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_15 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_16 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg(x_1, x_2, x_14, x_15, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal_traceNewRapps___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_expandNextGoal_traceNewRapps___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = lean_ctor_get(x_1, 1);
x_12 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_10, x_11);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
static double _init_l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; double x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = 0;
x_3 = l_Float_ofScientific(x_1, x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_11 = lean_ctor_get(x_8, 5);
x_12 = lean_st_ref_get(x_4, x_10);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_6, x_7, x_8, x_9, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_4, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_st_ref_take(x_9, x_18);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; double x_25; uint8_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_21, 3);
x_25 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_26 = 0;
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_28 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_28, 0, x_1);
lean_ctor_set(x_28, 1, x_27);
lean_ctor_set_float(x_28, sizeof(void*)*2, x_25);
lean_ctor_set_float(x_28, sizeof(void*)*2 + 8, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*2 + 16, x_26);
x_29 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_30 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_15);
lean_ctor_set(x_30, 2, x_29);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_30);
lean_ctor_set(x_19, 0, x_11);
x_31 = l_Lean_PersistentArray_push___rarg(x_24, x_19);
lean_ctor_set(x_21, 3, x_31);
x_32 = lean_st_ref_set(x_9, x_21, x_23);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_32, 0);
lean_dec(x_34);
x_35 = lean_box(0);
lean_ctor_set(x_32, 0, x_35);
return x_32;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
lean_dec(x_32);
x_37 = lean_box(0);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; double x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_39 = lean_ctor_get(x_19, 1);
x_40 = lean_ctor_get(x_21, 0);
x_41 = lean_ctor_get(x_21, 1);
x_42 = lean_ctor_get(x_21, 2);
x_43 = lean_ctor_get(x_21, 3);
x_44 = lean_ctor_get(x_21, 4);
x_45 = lean_ctor_get(x_21, 5);
x_46 = lean_ctor_get(x_21, 6);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_21);
x_47 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_48 = 0;
x_49 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_50 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_50, 0, x_1);
lean_ctor_set(x_50, 1, x_49);
lean_ctor_set_float(x_50, sizeof(void*)*2, x_47);
lean_ctor_set_float(x_50, sizeof(void*)*2 + 8, x_47);
lean_ctor_set_uint8(x_50, sizeof(void*)*2 + 16, x_48);
x_51 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_52 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_15);
lean_ctor_set(x_52, 2, x_51);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_52);
lean_ctor_set(x_19, 0, x_11);
x_53 = l_Lean_PersistentArray_push___rarg(x_43, x_19);
x_54 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_54, 0, x_40);
lean_ctor_set(x_54, 1, x_41);
lean_ctor_set(x_54, 2, x_42);
lean_ctor_set(x_54, 3, x_53);
lean_ctor_set(x_54, 4, x_44);
lean_ctor_set(x_54, 5, x_45);
lean_ctor_set(x_54, 6, x_46);
x_55 = lean_st_ref_set(x_9, x_54, x_39);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_57 = x_55;
} else {
 lean_dec_ref(x_55);
 x_57 = lean_box(0);
}
x_58 = lean_box(0);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(0, 2, 0);
} else {
 x_59 = x_57;
}
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; double x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_60 = lean_ctor_get(x_19, 0);
x_61 = lean_ctor_get(x_19, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_19);
x_62 = lean_ctor_get(x_60, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_60, 1);
lean_inc(x_63);
x_64 = lean_ctor_get(x_60, 2);
lean_inc(x_64);
x_65 = lean_ctor_get(x_60, 3);
lean_inc(x_65);
x_66 = lean_ctor_get(x_60, 4);
lean_inc(x_66);
x_67 = lean_ctor_get(x_60, 5);
lean_inc(x_67);
x_68 = lean_ctor_get(x_60, 6);
lean_inc(x_68);
if (lean_is_exclusive(x_60)) {
 lean_ctor_release(x_60, 0);
 lean_ctor_release(x_60, 1);
 lean_ctor_release(x_60, 2);
 lean_ctor_release(x_60, 3);
 lean_ctor_release(x_60, 4);
 lean_ctor_release(x_60, 5);
 lean_ctor_release(x_60, 6);
 x_69 = x_60;
} else {
 lean_dec_ref(x_60);
 x_69 = lean_box(0);
}
x_70 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_71 = 0;
x_72 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_73 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_73, 0, x_1);
lean_ctor_set(x_73, 1, x_72);
lean_ctor_set_float(x_73, sizeof(void*)*2, x_70);
lean_ctor_set_float(x_73, sizeof(void*)*2 + 8, x_70);
lean_ctor_set_uint8(x_73, sizeof(void*)*2 + 16, x_71);
x_74 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_75 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_75, 0, x_73);
lean_ctor_set(x_75, 1, x_15);
lean_ctor_set(x_75, 2, x_74);
lean_inc(x_11);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_11);
lean_ctor_set(x_76, 1, x_75);
x_77 = l_Lean_PersistentArray_push___rarg(x_65, x_76);
if (lean_is_scalar(x_69)) {
 x_78 = lean_alloc_ctor(0, 7, 0);
} else {
 x_78 = x_69;
}
lean_ctor_set(x_78, 0, x_62);
lean_ctor_set(x_78, 1, x_63);
lean_ctor_set(x_78, 2, x_64);
lean_ctor_set(x_78, 3, x_77);
lean_ctor_set(x_78, 4, x_66);
lean_ctor_set(x_78, 5, x_67);
lean_ctor_set(x_78, 6, x_68);
x_79 = lean_st_ref_set(x_9, x_78, x_61);
x_80 = lean_ctor_get(x_79, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_81 = x_79;
} else {
 lean_dec_ref(x_79);
 x_81 = lean_box(0);
}
x_82 = lean_box(0);
if (lean_is_scalar(x_81)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_81;
}
lean_ctor_set(x_83, 0, x_82);
lean_ctor_set(x_83, 1, x_80);
return x_83;
}
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___boxed), 10, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_11 = lean_apply_8(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_9(x_2, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
return x_14;
}
else
{
uint8_t x_15; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_15 = !lean_is_exclusive(x_11);
if (x_15 == 0)
{
return x_11;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_11, 0);
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_11);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3___rarg), 10, 0);
return x_5;
}
}
static lean_object* _init_l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_inheritedTraceOptions;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___closed__1;
x_13 = lean_st_ref_get(x_12, x_11);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; uint8_t x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_7, 2);
x_17 = l___private_Lean_Util_Trace_0__Lean_checkTraceOption(x_15, x_16, x_1);
lean_dec(x_15);
x_18 = lean_box(x_17);
lean_ctor_set(x_13, 0, x_18);
return x_13;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; lean_object* x_23; lean_object* x_24; 
x_19 = lean_ctor_get(x_13, 0);
x_20 = lean_ctor_get(x_13, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_13);
x_21 = lean_ctor_get(x_7, 2);
x_22 = l___private_Lean_Util_Trace_0__Lean_checkTraceOption(x_19, x_21, x_1);
lean_dec(x_19);
x_23 = lean_box(x_22);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_20);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___boxed), 9, 0);
return x_3;
}
}
static lean_object* _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__2;
x_3 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1;
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
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_8 = lean_st_ref_get(x_1, x_7);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_st_ref_get(x_6, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_ctor_get(x_11, 3);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_st_ref_get(x_1, x_12);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_st_ref_take(x_6, x_15);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = !lean_is_exclusive(x_17);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_20 = lean_ctor_get(x_17, 3);
lean_dec(x_20);
x_21 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3;
lean_ctor_set(x_17, 3, x_21);
x_22 = lean_st_ref_set(x_6, x_17, x_18);
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
lean_object* x_24; 
x_24 = lean_ctor_get(x_22, 0);
lean_dec(x_24);
lean_ctor_set(x_22, 0, x_13);
return x_22;
}
else
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_22, 1);
lean_inc(x_25);
lean_dec(x_22);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_13);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_27 = lean_ctor_get(x_17, 0);
x_28 = lean_ctor_get(x_17, 1);
x_29 = lean_ctor_get(x_17, 2);
x_30 = lean_ctor_get(x_17, 4);
x_31 = lean_ctor_get(x_17, 5);
x_32 = lean_ctor_get(x_17, 6);
lean_inc(x_32);
lean_inc(x_31);
lean_inc(x_30);
lean_inc(x_29);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_17);
x_33 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3;
x_34 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_34, 0, x_27);
lean_ctor_set(x_34, 1, x_28);
lean_ctor_set(x_34, 2, x_29);
lean_ctor_set(x_34, 3, x_33);
lean_ctor_set(x_34, 4, x_30);
lean_ctor_set(x_34, 5, x_31);
lean_ctor_set(x_34, 6, x_32);
x_35 = lean_st_ref_set(x_6, x_34, x_18);
x_36 = lean_ctor_get(x_35, 1);
lean_inc(x_36);
if (lean_is_exclusive(x_35)) {
 lean_ctor_release(x_35, 0);
 lean_ctor_release(x_35, 1);
 x_37 = x_35;
} else {
 lean_dec_ref(x_35);
 x_37 = lean_box(0);
}
if (lean_is_scalar(x_37)) {
 x_38 = lean_alloc_ctor(0, 2, 0);
} else {
 x_38 = x_37;
}
lean_ctor_set(x_38, 0, x_13);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___boxed), 7, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_10);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; size_t x_23; size_t x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; uint8_t x_35; 
x_14 = lean_ctor_get(x_10, 5);
x_15 = l_Lean_replaceRef(x_3, x_14);
lean_dec(x_14);
lean_ctor_set(x_10, 5, x_15);
x_16 = lean_st_ref_get(x_6, x_12);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_st_ref_get(x_11, x_17);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_ctor_get(x_19, 3);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Lean_PersistentArray_toArray___rarg(x_21);
lean_dec(x_21);
x_23 = lean_array_size(x_22);
x_24 = 0;
x_25 = l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(x_23, x_24, x_22);
x_26 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_26, 0, x_2);
lean_ctor_set(x_26, 1, x_4);
lean_ctor_set(x_26, 2, x_25);
x_27 = lean_st_ref_get(x_6, x_20);
x_28 = lean_ctor_get(x_27, 1);
lean_inc(x_28);
lean_dec(x_27);
x_29 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_26, x_8, x_9, x_10, x_11, x_28);
lean_dec(x_10);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = lean_st_ref_get(x_6, x_31);
x_33 = lean_ctor_get(x_32, 1);
lean_inc(x_33);
lean_dec(x_32);
x_34 = lean_st_ref_take(x_11, x_33);
x_35 = !lean_is_exclusive(x_34);
if (x_35 == 0)
{
lean_object* x_36; uint8_t x_37; 
x_36 = lean_ctor_get(x_34, 0);
x_37 = !lean_is_exclusive(x_36);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_38 = lean_ctor_get(x_34, 1);
x_39 = lean_ctor_get(x_36, 3);
lean_dec(x_39);
lean_ctor_set(x_34, 1, x_30);
lean_ctor_set(x_34, 0, x_3);
x_40 = l_Lean_PersistentArray_push___rarg(x_1, x_34);
lean_ctor_set(x_36, 3, x_40);
x_41 = lean_st_ref_set(x_11, x_36, x_38);
x_42 = !lean_is_exclusive(x_41);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; 
x_43 = lean_ctor_get(x_41, 0);
lean_dec(x_43);
x_44 = lean_box(0);
lean_ctor_set(x_41, 0, x_44);
return x_41;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_41, 1);
lean_inc(x_45);
lean_dec(x_41);
x_46 = lean_box(0);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_45);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_48 = lean_ctor_get(x_34, 1);
x_49 = lean_ctor_get(x_36, 0);
x_50 = lean_ctor_get(x_36, 1);
x_51 = lean_ctor_get(x_36, 2);
x_52 = lean_ctor_get(x_36, 4);
x_53 = lean_ctor_get(x_36, 5);
x_54 = lean_ctor_get(x_36, 6);
lean_inc(x_54);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_36);
lean_ctor_set(x_34, 1, x_30);
lean_ctor_set(x_34, 0, x_3);
x_55 = l_Lean_PersistentArray_push___rarg(x_1, x_34);
x_56 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_56, 0, x_49);
lean_ctor_set(x_56, 1, x_50);
lean_ctor_set(x_56, 2, x_51);
lean_ctor_set(x_56, 3, x_55);
lean_ctor_set(x_56, 4, x_52);
lean_ctor_set(x_56, 5, x_53);
lean_ctor_set(x_56, 6, x_54);
x_57 = lean_st_ref_set(x_11, x_56, x_48);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
if (lean_is_exclusive(x_57)) {
 lean_ctor_release(x_57, 0);
 lean_ctor_release(x_57, 1);
 x_59 = x_57;
} else {
 lean_dec_ref(x_57);
 x_59 = lean_box(0);
}
x_60 = lean_box(0);
if (lean_is_scalar(x_59)) {
 x_61 = lean_alloc_ctor(0, 2, 0);
} else {
 x_61 = x_59;
}
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_61, 1, x_58);
return x_61;
}
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_62 = lean_ctor_get(x_34, 0);
x_63 = lean_ctor_get(x_34, 1);
lean_inc(x_63);
lean_inc(x_62);
lean_dec(x_34);
x_64 = lean_ctor_get(x_62, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_62, 1);
lean_inc(x_65);
x_66 = lean_ctor_get(x_62, 2);
lean_inc(x_66);
x_67 = lean_ctor_get(x_62, 4);
lean_inc(x_67);
x_68 = lean_ctor_get(x_62, 5);
lean_inc(x_68);
x_69 = lean_ctor_get(x_62, 6);
lean_inc(x_69);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 lean_ctor_release(x_62, 2);
 lean_ctor_release(x_62, 3);
 lean_ctor_release(x_62, 4);
 lean_ctor_release(x_62, 5);
 lean_ctor_release(x_62, 6);
 x_70 = x_62;
} else {
 lean_dec_ref(x_62);
 x_70 = lean_box(0);
}
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_3);
lean_ctor_set(x_71, 1, x_30);
x_72 = l_Lean_PersistentArray_push___rarg(x_1, x_71);
if (lean_is_scalar(x_70)) {
 x_73 = lean_alloc_ctor(0, 7, 0);
} else {
 x_73 = x_70;
}
lean_ctor_set(x_73, 0, x_64);
lean_ctor_set(x_73, 1, x_65);
lean_ctor_set(x_73, 2, x_66);
lean_ctor_set(x_73, 3, x_72);
lean_ctor_set(x_73, 4, x_67);
lean_ctor_set(x_73, 5, x_68);
lean_ctor_set(x_73, 6, x_69);
x_74 = lean_st_ref_set(x_11, x_73, x_63);
x_75 = lean_ctor_get(x_74, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_76 = x_74;
} else {
 lean_dec_ref(x_74);
 x_76 = lean_box(0);
}
x_77 = lean_box(0);
if (lean_is_scalar(x_76)) {
 x_78 = lean_alloc_ctor(0, 2, 0);
} else {
 x_78 = x_76;
}
lean_ctor_set(x_78, 0, x_77);
lean_ctor_set(x_78, 1, x_75);
return x_78;
}
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; uint8_t x_90; lean_object* x_91; uint8_t x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; size_t x_102; size_t x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
x_79 = lean_ctor_get(x_10, 0);
x_80 = lean_ctor_get(x_10, 1);
x_81 = lean_ctor_get(x_10, 2);
x_82 = lean_ctor_get(x_10, 3);
x_83 = lean_ctor_get(x_10, 4);
x_84 = lean_ctor_get(x_10, 5);
x_85 = lean_ctor_get(x_10, 6);
x_86 = lean_ctor_get(x_10, 7);
x_87 = lean_ctor_get(x_10, 8);
x_88 = lean_ctor_get(x_10, 9);
x_89 = lean_ctor_get(x_10, 10);
x_90 = lean_ctor_get_uint8(x_10, sizeof(void*)*12);
x_91 = lean_ctor_get(x_10, 11);
x_92 = lean_ctor_get_uint8(x_10, sizeof(void*)*12 + 1);
lean_inc(x_91);
lean_inc(x_89);
lean_inc(x_88);
lean_inc(x_87);
lean_inc(x_86);
lean_inc(x_85);
lean_inc(x_84);
lean_inc(x_83);
lean_inc(x_82);
lean_inc(x_81);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_10);
x_93 = l_Lean_replaceRef(x_3, x_84);
lean_dec(x_84);
x_94 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_94, 0, x_79);
lean_ctor_set(x_94, 1, x_80);
lean_ctor_set(x_94, 2, x_81);
lean_ctor_set(x_94, 3, x_82);
lean_ctor_set(x_94, 4, x_83);
lean_ctor_set(x_94, 5, x_93);
lean_ctor_set(x_94, 6, x_85);
lean_ctor_set(x_94, 7, x_86);
lean_ctor_set(x_94, 8, x_87);
lean_ctor_set(x_94, 9, x_88);
lean_ctor_set(x_94, 10, x_89);
lean_ctor_set(x_94, 11, x_91);
lean_ctor_set_uint8(x_94, sizeof(void*)*12, x_90);
lean_ctor_set_uint8(x_94, sizeof(void*)*12 + 1, x_92);
x_95 = lean_st_ref_get(x_6, x_12);
x_96 = lean_ctor_get(x_95, 1);
lean_inc(x_96);
lean_dec(x_95);
x_97 = lean_st_ref_get(x_11, x_96);
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
lean_dec(x_97);
x_100 = lean_ctor_get(x_98, 3);
lean_inc(x_100);
lean_dec(x_98);
x_101 = l_Lean_PersistentArray_toArray___rarg(x_100);
lean_dec(x_100);
x_102 = lean_array_size(x_101);
x_103 = 0;
x_104 = l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(x_102, x_103, x_101);
x_105 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_105, 0, x_2);
lean_ctor_set(x_105, 1, x_4);
lean_ctor_set(x_105, 2, x_104);
x_106 = lean_st_ref_get(x_6, x_99);
x_107 = lean_ctor_get(x_106, 1);
lean_inc(x_107);
lean_dec(x_106);
x_108 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_105, x_8, x_9, x_94, x_11, x_107);
lean_dec(x_94);
x_109 = lean_ctor_get(x_108, 0);
lean_inc(x_109);
x_110 = lean_ctor_get(x_108, 1);
lean_inc(x_110);
lean_dec(x_108);
x_111 = lean_st_ref_get(x_6, x_110);
x_112 = lean_ctor_get(x_111, 1);
lean_inc(x_112);
lean_dec(x_111);
x_113 = lean_st_ref_take(x_11, x_112);
x_114 = lean_ctor_get(x_113, 0);
lean_inc(x_114);
x_115 = lean_ctor_get(x_113, 1);
lean_inc(x_115);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_116 = x_113;
} else {
 lean_dec_ref(x_113);
 x_116 = lean_box(0);
}
x_117 = lean_ctor_get(x_114, 0);
lean_inc(x_117);
x_118 = lean_ctor_get(x_114, 1);
lean_inc(x_118);
x_119 = lean_ctor_get(x_114, 2);
lean_inc(x_119);
x_120 = lean_ctor_get(x_114, 4);
lean_inc(x_120);
x_121 = lean_ctor_get(x_114, 5);
lean_inc(x_121);
x_122 = lean_ctor_get(x_114, 6);
lean_inc(x_122);
if (lean_is_exclusive(x_114)) {
 lean_ctor_release(x_114, 0);
 lean_ctor_release(x_114, 1);
 lean_ctor_release(x_114, 2);
 lean_ctor_release(x_114, 3);
 lean_ctor_release(x_114, 4);
 lean_ctor_release(x_114, 5);
 lean_ctor_release(x_114, 6);
 x_123 = x_114;
} else {
 lean_dec_ref(x_114);
 x_123 = lean_box(0);
}
if (lean_is_scalar(x_116)) {
 x_124 = lean_alloc_ctor(0, 2, 0);
} else {
 x_124 = x_116;
}
lean_ctor_set(x_124, 0, x_3);
lean_ctor_set(x_124, 1, x_109);
x_125 = l_Lean_PersistentArray_push___rarg(x_1, x_124);
if (lean_is_scalar(x_123)) {
 x_126 = lean_alloc_ctor(0, 7, 0);
} else {
 x_126 = x_123;
}
lean_ctor_set(x_126, 0, x_117);
lean_ctor_set(x_126, 1, x_118);
lean_ctor_set(x_126, 2, x_119);
lean_ctor_set(x_126, 3, x_125);
lean_ctor_set(x_126, 4, x_120);
lean_ctor_set(x_126, 5, x_121);
lean_ctor_set(x_126, 6, x_122);
x_127 = lean_st_ref_set(x_11, x_126, x_115);
x_128 = lean_ctor_get(x_127, 1);
lean_inc(x_128);
if (lean_is_exclusive(x_127)) {
 lean_ctor_release(x_127, 0);
 lean_ctor_release(x_127, 1);
 x_129 = x_127;
} else {
 lean_dec_ref(x_127);
 x_129 = lean_box(0);
}
x_130 = lean_box(0);
if (lean_is_scalar(x_129)) {
 x_131 = lean_alloc_ctor(0, 2, 0);
} else {
 x_131 = x_129;
}
lean_ctor_set(x_131, 0, x_130);
lean_ctor_set(x_131, 1, x_128);
return x_131;
}
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg___boxed), 12, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_9);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_9);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_10);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; size_t x_23; size_t x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; uint8_t x_35; 
x_14 = lean_ctor_get(x_10, 5);
x_15 = l_Lean_replaceRef(x_3, x_14);
lean_dec(x_14);
lean_ctor_set(x_10, 5, x_15);
x_16 = lean_st_ref_get(x_6, x_12);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_st_ref_get(x_11, x_17);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_ctor_get(x_19, 3);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Lean_PersistentArray_toArray___rarg(x_21);
lean_dec(x_21);
x_23 = lean_array_size(x_22);
x_24 = 0;
x_25 = l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(x_23, x_24, x_22);
x_26 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_26, 0, x_2);
lean_ctor_set(x_26, 1, x_4);
lean_ctor_set(x_26, 2, x_25);
x_27 = lean_st_ref_get(x_6, x_20);
x_28 = lean_ctor_get(x_27, 1);
lean_inc(x_28);
lean_dec(x_27);
x_29 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_26, x_8, x_9, x_10, x_11, x_28);
lean_dec(x_10);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = lean_st_ref_get(x_6, x_31);
x_33 = lean_ctor_get(x_32, 1);
lean_inc(x_33);
lean_dec(x_32);
x_34 = lean_st_ref_take(x_11, x_33);
x_35 = !lean_is_exclusive(x_34);
if (x_35 == 0)
{
lean_object* x_36; uint8_t x_37; 
x_36 = lean_ctor_get(x_34, 0);
x_37 = !lean_is_exclusive(x_36);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_38 = lean_ctor_get(x_34, 1);
x_39 = lean_ctor_get(x_36, 3);
lean_dec(x_39);
lean_ctor_set(x_34, 1, x_30);
lean_ctor_set(x_34, 0, x_3);
x_40 = l_Lean_PersistentArray_push___rarg(x_1, x_34);
lean_ctor_set(x_36, 3, x_40);
x_41 = lean_st_ref_set(x_11, x_36, x_38);
x_42 = !lean_is_exclusive(x_41);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; 
x_43 = lean_ctor_get(x_41, 0);
lean_dec(x_43);
x_44 = lean_box(0);
lean_ctor_set(x_41, 0, x_44);
return x_41;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_41, 1);
lean_inc(x_45);
lean_dec(x_41);
x_46 = lean_box(0);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_45);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_48 = lean_ctor_get(x_34, 1);
x_49 = lean_ctor_get(x_36, 0);
x_50 = lean_ctor_get(x_36, 1);
x_51 = lean_ctor_get(x_36, 2);
x_52 = lean_ctor_get(x_36, 4);
x_53 = lean_ctor_get(x_36, 5);
x_54 = lean_ctor_get(x_36, 6);
lean_inc(x_54);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_36);
lean_ctor_set(x_34, 1, x_30);
lean_ctor_set(x_34, 0, x_3);
x_55 = l_Lean_PersistentArray_push___rarg(x_1, x_34);
x_56 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_56, 0, x_49);
lean_ctor_set(x_56, 1, x_50);
lean_ctor_set(x_56, 2, x_51);
lean_ctor_set(x_56, 3, x_55);
lean_ctor_set(x_56, 4, x_52);
lean_ctor_set(x_56, 5, x_53);
lean_ctor_set(x_56, 6, x_54);
x_57 = lean_st_ref_set(x_11, x_56, x_48);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
if (lean_is_exclusive(x_57)) {
 lean_ctor_release(x_57, 0);
 lean_ctor_release(x_57, 1);
 x_59 = x_57;
} else {
 lean_dec_ref(x_57);
 x_59 = lean_box(0);
}
x_60 = lean_box(0);
if (lean_is_scalar(x_59)) {
 x_61 = lean_alloc_ctor(0, 2, 0);
} else {
 x_61 = x_59;
}
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_61, 1, x_58);
return x_61;
}
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_62 = lean_ctor_get(x_34, 0);
x_63 = lean_ctor_get(x_34, 1);
lean_inc(x_63);
lean_inc(x_62);
lean_dec(x_34);
x_64 = lean_ctor_get(x_62, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_62, 1);
lean_inc(x_65);
x_66 = lean_ctor_get(x_62, 2);
lean_inc(x_66);
x_67 = lean_ctor_get(x_62, 4);
lean_inc(x_67);
x_68 = lean_ctor_get(x_62, 5);
lean_inc(x_68);
x_69 = lean_ctor_get(x_62, 6);
lean_inc(x_69);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 lean_ctor_release(x_62, 2);
 lean_ctor_release(x_62, 3);
 lean_ctor_release(x_62, 4);
 lean_ctor_release(x_62, 5);
 lean_ctor_release(x_62, 6);
 x_70 = x_62;
} else {
 lean_dec_ref(x_62);
 x_70 = lean_box(0);
}
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_3);
lean_ctor_set(x_71, 1, x_30);
x_72 = l_Lean_PersistentArray_push___rarg(x_1, x_71);
if (lean_is_scalar(x_70)) {
 x_73 = lean_alloc_ctor(0, 7, 0);
} else {
 x_73 = x_70;
}
lean_ctor_set(x_73, 0, x_64);
lean_ctor_set(x_73, 1, x_65);
lean_ctor_set(x_73, 2, x_66);
lean_ctor_set(x_73, 3, x_72);
lean_ctor_set(x_73, 4, x_67);
lean_ctor_set(x_73, 5, x_68);
lean_ctor_set(x_73, 6, x_69);
x_74 = lean_st_ref_set(x_11, x_73, x_63);
x_75 = lean_ctor_get(x_74, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_76 = x_74;
} else {
 lean_dec_ref(x_74);
 x_76 = lean_box(0);
}
x_77 = lean_box(0);
if (lean_is_scalar(x_76)) {
 x_78 = lean_alloc_ctor(0, 2, 0);
} else {
 x_78 = x_76;
}
lean_ctor_set(x_78, 0, x_77);
lean_ctor_set(x_78, 1, x_75);
return x_78;
}
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; uint8_t x_90; lean_object* x_91; uint8_t x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; size_t x_102; size_t x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
x_79 = lean_ctor_get(x_10, 0);
x_80 = lean_ctor_get(x_10, 1);
x_81 = lean_ctor_get(x_10, 2);
x_82 = lean_ctor_get(x_10, 3);
x_83 = lean_ctor_get(x_10, 4);
x_84 = lean_ctor_get(x_10, 5);
x_85 = lean_ctor_get(x_10, 6);
x_86 = lean_ctor_get(x_10, 7);
x_87 = lean_ctor_get(x_10, 8);
x_88 = lean_ctor_get(x_10, 9);
x_89 = lean_ctor_get(x_10, 10);
x_90 = lean_ctor_get_uint8(x_10, sizeof(void*)*12);
x_91 = lean_ctor_get(x_10, 11);
x_92 = lean_ctor_get_uint8(x_10, sizeof(void*)*12 + 1);
lean_inc(x_91);
lean_inc(x_89);
lean_inc(x_88);
lean_inc(x_87);
lean_inc(x_86);
lean_inc(x_85);
lean_inc(x_84);
lean_inc(x_83);
lean_inc(x_82);
lean_inc(x_81);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_10);
x_93 = l_Lean_replaceRef(x_3, x_84);
lean_dec(x_84);
x_94 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_94, 0, x_79);
lean_ctor_set(x_94, 1, x_80);
lean_ctor_set(x_94, 2, x_81);
lean_ctor_set(x_94, 3, x_82);
lean_ctor_set(x_94, 4, x_83);
lean_ctor_set(x_94, 5, x_93);
lean_ctor_set(x_94, 6, x_85);
lean_ctor_set(x_94, 7, x_86);
lean_ctor_set(x_94, 8, x_87);
lean_ctor_set(x_94, 9, x_88);
lean_ctor_set(x_94, 10, x_89);
lean_ctor_set(x_94, 11, x_91);
lean_ctor_set_uint8(x_94, sizeof(void*)*12, x_90);
lean_ctor_set_uint8(x_94, sizeof(void*)*12 + 1, x_92);
x_95 = lean_st_ref_get(x_6, x_12);
x_96 = lean_ctor_get(x_95, 1);
lean_inc(x_96);
lean_dec(x_95);
x_97 = lean_st_ref_get(x_11, x_96);
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
lean_dec(x_97);
x_100 = lean_ctor_get(x_98, 3);
lean_inc(x_100);
lean_dec(x_98);
x_101 = l_Lean_PersistentArray_toArray___rarg(x_100);
lean_dec(x_100);
x_102 = lean_array_size(x_101);
x_103 = 0;
x_104 = l_Array_mapMUnsafe_map___at___private_Lean_Util_Trace_0__Lean_addTraceNode___spec__1(x_102, x_103, x_101);
x_105 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_105, 0, x_2);
lean_ctor_set(x_105, 1, x_4);
lean_ctor_set(x_105, 2, x_104);
x_106 = lean_st_ref_get(x_6, x_99);
x_107 = lean_ctor_get(x_106, 1);
lean_inc(x_107);
lean_dec(x_106);
x_108 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_105, x_8, x_9, x_94, x_11, x_107);
lean_dec(x_94);
x_109 = lean_ctor_get(x_108, 0);
lean_inc(x_109);
x_110 = lean_ctor_get(x_108, 1);
lean_inc(x_110);
lean_dec(x_108);
x_111 = lean_st_ref_get(x_6, x_110);
x_112 = lean_ctor_get(x_111, 1);
lean_inc(x_112);
lean_dec(x_111);
x_113 = lean_st_ref_take(x_11, x_112);
x_114 = lean_ctor_get(x_113, 0);
lean_inc(x_114);
x_115 = lean_ctor_get(x_113, 1);
lean_inc(x_115);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_116 = x_113;
} else {
 lean_dec_ref(x_113);
 x_116 = lean_box(0);
}
x_117 = lean_ctor_get(x_114, 0);
lean_inc(x_117);
x_118 = lean_ctor_get(x_114, 1);
lean_inc(x_118);
x_119 = lean_ctor_get(x_114, 2);
lean_inc(x_119);
x_120 = lean_ctor_get(x_114, 4);
lean_inc(x_120);
x_121 = lean_ctor_get(x_114, 5);
lean_inc(x_121);
x_122 = lean_ctor_get(x_114, 6);
lean_inc(x_122);
if (lean_is_exclusive(x_114)) {
 lean_ctor_release(x_114, 0);
 lean_ctor_release(x_114, 1);
 lean_ctor_release(x_114, 2);
 lean_ctor_release(x_114, 3);
 lean_ctor_release(x_114, 4);
 lean_ctor_release(x_114, 5);
 lean_ctor_release(x_114, 6);
 x_123 = x_114;
} else {
 lean_dec_ref(x_114);
 x_123 = lean_box(0);
}
if (lean_is_scalar(x_116)) {
 x_124 = lean_alloc_ctor(0, 2, 0);
} else {
 x_124 = x_116;
}
lean_ctor_set(x_124, 0, x_3);
lean_ctor_set(x_124, 1, x_109);
x_125 = l_Lean_PersistentArray_push___rarg(x_1, x_124);
if (lean_is_scalar(x_123)) {
 x_126 = lean_alloc_ctor(0, 7, 0);
} else {
 x_126 = x_123;
}
lean_ctor_set(x_126, 0, x_117);
lean_ctor_set(x_126, 1, x_118);
lean_ctor_set(x_126, 2, x_119);
lean_ctor_set(x_126, 3, x_125);
lean_ctor_set(x_126, 4, x_120);
lean_ctor_set(x_126, 5, x_121);
lean_ctor_set(x_126, 6, x_122);
x_127 = lean_st_ref_set(x_11, x_126, x_115);
x_128 = lean_ctor_get(x_127, 1);
lean_inc(x_128);
if (lean_is_exclusive(x_127)) {
 lean_ctor_release(x_127, 0);
 lean_ctor_release(x_127, 1);
 x_129 = x_127;
} else {
 lean_dec_ref(x_127);
 x_129 = lean_box(0);
}
x_130 = lean_box(0);
if (lean_is_scalar(x_129)) {
 x_131 = lean_alloc_ctor(0, 2, 0);
} else {
 x_131 = x_129;
}
lean_ctor_set(x_131, 0, x_130);
lean_ctor_set(x_131, 1, x_128);
return x_131;
}
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg___boxed), 12, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_9);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_9);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_inc(x_13);
x_16 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg(x_2, x_6, x_3, x_4, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg(x_5, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_17);
lean_dec(x_13);
return x_18;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_profiler;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, uint8_t x_9, double x_10, double x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18, lean_object* x_19, lean_object* x_20) {
_start:
{
double x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_21 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
lean_inc(x_3);
lean_inc(x_1);
x_22 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_22, 0, x_1);
lean_ctor_set(x_22, 1, x_3);
lean_ctor_set_float(x_22, sizeof(void*)*2, x_21);
lean_ctor_set_float(x_22, sizeof(void*)*2 + 8, x_21);
lean_ctor_set_uint8(x_22, sizeof(void*)*2 + 16, x_2);
x_23 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1;
x_24 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_8, x_23);
if (x_24 == 0)
{
if (x_9 == 0)
{
lean_object* x_25; lean_object* x_26; 
lean_dec(x_3);
lean_dec(x_1);
x_25 = lean_box(0);
x_26 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1(x_4, x_5, x_6, x_12, x_7, x_22, x_25, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_22);
x_27 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_27, 0, x_1);
lean_ctor_set(x_27, 1, x_3);
lean_ctor_set_float(x_27, sizeof(void*)*2, x_10);
lean_ctor_set_float(x_27, sizeof(void*)*2 + 8, x_11);
lean_ctor_set_uint8(x_27, sizeof(void*)*2 + 16, x_2);
x_28 = lean_box(0);
x_29 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1(x_4, x_5, x_6, x_12, x_7, x_27, x_28, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
return x_29;
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_22);
x_30 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_30, 0, x_1);
lean_ctor_set(x_30, 1, x_3);
lean_ctor_set_float(x_30, sizeof(void*)*2, x_10);
lean_ctor_set_float(x_30, sizeof(void*)*2 + 8, x_11);
lean_ctor_set_uint8(x_30, sizeof(void*)*2 + 16, x_2);
x_31 = lean_box(0);
x_32 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1(x_4, x_5, x_6, x_12, x_7, x_30, x_31, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
return x_32;
}
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("<exception thrown while producing trace node message>", 53, 53);
return x_1;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, uint8_t x_8, double x_9, double x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18, lean_object* x_19, lean_object* x_20) {
_start:
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_ctor_get(x_18, 5);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_6);
x_22 = lean_apply_9(x_11, x_6, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_21, x_6, x_7, x_8, x_9, x_10, x_23, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_24);
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_6);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_22, 1);
lean_inc(x_26);
lean_dec(x_22);
x_27 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2;
x_28 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_21, x_6, x_7, x_8, x_9, x_10, x_27, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_26);
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_6);
return x_28;
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_inc(x_13);
x_16 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg(x_2, x_6, x_3, x_4, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg(x_5, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_17);
lean_dec(x_13);
return x_18;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, uint8_t x_9, double x_10, double x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18, lean_object* x_19, lean_object* x_20) {
_start:
{
double x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_21 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
lean_inc(x_3);
lean_inc(x_1);
x_22 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_22, 0, x_1);
lean_ctor_set(x_22, 1, x_3);
lean_ctor_set_float(x_22, sizeof(void*)*2, x_21);
lean_ctor_set_float(x_22, sizeof(void*)*2 + 8, x_21);
lean_ctor_set_uint8(x_22, sizeof(void*)*2 + 16, x_2);
x_23 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1;
x_24 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_8, x_23);
if (x_24 == 0)
{
if (x_9 == 0)
{
lean_object* x_25; lean_object* x_26; 
lean_dec(x_3);
lean_dec(x_1);
x_25 = lean_box(0);
x_26 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4(x_4, x_5, x_6, x_12, x_7, x_22, x_25, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_22);
x_27 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_27, 0, x_1);
lean_ctor_set(x_27, 1, x_3);
lean_ctor_set_float(x_27, sizeof(void*)*2, x_10);
lean_ctor_set_float(x_27, sizeof(void*)*2 + 8, x_11);
lean_ctor_set_uint8(x_27, sizeof(void*)*2 + 16, x_2);
x_28 = lean_box(0);
x_29 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4(x_4, x_5, x_6, x_12, x_7, x_27, x_28, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
return x_29;
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_22);
x_30 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_30, 0, x_1);
lean_ctor_set(x_30, 1, x_3);
lean_ctor_set_float(x_30, sizeof(void*)*2, x_10);
lean_ctor_set_float(x_30, sizeof(void*)*2 + 8, x_11);
lean_ctor_set_uint8(x_30, sizeof(void*)*2 + 16, x_2);
x_31 = lean_box(0);
x_32 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4(x_4, x_5, x_6, x_12, x_7, x_30, x_31, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
return x_32;
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, uint8_t x_8, double x_9, double x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18, lean_object* x_19, lean_object* x_20) {
_start:
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_ctor_get(x_18, 5);
lean_inc(x_21);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_6);
x_22 = lean_apply_9(x_11, x_6, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5(x_1, x_2, x_3, x_4, x_5, x_21, x_6, x_7, x_8, x_9, x_10, x_23, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_24);
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_6);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_22, 1);
lean_inc(x_26);
lean_dec(x_22);
x_27 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2;
x_28 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5(x_1, x_2, x_3, x_4, x_5, x_21, x_6, x_7, x_8, x_9, x_10, x_27, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_26);
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_6);
return x_28;
}
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_trace_profiler_useHeartbeats;
return x_1;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_trace_profiler;
return x_1;
}
}
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_trace_profiler_threshold;
return x_1;
}
}
static double _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__4() {
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
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_IO_monoNanosNow___boxed), 1, 0);
return x_1;
}
}
static double _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6() {
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
static lean_object* _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_IO_getNumHeartbeats___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, uint8_t x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18) {
_start:
{
lean_object* x_19; uint8_t x_20; 
x_19 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg(x_12, x_13, x_14, x_15, x_16, x_17, x_18);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_19, 1);
x_23 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1;
x_24 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_2, x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_96; lean_object* x_97; 
x_25 = lean_ctor_get(x_3, 0);
lean_inc(x_25);
lean_dec(x_3);
x_96 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5;
lean_inc(x_25);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_97 = lean_apply_10(x_25, lean_box(0), x_96, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_22);
if (lean_obj_tag(x_97) == 0)
{
lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
lean_dec(x_97);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_100 = lean_apply_8(x_9, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_99);
if (lean_obj_tag(x_100) == 0)
{
uint8_t x_101; 
x_101 = !lean_is_exclusive(x_100);
if (x_101 == 0)
{
lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_102 = lean_ctor_get(x_100, 0);
x_103 = lean_ctor_get(x_100, 1);
x_104 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_104, 0, x_102);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_105 = lean_apply_10(x_25, lean_box(0), x_96, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_103);
if (lean_obj_tag(x_105) == 0)
{
lean_object* x_106; lean_object* x_107; uint8_t x_108; lean_object* x_109; double x_110; double x_111; double x_112; double x_113; double x_114; lean_object* x_115; lean_object* x_116; 
x_106 = lean_ctor_get(x_105, 0);
lean_inc(x_106);
x_107 = lean_ctor_get(x_105, 1);
lean_inc(x_107);
lean_dec(x_105);
x_108 = 0;
x_109 = lean_unsigned_to_nat(0u);
x_110 = l_Float_ofScientific(x_98, x_108, x_109);
lean_dec(x_98);
x_111 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
x_112 = lean_float_div(x_110, x_111);
x_113 = l_Float_ofScientific(x_106, x_108, x_109);
lean_dec(x_106);
x_114 = lean_float_div(x_113, x_111);
x_115 = lean_box_float(x_112);
x_116 = lean_box_float(x_114);
lean_ctor_set(x_100, 1, x_116);
lean_ctor_set(x_100, 0, x_115);
lean_ctor_set(x_19, 1, x_100);
lean_ctor_set(x_19, 0, x_104);
x_26 = x_19;
x_27 = x_107;
goto block_95;
}
else
{
uint8_t x_117; 
lean_dec(x_104);
lean_free_object(x_100);
lean_dec(x_98);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_117 = !lean_is_exclusive(x_105);
if (x_117 == 0)
{
return x_105;
}
else
{
lean_object* x_118; lean_object* x_119; lean_object* x_120; 
x_118 = lean_ctor_get(x_105, 0);
x_119 = lean_ctor_get(x_105, 1);
lean_inc(x_119);
lean_inc(x_118);
lean_dec(x_105);
x_120 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_120, 0, x_118);
lean_ctor_set(x_120, 1, x_119);
return x_120;
}
}
}
else
{
lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; 
x_121 = lean_ctor_get(x_100, 0);
x_122 = lean_ctor_get(x_100, 1);
lean_inc(x_122);
lean_inc(x_121);
lean_dec(x_100);
x_123 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_123, 0, x_121);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_124 = lean_apply_10(x_25, lean_box(0), x_96, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_122);
if (lean_obj_tag(x_124) == 0)
{
lean_object* x_125; lean_object* x_126; uint8_t x_127; lean_object* x_128; double x_129; double x_130; double x_131; double x_132; double x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; 
x_125 = lean_ctor_get(x_124, 0);
lean_inc(x_125);
x_126 = lean_ctor_get(x_124, 1);
lean_inc(x_126);
lean_dec(x_124);
x_127 = 0;
x_128 = lean_unsigned_to_nat(0u);
x_129 = l_Float_ofScientific(x_98, x_127, x_128);
lean_dec(x_98);
x_130 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
x_131 = lean_float_div(x_129, x_130);
x_132 = l_Float_ofScientific(x_125, x_127, x_128);
lean_dec(x_125);
x_133 = lean_float_div(x_132, x_130);
x_134 = lean_box_float(x_131);
x_135 = lean_box_float(x_133);
x_136 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_136, 0, x_134);
lean_ctor_set(x_136, 1, x_135);
lean_ctor_set(x_19, 1, x_136);
lean_ctor_set(x_19, 0, x_123);
x_26 = x_19;
x_27 = x_126;
goto block_95;
}
else
{
lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; 
lean_dec(x_123);
lean_dec(x_98);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_137 = lean_ctor_get(x_124, 0);
lean_inc(x_137);
x_138 = lean_ctor_get(x_124, 1);
lean_inc(x_138);
if (lean_is_exclusive(x_124)) {
 lean_ctor_release(x_124, 0);
 lean_ctor_release(x_124, 1);
 x_139 = x_124;
} else {
 lean_dec_ref(x_124);
 x_139 = lean_box(0);
}
if (lean_is_scalar(x_139)) {
 x_140 = lean_alloc_ctor(1, 2, 0);
} else {
 x_140 = x_139;
}
lean_ctor_set(x_140, 0, x_137);
lean_ctor_set(x_140, 1, x_138);
return x_140;
}
}
}
else
{
uint8_t x_141; 
x_141 = !lean_is_exclusive(x_100);
if (x_141 == 0)
{
lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; 
x_142 = lean_ctor_get(x_100, 0);
x_143 = lean_ctor_get(x_100, 1);
x_144 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_144, 0, x_142);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_145 = lean_apply_10(x_25, lean_box(0), x_96, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_143);
if (lean_obj_tag(x_145) == 0)
{
lean_object* x_146; lean_object* x_147; uint8_t x_148; lean_object* x_149; double x_150; double x_151; double x_152; double x_153; double x_154; lean_object* x_155; lean_object* x_156; 
x_146 = lean_ctor_get(x_145, 0);
lean_inc(x_146);
x_147 = lean_ctor_get(x_145, 1);
lean_inc(x_147);
lean_dec(x_145);
x_148 = 0;
x_149 = lean_unsigned_to_nat(0u);
x_150 = l_Float_ofScientific(x_98, x_148, x_149);
lean_dec(x_98);
x_151 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
x_152 = lean_float_div(x_150, x_151);
x_153 = l_Float_ofScientific(x_146, x_148, x_149);
lean_dec(x_146);
x_154 = lean_float_div(x_153, x_151);
x_155 = lean_box_float(x_152);
x_156 = lean_box_float(x_154);
lean_ctor_set_tag(x_100, 0);
lean_ctor_set(x_100, 1, x_156);
lean_ctor_set(x_100, 0, x_155);
lean_ctor_set(x_19, 1, x_100);
lean_ctor_set(x_19, 0, x_144);
x_26 = x_19;
x_27 = x_147;
goto block_95;
}
else
{
uint8_t x_157; 
lean_dec(x_144);
lean_free_object(x_100);
lean_dec(x_98);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_157 = !lean_is_exclusive(x_145);
if (x_157 == 0)
{
return x_145;
}
else
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_145, 0);
x_159 = lean_ctor_get(x_145, 1);
lean_inc(x_159);
lean_inc(x_158);
lean_dec(x_145);
x_160 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_160, 0, x_158);
lean_ctor_set(x_160, 1, x_159);
return x_160;
}
}
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; 
x_161 = lean_ctor_get(x_100, 0);
x_162 = lean_ctor_get(x_100, 1);
lean_inc(x_162);
lean_inc(x_161);
lean_dec(x_100);
x_163 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_163, 0, x_161);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_164 = lean_apply_10(x_25, lean_box(0), x_96, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_162);
if (lean_obj_tag(x_164) == 0)
{
lean_object* x_165; lean_object* x_166; uint8_t x_167; lean_object* x_168; double x_169; double x_170; double x_171; double x_172; double x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; 
x_165 = lean_ctor_get(x_164, 0);
lean_inc(x_165);
x_166 = lean_ctor_get(x_164, 1);
lean_inc(x_166);
lean_dec(x_164);
x_167 = 0;
x_168 = lean_unsigned_to_nat(0u);
x_169 = l_Float_ofScientific(x_98, x_167, x_168);
lean_dec(x_98);
x_170 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
x_171 = lean_float_div(x_169, x_170);
x_172 = l_Float_ofScientific(x_165, x_167, x_168);
lean_dec(x_165);
x_173 = lean_float_div(x_172, x_170);
x_174 = lean_box_float(x_171);
x_175 = lean_box_float(x_173);
x_176 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_176, 0, x_174);
lean_ctor_set(x_176, 1, x_175);
lean_ctor_set(x_19, 1, x_176);
lean_ctor_set(x_19, 0, x_163);
x_26 = x_19;
x_27 = x_166;
goto block_95;
}
else
{
lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; 
lean_dec(x_163);
lean_dec(x_98);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_177 = lean_ctor_get(x_164, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_164, 1);
lean_inc(x_178);
if (lean_is_exclusive(x_164)) {
 lean_ctor_release(x_164, 0);
 lean_ctor_release(x_164, 1);
 x_179 = x_164;
} else {
 lean_dec_ref(x_164);
 x_179 = lean_box(0);
}
if (lean_is_scalar(x_179)) {
 x_180 = lean_alloc_ctor(1, 2, 0);
} else {
 x_180 = x_179;
}
lean_ctor_set(x_180, 0, x_177);
lean_ctor_set(x_180, 1, x_178);
return x_180;
}
}
}
}
else
{
uint8_t x_181; 
lean_dec(x_25);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_181 = !lean_is_exclusive(x_97);
if (x_181 == 0)
{
return x_97;
}
else
{
lean_object* x_182; lean_object* x_183; lean_object* x_184; 
x_182 = lean_ctor_get(x_97, 0);
x_183 = lean_ctor_get(x_97, 1);
lean_inc(x_183);
lean_inc(x_182);
lean_dec(x_97);
x_184 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_184, 0, x_182);
lean_ctor_set(x_184, 1, x_183);
return x_184;
}
}
block_95:
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; lean_object* x_81; uint8_t x_82; 
x_28 = lean_ctor_get(x_26, 1);
lean_inc(x_28);
x_29 = lean_ctor_get(x_26, 0);
lean_inc(x_29);
lean_dec(x_26);
x_30 = lean_ctor_get(x_28, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_28, 1);
lean_inc(x_31);
lean_dec(x_28);
x_81 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2;
x_82 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_2, x_81);
if (x_82 == 0)
{
uint8_t x_83; 
x_83 = 0;
x_32 = x_83;
goto block_80;
}
else
{
double x_84; double x_85; double x_86; lean_object* x_87; lean_object* x_88; uint8_t x_89; lean_object* x_90; double x_91; double x_92; double x_93; uint8_t x_94; 
x_84 = lean_unbox_float(x_31);
x_85 = lean_unbox_float(x_30);
x_86 = lean_float_sub(x_84, x_85);
x_87 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3;
x_88 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_2, x_87);
x_89 = 0;
x_90 = lean_unsigned_to_nat(0u);
x_91 = l_Float_ofScientific(x_88, x_89, x_90);
lean_dec(x_88);
x_92 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__4;
x_93 = lean_float_div(x_91, x_92);
x_94 = lean_float_decLt(x_93, x_86);
x_32 = x_94;
goto block_80;
}
block_80:
{
if (x_8 == 0)
{
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
lean_dec(x_31);
lean_dec(x_30);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_33 = lean_st_ref_get(x_12, x_27);
x_34 = lean_ctor_get(x_33, 1);
lean_inc(x_34);
lean_dec(x_33);
x_35 = lean_st_ref_take(x_17, x_34);
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_35, 1);
lean_inc(x_37);
lean_dec(x_35);
x_38 = !lean_is_exclusive(x_36);
if (x_38 == 0)
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_39 = lean_ctor_get(x_36, 3);
x_40 = l_Lean_PersistentArray_append___rarg(x_21, x_39);
lean_dec(x_39);
lean_ctor_set(x_36, 3, x_40);
x_41 = lean_st_ref_set(x_17, x_36, x_37);
x_42 = lean_ctor_get(x_41, 1);
lean_inc(x_42);
lean_dec(x_41);
x_43 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg(x_29, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_42);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_29);
if (lean_obj_tag(x_43) == 0)
{
uint8_t x_44; 
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
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
else
{
uint8_t x_48; 
x_48 = !lean_is_exclusive(x_43);
if (x_48 == 0)
{
return x_43;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_43, 0);
x_50 = lean_ctor_get(x_43, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_43);
x_51 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_51, 0, x_49);
lean_ctor_set(x_51, 1, x_50);
return x_51;
}
}
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_52 = lean_ctor_get(x_36, 0);
x_53 = lean_ctor_get(x_36, 1);
x_54 = lean_ctor_get(x_36, 2);
x_55 = lean_ctor_get(x_36, 3);
x_56 = lean_ctor_get(x_36, 4);
x_57 = lean_ctor_get(x_36, 5);
x_58 = lean_ctor_get(x_36, 6);
lean_inc(x_58);
lean_inc(x_57);
lean_inc(x_56);
lean_inc(x_55);
lean_inc(x_54);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_36);
x_59 = l_Lean_PersistentArray_append___rarg(x_21, x_55);
lean_dec(x_55);
x_60 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_60, 0, x_52);
lean_ctor_set(x_60, 1, x_53);
lean_ctor_set(x_60, 2, x_54);
lean_ctor_set(x_60, 3, x_59);
lean_ctor_set(x_60, 4, x_56);
lean_ctor_set(x_60, 5, x_57);
lean_ctor_set(x_60, 6, x_58);
x_61 = lean_st_ref_set(x_17, x_60, x_37);
x_62 = lean_ctor_get(x_61, 1);
lean_inc(x_62);
lean_dec(x_61);
x_63 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg(x_29, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_62);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_29);
if (lean_obj_tag(x_63) == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
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
if (lean_is_scalar(x_66)) {
 x_67 = lean_alloc_ctor(0, 2, 0);
} else {
 x_67 = x_66;
}
lean_ctor_set(x_67, 0, x_64);
lean_ctor_set(x_67, 1, x_65);
return x_67;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; 
x_68 = lean_ctor_get(x_63, 0);
lean_inc(x_68);
x_69 = lean_ctor_get(x_63, 1);
lean_inc(x_69);
if (lean_is_exclusive(x_63)) {
 lean_ctor_release(x_63, 0);
 lean_ctor_release(x_63, 1);
 x_70 = x_63;
} else {
 lean_dec_ref(x_63);
 x_70 = lean_box(0);
}
if (lean_is_scalar(x_70)) {
 x_71 = lean_alloc_ctor(1, 2, 0);
} else {
 x_71 = x_70;
}
lean_ctor_set(x_71, 0, x_68);
lean_ctor_set(x_71, 1, x_69);
return x_71;
}
}
}
else
{
lean_object* x_72; double x_73; double x_74; lean_object* x_75; 
x_72 = lean_box(0);
x_73 = lean_unbox_float(x_30);
lean_dec(x_30);
x_74 = lean_unbox_float(x_31);
lean_dec(x_31);
x_75 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(x_4, x_5, x_6, x_1, x_21, x_29, x_2, x_32, x_73, x_74, x_7, x_72, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_27);
return x_75;
}
}
else
{
lean_object* x_76; double x_77; double x_78; lean_object* x_79; 
x_76 = lean_box(0);
x_77 = lean_unbox_float(x_30);
lean_dec(x_30);
x_78 = lean_unbox_float(x_31);
lean_dec(x_31);
x_79 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(x_4, x_5, x_6, x_1, x_21, x_29, x_2, x_32, x_77, x_78, x_7, x_76, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_27);
return x_79;
}
}
}
}
else
{
lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_254; lean_object* x_255; 
x_185 = lean_ctor_get(x_3, 0);
lean_inc(x_185);
lean_dec(x_3);
x_254 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7;
lean_inc(x_185);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_255 = lean_apply_10(x_185, lean_box(0), x_254, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_22);
if (lean_obj_tag(x_255) == 0)
{
lean_object* x_256; lean_object* x_257; lean_object* x_258; 
x_256 = lean_ctor_get(x_255, 0);
lean_inc(x_256);
x_257 = lean_ctor_get(x_255, 1);
lean_inc(x_257);
lean_dec(x_255);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_258 = lean_apply_8(x_9, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_257);
if (lean_obj_tag(x_258) == 0)
{
uint8_t x_259; 
x_259 = !lean_is_exclusive(x_258);
if (x_259 == 0)
{
lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; 
x_260 = lean_ctor_get(x_258, 0);
x_261 = lean_ctor_get(x_258, 1);
x_262 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_262, 0, x_260);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_263 = lean_apply_10(x_185, lean_box(0), x_254, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_261);
if (lean_obj_tag(x_263) == 0)
{
lean_object* x_264; lean_object* x_265; uint8_t x_266; lean_object* x_267; double x_268; double x_269; lean_object* x_270; lean_object* x_271; 
x_264 = lean_ctor_get(x_263, 0);
lean_inc(x_264);
x_265 = lean_ctor_get(x_263, 1);
lean_inc(x_265);
lean_dec(x_263);
x_266 = 0;
x_267 = lean_unsigned_to_nat(0u);
x_268 = l_Float_ofScientific(x_256, x_266, x_267);
lean_dec(x_256);
x_269 = l_Float_ofScientific(x_264, x_266, x_267);
lean_dec(x_264);
x_270 = lean_box_float(x_268);
x_271 = lean_box_float(x_269);
lean_ctor_set(x_258, 1, x_271);
lean_ctor_set(x_258, 0, x_270);
lean_ctor_set(x_19, 1, x_258);
lean_ctor_set(x_19, 0, x_262);
x_186 = x_19;
x_187 = x_265;
goto block_253;
}
else
{
uint8_t x_272; 
lean_dec(x_262);
lean_free_object(x_258);
lean_dec(x_256);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_272 = !lean_is_exclusive(x_263);
if (x_272 == 0)
{
return x_263;
}
else
{
lean_object* x_273; lean_object* x_274; lean_object* x_275; 
x_273 = lean_ctor_get(x_263, 0);
x_274 = lean_ctor_get(x_263, 1);
lean_inc(x_274);
lean_inc(x_273);
lean_dec(x_263);
x_275 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_275, 0, x_273);
lean_ctor_set(x_275, 1, x_274);
return x_275;
}
}
}
else
{
lean_object* x_276; lean_object* x_277; lean_object* x_278; lean_object* x_279; 
x_276 = lean_ctor_get(x_258, 0);
x_277 = lean_ctor_get(x_258, 1);
lean_inc(x_277);
lean_inc(x_276);
lean_dec(x_258);
x_278 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_278, 0, x_276);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_279 = lean_apply_10(x_185, lean_box(0), x_254, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_277);
if (lean_obj_tag(x_279) == 0)
{
lean_object* x_280; lean_object* x_281; uint8_t x_282; lean_object* x_283; double x_284; double x_285; lean_object* x_286; lean_object* x_287; lean_object* x_288; 
x_280 = lean_ctor_get(x_279, 0);
lean_inc(x_280);
x_281 = lean_ctor_get(x_279, 1);
lean_inc(x_281);
lean_dec(x_279);
x_282 = 0;
x_283 = lean_unsigned_to_nat(0u);
x_284 = l_Float_ofScientific(x_256, x_282, x_283);
lean_dec(x_256);
x_285 = l_Float_ofScientific(x_280, x_282, x_283);
lean_dec(x_280);
x_286 = lean_box_float(x_284);
x_287 = lean_box_float(x_285);
x_288 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_288, 0, x_286);
lean_ctor_set(x_288, 1, x_287);
lean_ctor_set(x_19, 1, x_288);
lean_ctor_set(x_19, 0, x_278);
x_186 = x_19;
x_187 = x_281;
goto block_253;
}
else
{
lean_object* x_289; lean_object* x_290; lean_object* x_291; lean_object* x_292; 
lean_dec(x_278);
lean_dec(x_256);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_289 = lean_ctor_get(x_279, 0);
lean_inc(x_289);
x_290 = lean_ctor_get(x_279, 1);
lean_inc(x_290);
if (lean_is_exclusive(x_279)) {
 lean_ctor_release(x_279, 0);
 lean_ctor_release(x_279, 1);
 x_291 = x_279;
} else {
 lean_dec_ref(x_279);
 x_291 = lean_box(0);
}
if (lean_is_scalar(x_291)) {
 x_292 = lean_alloc_ctor(1, 2, 0);
} else {
 x_292 = x_291;
}
lean_ctor_set(x_292, 0, x_289);
lean_ctor_set(x_292, 1, x_290);
return x_292;
}
}
}
else
{
uint8_t x_293; 
x_293 = !lean_is_exclusive(x_258);
if (x_293 == 0)
{
lean_object* x_294; lean_object* x_295; lean_object* x_296; lean_object* x_297; 
x_294 = lean_ctor_get(x_258, 0);
x_295 = lean_ctor_get(x_258, 1);
x_296 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_296, 0, x_294);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_297 = lean_apply_10(x_185, lean_box(0), x_254, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_295);
if (lean_obj_tag(x_297) == 0)
{
lean_object* x_298; lean_object* x_299; uint8_t x_300; lean_object* x_301; double x_302; double x_303; lean_object* x_304; lean_object* x_305; 
x_298 = lean_ctor_get(x_297, 0);
lean_inc(x_298);
x_299 = lean_ctor_get(x_297, 1);
lean_inc(x_299);
lean_dec(x_297);
x_300 = 0;
x_301 = lean_unsigned_to_nat(0u);
x_302 = l_Float_ofScientific(x_256, x_300, x_301);
lean_dec(x_256);
x_303 = l_Float_ofScientific(x_298, x_300, x_301);
lean_dec(x_298);
x_304 = lean_box_float(x_302);
x_305 = lean_box_float(x_303);
lean_ctor_set_tag(x_258, 0);
lean_ctor_set(x_258, 1, x_305);
lean_ctor_set(x_258, 0, x_304);
lean_ctor_set(x_19, 1, x_258);
lean_ctor_set(x_19, 0, x_296);
x_186 = x_19;
x_187 = x_299;
goto block_253;
}
else
{
uint8_t x_306; 
lean_dec(x_296);
lean_free_object(x_258);
lean_dec(x_256);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_306 = !lean_is_exclusive(x_297);
if (x_306 == 0)
{
return x_297;
}
else
{
lean_object* x_307; lean_object* x_308; lean_object* x_309; 
x_307 = lean_ctor_get(x_297, 0);
x_308 = lean_ctor_get(x_297, 1);
lean_inc(x_308);
lean_inc(x_307);
lean_dec(x_297);
x_309 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_309, 0, x_307);
lean_ctor_set(x_309, 1, x_308);
return x_309;
}
}
}
else
{
lean_object* x_310; lean_object* x_311; lean_object* x_312; lean_object* x_313; 
x_310 = lean_ctor_get(x_258, 0);
x_311 = lean_ctor_get(x_258, 1);
lean_inc(x_311);
lean_inc(x_310);
lean_dec(x_258);
x_312 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_312, 0, x_310);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_313 = lean_apply_10(x_185, lean_box(0), x_254, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_311);
if (lean_obj_tag(x_313) == 0)
{
lean_object* x_314; lean_object* x_315; uint8_t x_316; lean_object* x_317; double x_318; double x_319; lean_object* x_320; lean_object* x_321; lean_object* x_322; 
x_314 = lean_ctor_get(x_313, 0);
lean_inc(x_314);
x_315 = lean_ctor_get(x_313, 1);
lean_inc(x_315);
lean_dec(x_313);
x_316 = 0;
x_317 = lean_unsigned_to_nat(0u);
x_318 = l_Float_ofScientific(x_256, x_316, x_317);
lean_dec(x_256);
x_319 = l_Float_ofScientific(x_314, x_316, x_317);
lean_dec(x_314);
x_320 = lean_box_float(x_318);
x_321 = lean_box_float(x_319);
x_322 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_322, 0, x_320);
lean_ctor_set(x_322, 1, x_321);
lean_ctor_set(x_19, 1, x_322);
lean_ctor_set(x_19, 0, x_312);
x_186 = x_19;
x_187 = x_315;
goto block_253;
}
else
{
lean_object* x_323; lean_object* x_324; lean_object* x_325; lean_object* x_326; 
lean_dec(x_312);
lean_dec(x_256);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_323 = lean_ctor_get(x_313, 0);
lean_inc(x_323);
x_324 = lean_ctor_get(x_313, 1);
lean_inc(x_324);
if (lean_is_exclusive(x_313)) {
 lean_ctor_release(x_313, 0);
 lean_ctor_release(x_313, 1);
 x_325 = x_313;
} else {
 lean_dec_ref(x_313);
 x_325 = lean_box(0);
}
if (lean_is_scalar(x_325)) {
 x_326 = lean_alloc_ctor(1, 2, 0);
} else {
 x_326 = x_325;
}
lean_ctor_set(x_326, 0, x_323);
lean_ctor_set(x_326, 1, x_324);
return x_326;
}
}
}
}
else
{
uint8_t x_327; 
lean_dec(x_185);
lean_free_object(x_19);
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_327 = !lean_is_exclusive(x_255);
if (x_327 == 0)
{
return x_255;
}
else
{
lean_object* x_328; lean_object* x_329; lean_object* x_330; 
x_328 = lean_ctor_get(x_255, 0);
x_329 = lean_ctor_get(x_255, 1);
lean_inc(x_329);
lean_inc(x_328);
lean_dec(x_255);
x_330 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_330, 0, x_328);
lean_ctor_set(x_330, 1, x_329);
return x_330;
}
}
block_253:
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; uint8_t x_192; lean_object* x_241; uint8_t x_242; 
x_188 = lean_ctor_get(x_186, 1);
lean_inc(x_188);
x_189 = lean_ctor_get(x_186, 0);
lean_inc(x_189);
lean_dec(x_186);
x_190 = lean_ctor_get(x_188, 0);
lean_inc(x_190);
x_191 = lean_ctor_get(x_188, 1);
lean_inc(x_191);
lean_dec(x_188);
x_241 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2;
x_242 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_2, x_241);
if (x_242 == 0)
{
uint8_t x_243; 
x_243 = 0;
x_192 = x_243;
goto block_240;
}
else
{
double x_244; double x_245; double x_246; lean_object* x_247; lean_object* x_248; uint8_t x_249; lean_object* x_250; double x_251; uint8_t x_252; 
x_244 = lean_unbox_float(x_191);
x_245 = lean_unbox_float(x_190);
x_246 = lean_float_sub(x_244, x_245);
x_247 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3;
x_248 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_2, x_247);
x_249 = 0;
x_250 = lean_unsigned_to_nat(0u);
x_251 = l_Float_ofScientific(x_248, x_249, x_250);
lean_dec(x_248);
x_252 = lean_float_decLt(x_251, x_246);
x_192 = x_252;
goto block_240;
}
block_240:
{
if (x_8 == 0)
{
if (x_192 == 0)
{
lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; uint8_t x_198; 
lean_dec(x_191);
lean_dec(x_190);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_193 = lean_st_ref_get(x_12, x_187);
x_194 = lean_ctor_get(x_193, 1);
lean_inc(x_194);
lean_dec(x_193);
x_195 = lean_st_ref_take(x_17, x_194);
x_196 = lean_ctor_get(x_195, 0);
lean_inc(x_196);
x_197 = lean_ctor_get(x_195, 1);
lean_inc(x_197);
lean_dec(x_195);
x_198 = !lean_is_exclusive(x_196);
if (x_198 == 0)
{
lean_object* x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; 
x_199 = lean_ctor_get(x_196, 3);
x_200 = l_Lean_PersistentArray_append___rarg(x_21, x_199);
lean_dec(x_199);
lean_ctor_set(x_196, 3, x_200);
x_201 = lean_st_ref_set(x_17, x_196, x_197);
x_202 = lean_ctor_get(x_201, 1);
lean_inc(x_202);
lean_dec(x_201);
x_203 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg(x_189, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_202);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_189);
if (lean_obj_tag(x_203) == 0)
{
uint8_t x_204; 
x_204 = !lean_is_exclusive(x_203);
if (x_204 == 0)
{
return x_203;
}
else
{
lean_object* x_205; lean_object* x_206; lean_object* x_207; 
x_205 = lean_ctor_get(x_203, 0);
x_206 = lean_ctor_get(x_203, 1);
lean_inc(x_206);
lean_inc(x_205);
lean_dec(x_203);
x_207 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_207, 0, x_205);
lean_ctor_set(x_207, 1, x_206);
return x_207;
}
}
else
{
uint8_t x_208; 
x_208 = !lean_is_exclusive(x_203);
if (x_208 == 0)
{
return x_203;
}
else
{
lean_object* x_209; lean_object* x_210; lean_object* x_211; 
x_209 = lean_ctor_get(x_203, 0);
x_210 = lean_ctor_get(x_203, 1);
lean_inc(x_210);
lean_inc(x_209);
lean_dec(x_203);
x_211 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_211, 0, x_209);
lean_ctor_set(x_211, 1, x_210);
return x_211;
}
}
}
else
{
lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; 
x_212 = lean_ctor_get(x_196, 0);
x_213 = lean_ctor_get(x_196, 1);
x_214 = lean_ctor_get(x_196, 2);
x_215 = lean_ctor_get(x_196, 3);
x_216 = lean_ctor_get(x_196, 4);
x_217 = lean_ctor_get(x_196, 5);
x_218 = lean_ctor_get(x_196, 6);
lean_inc(x_218);
lean_inc(x_217);
lean_inc(x_216);
lean_inc(x_215);
lean_inc(x_214);
lean_inc(x_213);
lean_inc(x_212);
lean_dec(x_196);
x_219 = l_Lean_PersistentArray_append___rarg(x_21, x_215);
lean_dec(x_215);
x_220 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_220, 0, x_212);
lean_ctor_set(x_220, 1, x_213);
lean_ctor_set(x_220, 2, x_214);
lean_ctor_set(x_220, 3, x_219);
lean_ctor_set(x_220, 4, x_216);
lean_ctor_set(x_220, 5, x_217);
lean_ctor_set(x_220, 6, x_218);
x_221 = lean_st_ref_set(x_17, x_220, x_197);
x_222 = lean_ctor_get(x_221, 1);
lean_inc(x_222);
lean_dec(x_221);
x_223 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg(x_189, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_222);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_189);
if (lean_obj_tag(x_223) == 0)
{
lean_object* x_224; lean_object* x_225; lean_object* x_226; lean_object* x_227; 
x_224 = lean_ctor_get(x_223, 0);
lean_inc(x_224);
x_225 = lean_ctor_get(x_223, 1);
lean_inc(x_225);
if (lean_is_exclusive(x_223)) {
 lean_ctor_release(x_223, 0);
 lean_ctor_release(x_223, 1);
 x_226 = x_223;
} else {
 lean_dec_ref(x_223);
 x_226 = lean_box(0);
}
if (lean_is_scalar(x_226)) {
 x_227 = lean_alloc_ctor(0, 2, 0);
} else {
 x_227 = x_226;
}
lean_ctor_set(x_227, 0, x_224);
lean_ctor_set(x_227, 1, x_225);
return x_227;
}
else
{
lean_object* x_228; lean_object* x_229; lean_object* x_230; lean_object* x_231; 
x_228 = lean_ctor_get(x_223, 0);
lean_inc(x_228);
x_229 = lean_ctor_get(x_223, 1);
lean_inc(x_229);
if (lean_is_exclusive(x_223)) {
 lean_ctor_release(x_223, 0);
 lean_ctor_release(x_223, 1);
 x_230 = x_223;
} else {
 lean_dec_ref(x_223);
 x_230 = lean_box(0);
}
if (lean_is_scalar(x_230)) {
 x_231 = lean_alloc_ctor(1, 2, 0);
} else {
 x_231 = x_230;
}
lean_ctor_set(x_231, 0, x_228);
lean_ctor_set(x_231, 1, x_229);
return x_231;
}
}
}
else
{
lean_object* x_232; double x_233; double x_234; lean_object* x_235; 
x_232 = lean_box(0);
x_233 = lean_unbox_float(x_190);
lean_dec(x_190);
x_234 = lean_unbox_float(x_191);
lean_dec(x_191);
x_235 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(x_4, x_5, x_6, x_1, x_21, x_189, x_2, x_192, x_233, x_234, x_7, x_232, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_187);
return x_235;
}
}
else
{
lean_object* x_236; double x_237; double x_238; lean_object* x_239; 
x_236 = lean_box(0);
x_237 = lean_unbox_float(x_190);
lean_dec(x_190);
x_238 = lean_unbox_float(x_191);
lean_dec(x_191);
x_239 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(x_4, x_5, x_6, x_1, x_21, x_189, x_2, x_192, x_237, x_238, x_7, x_236, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_187);
return x_239;
}
}
}
}
}
else
{
lean_object* x_331; lean_object* x_332; lean_object* x_333; uint8_t x_334; 
x_331 = lean_ctor_get(x_19, 0);
x_332 = lean_ctor_get(x_19, 1);
lean_inc(x_332);
lean_inc(x_331);
lean_dec(x_19);
x_333 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1;
x_334 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_2, x_333);
if (x_334 == 0)
{
lean_object* x_335; lean_object* x_336; lean_object* x_337; lean_object* x_393; lean_object* x_394; 
x_335 = lean_ctor_get(x_3, 0);
lean_inc(x_335);
lean_dec(x_3);
x_393 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5;
lean_inc(x_335);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_394 = lean_apply_10(x_335, lean_box(0), x_393, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_332);
if (lean_obj_tag(x_394) == 0)
{
lean_object* x_395; lean_object* x_396; lean_object* x_397; 
x_395 = lean_ctor_get(x_394, 0);
lean_inc(x_395);
x_396 = lean_ctor_get(x_394, 1);
lean_inc(x_396);
lean_dec(x_394);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_397 = lean_apply_8(x_9, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_396);
if (lean_obj_tag(x_397) == 0)
{
lean_object* x_398; lean_object* x_399; lean_object* x_400; lean_object* x_401; lean_object* x_402; 
x_398 = lean_ctor_get(x_397, 0);
lean_inc(x_398);
x_399 = lean_ctor_get(x_397, 1);
lean_inc(x_399);
if (lean_is_exclusive(x_397)) {
 lean_ctor_release(x_397, 0);
 lean_ctor_release(x_397, 1);
 x_400 = x_397;
} else {
 lean_dec_ref(x_397);
 x_400 = lean_box(0);
}
x_401 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_401, 0, x_398);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_402 = lean_apply_10(x_335, lean_box(0), x_393, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_399);
if (lean_obj_tag(x_402) == 0)
{
lean_object* x_403; lean_object* x_404; uint8_t x_405; lean_object* x_406; double x_407; double x_408; double x_409; double x_410; double x_411; lean_object* x_412; lean_object* x_413; lean_object* x_414; lean_object* x_415; 
x_403 = lean_ctor_get(x_402, 0);
lean_inc(x_403);
x_404 = lean_ctor_get(x_402, 1);
lean_inc(x_404);
lean_dec(x_402);
x_405 = 0;
x_406 = lean_unsigned_to_nat(0u);
x_407 = l_Float_ofScientific(x_395, x_405, x_406);
lean_dec(x_395);
x_408 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
x_409 = lean_float_div(x_407, x_408);
x_410 = l_Float_ofScientific(x_403, x_405, x_406);
lean_dec(x_403);
x_411 = lean_float_div(x_410, x_408);
x_412 = lean_box_float(x_409);
x_413 = lean_box_float(x_411);
if (lean_is_scalar(x_400)) {
 x_414 = lean_alloc_ctor(0, 2, 0);
} else {
 x_414 = x_400;
}
lean_ctor_set(x_414, 0, x_412);
lean_ctor_set(x_414, 1, x_413);
x_415 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_415, 0, x_401);
lean_ctor_set(x_415, 1, x_414);
x_336 = x_415;
x_337 = x_404;
goto block_392;
}
else
{
lean_object* x_416; lean_object* x_417; lean_object* x_418; lean_object* x_419; 
lean_dec(x_401);
lean_dec(x_400);
lean_dec(x_395);
lean_dec(x_331);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_416 = lean_ctor_get(x_402, 0);
lean_inc(x_416);
x_417 = lean_ctor_get(x_402, 1);
lean_inc(x_417);
if (lean_is_exclusive(x_402)) {
 lean_ctor_release(x_402, 0);
 lean_ctor_release(x_402, 1);
 x_418 = x_402;
} else {
 lean_dec_ref(x_402);
 x_418 = lean_box(0);
}
if (lean_is_scalar(x_418)) {
 x_419 = lean_alloc_ctor(1, 2, 0);
} else {
 x_419 = x_418;
}
lean_ctor_set(x_419, 0, x_416);
lean_ctor_set(x_419, 1, x_417);
return x_419;
}
}
else
{
lean_object* x_420; lean_object* x_421; lean_object* x_422; lean_object* x_423; lean_object* x_424; 
x_420 = lean_ctor_get(x_397, 0);
lean_inc(x_420);
x_421 = lean_ctor_get(x_397, 1);
lean_inc(x_421);
if (lean_is_exclusive(x_397)) {
 lean_ctor_release(x_397, 0);
 lean_ctor_release(x_397, 1);
 x_422 = x_397;
} else {
 lean_dec_ref(x_397);
 x_422 = lean_box(0);
}
x_423 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_423, 0, x_420);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_424 = lean_apply_10(x_335, lean_box(0), x_393, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_421);
if (lean_obj_tag(x_424) == 0)
{
lean_object* x_425; lean_object* x_426; uint8_t x_427; lean_object* x_428; double x_429; double x_430; double x_431; double x_432; double x_433; lean_object* x_434; lean_object* x_435; lean_object* x_436; lean_object* x_437; 
x_425 = lean_ctor_get(x_424, 0);
lean_inc(x_425);
x_426 = lean_ctor_get(x_424, 1);
lean_inc(x_426);
lean_dec(x_424);
x_427 = 0;
x_428 = lean_unsigned_to_nat(0u);
x_429 = l_Float_ofScientific(x_395, x_427, x_428);
lean_dec(x_395);
x_430 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6;
x_431 = lean_float_div(x_429, x_430);
x_432 = l_Float_ofScientific(x_425, x_427, x_428);
lean_dec(x_425);
x_433 = lean_float_div(x_432, x_430);
x_434 = lean_box_float(x_431);
x_435 = lean_box_float(x_433);
if (lean_is_scalar(x_422)) {
 x_436 = lean_alloc_ctor(0, 2, 0);
} else {
 x_436 = x_422;
 lean_ctor_set_tag(x_436, 0);
}
lean_ctor_set(x_436, 0, x_434);
lean_ctor_set(x_436, 1, x_435);
x_437 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_437, 0, x_423);
lean_ctor_set(x_437, 1, x_436);
x_336 = x_437;
x_337 = x_426;
goto block_392;
}
else
{
lean_object* x_438; lean_object* x_439; lean_object* x_440; lean_object* x_441; 
lean_dec(x_423);
lean_dec(x_422);
lean_dec(x_395);
lean_dec(x_331);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_438 = lean_ctor_get(x_424, 0);
lean_inc(x_438);
x_439 = lean_ctor_get(x_424, 1);
lean_inc(x_439);
if (lean_is_exclusive(x_424)) {
 lean_ctor_release(x_424, 0);
 lean_ctor_release(x_424, 1);
 x_440 = x_424;
} else {
 lean_dec_ref(x_424);
 x_440 = lean_box(0);
}
if (lean_is_scalar(x_440)) {
 x_441 = lean_alloc_ctor(1, 2, 0);
} else {
 x_441 = x_440;
}
lean_ctor_set(x_441, 0, x_438);
lean_ctor_set(x_441, 1, x_439);
return x_441;
}
}
}
else
{
lean_object* x_442; lean_object* x_443; lean_object* x_444; lean_object* x_445; 
lean_dec(x_335);
lean_dec(x_331);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_442 = lean_ctor_get(x_394, 0);
lean_inc(x_442);
x_443 = lean_ctor_get(x_394, 1);
lean_inc(x_443);
if (lean_is_exclusive(x_394)) {
 lean_ctor_release(x_394, 0);
 lean_ctor_release(x_394, 1);
 x_444 = x_394;
} else {
 lean_dec_ref(x_394);
 x_444 = lean_box(0);
}
if (lean_is_scalar(x_444)) {
 x_445 = lean_alloc_ctor(1, 2, 0);
} else {
 x_445 = x_444;
}
lean_ctor_set(x_445, 0, x_442);
lean_ctor_set(x_445, 1, x_443);
return x_445;
}
block_392:
{
lean_object* x_338; lean_object* x_339; lean_object* x_340; lean_object* x_341; uint8_t x_342; lean_object* x_378; uint8_t x_379; 
x_338 = lean_ctor_get(x_336, 1);
lean_inc(x_338);
x_339 = lean_ctor_get(x_336, 0);
lean_inc(x_339);
lean_dec(x_336);
x_340 = lean_ctor_get(x_338, 0);
lean_inc(x_340);
x_341 = lean_ctor_get(x_338, 1);
lean_inc(x_341);
lean_dec(x_338);
x_378 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2;
x_379 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_2, x_378);
if (x_379 == 0)
{
uint8_t x_380; 
x_380 = 0;
x_342 = x_380;
goto block_377;
}
else
{
double x_381; double x_382; double x_383; lean_object* x_384; lean_object* x_385; uint8_t x_386; lean_object* x_387; double x_388; double x_389; double x_390; uint8_t x_391; 
x_381 = lean_unbox_float(x_341);
x_382 = lean_unbox_float(x_340);
x_383 = lean_float_sub(x_381, x_382);
x_384 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3;
x_385 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_2, x_384);
x_386 = 0;
x_387 = lean_unsigned_to_nat(0u);
x_388 = l_Float_ofScientific(x_385, x_386, x_387);
lean_dec(x_385);
x_389 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__4;
x_390 = lean_float_div(x_388, x_389);
x_391 = lean_float_decLt(x_390, x_383);
x_342 = x_391;
goto block_377;
}
block_377:
{
if (x_8 == 0)
{
if (x_342 == 0)
{
lean_object* x_343; lean_object* x_344; lean_object* x_345; lean_object* x_346; lean_object* x_347; lean_object* x_348; lean_object* x_349; lean_object* x_350; lean_object* x_351; lean_object* x_352; lean_object* x_353; lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; lean_object* x_358; lean_object* x_359; lean_object* x_360; 
lean_dec(x_341);
lean_dec(x_340);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_343 = lean_st_ref_get(x_12, x_337);
x_344 = lean_ctor_get(x_343, 1);
lean_inc(x_344);
lean_dec(x_343);
x_345 = lean_st_ref_take(x_17, x_344);
x_346 = lean_ctor_get(x_345, 0);
lean_inc(x_346);
x_347 = lean_ctor_get(x_345, 1);
lean_inc(x_347);
lean_dec(x_345);
x_348 = lean_ctor_get(x_346, 0);
lean_inc(x_348);
x_349 = lean_ctor_get(x_346, 1);
lean_inc(x_349);
x_350 = lean_ctor_get(x_346, 2);
lean_inc(x_350);
x_351 = lean_ctor_get(x_346, 3);
lean_inc(x_351);
x_352 = lean_ctor_get(x_346, 4);
lean_inc(x_352);
x_353 = lean_ctor_get(x_346, 5);
lean_inc(x_353);
x_354 = lean_ctor_get(x_346, 6);
lean_inc(x_354);
if (lean_is_exclusive(x_346)) {
 lean_ctor_release(x_346, 0);
 lean_ctor_release(x_346, 1);
 lean_ctor_release(x_346, 2);
 lean_ctor_release(x_346, 3);
 lean_ctor_release(x_346, 4);
 lean_ctor_release(x_346, 5);
 lean_ctor_release(x_346, 6);
 x_355 = x_346;
} else {
 lean_dec_ref(x_346);
 x_355 = lean_box(0);
}
x_356 = l_Lean_PersistentArray_append___rarg(x_331, x_351);
lean_dec(x_351);
if (lean_is_scalar(x_355)) {
 x_357 = lean_alloc_ctor(0, 7, 0);
} else {
 x_357 = x_355;
}
lean_ctor_set(x_357, 0, x_348);
lean_ctor_set(x_357, 1, x_349);
lean_ctor_set(x_357, 2, x_350);
lean_ctor_set(x_357, 3, x_356);
lean_ctor_set(x_357, 4, x_352);
lean_ctor_set(x_357, 5, x_353);
lean_ctor_set(x_357, 6, x_354);
x_358 = lean_st_ref_set(x_17, x_357, x_347);
x_359 = lean_ctor_get(x_358, 1);
lean_inc(x_359);
lean_dec(x_358);
x_360 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg(x_339, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_359);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_339);
if (lean_obj_tag(x_360) == 0)
{
lean_object* x_361; lean_object* x_362; lean_object* x_363; lean_object* x_364; 
x_361 = lean_ctor_get(x_360, 0);
lean_inc(x_361);
x_362 = lean_ctor_get(x_360, 1);
lean_inc(x_362);
if (lean_is_exclusive(x_360)) {
 lean_ctor_release(x_360, 0);
 lean_ctor_release(x_360, 1);
 x_363 = x_360;
} else {
 lean_dec_ref(x_360);
 x_363 = lean_box(0);
}
if (lean_is_scalar(x_363)) {
 x_364 = lean_alloc_ctor(0, 2, 0);
} else {
 x_364 = x_363;
}
lean_ctor_set(x_364, 0, x_361);
lean_ctor_set(x_364, 1, x_362);
return x_364;
}
else
{
lean_object* x_365; lean_object* x_366; lean_object* x_367; lean_object* x_368; 
x_365 = lean_ctor_get(x_360, 0);
lean_inc(x_365);
x_366 = lean_ctor_get(x_360, 1);
lean_inc(x_366);
if (lean_is_exclusive(x_360)) {
 lean_ctor_release(x_360, 0);
 lean_ctor_release(x_360, 1);
 x_367 = x_360;
} else {
 lean_dec_ref(x_360);
 x_367 = lean_box(0);
}
if (lean_is_scalar(x_367)) {
 x_368 = lean_alloc_ctor(1, 2, 0);
} else {
 x_368 = x_367;
}
lean_ctor_set(x_368, 0, x_365);
lean_ctor_set(x_368, 1, x_366);
return x_368;
}
}
else
{
lean_object* x_369; double x_370; double x_371; lean_object* x_372; 
x_369 = lean_box(0);
x_370 = lean_unbox_float(x_340);
lean_dec(x_340);
x_371 = lean_unbox_float(x_341);
lean_dec(x_341);
x_372 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(x_4, x_5, x_6, x_1, x_331, x_339, x_2, x_342, x_370, x_371, x_7, x_369, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_337);
return x_372;
}
}
else
{
lean_object* x_373; double x_374; double x_375; lean_object* x_376; 
x_373 = lean_box(0);
x_374 = lean_unbox_float(x_340);
lean_dec(x_340);
x_375 = lean_unbox_float(x_341);
lean_dec(x_341);
x_376 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(x_4, x_5, x_6, x_1, x_331, x_339, x_2, x_342, x_374, x_375, x_7, x_373, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_337);
return x_376;
}
}
}
}
else
{
lean_object* x_446; lean_object* x_447; lean_object* x_448; lean_object* x_502; lean_object* x_503; 
x_446 = lean_ctor_get(x_3, 0);
lean_inc(x_446);
lean_dec(x_3);
x_502 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7;
lean_inc(x_446);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_503 = lean_apply_10(x_446, lean_box(0), x_502, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_332);
if (lean_obj_tag(x_503) == 0)
{
lean_object* x_504; lean_object* x_505; lean_object* x_506; 
x_504 = lean_ctor_get(x_503, 0);
lean_inc(x_504);
x_505 = lean_ctor_get(x_503, 1);
lean_inc(x_505);
lean_dec(x_503);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_506 = lean_apply_8(x_9, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_505);
if (lean_obj_tag(x_506) == 0)
{
lean_object* x_507; lean_object* x_508; lean_object* x_509; lean_object* x_510; lean_object* x_511; 
x_507 = lean_ctor_get(x_506, 0);
lean_inc(x_507);
x_508 = lean_ctor_get(x_506, 1);
lean_inc(x_508);
if (lean_is_exclusive(x_506)) {
 lean_ctor_release(x_506, 0);
 lean_ctor_release(x_506, 1);
 x_509 = x_506;
} else {
 lean_dec_ref(x_506);
 x_509 = lean_box(0);
}
x_510 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_510, 0, x_507);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_511 = lean_apply_10(x_446, lean_box(0), x_502, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_508);
if (lean_obj_tag(x_511) == 0)
{
lean_object* x_512; lean_object* x_513; uint8_t x_514; lean_object* x_515; double x_516; double x_517; lean_object* x_518; lean_object* x_519; lean_object* x_520; lean_object* x_521; 
x_512 = lean_ctor_get(x_511, 0);
lean_inc(x_512);
x_513 = lean_ctor_get(x_511, 1);
lean_inc(x_513);
lean_dec(x_511);
x_514 = 0;
x_515 = lean_unsigned_to_nat(0u);
x_516 = l_Float_ofScientific(x_504, x_514, x_515);
lean_dec(x_504);
x_517 = l_Float_ofScientific(x_512, x_514, x_515);
lean_dec(x_512);
x_518 = lean_box_float(x_516);
x_519 = lean_box_float(x_517);
if (lean_is_scalar(x_509)) {
 x_520 = lean_alloc_ctor(0, 2, 0);
} else {
 x_520 = x_509;
}
lean_ctor_set(x_520, 0, x_518);
lean_ctor_set(x_520, 1, x_519);
x_521 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_521, 0, x_510);
lean_ctor_set(x_521, 1, x_520);
x_447 = x_521;
x_448 = x_513;
goto block_501;
}
else
{
lean_object* x_522; lean_object* x_523; lean_object* x_524; lean_object* x_525; 
lean_dec(x_510);
lean_dec(x_509);
lean_dec(x_504);
lean_dec(x_331);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_522 = lean_ctor_get(x_511, 0);
lean_inc(x_522);
x_523 = lean_ctor_get(x_511, 1);
lean_inc(x_523);
if (lean_is_exclusive(x_511)) {
 lean_ctor_release(x_511, 0);
 lean_ctor_release(x_511, 1);
 x_524 = x_511;
} else {
 lean_dec_ref(x_511);
 x_524 = lean_box(0);
}
if (lean_is_scalar(x_524)) {
 x_525 = lean_alloc_ctor(1, 2, 0);
} else {
 x_525 = x_524;
}
lean_ctor_set(x_525, 0, x_522);
lean_ctor_set(x_525, 1, x_523);
return x_525;
}
}
else
{
lean_object* x_526; lean_object* x_527; lean_object* x_528; lean_object* x_529; lean_object* x_530; 
x_526 = lean_ctor_get(x_506, 0);
lean_inc(x_526);
x_527 = lean_ctor_get(x_506, 1);
lean_inc(x_527);
if (lean_is_exclusive(x_506)) {
 lean_ctor_release(x_506, 0);
 lean_ctor_release(x_506, 1);
 x_528 = x_506;
} else {
 lean_dec_ref(x_506);
 x_528 = lean_box(0);
}
x_529 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_529, 0, x_526);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
x_530 = lean_apply_10(x_446, lean_box(0), x_502, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_527);
if (lean_obj_tag(x_530) == 0)
{
lean_object* x_531; lean_object* x_532; uint8_t x_533; lean_object* x_534; double x_535; double x_536; lean_object* x_537; lean_object* x_538; lean_object* x_539; lean_object* x_540; 
x_531 = lean_ctor_get(x_530, 0);
lean_inc(x_531);
x_532 = lean_ctor_get(x_530, 1);
lean_inc(x_532);
lean_dec(x_530);
x_533 = 0;
x_534 = lean_unsigned_to_nat(0u);
x_535 = l_Float_ofScientific(x_504, x_533, x_534);
lean_dec(x_504);
x_536 = l_Float_ofScientific(x_531, x_533, x_534);
lean_dec(x_531);
x_537 = lean_box_float(x_535);
x_538 = lean_box_float(x_536);
if (lean_is_scalar(x_528)) {
 x_539 = lean_alloc_ctor(0, 2, 0);
} else {
 x_539 = x_528;
 lean_ctor_set_tag(x_539, 0);
}
lean_ctor_set(x_539, 0, x_537);
lean_ctor_set(x_539, 1, x_538);
x_540 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_540, 0, x_529);
lean_ctor_set(x_540, 1, x_539);
x_447 = x_540;
x_448 = x_532;
goto block_501;
}
else
{
lean_object* x_541; lean_object* x_542; lean_object* x_543; lean_object* x_544; 
lean_dec(x_529);
lean_dec(x_528);
lean_dec(x_504);
lean_dec(x_331);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_541 = lean_ctor_get(x_530, 0);
lean_inc(x_541);
x_542 = lean_ctor_get(x_530, 1);
lean_inc(x_542);
if (lean_is_exclusive(x_530)) {
 lean_ctor_release(x_530, 0);
 lean_ctor_release(x_530, 1);
 x_543 = x_530;
} else {
 lean_dec_ref(x_530);
 x_543 = lean_box(0);
}
if (lean_is_scalar(x_543)) {
 x_544 = lean_alloc_ctor(1, 2, 0);
} else {
 x_544 = x_543;
}
lean_ctor_set(x_544, 0, x_541);
lean_ctor_set(x_544, 1, x_542);
return x_544;
}
}
}
else
{
lean_object* x_545; lean_object* x_546; lean_object* x_547; lean_object* x_548; 
lean_dec(x_446);
lean_dec(x_331);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_545 = lean_ctor_get(x_503, 0);
lean_inc(x_545);
x_546 = lean_ctor_get(x_503, 1);
lean_inc(x_546);
if (lean_is_exclusive(x_503)) {
 lean_ctor_release(x_503, 0);
 lean_ctor_release(x_503, 1);
 x_547 = x_503;
} else {
 lean_dec_ref(x_503);
 x_547 = lean_box(0);
}
if (lean_is_scalar(x_547)) {
 x_548 = lean_alloc_ctor(1, 2, 0);
} else {
 x_548 = x_547;
}
lean_ctor_set(x_548, 0, x_545);
lean_ctor_set(x_548, 1, x_546);
return x_548;
}
block_501:
{
lean_object* x_449; lean_object* x_450; lean_object* x_451; lean_object* x_452; uint8_t x_453; lean_object* x_489; uint8_t x_490; 
x_449 = lean_ctor_get(x_447, 1);
lean_inc(x_449);
x_450 = lean_ctor_get(x_447, 0);
lean_inc(x_450);
lean_dec(x_447);
x_451 = lean_ctor_get(x_449, 0);
lean_inc(x_451);
x_452 = lean_ctor_get(x_449, 1);
lean_inc(x_452);
lean_dec(x_449);
x_489 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2;
x_490 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_2, x_489);
if (x_490 == 0)
{
uint8_t x_491; 
x_491 = 0;
x_453 = x_491;
goto block_488;
}
else
{
double x_492; double x_493; double x_494; lean_object* x_495; lean_object* x_496; uint8_t x_497; lean_object* x_498; double x_499; uint8_t x_500; 
x_492 = lean_unbox_float(x_452);
x_493 = lean_unbox_float(x_451);
x_494 = lean_float_sub(x_492, x_493);
x_495 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3;
x_496 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_2, x_495);
x_497 = 0;
x_498 = lean_unsigned_to_nat(0u);
x_499 = l_Float_ofScientific(x_496, x_497, x_498);
lean_dec(x_496);
x_500 = lean_float_decLt(x_499, x_494);
x_453 = x_500;
goto block_488;
}
block_488:
{
if (x_8 == 0)
{
if (x_453 == 0)
{
lean_object* x_454; lean_object* x_455; lean_object* x_456; lean_object* x_457; lean_object* x_458; lean_object* x_459; lean_object* x_460; lean_object* x_461; lean_object* x_462; lean_object* x_463; lean_object* x_464; lean_object* x_465; lean_object* x_466; lean_object* x_467; lean_object* x_468; lean_object* x_469; lean_object* x_470; lean_object* x_471; 
lean_dec(x_452);
lean_dec(x_451);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
x_454 = lean_st_ref_get(x_12, x_448);
x_455 = lean_ctor_get(x_454, 1);
lean_inc(x_455);
lean_dec(x_454);
x_456 = lean_st_ref_take(x_17, x_455);
x_457 = lean_ctor_get(x_456, 0);
lean_inc(x_457);
x_458 = lean_ctor_get(x_456, 1);
lean_inc(x_458);
lean_dec(x_456);
x_459 = lean_ctor_get(x_457, 0);
lean_inc(x_459);
x_460 = lean_ctor_get(x_457, 1);
lean_inc(x_460);
x_461 = lean_ctor_get(x_457, 2);
lean_inc(x_461);
x_462 = lean_ctor_get(x_457, 3);
lean_inc(x_462);
x_463 = lean_ctor_get(x_457, 4);
lean_inc(x_463);
x_464 = lean_ctor_get(x_457, 5);
lean_inc(x_464);
x_465 = lean_ctor_get(x_457, 6);
lean_inc(x_465);
if (lean_is_exclusive(x_457)) {
 lean_ctor_release(x_457, 0);
 lean_ctor_release(x_457, 1);
 lean_ctor_release(x_457, 2);
 lean_ctor_release(x_457, 3);
 lean_ctor_release(x_457, 4);
 lean_ctor_release(x_457, 5);
 lean_ctor_release(x_457, 6);
 x_466 = x_457;
} else {
 lean_dec_ref(x_457);
 x_466 = lean_box(0);
}
x_467 = l_Lean_PersistentArray_append___rarg(x_331, x_462);
lean_dec(x_462);
if (lean_is_scalar(x_466)) {
 x_468 = lean_alloc_ctor(0, 7, 0);
} else {
 x_468 = x_466;
}
lean_ctor_set(x_468, 0, x_459);
lean_ctor_set(x_468, 1, x_460);
lean_ctor_set(x_468, 2, x_461);
lean_ctor_set(x_468, 3, x_467);
lean_ctor_set(x_468, 4, x_463);
lean_ctor_set(x_468, 5, x_464);
lean_ctor_set(x_468, 6, x_465);
x_469 = lean_st_ref_set(x_17, x_468, x_458);
x_470 = lean_ctor_get(x_469, 1);
lean_inc(x_470);
lean_dec(x_469);
x_471 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg(x_450, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_470);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_450);
if (lean_obj_tag(x_471) == 0)
{
lean_object* x_472; lean_object* x_473; lean_object* x_474; lean_object* x_475; 
x_472 = lean_ctor_get(x_471, 0);
lean_inc(x_472);
x_473 = lean_ctor_get(x_471, 1);
lean_inc(x_473);
if (lean_is_exclusive(x_471)) {
 lean_ctor_release(x_471, 0);
 lean_ctor_release(x_471, 1);
 x_474 = x_471;
} else {
 lean_dec_ref(x_471);
 x_474 = lean_box(0);
}
if (lean_is_scalar(x_474)) {
 x_475 = lean_alloc_ctor(0, 2, 0);
} else {
 x_475 = x_474;
}
lean_ctor_set(x_475, 0, x_472);
lean_ctor_set(x_475, 1, x_473);
return x_475;
}
else
{
lean_object* x_476; lean_object* x_477; lean_object* x_478; lean_object* x_479; 
x_476 = lean_ctor_get(x_471, 0);
lean_inc(x_476);
x_477 = lean_ctor_get(x_471, 1);
lean_inc(x_477);
if (lean_is_exclusive(x_471)) {
 lean_ctor_release(x_471, 0);
 lean_ctor_release(x_471, 1);
 x_478 = x_471;
} else {
 lean_dec_ref(x_471);
 x_478 = lean_box(0);
}
if (lean_is_scalar(x_478)) {
 x_479 = lean_alloc_ctor(1, 2, 0);
} else {
 x_479 = x_478;
}
lean_ctor_set(x_479, 0, x_476);
lean_ctor_set(x_479, 1, x_477);
return x_479;
}
}
else
{
lean_object* x_480; double x_481; double x_482; lean_object* x_483; 
x_480 = lean_box(0);
x_481 = lean_unbox_float(x_451);
lean_dec(x_451);
x_482 = lean_unbox_float(x_452);
lean_dec(x_452);
x_483 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(x_4, x_5, x_6, x_1, x_331, x_450, x_2, x_453, x_481, x_482, x_7, x_480, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_448);
return x_483;
}
}
else
{
lean_object* x_484; double x_485; double x_486; lean_object* x_487; 
x_484 = lean_box(0);
x_485 = lean_unbox_float(x_451);
lean_dec(x_451);
x_486 = lean_unbox_float(x_452);
lean_dec(x_452);
x_487 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(x_4, x_5, x_6, x_1, x_331, x_450, x_2, x_453, x_485, x_486, x_7, x_484, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_448);
return x_487;
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, uint8_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_16 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
x_17 = lean_ctor_get(x_13, 2);
lean_inc(x_17);
lean_inc(x_3);
x_18 = l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg(x_3, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_unbox(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_18, 1);
lean_inc(x_21);
lean_dec(x_18);
x_22 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2;
x_23 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_17, x_22);
if (x_23 == 0)
{
lean_object* x_24; 
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_7);
lean_dec(x_4);
lean_dec(x_3);
x_24 = lean_apply_8(x_5, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_21);
if (lean_obj_tag(x_24) == 0)
{
uint8_t x_25; 
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
return x_24;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_24, 0);
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_24);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
else
{
uint8_t x_29; 
x_29 = !lean_is_exclusive(x_24);
if (x_29 == 0)
{
return x_24;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_24, 0);
x_31 = lean_ctor_get(x_24, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_24);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
else
{
lean_object* x_33; uint8_t x_34; lean_object* x_35; 
x_33 = lean_box(0);
x_34 = lean_unbox(x_19);
lean_dec(x_19);
x_35 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7(x_1, x_17, x_16, x_3, x_6, x_7, x_4, x_34, x_5, x_33, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_21);
lean_dec(x_17);
return x_35;
}
}
else
{
lean_object* x_36; lean_object* x_37; uint8_t x_38; lean_object* x_39; 
x_36 = lean_ctor_get(x_18, 1);
lean_inc(x_36);
lean_dec(x_18);
x_37 = lean_box(0);
x_38 = lean_unbox(x_19);
lean_dec(x_19);
x_39 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7(x_1, x_17, x_16, x_3, x_6, x_7, x_4, x_38, x_5, x_37, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_36);
lean_dec(x_17);
return x_39;
}
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___boxed), 15, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, uint8_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_3, 0);
lean_inc(x_15);
lean_dec(x_3);
x_16 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_17 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg(x_1, lean_box(0), x_15, x_4, x_5, x_6, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg___boxed), 14, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Initial goal:", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal___rarg___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_7 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_8 = l_Aesop_TraceOption_isEnabled___at_Aesop_straightLineExt_go___spec__1(x_7, x_2, x_3, x_4, x_5, x_6);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_unbox(x_9);
lean_dec(x_9);
if (x_10 == 0)
{
uint8_t x_11; 
lean_dec(x_1);
x_11 = !lean_is_exclusive(x_8);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_8, 0);
lean_dec(x_12);
x_13 = lean_box(0);
lean_ctor_set(x_8, 0, x_13);
return x_8;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_8, 1);
lean_inc(x_14);
lean_dec(x_8);
x_15 = lean_box(0);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_17 = lean_ctor_get(x_8, 1);
lean_inc(x_17);
lean_dec(x_8);
x_18 = l_Aesop_TraceOption_steps;
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_1);
x_21 = l_Lean_indentD(x_20);
x_22 = l_Aesop_expandNextGoal___rarg___lambda__1___closed__2;
x_23 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_21);
x_24 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_25 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
x_26 = l_Lean_addTrace___at_Lean_Meta_processPostponed_loop___spec__2(x_19, x_25, x_2, x_3, x_4, x_5, x_17);
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_st_ref_get(x_4, x_10);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_1, x_2, x_6, x_7, x_8, x_9, x_12);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__4___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2);
lean_inc(x_1);
x_13 = l_Aesop_expandGoal___rarg(x_1, x_2, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Aesop_getIteration___rarg(x_6, x_7, x_8, x_9, x_10, x_11, x_15);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_st_ref_take(x_2, x_18);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_treeImpl___elambda__5(x_20);
lean_dec(x_20);
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_24 = lean_ctor_get(x_22, 10);
lean_dec(x_24);
lean_ctor_set(x_22, 10, x_17);
x_25 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_25, 0, x_22);
x_26 = lean_st_ref_set(x_2, x_25, x_21);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = lean_st_ref_get(x_2, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_alloc_closure((void*)(l_Aesop_Goal_isActive___boxed), 2, 1);
lean_closure_set(x_31, 0, x_29);
x_32 = lean_ctor_get(x_3, 0);
lean_inc(x_32);
lean_dec(x_3);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_33 = lean_apply_10(x_32, lean_box(0), x_31, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_30);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; uint8_t x_35; 
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
x_35 = lean_unbox(x_34);
lean_dec(x_34);
if (x_35 == 0)
{
uint8_t x_36; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_36 = !lean_is_exclusive(x_33);
if (x_36 == 0)
{
lean_object* x_37; 
x_37 = lean_ctor_get(x_33, 0);
lean_dec(x_37);
lean_ctor_set(x_33, 0, x_14);
return x_33;
}
else
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_ctor_get(x_33, 1);
lean_inc(x_38);
lean_dec(x_33);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_14);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_40 = lean_ctor_get(x_33, 1);
lean_inc(x_40);
lean_dec(x_33);
x_41 = l_Aesop_expandNextGoal___rarg___lambda__4___closed__1;
x_42 = lean_array_push(x_41, x_2);
x_43 = l_Aesop_enqueueGoals___rarg(x_1, x_42, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_40);
if (lean_obj_tag(x_43) == 0)
{
uint8_t x_44; 
x_44 = !lean_is_exclusive(x_43);
if (x_44 == 0)
{
lean_object* x_45; 
x_45 = lean_ctor_get(x_43, 0);
lean_dec(x_45);
lean_ctor_set(x_43, 0, x_14);
return x_43;
}
else
{
lean_object* x_46; lean_object* x_47; 
x_46 = lean_ctor_get(x_43, 1);
lean_inc(x_46);
lean_dec(x_43);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_14);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
else
{
uint8_t x_48; 
lean_dec(x_14);
x_48 = !lean_is_exclusive(x_43);
if (x_48 == 0)
{
return x_43;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_43, 0);
x_50 = lean_ctor_get(x_43, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_43);
x_51 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_51, 0, x_49);
lean_ctor_set(x_51, 1, x_50);
return x_51;
}
}
}
}
else
{
uint8_t x_52; 
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_52 = !lean_is_exclusive(x_33);
if (x_52 == 0)
{
return x_33;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_33, 0);
x_54 = lean_ctor_get(x_33, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_33);
x_55 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_55, 0, x_53);
lean_ctor_set(x_55, 1, x_54);
return x_55;
}
}
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; uint8_t x_61; uint8_t x_62; uint8_t x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; uint8_t x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_56 = lean_ctor_get(x_22, 0);
x_57 = lean_ctor_get(x_22, 1);
x_58 = lean_ctor_get(x_22, 2);
x_59 = lean_ctor_get(x_22, 3);
x_60 = lean_ctor_get(x_22, 4);
x_61 = lean_ctor_get_uint8(x_22, sizeof(void*)*13);
x_62 = lean_ctor_get_uint8(x_22, sizeof(void*)*13 + 1);
x_63 = lean_ctor_get_uint8(x_22, sizeof(void*)*13 + 2);
x_64 = lean_ctor_get(x_22, 5);
x_65 = lean_ctor_get(x_22, 6);
x_66 = lean_ctor_get(x_22, 7);
x_67 = lean_ctor_get(x_22, 8);
x_68 = lean_ctor_get(x_22, 9);
x_69 = lean_ctor_get_uint8(x_22, sizeof(void*)*13 + 3);
x_70 = lean_ctor_get(x_22, 11);
x_71 = lean_ctor_get(x_22, 12);
lean_inc(x_71);
lean_inc(x_70);
lean_inc(x_68);
lean_inc(x_67);
lean_inc(x_66);
lean_inc(x_65);
lean_inc(x_64);
lean_inc(x_60);
lean_inc(x_59);
lean_inc(x_58);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_22);
x_72 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_72, 0, x_56);
lean_ctor_set(x_72, 1, x_57);
lean_ctor_set(x_72, 2, x_58);
lean_ctor_set(x_72, 3, x_59);
lean_ctor_set(x_72, 4, x_60);
lean_ctor_set(x_72, 5, x_64);
lean_ctor_set(x_72, 6, x_65);
lean_ctor_set(x_72, 7, x_66);
lean_ctor_set(x_72, 8, x_67);
lean_ctor_set(x_72, 9, x_68);
lean_ctor_set(x_72, 10, x_17);
lean_ctor_set(x_72, 11, x_70);
lean_ctor_set(x_72, 12, x_71);
lean_ctor_set_uint8(x_72, sizeof(void*)*13, x_61);
lean_ctor_set_uint8(x_72, sizeof(void*)*13 + 1, x_62);
lean_ctor_set_uint8(x_72, sizeof(void*)*13 + 2, x_63);
lean_ctor_set_uint8(x_72, sizeof(void*)*13 + 3, x_69);
x_73 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_73, 0, x_72);
x_74 = lean_st_ref_set(x_2, x_73, x_21);
x_75 = lean_ctor_get(x_74, 1);
lean_inc(x_75);
lean_dec(x_74);
x_76 = lean_st_ref_get(x_2, x_75);
x_77 = lean_ctor_get(x_76, 0);
lean_inc(x_77);
x_78 = lean_ctor_get(x_76, 1);
lean_inc(x_78);
lean_dec(x_76);
x_79 = lean_alloc_closure((void*)(l_Aesop_Goal_isActive___boxed), 2, 1);
lean_closure_set(x_79, 0, x_77);
x_80 = lean_ctor_get(x_3, 0);
lean_inc(x_80);
lean_dec(x_3);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_81 = lean_apply_10(x_80, lean_box(0), x_79, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_78);
if (lean_obj_tag(x_81) == 0)
{
lean_object* x_82; uint8_t x_83; 
x_82 = lean_ctor_get(x_81, 0);
lean_inc(x_82);
x_83 = lean_unbox(x_82);
lean_dec(x_82);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_84 = lean_ctor_get(x_81, 1);
lean_inc(x_84);
if (lean_is_exclusive(x_81)) {
 lean_ctor_release(x_81, 0);
 lean_ctor_release(x_81, 1);
 x_85 = x_81;
} else {
 lean_dec_ref(x_81);
 x_85 = lean_box(0);
}
if (lean_is_scalar(x_85)) {
 x_86 = lean_alloc_ctor(0, 2, 0);
} else {
 x_86 = x_85;
}
lean_ctor_set(x_86, 0, x_14);
lean_ctor_set(x_86, 1, x_84);
return x_86;
}
else
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_87 = lean_ctor_get(x_81, 1);
lean_inc(x_87);
lean_dec(x_81);
x_88 = l_Aesop_expandNextGoal___rarg___lambda__4___closed__1;
x_89 = lean_array_push(x_88, x_2);
x_90 = l_Aesop_enqueueGoals___rarg(x_1, x_89, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_87);
if (lean_obj_tag(x_90) == 0)
{
lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_91 = lean_ctor_get(x_90, 1);
lean_inc(x_91);
if (lean_is_exclusive(x_90)) {
 lean_ctor_release(x_90, 0);
 lean_ctor_release(x_90, 1);
 x_92 = x_90;
} else {
 lean_dec_ref(x_90);
 x_92 = lean_box(0);
}
if (lean_is_scalar(x_92)) {
 x_93 = lean_alloc_ctor(0, 2, 0);
} else {
 x_93 = x_92;
}
lean_ctor_set(x_93, 0, x_14);
lean_ctor_set(x_93, 1, x_91);
return x_93;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; 
lean_dec(x_14);
x_94 = lean_ctor_get(x_90, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_90, 1);
lean_inc(x_95);
if (lean_is_exclusive(x_90)) {
 lean_ctor_release(x_90, 0);
 lean_ctor_release(x_90, 1);
 x_96 = x_90;
} else {
 lean_dec_ref(x_90);
 x_96 = lean_box(0);
}
if (lean_is_scalar(x_96)) {
 x_97 = lean_alloc_ctor(1, 2, 0);
} else {
 x_97 = x_96;
}
lean_ctor_set(x_97, 0, x_94);
lean_ctor_set(x_97, 1, x_95);
return x_97;
}
}
}
else
{
lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; 
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_98 = lean_ctor_get(x_81, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_81, 1);
lean_inc(x_99);
if (lean_is_exclusive(x_81)) {
 lean_ctor_release(x_81, 0);
 lean_ctor_release(x_81, 1);
 x_100 = x_81;
} else {
 lean_dec_ref(x_81);
 x_100 = lean_box(0);
}
if (lean_is_scalar(x_100)) {
 x_101 = lean_alloc_ctor(1, 2, 0);
} else {
 x_101 = x_100;
}
lean_ctor_set(x_101, 0, x_98);
lean_ctor_set(x_101, 1, x_99);
return x_101;
}
}
}
else
{
uint8_t x_102; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_102 = !lean_is_exclusive(x_13);
if (x_102 == 0)
{
return x_13;
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_13, 0);
x_104 = lean_ctor_get(x_13, 1);
lean_inc(x_104);
lean_inc(x_103);
lean_dec(x_13);
x_105 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_105, 0, x_103);
lean_ctor_set(x_105, 1, x_104);
return x_105;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_alloc_closure((void*)(l_Aesop_GoalRef_markForcedUnprovable___boxed), 2, 1);
lean_closure_set(x_13, 0, x_1);
x_14 = lean_ctor_get(x_2, 0);
lean_inc(x_14);
lean_dec(x_2);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_15 = lean_apply_10(x_14, lean_box(0), x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = l_Aesop_setMaxRuleApplicationDepthReached___rarg(x_3, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_17, 0);
lean_dec(x_19);
x_20 = lean_box(2);
lean_ctor_set(x_17, 0, x_20);
return x_17;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_17, 1);
lean_inc(x_21);
lean_dec(x_17);
x_22 = lean_box(2);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_21);
return x_23;
}
}
else
{
uint8_t x_24; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_24 = !lean_is_exclusive(x_15);
if (x_24 == 0)
{
return x_15;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_15, 0);
x_26 = lean_ctor_get(x_15, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_15);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Treating the goal as unprovable since it is beyond the maximum rule application depth (", 87, 87);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(").", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_13 = lean_ctor_get(x_5, 2);
lean_inc(x_13);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
lean_dec(x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_st_ref_get(x_1, x_12);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_16, 1);
x_20 = lean_unsigned_to_nat(0u);
x_21 = lean_nat_dec_eq(x_15, x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = l_Aesop_treeImpl___elambda__5(x_18);
lean_dec(x_18);
x_23 = lean_ctor_get(x_22, 4);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_nat_dec_le(x_15, x_23);
lean_dec(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; 
lean_free_object(x_16);
lean_dec(x_15);
x_25 = lean_box(0);
x_26 = l_Aesop_expandNextGoal___rarg___lambda__4(x_2, x_1, x_3, x_25, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_19);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_27 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_28 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg(x_27, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_19);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_unbox(x_29);
lean_dec(x_29);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
lean_free_object(x_16);
lean_dec(x_15);
x_31 = lean_ctor_get(x_28, 1);
lean_inc(x_31);
lean_dec(x_28);
x_32 = lean_box(0);
x_33 = l_Aesop_expandNextGoal___rarg___lambda__5(x_1, x_3, x_2, x_32, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_31);
lean_dec(x_2);
return x_33;
}
else
{
uint8_t x_34; 
x_34 = !lean_is_exclusive(x_28);
if (x_34 == 0)
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_35 = lean_ctor_get(x_28, 1);
x_36 = lean_ctor_get(x_28, 0);
lean_dec(x_36);
x_37 = l_Aesop_TraceOption_steps;
x_38 = lean_ctor_get(x_37, 0);
lean_inc(x_38);
x_39 = l___private_Init_Data_Repr_0__Nat_reprFast(x_15);
x_40 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_40, 0, x_39);
x_41 = l_Lean_MessageData_ofFormat(x_40);
x_42 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__2;
lean_ctor_set_tag(x_28, 7);
lean_ctor_set(x_28, 1, x_41);
lean_ctor_set(x_28, 0, x_42);
x_43 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__4;
lean_ctor_set_tag(x_16, 7);
lean_ctor_set(x_16, 1, x_43);
lean_ctor_set(x_16, 0, x_28);
x_44 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg(x_38, x_16, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_35);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_44, 1);
lean_inc(x_46);
lean_dec(x_44);
x_47 = l_Aesop_expandNextGoal___rarg___lambda__5(x_1, x_3, x_2, x_45, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_46);
lean_dec(x_45);
lean_dec(x_2);
return x_47;
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_48 = lean_ctor_get(x_28, 1);
lean_inc(x_48);
lean_dec(x_28);
x_49 = l_Aesop_TraceOption_steps;
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = l___private_Init_Data_Repr_0__Nat_reprFast(x_15);
x_52 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_52, 0, x_51);
x_53 = l_Lean_MessageData_ofFormat(x_52);
x_54 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__2;
x_55 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_55, 0, x_54);
lean_ctor_set(x_55, 1, x_53);
x_56 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__4;
lean_ctor_set_tag(x_16, 7);
lean_ctor_set(x_16, 1, x_56);
lean_ctor_set(x_16, 0, x_55);
x_57 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg(x_50, x_16, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_48);
x_58 = lean_ctor_get(x_57, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 1);
lean_inc(x_59);
lean_dec(x_57);
x_60 = l_Aesop_expandNextGoal___rarg___lambda__5(x_1, x_3, x_2, x_58, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_59);
lean_dec(x_58);
lean_dec(x_2);
return x_60;
}
}
}
}
else
{
lean_object* x_61; lean_object* x_62; 
lean_free_object(x_16);
lean_dec(x_18);
lean_dec(x_15);
x_61 = lean_box(0);
x_62 = l_Aesop_expandNextGoal___rarg___lambda__4(x_2, x_1, x_3, x_61, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_19);
return x_62;
}
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; uint8_t x_66; 
x_63 = lean_ctor_get(x_16, 0);
x_64 = lean_ctor_get(x_16, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_16);
x_65 = lean_unsigned_to_nat(0u);
x_66 = lean_nat_dec_eq(x_15, x_65);
if (x_66 == 0)
{
lean_object* x_67; lean_object* x_68; uint8_t x_69; 
x_67 = l_Aesop_treeImpl___elambda__5(x_63);
lean_dec(x_63);
x_68 = lean_ctor_get(x_67, 4);
lean_inc(x_68);
lean_dec(x_67);
x_69 = lean_nat_dec_le(x_15, x_68);
lean_dec(x_68);
if (x_69 == 0)
{
lean_object* x_70; lean_object* x_71; 
lean_dec(x_15);
x_70 = lean_box(0);
x_71 = l_Aesop_expandNextGoal___rarg___lambda__4(x_2, x_1, x_3, x_70, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_64);
return x_71;
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; uint8_t x_75; 
x_72 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_73 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg(x_72, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_64);
x_74 = lean_ctor_get(x_73, 0);
lean_inc(x_74);
x_75 = lean_unbox(x_74);
lean_dec(x_74);
if (x_75 == 0)
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; 
lean_dec(x_15);
x_76 = lean_ctor_get(x_73, 1);
lean_inc(x_76);
lean_dec(x_73);
x_77 = lean_box(0);
x_78 = l_Aesop_expandNextGoal___rarg___lambda__5(x_1, x_3, x_2, x_77, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_76);
lean_dec(x_2);
return x_78;
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_79 = lean_ctor_get(x_73, 1);
lean_inc(x_79);
if (lean_is_exclusive(x_73)) {
 lean_ctor_release(x_73, 0);
 lean_ctor_release(x_73, 1);
 x_80 = x_73;
} else {
 lean_dec_ref(x_73);
 x_80 = lean_box(0);
}
x_81 = l_Aesop_TraceOption_steps;
x_82 = lean_ctor_get(x_81, 0);
lean_inc(x_82);
x_83 = l___private_Init_Data_Repr_0__Nat_reprFast(x_15);
x_84 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_84, 0, x_83);
x_85 = l_Lean_MessageData_ofFormat(x_84);
x_86 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__2;
if (lean_is_scalar(x_80)) {
 x_87 = lean_alloc_ctor(7, 2, 0);
} else {
 x_87 = x_80;
 lean_ctor_set_tag(x_87, 7);
}
lean_ctor_set(x_87, 0, x_86);
lean_ctor_set(x_87, 1, x_85);
x_88 = l_Aesop_expandNextGoal___rarg___lambda__6___closed__4;
x_89 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_89, 0, x_87);
lean_ctor_set(x_89, 1, x_88);
x_90 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg(x_82, x_89, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_79);
x_91 = lean_ctor_get(x_90, 0);
lean_inc(x_91);
x_92 = lean_ctor_get(x_90, 1);
lean_inc(x_92);
lean_dec(x_90);
x_93 = l_Aesop_expandNextGoal___rarg___lambda__5(x_1, x_3, x_2, x_91, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_92);
lean_dec(x_91);
lean_dec(x_2);
return x_93;
}
}
}
else
{
lean_object* x_94; lean_object* x_95; 
lean_dec(x_63);
lean_dec(x_15);
x_94 = lean_box(0);
x_95 = l_Aesop_expandNextGoal___rarg___lambda__4(x_2, x_1, x_3, x_94, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_64);
return x_95;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_10 = l_Aesop_nextActiveGoal___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; double x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; lean_object* x_40; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
x_14 = lean_st_ref_get(x_11, x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_3, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = l_Aesop_getRootMetaState___rarg(x_4, x_5, x_6, x_7, x_8, x_18);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = lean_st_ref_get(x_3, x_21);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = l_Aesop_Goal_currentGoalAndMetaState(x_15, x_20, x_5, x_6, x_7, x_8, x_23);
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = l_Aesop_treeImpl___elambda__5(x_15);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
lean_dec(x_29);
x_31 = l_Aesop_Goal_priority(x_15);
lean_dec(x_15);
x_32 = lean_box_float(x_31);
lean_inc(x_28);
lean_inc(x_27);
x_33 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal_fmt___rarg___boxed), 13, 4);
lean_closure_set(x_33, 0, x_30);
lean_closure_set(x_33, 1, x_32);
lean_closure_set(x_33, 2, x_27);
lean_closure_set(x_33, 3, x_28);
x_34 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal___rarg___lambda__1___boxed), 6, 1);
lean_closure_set(x_34, 0, x_27);
x_35 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal___rarg___lambda__2___boxed), 10, 2);
lean_closure_set(x_35, 0, x_28);
lean_closure_set(x_35, 1, x_34);
lean_inc(x_1);
x_36 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal___rarg___lambda__6___boxed), 12, 3);
lean_closure_set(x_36, 0, x_11);
lean_closure_set(x_36, 1, x_1);
lean_closure_set(x_36, 2, x_13);
x_37 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3___rarg), 10, 2);
lean_closure_set(x_37, 0, x_35);
lean_closure_set(x_37, 1, x_36);
x_38 = l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1;
x_39 = 1;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_40 = l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg(x_1, lean_box(0), x_38, x_33, x_37, x_39, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_26);
if (lean_obj_tag(x_40) == 0)
{
lean_object* x_41; 
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
if (lean_obj_tag(x_41) == 2)
{
uint8_t x_42; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_42 = !lean_is_exclusive(x_40);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; 
x_43 = lean_ctor_get(x_40, 0);
lean_dec(x_43);
x_44 = lean_box(0);
lean_ctor_set(x_40, 0, x_44);
return x_40;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_40, 1);
lean_inc(x_45);
lean_dec(x_40);
x_46 = lean_box(0);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_45);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_40, 1);
lean_inc(x_48);
lean_dec(x_40);
x_49 = lean_ctor_get(x_41, 0);
lean_inc(x_49);
lean_dec(x_41);
x_50 = l_Aesop_expandNextGoal_traceNewRapps___rarg(x_1, x_49, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_48);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_49);
lean_dec(x_1);
return x_50;
}
}
else
{
uint8_t x_51; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_51 = !lean_is_exclusive(x_40);
if (x_51 == 0)
{
return x_40;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_40, 0);
x_53 = lean_ctor_get(x_40, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_40);
x_54 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
return x_54;
}
}
}
else
{
uint8_t x_55; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_55 = !lean_is_exclusive(x_10);
if (x_55 == 0)
{
return x_10;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_10, 0);
x_57 = lean_ctor_get(x_10, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_10);
x_58 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
return x_58;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_expandNextGoal___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_TraceOption_isEnabled___at_Aesop_expandNextGoal___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_ReaderT_bind___at_Aesop_expandNextGoal___spec__3(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_13;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__8(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__9(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__10(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_13;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Lean_Util_Trace_0__Lean_addTraceNode___at_Aesop_expandNextGoal___spec__11(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__12(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_MonadExcept_ofExcept___at_Aesop_expandNextGoal___spec__13(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; 
x_16 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___boxed(lean_object** _args) {
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
lean_object* x_19 = _args[18];
lean_object* x_20 = _args[19];
_start:
{
uint8_t x_21; uint8_t x_22; double x_23; double x_24; lean_object* x_25; 
x_21 = lean_unbox(x_2);
lean_dec(x_2);
x_22 = lean_unbox(x_9);
lean_dec(x_9);
x_23 = lean_unbox_float(x_10);
lean_dec(x_10);
x_24 = lean_unbox_float(x_11);
lean_dec(x_11);
x_25 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2(x_1, x_21, x_3, x_4, x_5, x_6, x_7, x_8, x_22, x_23, x_24, x_12, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_4);
return x_25;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___boxed(lean_object** _args) {
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
lean_object* x_19 = _args[18];
lean_object* x_20 = _args[19];
_start:
{
uint8_t x_21; uint8_t x_22; double x_23; double x_24; lean_object* x_25; 
x_21 = lean_unbox(x_2);
lean_dec(x_2);
x_22 = lean_unbox(x_8);
lean_dec(x_8);
x_23 = lean_unbox_float(x_9);
lean_dec(x_9);
x_24 = lean_unbox_float(x_10);
lean_dec(x_10);
x_25 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3(x_1, x_21, x_3, x_4, x_5, x_6, x_7, x_22, x_23, x_24, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_4);
return x_25;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; 
x_16 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5___boxed(lean_object** _args) {
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
lean_object* x_19 = _args[18];
lean_object* x_20 = _args[19];
_start:
{
uint8_t x_21; uint8_t x_22; double x_23; double x_24; lean_object* x_25; 
x_21 = lean_unbox(x_2);
lean_dec(x_2);
x_22 = lean_unbox(x_9);
lean_dec(x_9);
x_23 = lean_unbox_float(x_10);
lean_dec(x_10);
x_24 = lean_unbox_float(x_11);
lean_dec(x_11);
x_25 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__5(x_1, x_21, x_3, x_4, x_5, x_6, x_7, x_8, x_22, x_23, x_24, x_12, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
lean_dec(x_19);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_4);
return x_25;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6___boxed(lean_object** _args) {
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
lean_object* x_19 = _args[18];
lean_object* x_20 = _args[19];
_start:
{
uint8_t x_21; uint8_t x_22; double x_23; double x_24; lean_object* x_25; 
x_21 = lean_unbox(x_2);
lean_dec(x_2);
x_22 = lean_unbox(x_8);
lean_dec(x_8);
x_23 = lean_unbox_float(x_9);
lean_dec(x_9);
x_24 = lean_unbox_float(x_10);
lean_dec(x_10);
x_25 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__6(x_1, x_21, x_3, x_4, x_5, x_6, x_7, x_22, x_23, x_24, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_4);
return x_25;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___boxed(lean_object** _args) {
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
uint8_t x_19; uint8_t x_20; lean_object* x_21; 
x_19 = lean_unbox(x_5);
lean_dec(x_5);
x_20 = lean_unbox(x_8);
lean_dec(x_8);
x_21 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7(x_1, x_2, x_3, x_4, x_19, x_6, x_7, x_20, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_18);
lean_dec(x_10);
lean_dec(x_2);
lean_dec(x_1);
return x_21;
}
}
LEAN_EXPORT lean_object* l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
uint8_t x_16; lean_object* x_17; 
x_16 = lean_unbox(x_6);
lean_dec(x_6);
x_17 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_1);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; lean_object* x_16; 
x_15 = lean_unbox(x_6);
lean_dec(x_6);
x_16 = l_Aesop_withAesopTraceNode___at_Aesop_expandNextGoal___spec__4___rarg(x_1, x_2, x_3, x_4, x_5, x_15, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_expandNextGoal___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_expandNextGoal___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_expandNextGoal___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_expandNextGoal___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_4);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_expandNextGoal___rarg___lambda__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_4);
lean_dec(x_3);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_expandNextGoal___rarg___lambda__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_expandNextGoal___rarg___lambda__6(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_4);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_box(0);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
}
static lean_object* _init_l_Aesop_checkGoalLimit___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_checkGoalLimit___rarg___lambda__1___boxed), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkGoalLimit___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("maximum number of goals (", 25, 25);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkGoalLimit___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkGoalLimit___rarg___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkGoalLimit___rarg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(") reached. Set the 'maxGoals' option to increase the limit.", 59, 59);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkGoalLimit___rarg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkGoalLimit___rarg___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_1, 2);
lean_inc(x_9);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_ctor_get(x_10, 2);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Aesop_getTree___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_8);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = lean_ctor_get(x_14, 2);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Aesop_checkGoalLimit___rarg___closed__1;
x_18 = lean_unsigned_to_nat(0u);
x_19 = lean_nat_dec_eq(x_11, x_18);
if (x_19 == 0)
{
uint8_t x_20; 
x_20 = lean_nat_dec_le(x_11, x_16);
lean_dec(x_16);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
lean_free_object(x_12);
lean_dec(x_11);
x_21 = lean_box(0);
x_22 = lean_apply_9(x_17, x_21, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_23 = l___private_Init_Data_Repr_0__Nat_reprFast(x_11);
x_24 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_24, 0, x_23);
x_25 = l_Lean_MessageData_ofFormat(x_24);
x_26 = l_Aesop_checkGoalLimit___rarg___closed__3;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = l_Aesop_checkGoalLimit___rarg___closed__5;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_12, 0, x_30);
return x_12;
}
}
else
{
lean_object* x_31; lean_object* x_32; 
lean_dec(x_16);
lean_free_object(x_12);
lean_dec(x_11);
x_31 = lean_box(0);
x_32 = lean_apply_9(x_17, x_31, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_33 = lean_ctor_get(x_12, 0);
x_34 = lean_ctor_get(x_12, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_12);
x_35 = lean_ctor_get(x_33, 2);
lean_inc(x_35);
lean_dec(x_33);
x_36 = l_Aesop_checkGoalLimit___rarg___closed__1;
x_37 = lean_unsigned_to_nat(0u);
x_38 = lean_nat_dec_eq(x_11, x_37);
if (x_38 == 0)
{
uint8_t x_39; 
x_39 = lean_nat_dec_le(x_11, x_35);
lean_dec(x_35);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; 
lean_dec(x_11);
x_40 = lean_box(0);
x_41 = lean_apply_9(x_36, x_40, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_34);
return x_41;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_42 = l___private_Init_Data_Repr_0__Nat_reprFast(x_11);
x_43 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_43, 0, x_42);
x_44 = l_Lean_MessageData_ofFormat(x_43);
x_45 = l_Aesop_checkGoalLimit___rarg___closed__3;
x_46 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_44);
x_47 = l_Aesop_checkGoalLimit___rarg___closed__5;
x_48 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_48);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_34);
return x_50;
}
}
else
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_11);
x_51 = lean_box(0);
x_52 = lean_apply_9(x_36, x_51, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_34);
return x_52;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_checkGoalLimit___rarg), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_checkGoalLimit___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkGoalLimit___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_checkGoalLimit(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_checkRappLimit___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("maximum number of rule applications (", 37, 37);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkRappLimit___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkRappLimit___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkRappLimit___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(") reached. Set the 'maxRuleApplications' option to increase the limit.", 70, 70);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkRappLimit___rarg___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkRappLimit___rarg___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRappLimit___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_1, 2);
lean_inc(x_9);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Aesop_getTree___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_8);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = lean_ctor_get(x_14, 3);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Aesop_checkGoalLimit___rarg___closed__1;
x_18 = lean_unsigned_to_nat(0u);
x_19 = lean_nat_dec_eq(x_11, x_18);
if (x_19 == 0)
{
uint8_t x_20; 
x_20 = lean_nat_dec_le(x_11, x_16);
lean_dec(x_16);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
lean_free_object(x_12);
lean_dec(x_11);
x_21 = lean_box(0);
x_22 = lean_apply_9(x_17, x_21, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_23 = l___private_Init_Data_Repr_0__Nat_reprFast(x_11);
x_24 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_24, 0, x_23);
x_25 = l_Lean_MessageData_ofFormat(x_24);
x_26 = l_Aesop_checkRappLimit___rarg___closed__2;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = l_Aesop_checkRappLimit___rarg___closed__4;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_12, 0, x_30);
return x_12;
}
}
else
{
lean_object* x_31; lean_object* x_32; 
lean_dec(x_16);
lean_free_object(x_12);
lean_dec(x_11);
x_31 = lean_box(0);
x_32 = lean_apply_9(x_17, x_31, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_33 = lean_ctor_get(x_12, 0);
x_34 = lean_ctor_get(x_12, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_12);
x_35 = lean_ctor_get(x_33, 3);
lean_inc(x_35);
lean_dec(x_33);
x_36 = l_Aesop_checkGoalLimit___rarg___closed__1;
x_37 = lean_unsigned_to_nat(0u);
x_38 = lean_nat_dec_eq(x_11, x_37);
if (x_38 == 0)
{
uint8_t x_39; 
x_39 = lean_nat_dec_le(x_11, x_35);
lean_dec(x_35);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; 
lean_dec(x_11);
x_40 = lean_box(0);
x_41 = lean_apply_9(x_36, x_40, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_34);
return x_41;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_42 = l___private_Init_Data_Repr_0__Nat_reprFast(x_11);
x_43 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_43, 0, x_42);
x_44 = l_Lean_MessageData_ofFormat(x_43);
x_45 = l_Aesop_checkRappLimit___rarg___closed__2;
x_46 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_44);
x_47 = l_Aesop_checkRappLimit___rarg___closed__4;
x_48 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_48);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_34);
return x_50;
}
}
else
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_11);
x_51 = lean_box(0);
x_52 = lean_apply_9(x_36, x_51, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_34);
return x_52;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRappLimit(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_checkRappLimit___rarg), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRappLimit___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_checkRappLimit(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_checkRootUnprovable___rarg___lambda__1___boxed), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed to prove the goal after exhaustive search.", 49, 49);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkRootUnprovable___rarg___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed to prove the goal. Some goals were not explored because the maximum rule application depth (", 99, 99);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkRootUnprovable___rarg___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(") was reached. Set option 'maxRuleApplicationDepth' to increase the limit.", 74, 74);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkRootUnprovable___rarg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkRootUnprovable___rarg___closed__6;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_9 = l_Aesop_getTree___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_ctor_get(x_10, 0);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_st_ref_get(x_12, x_11);
lean_dec(x_12);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; uint8_t x_20; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
x_17 = l_Aesop_checkGoalLimit___rarg___closed__1;
x_18 = l_Aesop_treeImpl___elambda__1(x_15);
lean_dec(x_15);
x_19 = lean_ctor_get_uint8(x_18, sizeof(void*)*2 + 1);
lean_dec(x_18);
x_20 = l_Aesop_NodeState_isUnprovable(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
lean_free_object(x_13);
x_21 = lean_box(0);
x_22 = lean_apply_9(x_17, x_21, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_16);
return x_22;
}
else
{
lean_object* x_23; uint8_t x_24; 
x_23 = l_Aesop_wasMaxRuleApplicationDepthReached___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_16);
x_24 = !lean_is_exclusive(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_25 = lean_ctor_get(x_23, 0);
x_26 = lean_ctor_get(x_23, 1);
x_27 = l_Aesop_checkRootUnprovable___rarg___closed__1;
x_28 = lean_unbox(x_25);
lean_dec(x_25);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; 
lean_free_object(x_23);
lean_free_object(x_13);
x_29 = l_Aesop_checkRootUnprovable___rarg___closed__3;
x_30 = lean_apply_9(x_27, x_29, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_26);
return x_30;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_31 = lean_ctor_get(x_1, 2);
lean_inc(x_31);
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
lean_dec(x_32);
x_34 = l___private_Init_Data_Repr_0__Nat_reprFast(x_33);
x_35 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = l_Lean_MessageData_ofFormat(x_35);
x_37 = l_Aesop_checkRootUnprovable___rarg___closed__5;
lean_ctor_set_tag(x_23, 7);
lean_ctor_set(x_23, 1, x_36);
lean_ctor_set(x_23, 0, x_37);
x_38 = l_Aesop_checkRootUnprovable___rarg___closed__7;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_38);
lean_ctor_set(x_13, 0, x_23);
x_39 = lean_apply_9(x_27, x_13, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_26);
return x_39;
}
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; 
x_40 = lean_ctor_get(x_23, 0);
x_41 = lean_ctor_get(x_23, 1);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_23);
x_42 = l_Aesop_checkRootUnprovable___rarg___closed__1;
x_43 = lean_unbox(x_40);
lean_dec(x_40);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; 
lean_free_object(x_13);
x_44 = l_Aesop_checkRootUnprovable___rarg___closed__3;
x_45 = lean_apply_9(x_42, x_44, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_41);
return x_45;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_46 = lean_ctor_get(x_1, 2);
lean_inc(x_46);
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
lean_dec(x_46);
x_48 = lean_ctor_get(x_47, 0);
lean_inc(x_48);
lean_dec(x_47);
x_49 = l___private_Init_Data_Repr_0__Nat_reprFast(x_48);
x_50 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_50, 0, x_49);
x_51 = l_Lean_MessageData_ofFormat(x_50);
x_52 = l_Aesop_checkRootUnprovable___rarg___closed__5;
x_53 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_53, 0, x_52);
lean_ctor_set(x_53, 1, x_51);
x_54 = l_Aesop_checkRootUnprovable___rarg___closed__7;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_54);
lean_ctor_set(x_13, 0, x_53);
x_55 = lean_apply_9(x_42, x_13, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_41);
return x_55;
}
}
}
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; uint8_t x_60; uint8_t x_61; 
x_56 = lean_ctor_get(x_13, 0);
x_57 = lean_ctor_get(x_13, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_13);
x_58 = l_Aesop_checkGoalLimit___rarg___closed__1;
x_59 = l_Aesop_treeImpl___elambda__1(x_56);
lean_dec(x_56);
x_60 = lean_ctor_get_uint8(x_59, sizeof(void*)*2 + 1);
lean_dec(x_59);
x_61 = l_Aesop_NodeState_isUnprovable(x_60);
if (x_61 == 0)
{
lean_object* x_62; lean_object* x_63; 
x_62 = lean_box(0);
x_63 = lean_apply_9(x_58, x_62, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_57);
return x_63;
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; uint8_t x_69; 
x_64 = l_Aesop_wasMaxRuleApplicationDepthReached___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_57);
x_65 = lean_ctor_get(x_64, 0);
lean_inc(x_65);
x_66 = lean_ctor_get(x_64, 1);
lean_inc(x_66);
if (lean_is_exclusive(x_64)) {
 lean_ctor_release(x_64, 0);
 lean_ctor_release(x_64, 1);
 x_67 = x_64;
} else {
 lean_dec_ref(x_64);
 x_67 = lean_box(0);
}
x_68 = l_Aesop_checkRootUnprovable___rarg___closed__1;
x_69 = lean_unbox(x_65);
lean_dec(x_65);
if (x_69 == 0)
{
lean_object* x_70; lean_object* x_71; 
lean_dec(x_67);
x_70 = l_Aesop_checkRootUnprovable___rarg___closed__3;
x_71 = lean_apply_9(x_68, x_70, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_66);
return x_71;
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_72 = lean_ctor_get(x_1, 2);
lean_inc(x_72);
x_73 = lean_ctor_get(x_72, 0);
lean_inc(x_73);
lean_dec(x_72);
x_74 = lean_ctor_get(x_73, 0);
lean_inc(x_74);
lean_dec(x_73);
x_75 = l___private_Init_Data_Repr_0__Nat_reprFast(x_74);
x_76 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_76, 0, x_75);
x_77 = l_Lean_MessageData_ofFormat(x_76);
x_78 = l_Aesop_checkRootUnprovable___rarg___closed__5;
if (lean_is_scalar(x_67)) {
 x_79 = lean_alloc_ctor(7, 2, 0);
} else {
 x_79 = x_67;
 lean_ctor_set_tag(x_79, 7);
}
lean_ctor_set(x_79, 0, x_78);
lean_ctor_set(x_79, 1, x_77);
x_80 = l_Aesop_checkRootUnprovable___rarg___closed__7;
x_81 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_81, 0, x_79);
lean_ctor_set(x_81, 1, x_80);
x_82 = lean_apply_9(x_68, x_81, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_66);
return x_82;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_checkRootUnprovable___rarg), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_checkRootUnprovable___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkRootUnprovable___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_checkRootUnprovable(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_st_ref_get(x_6, x_11);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
lean_dec(x_14);
x_16 = l_Lean_MetavarContext_getExprAssignmentCore_x3f(x_15, x_1);
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
x_19 = lean_ctor_get(x_17, 0);
lean_inc(x_19);
lean_dec(x_17);
x_20 = l_Lean_MetavarContext_getExprAssignmentCore_x3f(x_19, x_1);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_18);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_getProof_x3f___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Aesop_getRootMVarId(x_13, x_4, x_5, x_6, x_7, x_8, x_12);
lean_dec(x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg(x_15, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_16);
lean_dec(x_15);
return x_17;
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_14);
if (x_18 == 0)
{
return x_14;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_14, 0);
x_20 = lean_ctor_get(x_14, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_14);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_getProof_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_getProof_x3f___rarg___boxed), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_getExprMVarAssignment_x3f___at_Aesop_getProof_x3f___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_getProof_x3f___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_getProof_x3f___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("pp", 2, 2);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("analyze", 7, 7);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__1;
x_2 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; lean_object* x_4; 
x_2 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3;
x_3 = 1;
x_4 = l_Lean_KVMap_setBool(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___closed__1;
x_4 = lean_apply_3(x_1, lean_box(0), x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = l_Lean_Expr_hasMVar(x_1);
if (x_10 == 0)
{
lean_object* x_11; 
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; 
x_12 = lean_st_ref_get(x_3, x_9);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_st_ref_get(x_6, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_instantiateMVarsCore(x_17, x_1);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_st_ref_get(x_3, x_16);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = lean_st_ref_take(x_6, x_22);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = !lean_is_exclusive(x_24);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_27 = lean_ctor_get(x_24, 0);
lean_dec(x_27);
lean_ctor_set(x_24, 0, x_20);
x_28 = lean_st_ref_set(x_6, x_24, x_25);
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; 
x_30 = lean_ctor_get(x_28, 0);
lean_dec(x_30);
lean_ctor_set(x_28, 0, x_19);
return x_28;
}
else
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_28, 1);
lean_inc(x_31);
lean_dec(x_28);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_19);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_33 = lean_ctor_get(x_24, 1);
x_34 = lean_ctor_get(x_24, 2);
x_35 = lean_ctor_get(x_24, 3);
x_36 = lean_ctor_get(x_24, 4);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_24);
x_37 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_37, 0, x_20);
lean_ctor_set(x_37, 1, x_33);
lean_ctor_set(x_37, 2, x_34);
lean_ctor_set(x_37, 3, x_35);
lean_ctor_set(x_37, 4, x_36);
x_38 = lean_st_ref_set(x_6, x_37, x_25);
x_39 = lean_ctor_get(x_38, 1);
lean_inc(x_39);
if (lean_is_exclusive(x_38)) {
 lean_ctor_release(x_38, 0);
 lean_ctor_release(x_38, 1);
 x_40 = x_38;
} else {
 lean_dec_ref(x_38);
 x_40 = lean_box(0);
}
if (lean_is_scalar(x_40)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_40;
}
lean_ctor_set(x_41, 0, x_19);
lean_ctor_set(x_41, 1, x_39);
return x_41;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = lean_ctor_get(x_1, 1);
x_12 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_10, x_11);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_11 = lean_ctor_get(x_8, 5);
x_12 = lean_st_ref_get(x_4, x_10);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_6, x_7, x_8, x_9, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_4, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_st_ref_take(x_9, x_18);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; double x_25; uint8_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_21, 3);
x_25 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_26 = 0;
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_28 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_28, 0, x_1);
lean_ctor_set(x_28, 1, x_27);
lean_ctor_set_float(x_28, sizeof(void*)*2, x_25);
lean_ctor_set_float(x_28, sizeof(void*)*2 + 8, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*2 + 16, x_26);
x_29 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_30 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_15);
lean_ctor_set(x_30, 2, x_29);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_30);
lean_ctor_set(x_19, 0, x_11);
x_31 = l_Lean_PersistentArray_push___rarg(x_24, x_19);
lean_ctor_set(x_21, 3, x_31);
x_32 = lean_st_ref_set(x_9, x_21, x_23);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_32, 0);
lean_dec(x_34);
x_35 = lean_box(0);
lean_ctor_set(x_32, 0, x_35);
return x_32;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
lean_dec(x_32);
x_37 = lean_box(0);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; double x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_39 = lean_ctor_get(x_19, 1);
x_40 = lean_ctor_get(x_21, 0);
x_41 = lean_ctor_get(x_21, 1);
x_42 = lean_ctor_get(x_21, 2);
x_43 = lean_ctor_get(x_21, 3);
x_44 = lean_ctor_get(x_21, 4);
x_45 = lean_ctor_get(x_21, 5);
x_46 = lean_ctor_get(x_21, 6);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_21);
x_47 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_48 = 0;
x_49 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_50 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_50, 0, x_1);
lean_ctor_set(x_50, 1, x_49);
lean_ctor_set_float(x_50, sizeof(void*)*2, x_47);
lean_ctor_set_float(x_50, sizeof(void*)*2 + 8, x_47);
lean_ctor_set_uint8(x_50, sizeof(void*)*2 + 16, x_48);
x_51 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_52 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_15);
lean_ctor_set(x_52, 2, x_51);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_52);
lean_ctor_set(x_19, 0, x_11);
x_53 = l_Lean_PersistentArray_push___rarg(x_43, x_19);
x_54 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_54, 0, x_40);
lean_ctor_set(x_54, 1, x_41);
lean_ctor_set(x_54, 2, x_42);
lean_ctor_set(x_54, 3, x_53);
lean_ctor_set(x_54, 4, x_44);
lean_ctor_set(x_54, 5, x_45);
lean_ctor_set(x_54, 6, x_46);
x_55 = lean_st_ref_set(x_9, x_54, x_39);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_57 = x_55;
} else {
 lean_dec_ref(x_55);
 x_57 = lean_box(0);
}
x_58 = lean_box(0);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(0, 2, 0);
} else {
 x_59 = x_57;
}
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; double x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_60 = lean_ctor_get(x_19, 0);
x_61 = lean_ctor_get(x_19, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_19);
x_62 = lean_ctor_get(x_60, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_60, 1);
lean_inc(x_63);
x_64 = lean_ctor_get(x_60, 2);
lean_inc(x_64);
x_65 = lean_ctor_get(x_60, 3);
lean_inc(x_65);
x_66 = lean_ctor_get(x_60, 4);
lean_inc(x_66);
x_67 = lean_ctor_get(x_60, 5);
lean_inc(x_67);
x_68 = lean_ctor_get(x_60, 6);
lean_inc(x_68);
if (lean_is_exclusive(x_60)) {
 lean_ctor_release(x_60, 0);
 lean_ctor_release(x_60, 1);
 lean_ctor_release(x_60, 2);
 lean_ctor_release(x_60, 3);
 lean_ctor_release(x_60, 4);
 lean_ctor_release(x_60, 5);
 lean_ctor_release(x_60, 6);
 x_69 = x_60;
} else {
 lean_dec_ref(x_60);
 x_69 = lean_box(0);
}
x_70 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_71 = 0;
x_72 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_73 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_73, 0, x_1);
lean_ctor_set(x_73, 1, x_72);
lean_ctor_set_float(x_73, sizeof(void*)*2, x_70);
lean_ctor_set_float(x_73, sizeof(void*)*2 + 8, x_70);
lean_ctor_set_uint8(x_73, sizeof(void*)*2 + 16, x_71);
x_74 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_75 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_75, 0, x_73);
lean_ctor_set(x_75, 1, x_15);
lean_ctor_set(x_75, 2, x_74);
lean_inc(x_11);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_11);
lean_ctor_set(x_76, 1, x_75);
x_77 = l_Lean_PersistentArray_push___rarg(x_65, x_76);
if (lean_is_scalar(x_69)) {
 x_78 = lean_alloc_ctor(0, 7, 0);
} else {
 x_78 = x_69;
}
lean_ctor_set(x_78, 0, x_62);
lean_ctor_set(x_78, 1, x_63);
lean_ctor_set(x_78, 2, x_64);
lean_ctor_set(x_78, 3, x_77);
lean_ctor_set(x_78, 4, x_66);
lean_ctor_set(x_78, 5, x_67);
lean_ctor_set(x_78, 6, x_68);
x_79 = lean_st_ref_set(x_9, x_78, x_61);
x_80 = lean_ctor_get(x_79, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_81 = x_79;
} else {
 lean_dec_ref(x_79);
 x_81 = lean_box(0);
}
x_82 = lean_box(0);
if (lean_is_scalar(x_81)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_81;
}
lean_ctor_set(x_83, 0, x_82);
lean_ctor_set(x_83, 1, x_80);
return x_83;
}
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg___boxed), 10, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_11 = lean_apply_8(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_9(x_2, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
return x_14;
}
else
{
uint8_t x_15; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_15 = !lean_is_exclusive(x_11);
if (x_15 == 0)
{
return x_11;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_11, 0);
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_11);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_finalizeProof___spec__5___rarg), 10, 0);
return x_5;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_maxRecDepth;
return x_1;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_10);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_10, 4);
lean_dec(x_14);
x_15 = lean_ctor_get(x_10, 2);
lean_dec(x_15);
x_16 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1;
x_17 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_1, x_16);
lean_ctor_set(x_10, 4, x_17);
lean_ctor_set(x_10, 2, x_1);
lean_ctor_set_uint8(x_10, sizeof(void*)*12, x_2);
x_18 = lean_apply_8(x_3, x_4, x_5, x_6, x_7, x_8, x_10, x_11, x_12);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_19 = lean_ctor_get(x_10, 0);
x_20 = lean_ctor_get(x_10, 1);
x_21 = lean_ctor_get(x_10, 3);
x_22 = lean_ctor_get(x_10, 5);
x_23 = lean_ctor_get(x_10, 6);
x_24 = lean_ctor_get(x_10, 7);
x_25 = lean_ctor_get(x_10, 8);
x_26 = lean_ctor_get(x_10, 9);
x_27 = lean_ctor_get(x_10, 10);
x_28 = lean_ctor_get(x_10, 11);
x_29 = lean_ctor_get_uint8(x_10, sizeof(void*)*12 + 1);
lean_inc(x_28);
lean_inc(x_27);
lean_inc(x_26);
lean_inc(x_25);
lean_inc(x_24);
lean_inc(x_23);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_10);
x_30 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1;
x_31 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__1(x_1, x_30);
x_32 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_32, 0, x_19);
lean_ctor_set(x_32, 1, x_20);
lean_ctor_set(x_32, 2, x_1);
lean_ctor_set(x_32, 3, x_21);
lean_ctor_set(x_32, 4, x_31);
lean_ctor_set(x_32, 5, x_22);
lean_ctor_set(x_32, 6, x_23);
lean_ctor_set(x_32, 7, x_24);
lean_ctor_set(x_32, 8, x_25);
lean_ctor_set(x_32, 9, x_26);
lean_ctor_set(x_32, 10, x_27);
lean_ctor_set(x_32, 11, x_28);
lean_ctor_set_uint8(x_32, sizeof(void*)*12, x_2);
lean_ctor_set_uint8(x_32, sizeof(void*)*12 + 1, x_29);
x_33 = lean_apply_8(x_3, x_4, x_5, x_6, x_7, x_8, x_32, x_11, x_12);
return x_33;
}
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_diagnostics;
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__2;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__3;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; uint8_t x_21; 
x_10 = lean_ctor_get(x_7, 2);
lean_inc(x_10);
x_11 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3;
x_12 = 1;
x_13 = l_Lean_KVMap_setBool(x_10, x_11, x_12);
x_14 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__1;
x_15 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_13, x_14);
x_16 = lean_st_ref_get(x_8, x_9);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_ctor_get(x_17, 0);
lean_inc(x_19);
lean_dec(x_17);
x_20 = l_Lean_Kernel_isDiagnosticsEnabled(x_19);
lean_dec(x_19);
if (x_20 == 0)
{
if (x_15 == 0)
{
x_21 = x_12;
goto block_49;
}
else
{
uint8_t x_50; 
x_50 = 0;
x_21 = x_50;
goto block_49;
}
}
else
{
if (x_15 == 0)
{
uint8_t x_51; 
x_51 = 0;
x_21 = x_51;
goto block_49;
}
else
{
x_21 = x_12;
goto block_49;
}
}
block_49:
{
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_22 = lean_st_ref_take(x_8, x_18);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = !lean_is_exclusive(x_23);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_26 = lean_ctor_get(x_23, 0);
x_27 = lean_ctor_get(x_23, 4);
lean_dec(x_27);
x_28 = l_Lean_Kernel_enableDiag(x_26, x_15);
x_29 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4;
lean_ctor_set(x_23, 4, x_29);
lean_ctor_set(x_23, 0, x_28);
x_30 = lean_st_ref_set(x_8, x_23, x_24);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
lean_dec(x_30);
x_32 = lean_box(0);
x_33 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1(x_13, x_15, x_1, x_2, x_3, x_4, x_5, x_6, x_32, x_7, x_8, x_31);
return x_33;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_34 = lean_ctor_get(x_23, 0);
x_35 = lean_ctor_get(x_23, 1);
x_36 = lean_ctor_get(x_23, 2);
x_37 = lean_ctor_get(x_23, 3);
x_38 = lean_ctor_get(x_23, 5);
x_39 = lean_ctor_get(x_23, 6);
lean_inc(x_39);
lean_inc(x_38);
lean_inc(x_37);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_23);
x_40 = l_Lean_Kernel_enableDiag(x_34, x_15);
x_41 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4;
x_42 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set(x_42, 1, x_35);
lean_ctor_set(x_42, 2, x_36);
lean_ctor_set(x_42, 3, x_37);
lean_ctor_set(x_42, 4, x_41);
lean_ctor_set(x_42, 5, x_38);
lean_ctor_set(x_42, 6, x_39);
x_43 = lean_st_ref_set(x_8, x_42, x_24);
x_44 = lean_ctor_get(x_43, 1);
lean_inc(x_44);
lean_dec(x_43);
x_45 = lean_box(0);
x_46 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1(x_13, x_15, x_1, x_2, x_3, x_4, x_5, x_6, x_45, x_7, x_8, x_44);
return x_46;
}
}
else
{
lean_object* x_47; lean_object* x_48; 
x_47 = lean_box(0);
x_48 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1(x_13, x_15, x_1, x_2, x_3, x_4, x_5, x_6, x_47, x_7, x_8, x_18);
return x_48;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_11 = lean_apply_8(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_9(x_2, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
return x_14;
}
else
{
uint8_t x_15; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_15 = !lean_is_exclusive(x_11);
if (x_15 == 0)
{
return x_11;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_11, 0);
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_11);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_finalizeProof___spec__8___rarg), 10, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_apply_3(x_2, x_3, x_4, x_5);
x_12 = l___private_Lean_Meta_Basic_0__Lean_Meta_withMVarContextImp___rarg(x_1, x_11, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
return x_12;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_12);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_12);
if (x_17 == 0)
{
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_12, 0);
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_12);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9___rarg), 10, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_9 = lean_st_ref_get(x_2, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_ctor_get(x_10, 0);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Aesop_extractProof(x_12, x_3, x_4, x_5, x_6, x_7, x_11);
lean_dec(x_12);
return x_13;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Final proof:", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_finalizeProof___rarg___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__2(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
if (x_3 == 0)
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_1);
x_12 = lean_box(0);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_14 = l_Aesop_TraceOption_proof;
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = l_Lean_indentExpr(x_1);
x_17 = l_Aesop_finalizeProof___rarg___lambda__2___closed__2;
x_18 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
x_19 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg(x_15, x_20, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_21;
}
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_proof;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_12 = l_Aesop_finalizeProof___rarg___lambda__3___closed__1;
x_13 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg___boxed), 9, 1);
lean_closure_set(x_13, 0, x_12);
x_14 = lean_alloc_closure((void*)(l_Aesop_finalizeProof___rarg___lambda__2___boxed), 11, 2);
lean_closure_set(x_14, 0, x_2);
lean_closure_set(x_14, 1, x_1);
x_15 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_finalizeProof___spec__5___rarg), 10, 2);
lean_closure_set(x_15, 0, x_13);
lean_closure_set(x_15, 1, x_14);
x_16 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg(x_15, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_16;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: internal error: root goal is proven but its metavariable is not assigned", 79, 79);
return x_1;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_finalizeProof___rarg___lambda__4___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Proof: ", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_finalizeProof___rarg___lambda__4___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nUnassigned metavariables: ", 27, 27);
return x_1;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_finalizeProof___rarg___lambda__4___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: internal error: extracted proof has metavariables.", 57, 57);
return x_1;
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_finalizeProof___rarg___lambda__4___closed__7;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_getProof_x3f___rarg(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_1);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Aesop_finalizeProof___rarg___lambda__4___closed__2;
x_15 = l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg(x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_dec(x_11);
x_17 = lean_ctor_get(x_12, 0);
lean_inc(x_17);
lean_dec(x_12);
lean_inc(x_17);
x_18 = l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg(x_17, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_16);
x_19 = !lean_is_exclusive(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_20 = lean_ctor_get(x_18, 0);
x_21 = lean_ctor_get(x_18, 1);
x_22 = l_Lean_Expr_hasExprMVar(x_20);
lean_dec(x_20);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_free_object(x_18);
x_23 = lean_box(0);
x_24 = l_Aesop_finalizeProof___rarg___lambda__3(x_1, x_17, x_23, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_21);
return x_24;
}
else
{
lean_object* x_25; uint8_t x_26; 
lean_dec(x_1);
x_25 = lean_st_ref_get(x_4, x_21);
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_27 = lean_ctor_get(x_25, 1);
x_28 = lean_ctor_get(x_25, 0);
lean_dec(x_28);
lean_inc(x_17);
x_29 = l_Lean_Meta_getMVarsNoDelayed(x_17, x_6, x_7, x_8, x_9, x_27);
x_30 = !lean_is_exclusive(x_29);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; size_t x_36; size_t x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_31 = lean_ctor_get(x_29, 0);
x_32 = lean_ctor_get(x_29, 1);
x_33 = l_Lean_MessageData_ofExpr(x_17);
x_34 = l_Aesop_finalizeProof___rarg___lambda__4___closed__4;
lean_ctor_set_tag(x_29, 7);
lean_ctor_set(x_29, 1, x_33);
lean_ctor_set(x_29, 0, x_34);
x_35 = l_Aesop_finalizeProof___rarg___lambda__4___closed__6;
lean_ctor_set_tag(x_25, 7);
lean_ctor_set(x_25, 1, x_35);
lean_ctor_set(x_25, 0, x_29);
x_36 = lean_array_size(x_31);
x_37 = 0;
x_38 = l_Array_mapMUnsafe_map___at_Aesop_Goal_traceMetadata___spec__1(x_36, x_37, x_31);
x_39 = lean_array_to_list(lean_box(0), x_38);
x_40 = lean_box(0);
x_41 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_39, x_40);
x_42 = l_Lean_MessageData_ofList(x_41);
lean_ctor_set_tag(x_18, 7);
lean_ctor_set(x_18, 1, x_42);
lean_ctor_set(x_18, 0, x_25);
x_43 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_44 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_44, 0, x_18);
lean_ctor_set(x_44, 1, x_43);
x_45 = l_Lean_indentD(x_44);
x_46 = l_Aesop_finalizeProof___rarg___lambda__4___closed__8;
x_47 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_45);
x_48 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_43);
x_49 = l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(x_48, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_32);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
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
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; size_t x_60; size_t x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_54 = lean_ctor_get(x_29, 0);
x_55 = lean_ctor_get(x_29, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_29);
x_56 = l_Lean_MessageData_ofExpr(x_17);
x_57 = l_Aesop_finalizeProof___rarg___lambda__4___closed__4;
x_58 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_58, 0, x_57);
lean_ctor_set(x_58, 1, x_56);
x_59 = l_Aesop_finalizeProof___rarg___lambda__4___closed__6;
lean_ctor_set_tag(x_25, 7);
lean_ctor_set(x_25, 1, x_59);
lean_ctor_set(x_25, 0, x_58);
x_60 = lean_array_size(x_54);
x_61 = 0;
x_62 = l_Array_mapMUnsafe_map___at_Aesop_Goal_traceMetadata___spec__1(x_60, x_61, x_54);
x_63 = lean_array_to_list(lean_box(0), x_62);
x_64 = lean_box(0);
x_65 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_63, x_64);
x_66 = l_Lean_MessageData_ofList(x_65);
lean_ctor_set_tag(x_18, 7);
lean_ctor_set(x_18, 1, x_66);
lean_ctor_set(x_18, 0, x_25);
x_67 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_68 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_68, 0, x_18);
lean_ctor_set(x_68, 1, x_67);
x_69 = l_Lean_indentD(x_68);
x_70 = l_Aesop_finalizeProof___rarg___lambda__4___closed__8;
x_71 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_71, 0, x_70);
lean_ctor_set(x_71, 1, x_69);
x_72 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_67);
x_73 = l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(x_72, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_55);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_74 = lean_ctor_get(x_73, 0);
lean_inc(x_74);
x_75 = lean_ctor_get(x_73, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_73)) {
 lean_ctor_release(x_73, 0);
 lean_ctor_release(x_73, 1);
 x_76 = x_73;
} else {
 lean_dec_ref(x_73);
 x_76 = lean_box(0);
}
if (lean_is_scalar(x_76)) {
 x_77 = lean_alloc_ctor(1, 2, 0);
} else {
 x_77 = x_76;
}
lean_ctor_set(x_77, 0, x_74);
lean_ctor_set(x_77, 1, x_75);
return x_77;
}
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; size_t x_88; size_t x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_78 = lean_ctor_get(x_25, 1);
lean_inc(x_78);
lean_dec(x_25);
lean_inc(x_17);
x_79 = l_Lean_Meta_getMVarsNoDelayed(x_17, x_6, x_7, x_8, x_9, x_78);
x_80 = lean_ctor_get(x_79, 0);
lean_inc(x_80);
x_81 = lean_ctor_get(x_79, 1);
lean_inc(x_81);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_82 = x_79;
} else {
 lean_dec_ref(x_79);
 x_82 = lean_box(0);
}
x_83 = l_Lean_MessageData_ofExpr(x_17);
x_84 = l_Aesop_finalizeProof___rarg___lambda__4___closed__4;
if (lean_is_scalar(x_82)) {
 x_85 = lean_alloc_ctor(7, 2, 0);
} else {
 x_85 = x_82;
 lean_ctor_set_tag(x_85, 7);
}
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_83);
x_86 = l_Aesop_finalizeProof___rarg___lambda__4___closed__6;
x_87 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_87, 0, x_85);
lean_ctor_set(x_87, 1, x_86);
x_88 = lean_array_size(x_80);
x_89 = 0;
x_90 = l_Array_mapMUnsafe_map___at_Aesop_Goal_traceMetadata___spec__1(x_88, x_89, x_80);
x_91 = lean_array_to_list(lean_box(0), x_90);
x_92 = lean_box(0);
x_93 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_91, x_92);
x_94 = l_Lean_MessageData_ofList(x_93);
lean_ctor_set_tag(x_18, 7);
lean_ctor_set(x_18, 1, x_94);
lean_ctor_set(x_18, 0, x_87);
x_95 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_96 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_96, 0, x_18);
lean_ctor_set(x_96, 1, x_95);
x_97 = l_Lean_indentD(x_96);
x_98 = l_Aesop_finalizeProof___rarg___lambda__4___closed__8;
x_99 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_99, 0, x_98);
lean_ctor_set(x_99, 1, x_97);
x_100 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_100, 0, x_99);
lean_ctor_set(x_100, 1, x_95);
x_101 = l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(x_100, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_81);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_102 = lean_ctor_get(x_101, 0);
lean_inc(x_102);
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
if (lean_is_scalar(x_104)) {
 x_105 = lean_alloc_ctor(1, 2, 0);
} else {
 x_105 = x_104;
}
lean_ctor_set(x_105, 0, x_102);
lean_ctor_set(x_105, 1, x_103);
return x_105;
}
}
}
else
{
lean_object* x_106; lean_object* x_107; uint8_t x_108; 
x_106 = lean_ctor_get(x_18, 0);
x_107 = lean_ctor_get(x_18, 1);
lean_inc(x_107);
lean_inc(x_106);
lean_dec(x_18);
x_108 = l_Lean_Expr_hasExprMVar(x_106);
lean_dec(x_106);
if (x_108 == 0)
{
lean_object* x_109; lean_object* x_110; 
x_109 = lean_box(0);
x_110 = l_Aesop_finalizeProof___rarg___lambda__3(x_1, x_17, x_109, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_107);
return x_110;
}
else
{
lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; size_t x_123; size_t x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; 
lean_dec(x_1);
x_111 = lean_st_ref_get(x_4, x_107);
x_112 = lean_ctor_get(x_111, 1);
lean_inc(x_112);
if (lean_is_exclusive(x_111)) {
 lean_ctor_release(x_111, 0);
 lean_ctor_release(x_111, 1);
 x_113 = x_111;
} else {
 lean_dec_ref(x_111);
 x_113 = lean_box(0);
}
lean_inc(x_17);
x_114 = l_Lean_Meta_getMVarsNoDelayed(x_17, x_6, x_7, x_8, x_9, x_112);
x_115 = lean_ctor_get(x_114, 0);
lean_inc(x_115);
x_116 = lean_ctor_get(x_114, 1);
lean_inc(x_116);
if (lean_is_exclusive(x_114)) {
 lean_ctor_release(x_114, 0);
 lean_ctor_release(x_114, 1);
 x_117 = x_114;
} else {
 lean_dec_ref(x_114);
 x_117 = lean_box(0);
}
x_118 = l_Lean_MessageData_ofExpr(x_17);
x_119 = l_Aesop_finalizeProof___rarg___lambda__4___closed__4;
if (lean_is_scalar(x_117)) {
 x_120 = lean_alloc_ctor(7, 2, 0);
} else {
 x_120 = x_117;
 lean_ctor_set_tag(x_120, 7);
}
lean_ctor_set(x_120, 0, x_119);
lean_ctor_set(x_120, 1, x_118);
x_121 = l_Aesop_finalizeProof___rarg___lambda__4___closed__6;
if (lean_is_scalar(x_113)) {
 x_122 = lean_alloc_ctor(7, 2, 0);
} else {
 x_122 = x_113;
 lean_ctor_set_tag(x_122, 7);
}
lean_ctor_set(x_122, 0, x_120);
lean_ctor_set(x_122, 1, x_121);
x_123 = lean_array_size(x_115);
x_124 = 0;
x_125 = l_Array_mapMUnsafe_map___at_Aesop_Goal_traceMetadata___spec__1(x_123, x_124, x_115);
x_126 = lean_array_to_list(lean_box(0), x_125);
x_127 = lean_box(0);
x_128 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_126, x_127);
x_129 = l_Lean_MessageData_ofList(x_128);
x_130 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_130, 0, x_122);
lean_ctor_set(x_130, 1, x_129);
x_131 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_132 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_132, 0, x_130);
lean_ctor_set(x_132, 1, x_131);
x_133 = l_Lean_indentD(x_132);
x_134 = l_Aesop_finalizeProof___rarg___lambda__4___closed__8;
x_135 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_135, 0, x_134);
lean_ctor_set(x_135, 1, x_133);
x_136 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_136, 0, x_135);
lean_ctor_set(x_136, 1, x_131);
x_137 = l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(x_136, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_116);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_138 = lean_ctor_get(x_137, 0);
lean_inc(x_138);
x_139 = lean_ctor_get(x_137, 1);
lean_inc(x_139);
if (lean_is_exclusive(x_137)) {
 lean_ctor_release(x_137, 0);
 lean_ctor_release(x_137, 1);
 x_140 = x_137;
} else {
 lean_dec_ref(x_137);
 x_140 = lean_box(0);
}
if (lean_is_scalar(x_140)) {
 x_141 = lean_alloc_ctor(1, 2, 0);
} else {
 x_141 = x_140;
}
lean_ctor_set(x_141, 0, x_138);
lean_ctor_set(x_141, 1, x_139);
return x_141;
}
}
}
}
else
{
uint8_t x_142; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_142 = !lean_is_exclusive(x_11);
if (x_142 == 0)
{
return x_11;
}
else
{
lean_object* x_143; lean_object* x_144; lean_object* x_145; 
x_143 = lean_ctor_get(x_11, 0);
x_144 = lean_ctor_get(x_11, 1);
lean_inc(x_144);
lean_inc(x_143);
lean_dec(x_11);
x_145 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_145, 0, x_143);
lean_ctor_set(x_145, 1, x_144);
return x_145;
}
}
}
}
static lean_object* _init_l_Aesop_finalizeProof___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_finalizeProof___rarg___lambda__1___boxed), 8, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Aesop_getRootMVarId(x_13, x_4, x_5, x_6, x_7, x_8, x_12);
lean_dec(x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_alloc_closure((void*)(l_Aesop_finalizeProof___rarg___lambda__4___boxed), 10, 1);
lean_closure_set(x_17, 0, x_1);
x_18 = l_Aesop_finalizeProof___rarg___closed__1;
x_19 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_finalizeProof___spec__8___rarg), 10, 2);
lean_closure_set(x_19, 0, x_18);
lean_closure_set(x_19, 1, x_17);
x_20 = l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9___rarg(x_15, x_19, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_16);
return x_20;
}
else
{
uint8_t x_21; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_21 = !lean_is_exclusive(x_14);
if (x_21 == 0)
{
return x_14;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_14, 0);
x_23 = lean_ctor_get(x_14, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_14);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_finalizeProof___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_finalizeProof___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_throwError___at_Aesop_finalizeProof___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_instantiateMVars___at_Aesop_finalizeProof___spec__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_TraceOption_isEnabled___at_Aesop_finalizeProof___spec__3(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_finalizeProof___spec__4___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_addTrace___at_Aesop_finalizeProof___spec__4(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_ReaderT_bind___at_Aesop_finalizeProof___spec__5(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
x_13 = lean_unbox(x_2);
lean_dec(x_2);
x_14 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1(x_1, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_finalizeProof___spec__7___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_finalizeProof___spec__7___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_throwError___at_Aesop_finalizeProof___spec__7(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_finalizeProof___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_ReaderT_bind___at_Aesop_finalizeProof___spec__8(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_MVarId_withContext___at_Aesop_finalizeProof___spec__9(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_finalizeProof___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Aesop_finalizeProof___rarg___lambda__2(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Aesop_finalizeProof___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_3);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_finalizeProof___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_finalizeProof___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg___boxed), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = lean_ctor_get(x_1, 1);
x_12 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_10, x_11);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = l_Aesop_Check_get(x_10, x_1);
x_12 = lean_box(x_11);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_9);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_10 = lean_ctor_get(x_7, 6);
x_11 = lean_ctor_get(x_7, 7);
lean_inc(x_11);
lean_inc(x_10);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
x_13 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_1);
x_14 = 0;
x_15 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_16 = lean_alloc_ctor(0, 5, 2);
lean_ctor_set(x_16, 0, x_2);
lean_ctor_set(x_16, 1, x_3);
lean_ctor_set(x_16, 2, x_4);
lean_ctor_set(x_16, 3, x_15);
lean_ctor_set(x_16, 4, x_13);
lean_ctor_set_uint8(x_16, sizeof(void*)*5, x_14);
lean_ctor_set_uint8(x_16, sizeof(void*)*5 + 1, x_5);
x_17 = lean_st_ref_take(x_8, x_9);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = !lean_is_exclusive(x_18);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_21 = lean_ctor_get(x_18, 5);
x_22 = l_Lean_MessageLog_add(x_16, x_21);
lean_ctor_set(x_18, 5, x_22);
x_23 = lean_st_ref_set(x_8, x_18, x_19);
x_24 = !lean_is_exclusive(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_23, 0);
lean_dec(x_25);
x_26 = lean_box(0);
lean_ctor_set(x_23, 0, x_26);
return x_23;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_23, 1);
lean_inc(x_27);
lean_dec(x_23);
x_28 = lean_box(0);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_27);
return x_29;
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_30 = lean_ctor_get(x_18, 0);
x_31 = lean_ctor_get(x_18, 1);
x_32 = lean_ctor_get(x_18, 2);
x_33 = lean_ctor_get(x_18, 3);
x_34 = lean_ctor_get(x_18, 4);
x_35 = lean_ctor_get(x_18, 5);
x_36 = lean_ctor_get(x_18, 6);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_34);
lean_inc(x_33);
lean_inc(x_32);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_18);
x_37 = l_Lean_MessageLog_add(x_16, x_35);
x_38 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_38, 0, x_30);
lean_ctor_set(x_38, 1, x_31);
lean_ctor_set(x_38, 2, x_32);
lean_ctor_set(x_38, 3, x_33);
lean_ctor_set(x_38, 4, x_34);
lean_ctor_set(x_38, 5, x_37);
lean_ctor_set(x_38, 6, x_36);
x_39 = lean_st_ref_set(x_8, x_38, x_19);
x_40 = lean_ctor_get(x_39, 1);
lean_inc(x_40);
if (lean_is_exclusive(x_39)) {
 lean_ctor_release(x_39, 0);
 lean_ctor_release(x_39, 1);
 x_41 = x_39;
} else {
 lean_dec_ref(x_39);
 x_41 = lean_box(0);
}
x_42 = lean_box(0);
if (lean_is_scalar(x_41)) {
 x_43 = lean_alloc_ctor(0, 2, 0);
} else {
 x_43 = x_41;
}
lean_ctor_set(x_43, 0, x_42);
lean_ctor_set(x_43, 1, x_40);
return x_43;
}
}
}
static lean_object* _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Elab", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unsolvedGoals", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("synthPlaceholder", 16, 16);
return x_1;
}
}
LEAN_EXPORT uint8_t l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 1)
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_2) == 1)
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_2, 0);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_ctor_get(x_2, 1);
x_6 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__1;
x_7 = lean_string_dec_eq(x_5, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__2;
x_9 = lean_string_dec_eq(x_5, x_8);
if (x_9 == 0)
{
uint8_t x_10; 
x_10 = 0;
return x_10;
}
else
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__3;
x_12 = lean_string_dec_eq(x_4, x_11);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__4;
x_14 = lean_string_dec_eq(x_4, x_13);
return x_14;
}
}
else
{
uint8_t x_15; 
x_15 = 0;
return x_15;
}
}
else
{
uint8_t x_16; 
x_16 = 0;
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = 0;
return x_17;
}
}
}
static lean_object* _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_warningAsError;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_235; uint8_t x_236; 
x_235 = 2;
x_236 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_235);
if (x_236 == 0)
{
lean_object* x_237; 
x_237 = lean_box(0);
x_12 = x_237;
goto block_234;
}
else
{
lean_object* x_238; uint8_t x_239; 
lean_inc(x_2);
x_238 = l_Lean_MessageData_hasSyntheticSorry(x_2);
x_239 = lean_unbox(x_238);
lean_dec(x_238);
if (x_239 == 0)
{
lean_object* x_240; 
x_240 = lean_box(0);
x_12 = x_240;
goto block_234;
}
else
{
lean_object* x_241; lean_object* x_242; 
lean_dec(x_9);
lean_dec(x_2);
x_241 = lean_box(0);
x_242 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_242, 0, x_241);
lean_ctor_set(x_242, 1, x_11);
return x_242;
}
}
block_234:
{
uint8_t x_13; lean_object* x_228; uint8_t x_229; uint8_t x_230; 
lean_dec(x_12);
x_228 = lean_ctor_get(x_9, 2);
lean_inc(x_228);
x_229 = 1;
x_230 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_229);
if (x_230 == 0)
{
lean_dec(x_228);
x_13 = x_3;
goto block_227;
}
else
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_232 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_228, x_231);
lean_dec(x_228);
if (x_232 == 0)
{
x_13 = x_3;
goto block_227;
}
else
{
uint8_t x_233; 
x_233 = 2;
x_13 = x_233;
goto block_227;
}
}
block_227:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_14 = lean_st_ref_get(x_5, x_11);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_9, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_9, 5);
lean_inc(x_18);
x_19 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
x_20 = l_Lean_replaceRef(x_1, x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = l_Lean_Syntax_getPos_x3f(x_20, x_21);
x_23 = l_Lean_Syntax_getTailPos_x3f(x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_st_ref_get(x_5, x_15);
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_5, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_5, x_30);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_unsigned_to_nat(0u);
x_34 = l_Lean_FileMap_toPosition(x_17, x_33);
lean_inc(x_34);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_st_ref_get(x_5, x_32);
if (x_19 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_box(0);
x_39 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_38, x_9, x_10, x_37);
lean_dec(x_9);
return x_39;
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_36, 1);
x_42 = lean_ctor_get(x_36, 0);
lean_dec(x_42);
x_43 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_44 = l_Lean_MessageData_hasTag(x_43, x_29);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_45 = lean_box(0);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_free_object(x_36);
x_46 = lean_box(0);
x_47 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_46, x_9, x_10, x_41);
lean_dec(x_9);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_36, 1);
lean_inc(x_48);
lean_dec(x_36);
x_49 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_50 = l_Lean_MessageData_hasTag(x_49, x_29);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_51 = lean_box(0);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_48);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; 
x_53 = lean_box(0);
x_54 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_53, x_9, x_10, x_48);
lean_dec(x_9);
return x_54;
}
}
}
}
else
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_23);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_56 = lean_ctor_get(x_23, 0);
x_57 = lean_st_ref_get(x_5, x_15);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_st_ref_get(x_5, x_58);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_60);
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = lean_st_ref_get(x_5, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_66 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_67 = l_Lean_FileMap_toPosition(x_17, x_66);
x_68 = l_Lean_FileMap_toPosition(x_17, x_56);
lean_dec(x_56);
lean_ctor_set(x_23, 0, x_68);
x_69 = lean_st_ref_get(x_5, x_65);
if (x_19 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
lean_dec(x_69);
x_71 = lean_box(0);
x_72 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_71, x_9, x_10, x_70);
lean_dec(x_9);
return x_72;
}
else
{
uint8_t x_73; 
x_73 = !lean_is_exclusive(x_69);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_74 = lean_ctor_get(x_69, 1);
x_75 = lean_ctor_get(x_69, 0);
lean_dec(x_75);
x_76 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_77 = l_Lean_MessageData_hasTag(x_76, x_62);
if (x_77 == 0)
{
lean_object* x_78; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_78 = lean_box(0);
lean_ctor_set(x_69, 0, x_78);
return x_69;
}
else
{
lean_object* x_79; lean_object* x_80; 
lean_free_object(x_69);
x_79 = lean_box(0);
x_80 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_79, x_9, x_10, x_74);
lean_dec(x_9);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_69, 1);
lean_inc(x_81);
lean_dec(x_69);
x_82 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_83 = l_Lean_MessageData_hasTag(x_82, x_62);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_81);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
x_86 = lean_box(0);
x_87 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_86, x_9, x_10, x_81);
lean_dec(x_9);
return x_87;
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_88 = lean_ctor_get(x_23, 0);
lean_inc(x_88);
lean_dec(x_23);
x_89 = lean_st_ref_get(x_5, x_15);
x_90 = lean_ctor_get(x_89, 1);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_st_ref_get(x_5, x_90);
x_92 = lean_ctor_get(x_91, 1);
lean_inc(x_92);
lean_dec(x_91);
x_93 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_92);
x_94 = lean_ctor_get(x_93, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_93, 1);
lean_inc(x_95);
lean_dec(x_93);
x_96 = lean_st_ref_get(x_5, x_95);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_99 = l_Lean_FileMap_toPosition(x_17, x_98);
x_100 = l_Lean_FileMap_toPosition(x_17, x_88);
lean_dec(x_88);
x_101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = lean_st_ref_get(x_5, x_97);
if (x_19 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_102, 1);
lean_inc(x_103);
lean_dec(x_102);
x_104 = lean_box(0);
x_105 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_104, x_9, x_10, x_103);
lean_dec(x_9);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_106 = lean_ctor_get(x_102, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_107 = x_102;
} else {
 lean_dec_ref(x_102);
 x_107 = lean_box(0);
}
x_108 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_94);
x_109 = l_Lean_MessageData_hasTag(x_108, x_94);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
lean_dec(x_101);
lean_dec(x_99);
lean_dec(x_94);
lean_dec(x_16);
lean_dec(x_9);
x_110 = lean_box(0);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_107);
x_112 = lean_box(0);
x_113 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_112, x_9, x_10, x_106);
lean_dec(x_9);
return x_113;
}
}
}
}
}
else
{
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_114; 
x_114 = !lean_is_exclusive(x_22);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_115 = lean_ctor_get(x_22, 0);
x_116 = lean_st_ref_get(x_5, x_15);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
x_118 = lean_st_ref_get(x_5, x_117);
x_119 = lean_ctor_get(x_118, 1);
lean_inc(x_119);
lean_dec(x_118);
x_120 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
lean_dec(x_120);
x_123 = lean_st_ref_get(x_5, x_122);
x_124 = lean_ctor_get(x_123, 1);
lean_inc(x_124);
lean_dec(x_123);
x_125 = l_Lean_FileMap_toPosition(x_17, x_115);
lean_dec(x_115);
lean_inc(x_125);
lean_ctor_set(x_22, 0, x_125);
x_126 = lean_st_ref_get(x_5, x_124);
if (x_19 == 0)
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_ctor_get(x_126, 1);
lean_inc(x_127);
lean_dec(x_126);
x_128 = lean_box(0);
x_129 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_128, x_9, x_10, x_127);
lean_dec(x_9);
return x_129;
}
else
{
uint8_t x_130; 
x_130 = !lean_is_exclusive(x_126);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_131 = lean_ctor_get(x_126, 1);
x_132 = lean_ctor_get(x_126, 0);
lean_dec(x_132);
x_133 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_134 = l_Lean_MessageData_hasTag(x_133, x_121);
if (x_134 == 0)
{
lean_object* x_135; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_135 = lean_box(0);
lean_ctor_set(x_126, 0, x_135);
return x_126;
}
else
{
lean_object* x_136; lean_object* x_137; 
lean_free_object(x_126);
x_136 = lean_box(0);
x_137 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_136, x_9, x_10, x_131);
lean_dec(x_9);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_138 = lean_ctor_get(x_126, 1);
lean_inc(x_138);
lean_dec(x_126);
x_139 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_140 = l_Lean_MessageData_hasTag(x_139, x_121);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_138);
return x_142;
}
else
{
lean_object* x_143; lean_object* x_144; 
x_143 = lean_box(0);
x_144 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_143, x_9, x_10, x_138);
lean_dec(x_9);
return x_144;
}
}
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_145 = lean_ctor_get(x_22, 0);
lean_inc(x_145);
lean_dec(x_22);
x_146 = lean_st_ref_get(x_5, x_15);
x_147 = lean_ctor_get(x_146, 1);
lean_inc(x_147);
lean_dec(x_146);
x_148 = lean_st_ref_get(x_5, x_147);
x_149 = lean_ctor_get(x_148, 1);
lean_inc(x_149);
lean_dec(x_148);
x_150 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_149);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_153 = lean_st_ref_get(x_5, x_152);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_FileMap_toPosition(x_17, x_145);
lean_dec(x_145);
lean_inc(x_155);
x_156 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_156, 0, x_155);
x_157 = lean_st_ref_get(x_5, x_154);
if (x_19 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_157, 1);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_box(0);
x_160 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_159, x_9, x_10, x_158);
lean_dec(x_9);
return x_160;
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_161 = lean_ctor_get(x_157, 1);
lean_inc(x_161);
if (lean_is_exclusive(x_157)) {
 lean_ctor_release(x_157, 0);
 lean_ctor_release(x_157, 1);
 x_162 = x_157;
} else {
 lean_dec_ref(x_157);
 x_162 = lean_box(0);
}
x_163 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_151);
x_164 = l_Lean_MessageData_hasTag(x_163, x_151);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_156);
lean_dec(x_155);
lean_dec(x_151);
lean_dec(x_16);
lean_dec(x_9);
x_165 = lean_box(0);
if (lean_is_scalar(x_162)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_162;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_161);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; 
lean_dec(x_162);
x_167 = lean_box(0);
x_168 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_167, x_9, x_10, x_161);
lean_dec(x_9);
return x_168;
}
}
}
}
else
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_22, 0);
lean_inc(x_169);
lean_dec(x_22);
x_170 = !lean_is_exclusive(x_23);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_171 = lean_ctor_get(x_23, 0);
x_172 = lean_st_ref_get(x_5, x_15);
x_173 = lean_ctor_get(x_172, 1);
lean_inc(x_173);
lean_dec(x_172);
x_174 = lean_st_ref_get(x_5, x_173);
x_175 = lean_ctor_get(x_174, 1);
lean_inc(x_175);
lean_dec(x_174);
x_176 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_175);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_st_ref_get(x_5, x_178);
x_180 = lean_ctor_get(x_179, 1);
lean_inc(x_180);
lean_dec(x_179);
lean_inc(x_17);
x_181 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_182 = l_Lean_FileMap_toPosition(x_17, x_171);
lean_dec(x_171);
lean_ctor_set(x_23, 0, x_182);
x_183 = lean_st_ref_get(x_5, x_180);
if (x_19 == 0)
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_183, 1);
lean_inc(x_184);
lean_dec(x_183);
x_185 = lean_box(0);
x_186 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_185, x_9, x_10, x_184);
lean_dec(x_9);
return x_186;
}
else
{
uint8_t x_187; 
x_187 = !lean_is_exclusive(x_183);
if (x_187 == 0)
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; uint8_t x_191; 
x_188 = lean_ctor_get(x_183, 1);
x_189 = lean_ctor_get(x_183, 0);
lean_dec(x_189);
x_190 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_191 = l_Lean_MessageData_hasTag(x_190, x_177);
if (x_191 == 0)
{
lean_object* x_192; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_192 = lean_box(0);
lean_ctor_set(x_183, 0, x_192);
return x_183;
}
else
{
lean_object* x_193; lean_object* x_194; 
lean_free_object(x_183);
x_193 = lean_box(0);
x_194 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_193, x_9, x_10, x_188);
lean_dec(x_9);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; uint8_t x_197; 
x_195 = lean_ctor_get(x_183, 1);
lean_inc(x_195);
lean_dec(x_183);
x_196 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_197 = l_Lean_MessageData_hasTag(x_196, x_177);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_198 = lean_box(0);
x_199 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_199, 0, x_198);
lean_ctor_set(x_199, 1, x_195);
return x_199;
}
else
{
lean_object* x_200; lean_object* x_201; 
x_200 = lean_box(0);
x_201 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_200, x_9, x_10, x_195);
lean_dec(x_9);
return x_201;
}
}
}
}
else
{
lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_202 = lean_ctor_get(x_23, 0);
lean_inc(x_202);
lean_dec(x_23);
x_203 = lean_st_ref_get(x_5, x_15);
x_204 = lean_ctor_get(x_203, 1);
lean_inc(x_204);
lean_dec(x_203);
x_205 = lean_st_ref_get(x_5, x_204);
x_206 = lean_ctor_get(x_205, 1);
lean_inc(x_206);
lean_dec(x_205);
x_207 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_206);
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_ctor_get(x_207, 1);
lean_inc(x_209);
lean_dec(x_207);
x_210 = lean_st_ref_get(x_5, x_209);
x_211 = lean_ctor_get(x_210, 1);
lean_inc(x_211);
lean_dec(x_210);
lean_inc(x_17);
x_212 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_213 = l_Lean_FileMap_toPosition(x_17, x_202);
lean_dec(x_202);
x_214 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_214, 0, x_213);
x_215 = lean_st_ref_get(x_5, x_211);
if (x_19 == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; 
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = lean_box(0);
x_218 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_217, x_9, x_10, x_216);
lean_dec(x_9);
return x_218;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; uint8_t x_222; 
x_219 = lean_ctor_get(x_215, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_215)) {
 lean_ctor_release(x_215, 0);
 lean_ctor_release(x_215, 1);
 x_220 = x_215;
} else {
 lean_dec_ref(x_215);
 x_220 = lean_box(0);
}
x_221 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_208);
x_222 = l_Lean_MessageData_hasTag(x_221, x_208);
if (x_222 == 0)
{
lean_object* x_223; lean_object* x_224; 
lean_dec(x_214);
lean_dec(x_212);
lean_dec(x_208);
lean_dec(x_16);
lean_dec(x_9);
x_223 = lean_box(0);
if (lean_is_scalar(x_220)) {
 x_224 = lean_alloc_ctor(0, 2, 0);
} else {
 x_224 = x_220;
}
lean_ctor_set(x_224, 0, x_223);
lean_ctor_set(x_224, 1, x_219);
return x_224;
}
else
{
lean_object* x_225; lean_object* x_226; 
lean_dec(x_220);
x_225 = lean_box(0);
x_226 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_225, x_9, x_10, x_219);
lean_dec(x_9);
return x_226;
}
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___boxed), 11, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__6___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_st_ref_get(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_9, 5);
lean_inc(x_14);
x_15 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__6(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_log___at_Aesop_traceScript___spec__6___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_235; uint8_t x_236; 
x_235 = 2;
x_236 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_235);
if (x_236 == 0)
{
lean_object* x_237; 
x_237 = lean_box(0);
x_12 = x_237;
goto block_234;
}
else
{
lean_object* x_238; uint8_t x_239; 
lean_inc(x_2);
x_238 = l_Lean_MessageData_hasSyntheticSorry(x_2);
x_239 = lean_unbox(x_238);
lean_dec(x_238);
if (x_239 == 0)
{
lean_object* x_240; 
x_240 = lean_box(0);
x_12 = x_240;
goto block_234;
}
else
{
lean_object* x_241; lean_object* x_242; 
lean_dec(x_9);
lean_dec(x_2);
x_241 = lean_box(0);
x_242 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_242, 0, x_241);
lean_ctor_set(x_242, 1, x_11);
return x_242;
}
}
block_234:
{
uint8_t x_13; lean_object* x_228; uint8_t x_229; uint8_t x_230; 
lean_dec(x_12);
x_228 = lean_ctor_get(x_9, 2);
lean_inc(x_228);
x_229 = 1;
x_230 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_229);
if (x_230 == 0)
{
lean_dec(x_228);
x_13 = x_3;
goto block_227;
}
else
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_232 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_228, x_231);
lean_dec(x_228);
if (x_232 == 0)
{
x_13 = x_3;
goto block_227;
}
else
{
uint8_t x_233; 
x_233 = 2;
x_13 = x_233;
goto block_227;
}
}
block_227:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_14 = lean_st_ref_get(x_5, x_11);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_9, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_9, 5);
lean_inc(x_18);
x_19 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
x_20 = l_Lean_replaceRef(x_1, x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = l_Lean_Syntax_getPos_x3f(x_20, x_21);
x_23 = l_Lean_Syntax_getTailPos_x3f(x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_st_ref_get(x_5, x_15);
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_5, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_5, x_30);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_unsigned_to_nat(0u);
x_34 = l_Lean_FileMap_toPosition(x_17, x_33);
lean_inc(x_34);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_st_ref_get(x_5, x_32);
if (x_19 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_box(0);
x_39 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_38, x_9, x_10, x_37);
lean_dec(x_9);
return x_39;
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_36, 1);
x_42 = lean_ctor_get(x_36, 0);
lean_dec(x_42);
x_43 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_44 = l_Lean_MessageData_hasTag(x_43, x_29);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_45 = lean_box(0);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_free_object(x_36);
x_46 = lean_box(0);
x_47 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_46, x_9, x_10, x_41);
lean_dec(x_9);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_36, 1);
lean_inc(x_48);
lean_dec(x_36);
x_49 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_50 = l_Lean_MessageData_hasTag(x_49, x_29);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_51 = lean_box(0);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_48);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; 
x_53 = lean_box(0);
x_54 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_53, x_9, x_10, x_48);
lean_dec(x_9);
return x_54;
}
}
}
}
else
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_23);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_56 = lean_ctor_get(x_23, 0);
x_57 = lean_st_ref_get(x_5, x_15);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_st_ref_get(x_5, x_58);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_60);
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = lean_st_ref_get(x_5, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_66 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_67 = l_Lean_FileMap_toPosition(x_17, x_66);
x_68 = l_Lean_FileMap_toPosition(x_17, x_56);
lean_dec(x_56);
lean_ctor_set(x_23, 0, x_68);
x_69 = lean_st_ref_get(x_5, x_65);
if (x_19 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
lean_dec(x_69);
x_71 = lean_box(0);
x_72 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_71, x_9, x_10, x_70);
lean_dec(x_9);
return x_72;
}
else
{
uint8_t x_73; 
x_73 = !lean_is_exclusive(x_69);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_74 = lean_ctor_get(x_69, 1);
x_75 = lean_ctor_get(x_69, 0);
lean_dec(x_75);
x_76 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_77 = l_Lean_MessageData_hasTag(x_76, x_62);
if (x_77 == 0)
{
lean_object* x_78; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_78 = lean_box(0);
lean_ctor_set(x_69, 0, x_78);
return x_69;
}
else
{
lean_object* x_79; lean_object* x_80; 
lean_free_object(x_69);
x_79 = lean_box(0);
x_80 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_79, x_9, x_10, x_74);
lean_dec(x_9);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_69, 1);
lean_inc(x_81);
lean_dec(x_69);
x_82 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_83 = l_Lean_MessageData_hasTag(x_82, x_62);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_81);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
x_86 = lean_box(0);
x_87 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_86, x_9, x_10, x_81);
lean_dec(x_9);
return x_87;
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_88 = lean_ctor_get(x_23, 0);
lean_inc(x_88);
lean_dec(x_23);
x_89 = lean_st_ref_get(x_5, x_15);
x_90 = lean_ctor_get(x_89, 1);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_st_ref_get(x_5, x_90);
x_92 = lean_ctor_get(x_91, 1);
lean_inc(x_92);
lean_dec(x_91);
x_93 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_92);
x_94 = lean_ctor_get(x_93, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_93, 1);
lean_inc(x_95);
lean_dec(x_93);
x_96 = lean_st_ref_get(x_5, x_95);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_99 = l_Lean_FileMap_toPosition(x_17, x_98);
x_100 = l_Lean_FileMap_toPosition(x_17, x_88);
lean_dec(x_88);
x_101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = lean_st_ref_get(x_5, x_97);
if (x_19 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_102, 1);
lean_inc(x_103);
lean_dec(x_102);
x_104 = lean_box(0);
x_105 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_104, x_9, x_10, x_103);
lean_dec(x_9);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_106 = lean_ctor_get(x_102, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_107 = x_102;
} else {
 lean_dec_ref(x_102);
 x_107 = lean_box(0);
}
x_108 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_94);
x_109 = l_Lean_MessageData_hasTag(x_108, x_94);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
lean_dec(x_101);
lean_dec(x_99);
lean_dec(x_94);
lean_dec(x_16);
lean_dec(x_9);
x_110 = lean_box(0);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_107);
x_112 = lean_box(0);
x_113 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_112, x_9, x_10, x_106);
lean_dec(x_9);
return x_113;
}
}
}
}
}
else
{
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_114; 
x_114 = !lean_is_exclusive(x_22);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_115 = lean_ctor_get(x_22, 0);
x_116 = lean_st_ref_get(x_5, x_15);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
x_118 = lean_st_ref_get(x_5, x_117);
x_119 = lean_ctor_get(x_118, 1);
lean_inc(x_119);
lean_dec(x_118);
x_120 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
lean_dec(x_120);
x_123 = lean_st_ref_get(x_5, x_122);
x_124 = lean_ctor_get(x_123, 1);
lean_inc(x_124);
lean_dec(x_123);
x_125 = l_Lean_FileMap_toPosition(x_17, x_115);
lean_dec(x_115);
lean_inc(x_125);
lean_ctor_set(x_22, 0, x_125);
x_126 = lean_st_ref_get(x_5, x_124);
if (x_19 == 0)
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_ctor_get(x_126, 1);
lean_inc(x_127);
lean_dec(x_126);
x_128 = lean_box(0);
x_129 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_128, x_9, x_10, x_127);
lean_dec(x_9);
return x_129;
}
else
{
uint8_t x_130; 
x_130 = !lean_is_exclusive(x_126);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_131 = lean_ctor_get(x_126, 1);
x_132 = lean_ctor_get(x_126, 0);
lean_dec(x_132);
x_133 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_134 = l_Lean_MessageData_hasTag(x_133, x_121);
if (x_134 == 0)
{
lean_object* x_135; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_135 = lean_box(0);
lean_ctor_set(x_126, 0, x_135);
return x_126;
}
else
{
lean_object* x_136; lean_object* x_137; 
lean_free_object(x_126);
x_136 = lean_box(0);
x_137 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_136, x_9, x_10, x_131);
lean_dec(x_9);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_138 = lean_ctor_get(x_126, 1);
lean_inc(x_138);
lean_dec(x_126);
x_139 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_140 = l_Lean_MessageData_hasTag(x_139, x_121);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_138);
return x_142;
}
else
{
lean_object* x_143; lean_object* x_144; 
x_143 = lean_box(0);
x_144 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_143, x_9, x_10, x_138);
lean_dec(x_9);
return x_144;
}
}
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_145 = lean_ctor_get(x_22, 0);
lean_inc(x_145);
lean_dec(x_22);
x_146 = lean_st_ref_get(x_5, x_15);
x_147 = lean_ctor_get(x_146, 1);
lean_inc(x_147);
lean_dec(x_146);
x_148 = lean_st_ref_get(x_5, x_147);
x_149 = lean_ctor_get(x_148, 1);
lean_inc(x_149);
lean_dec(x_148);
x_150 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_149);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_153 = lean_st_ref_get(x_5, x_152);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_FileMap_toPosition(x_17, x_145);
lean_dec(x_145);
lean_inc(x_155);
x_156 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_156, 0, x_155);
x_157 = lean_st_ref_get(x_5, x_154);
if (x_19 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_157, 1);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_box(0);
x_160 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_159, x_9, x_10, x_158);
lean_dec(x_9);
return x_160;
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_161 = lean_ctor_get(x_157, 1);
lean_inc(x_161);
if (lean_is_exclusive(x_157)) {
 lean_ctor_release(x_157, 0);
 lean_ctor_release(x_157, 1);
 x_162 = x_157;
} else {
 lean_dec_ref(x_157);
 x_162 = lean_box(0);
}
x_163 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_151);
x_164 = l_Lean_MessageData_hasTag(x_163, x_151);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_156);
lean_dec(x_155);
lean_dec(x_151);
lean_dec(x_16);
lean_dec(x_9);
x_165 = lean_box(0);
if (lean_is_scalar(x_162)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_162;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_161);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; 
lean_dec(x_162);
x_167 = lean_box(0);
x_168 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_167, x_9, x_10, x_161);
lean_dec(x_9);
return x_168;
}
}
}
}
else
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_22, 0);
lean_inc(x_169);
lean_dec(x_22);
x_170 = !lean_is_exclusive(x_23);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_171 = lean_ctor_get(x_23, 0);
x_172 = lean_st_ref_get(x_5, x_15);
x_173 = lean_ctor_get(x_172, 1);
lean_inc(x_173);
lean_dec(x_172);
x_174 = lean_st_ref_get(x_5, x_173);
x_175 = lean_ctor_get(x_174, 1);
lean_inc(x_175);
lean_dec(x_174);
x_176 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_175);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_st_ref_get(x_5, x_178);
x_180 = lean_ctor_get(x_179, 1);
lean_inc(x_180);
lean_dec(x_179);
lean_inc(x_17);
x_181 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_182 = l_Lean_FileMap_toPosition(x_17, x_171);
lean_dec(x_171);
lean_ctor_set(x_23, 0, x_182);
x_183 = lean_st_ref_get(x_5, x_180);
if (x_19 == 0)
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_183, 1);
lean_inc(x_184);
lean_dec(x_183);
x_185 = lean_box(0);
x_186 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_185, x_9, x_10, x_184);
lean_dec(x_9);
return x_186;
}
else
{
uint8_t x_187; 
x_187 = !lean_is_exclusive(x_183);
if (x_187 == 0)
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; uint8_t x_191; 
x_188 = lean_ctor_get(x_183, 1);
x_189 = lean_ctor_get(x_183, 0);
lean_dec(x_189);
x_190 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_191 = l_Lean_MessageData_hasTag(x_190, x_177);
if (x_191 == 0)
{
lean_object* x_192; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_192 = lean_box(0);
lean_ctor_set(x_183, 0, x_192);
return x_183;
}
else
{
lean_object* x_193; lean_object* x_194; 
lean_free_object(x_183);
x_193 = lean_box(0);
x_194 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_193, x_9, x_10, x_188);
lean_dec(x_9);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; uint8_t x_197; 
x_195 = lean_ctor_get(x_183, 1);
lean_inc(x_195);
lean_dec(x_183);
x_196 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_197 = l_Lean_MessageData_hasTag(x_196, x_177);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_198 = lean_box(0);
x_199 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_199, 0, x_198);
lean_ctor_set(x_199, 1, x_195);
return x_199;
}
else
{
lean_object* x_200; lean_object* x_201; 
x_200 = lean_box(0);
x_201 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_200, x_9, x_10, x_195);
lean_dec(x_9);
return x_201;
}
}
}
}
else
{
lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_202 = lean_ctor_get(x_23, 0);
lean_inc(x_202);
lean_dec(x_23);
x_203 = lean_st_ref_get(x_5, x_15);
x_204 = lean_ctor_get(x_203, 1);
lean_inc(x_204);
lean_dec(x_203);
x_205 = lean_st_ref_get(x_5, x_204);
x_206 = lean_ctor_get(x_205, 1);
lean_inc(x_206);
lean_dec(x_205);
x_207 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_206);
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_ctor_get(x_207, 1);
lean_inc(x_209);
lean_dec(x_207);
x_210 = lean_st_ref_get(x_5, x_209);
x_211 = lean_ctor_get(x_210, 1);
lean_inc(x_211);
lean_dec(x_210);
lean_inc(x_17);
x_212 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_213 = l_Lean_FileMap_toPosition(x_17, x_202);
lean_dec(x_202);
x_214 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_214, 0, x_213);
x_215 = lean_st_ref_get(x_5, x_211);
if (x_19 == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; 
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = lean_box(0);
x_218 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_217, x_9, x_10, x_216);
lean_dec(x_9);
return x_218;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; uint8_t x_222; 
x_219 = lean_ctor_get(x_215, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_215)) {
 lean_ctor_release(x_215, 0);
 lean_ctor_release(x_215, 1);
 x_220 = x_215;
} else {
 lean_dec_ref(x_215);
 x_220 = lean_box(0);
}
x_221 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_208);
x_222 = l_Lean_MessageData_hasTag(x_221, x_208);
if (x_222 == 0)
{
lean_object* x_223; lean_object* x_224; 
lean_dec(x_214);
lean_dec(x_212);
lean_dec(x_208);
lean_dec(x_16);
lean_dec(x_9);
x_223 = lean_box(0);
if (lean_is_scalar(x_220)) {
 x_224 = lean_alloc_ctor(0, 2, 0);
} else {
 x_224 = x_220;
}
lean_ctor_set(x_224, 0, x_223);
lean_ctor_set(x_224, 1, x_219);
return x_224;
}
else
{
lean_object* x_225; lean_object* x_226; 
lean_dec(x_220);
x_225 = lean_box(0);
x_226 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_225, x_9, x_10, x_219);
lean_dec(x_9);
return x_226;
}
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg___boxed), 11, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__8___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_st_ref_get(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_9, 5);
lean_inc(x_14);
x_15 = l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__8(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_log___at_Aesop_traceScript___spec__8___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_8, 2);
lean_inc(x_11);
x_12 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_13 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_11, x_12);
lean_dec(x_11);
if (x_13 == 0)
{
uint8_t x_14; lean_object* x_15; 
x_14 = 1;
x_15 = l_Lean_log___at_Aesop_traceScript___spec__6___rarg(x_1, x_2, x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_15;
}
else
{
uint8_t x_16; lean_object* x_17; 
x_16 = 2;
x_17 = l_Lean_log___at_Aesop_traceScript___spec__8___rarg(x_1, x_2, x_16, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_traceScript___spec__5(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg___boxed), 9, 0);
return x_3;
}
}
static lean_object* _init_l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_collectStatsOption;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 2);
x_5 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1;
x_6 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_4, x_5);
x_7 = lean_box(x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___boxed), 3, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg(x_8, x_9, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_unbox(x_12);
lean_dec(x_12);
if (x_13 == 0)
{
uint8_t x_14; 
lean_dec(x_2);
x_14 = !lean_is_exclusive(x_11);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_11, 0);
lean_dec(x_15);
x_16 = lean_box(0);
lean_ctor_set(x_11, 0, x_16);
return x_11;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_dec(x_11);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_20 = lean_ctor_get(x_11, 1);
lean_inc(x_20);
lean_dec(x_11);
x_21 = lean_ctor_get(x_3, 3);
x_22 = lean_st_ref_take(x_21, x_20);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = lean_apply_1(x_2, x_23);
x_26 = lean_st_ref_set(x_21, x_25, x_24);
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
return x_26;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = lean_ctor_get(x_26, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_26);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_2, 6);
lean_dec(x_4);
lean_ctor_set(x_2, 6, x_1);
return x_2;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_5 = lean_ctor_get(x_2, 0);
x_6 = lean_ctor_get(x_2, 1);
x_7 = lean_ctor_get(x_2, 2);
x_8 = lean_ctor_get(x_2, 3);
x_9 = lean_ctor_get(x_2, 4);
x_10 = lean_ctor_get(x_2, 5);
x_11 = lean_ctor_get(x_2, 7);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_2);
x_12 = lean_alloc_ctor(0, 8, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_6);
lean_ctor_set(x_12, 2, x_7);
lean_ctor_set(x_12, 3, x_8);
lean_ctor_set(x_12, 4, x_9);
lean_ctor_set(x_12, 5, x_10);
lean_ctor_set(x_12, 6, x_1);
lean_ctor_set(x_12, 7, x_11);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_alloc_closure((void*)(l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg___lambda__1), 2, 1);
lean_closure_set(x_11, 0, x_2);
x_12 = l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg(x_1, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg___boxed), 10, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(": structuring the script failed. Reporting unstructured script.", 63, 63);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Check_script;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_Lean_MessageData_ofName(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_2 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__3;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(": structuring the script failed", 31, 31);
return x_1;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__4;
x_2 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__6;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = l_Aesop_Check_script;
x_14 = l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg(x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_unbox(x_15);
lean_dec(x_15);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_ctor_get(x_2, 0);
x_18 = lean_ctor_get_uint8(x_17, sizeof(void*)*9 + 6);
if (x_18 == 0)
{
uint8_t x_19; 
lean_dec(x_10);
x_19 = !lean_is_exclusive(x_14);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_14, 0);
lean_dec(x_20);
x_21 = lean_box(0);
lean_ctor_set(x_14, 0, x_21);
return x_14;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_14, 1);
lean_inc(x_22);
lean_dec(x_14);
x_23 = lean_box(0);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_22);
return x_24;
}
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_14, 1);
lean_inc(x_25);
lean_dec(x_14);
x_26 = l_Lean_stringToMessageData(x_3);
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_28 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_26);
x_29 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__2;
x_30 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
x_31 = l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg(x_1, x_30, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_25);
return x_31;
}
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_14, 1);
lean_inc(x_32);
lean_dec(x_14);
x_33 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__7;
x_34 = l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg(x_33, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_32);
lean_dec(x_10);
return x_34;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, uint8_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_st_ref_get(x_7, x_13);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = l_Aesop_checkRenderedScriptIfEnabled(x_1, x_2, x_3, x_4, x_9, x_10, x_11, x_12, x_15);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, uint8_t x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_ctor_get(x_6, 0);
x_18 = lean_ctor_get_uint8(x_17, sizeof(void*)*9 + 6);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
lean_dec(x_5);
lean_dec(x_4);
x_19 = lean_box(0);
x_20 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1(x_1, x_6, x_8, x_19, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
lean_dec(x_15);
lean_dec(x_13);
lean_dec(x_12);
return x_20;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_st_ref_get(x_10, x_16);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
x_23 = l_Aesop_Script_UScript_renderTacticSeq(x_2, x_4, x_5, x_12, x_13, x_14, x_15, x_22);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = lean_ctor_get(x_14, 5);
lean_inc(x_26);
x_27 = lean_box(0);
x_28 = lean_st_ref_get(x_10, x_25);
x_29 = lean_ctor_get(x_28, 1);
lean_inc(x_29);
lean_dec(x_28);
lean_inc(x_15);
lean_inc(x_14);
x_30 = l_Aesop_addTryThisTacticSeqSuggestion(x_26, x_24, x_27, x_12, x_13, x_14, x_15, x_29);
lean_dec(x_26);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
lean_dec(x_30);
x_33 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1(x_1, x_6, x_8, x_31, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_32);
lean_dec(x_15);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_31);
return x_33;
}
else
{
uint8_t x_34; 
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
x_34 = !lean_is_exclusive(x_30);
if (x_34 == 0)
{
return x_30;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_30, 0);
x_36 = lean_ctor_get(x_30, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_30);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
else
{
uint8_t x_38; 
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
x_38 = !lean_is_exclusive(x_23);
if (x_38 == 0)
{
return x_23;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_23, 0);
x_40 = lean_ctor_get(x_23, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_23);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_42 = lean_ctor_get(x_3, 0);
lean_inc(x_42);
lean_dec(x_3);
x_43 = lean_ctor_get(x_42, 0);
lean_inc(x_43);
x_44 = lean_ctor_get(x_42, 1);
lean_inc(x_44);
lean_dec(x_42);
x_45 = l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg(x_1, x_44, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
x_46 = lean_ctor_get(x_6, 0);
x_47 = lean_ctor_get_uint8(x_46, sizeof(void*)*9 + 6);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_45, 1);
lean_inc(x_48);
lean_dec(x_45);
x_49 = lean_box(0);
x_50 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2(x_43, x_4, x_5, x_7, x_49, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_48);
return x_50;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_51 = lean_ctor_get(x_45, 1);
lean_inc(x_51);
lean_dec(x_45);
x_52 = lean_ctor_get(x_14, 5);
lean_inc(x_52);
x_53 = lean_box(0);
x_54 = lean_st_ref_get(x_10, x_51);
x_55 = lean_ctor_get(x_54, 1);
lean_inc(x_55);
lean_dec(x_54);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_43);
x_56 = l_Aesop_addTryThisTacticSeqSuggestion(x_52, x_43, x_53, x_12, x_13, x_14, x_15, x_55);
lean_dec(x_52);
if (lean_obj_tag(x_56) == 0)
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_57 = lean_ctor_get(x_56, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_56, 1);
lean_inc(x_58);
lean_dec(x_56);
x_59 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2(x_43, x_4, x_5, x_7, x_57, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_58);
lean_dec(x_57);
return x_59;
}
else
{
uint8_t x_60; 
lean_dec(x_43);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_5);
lean_dec(x_4);
x_60 = !lean_is_exclusive(x_56);
if (x_60 == 0)
{
return x_56;
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_61 = lean_ctor_get(x_56, 0);
x_62 = lean_ctor_get(x_56, 1);
lean_inc(x_62);
lean_inc(x_61);
lean_dec(x_56);
x_63 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_63, 0, x_61);
lean_ctor_set(x_63, 1, x_62);
return x_63;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___boxed), 16, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_11 = lean_ctor_get(x_8, 5);
x_12 = lean_st_ref_get(x_4, x_10);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_6, x_7, x_8, x_9, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_4, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_st_ref_take(x_9, x_18);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; double x_25; uint8_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_21, 3);
x_25 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_26 = 0;
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_28 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_28, 0, x_1);
lean_ctor_set(x_28, 1, x_27);
lean_ctor_set_float(x_28, sizeof(void*)*2, x_25);
lean_ctor_set_float(x_28, sizeof(void*)*2 + 8, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*2 + 16, x_26);
x_29 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_30 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_15);
lean_ctor_set(x_30, 2, x_29);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_30);
lean_ctor_set(x_19, 0, x_11);
x_31 = l_Lean_PersistentArray_push___rarg(x_24, x_19);
lean_ctor_set(x_21, 3, x_31);
x_32 = lean_st_ref_set(x_9, x_21, x_23);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_32, 0);
lean_dec(x_34);
x_35 = lean_box(0);
lean_ctor_set(x_32, 0, x_35);
return x_32;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
lean_dec(x_32);
x_37 = lean_box(0);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; double x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_39 = lean_ctor_get(x_19, 1);
x_40 = lean_ctor_get(x_21, 0);
x_41 = lean_ctor_get(x_21, 1);
x_42 = lean_ctor_get(x_21, 2);
x_43 = lean_ctor_get(x_21, 3);
x_44 = lean_ctor_get(x_21, 4);
x_45 = lean_ctor_get(x_21, 5);
x_46 = lean_ctor_get(x_21, 6);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_21);
x_47 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_48 = 0;
x_49 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_50 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_50, 0, x_1);
lean_ctor_set(x_50, 1, x_49);
lean_ctor_set_float(x_50, sizeof(void*)*2, x_47);
lean_ctor_set_float(x_50, sizeof(void*)*2 + 8, x_47);
lean_ctor_set_uint8(x_50, sizeof(void*)*2 + 16, x_48);
x_51 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_52 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_15);
lean_ctor_set(x_52, 2, x_51);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_52);
lean_ctor_set(x_19, 0, x_11);
x_53 = l_Lean_PersistentArray_push___rarg(x_43, x_19);
x_54 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_54, 0, x_40);
lean_ctor_set(x_54, 1, x_41);
lean_ctor_set(x_54, 2, x_42);
lean_ctor_set(x_54, 3, x_53);
lean_ctor_set(x_54, 4, x_44);
lean_ctor_set(x_54, 5, x_45);
lean_ctor_set(x_54, 6, x_46);
x_55 = lean_st_ref_set(x_9, x_54, x_39);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_57 = x_55;
} else {
 lean_dec_ref(x_55);
 x_57 = lean_box(0);
}
x_58 = lean_box(0);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(0, 2, 0);
} else {
 x_59 = x_57;
}
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; double x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_60 = lean_ctor_get(x_19, 0);
x_61 = lean_ctor_get(x_19, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_19);
x_62 = lean_ctor_get(x_60, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_60, 1);
lean_inc(x_63);
x_64 = lean_ctor_get(x_60, 2);
lean_inc(x_64);
x_65 = lean_ctor_get(x_60, 3);
lean_inc(x_65);
x_66 = lean_ctor_get(x_60, 4);
lean_inc(x_66);
x_67 = lean_ctor_get(x_60, 5);
lean_inc(x_67);
x_68 = lean_ctor_get(x_60, 6);
lean_inc(x_68);
if (lean_is_exclusive(x_60)) {
 lean_ctor_release(x_60, 0);
 lean_ctor_release(x_60, 1);
 lean_ctor_release(x_60, 2);
 lean_ctor_release(x_60, 3);
 lean_ctor_release(x_60, 4);
 lean_ctor_release(x_60, 5);
 lean_ctor_release(x_60, 6);
 x_69 = x_60;
} else {
 lean_dec_ref(x_60);
 x_69 = lean_box(0);
}
x_70 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_71 = 0;
x_72 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_73 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_73, 0, x_1);
lean_ctor_set(x_73, 1, x_72);
lean_ctor_set_float(x_73, sizeof(void*)*2, x_70);
lean_ctor_set_float(x_73, sizeof(void*)*2 + 8, x_70);
lean_ctor_set_uint8(x_73, sizeof(void*)*2 + 16, x_71);
x_74 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_75 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_75, 0, x_73);
lean_ctor_set(x_75, 1, x_15);
lean_ctor_set(x_75, 2, x_74);
lean_inc(x_11);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_11);
lean_ctor_set(x_76, 1, x_75);
x_77 = l_Lean_PersistentArray_push___rarg(x_65, x_76);
if (lean_is_scalar(x_69)) {
 x_78 = lean_alloc_ctor(0, 7, 0);
} else {
 x_78 = x_69;
}
lean_ctor_set(x_78, 0, x_62);
lean_ctor_set(x_78, 1, x_63);
lean_ctor_set(x_78, 2, x_64);
lean_ctor_set(x_78, 3, x_77);
lean_ctor_set(x_78, 4, x_66);
lean_ctor_set(x_78, 5, x_67);
lean_ctor_set(x_78, 6, x_68);
x_79 = lean_st_ref_set(x_9, x_78, x_61);
x_80 = lean_ctor_get(x_79, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_81 = x_79;
} else {
 lean_dec_ref(x_79);
 x_81 = lean_box(0);
}
x_82 = lean_box(0);
if (lean_is_scalar(x_81)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_81;
}
lean_ctor_set(x_83, 0, x_82);
lean_ctor_set(x_83, 1, x_80);
return x_83;
}
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg___boxed), 10, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_traceScript___spec__15___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_11 = lean_apply_8(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_9(x_2, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
return x_14;
}
else
{
uint8_t x_15; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_15 = !lean_is_exclusive(x_11);
if (x_15 == 0)
{
return x_11;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_11, 0);
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_11);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_traceScript___spec__15(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_traceScript___spec__15___rarg), 10, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 2);
x_5 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1;
x_6 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_4, x_5);
x_7 = lean_box(x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg___boxed), 3, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = lean_ctor_get(x_1, 1);
x_12 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_10, x_11);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg___boxed), 9, 0);
return x_3;
}
}
static lean_object* _init_l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_stats;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg(x_7, x_8, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_unbox(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_11);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_13);
lean_dec(x_10);
x_14 = l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___closed__1;
x_15 = l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_13);
return x_15;
}
else
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_10);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_10, 0);
lean_dec(x_17);
return x_10;
}
else
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_10, 1);
lean_inc(x_18);
lean_dec(x_10);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_11);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___boxed), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
x_14 = l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg(x_1, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_unbox(x_15);
lean_dec(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_dec(x_13);
lean_dec(x_3);
x_17 = lean_ctor_get(x_14, 1);
lean_inc(x_17);
lean_dec(x_14);
x_18 = lean_apply_8(x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_17);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_19 = lean_ctor_get(x_14, 1);
lean_inc(x_19);
lean_dec(x_14);
x_20 = lean_ctor_get(x_13, 0);
lean_inc(x_20);
lean_dec(x_13);
x_21 = l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5;
lean_inc(x_20);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_22 = lean_apply_10(x_20, lean_box(0), x_21, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_19);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_25 = lean_apply_8(x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_24);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_25, 1);
lean_inc(x_27);
lean_dec(x_25);
lean_inc(x_5);
x_28 = lean_apply_10(x_20, lean_box(0), x_21, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_27);
if (lean_obj_tag(x_28) == 0)
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_nat_sub(x_29, x_23);
lean_dec(x_23);
lean_dec(x_29);
x_32 = lean_ctor_get(x_5, 3);
lean_inc(x_32);
lean_dec(x_5);
x_33 = lean_st_ref_take(x_32, x_30);
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
x_35 = lean_ctor_get(x_33, 1);
lean_inc(x_35);
lean_dec(x_33);
lean_inc(x_26);
x_36 = lean_apply_3(x_3, x_34, x_26, x_31);
x_37 = lean_st_ref_set(x_32, x_36, x_35);
lean_dec(x_32);
x_38 = !lean_is_exclusive(x_37);
if (x_38 == 0)
{
lean_object* x_39; 
x_39 = lean_ctor_get(x_37, 0);
lean_dec(x_39);
lean_ctor_set(x_37, 0, x_26);
return x_37;
}
else
{
lean_object* x_40; lean_object* x_41; 
x_40 = lean_ctor_get(x_37, 1);
lean_inc(x_40);
lean_dec(x_37);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_26);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
else
{
uint8_t x_42; 
lean_dec(x_26);
lean_dec(x_23);
lean_dec(x_5);
lean_dec(x_3);
x_42 = !lean_is_exclusive(x_28);
if (x_42 == 0)
{
return x_28;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_28, 0);
x_44 = lean_ctor_get(x_28, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_28);
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
lean_dec(x_23);
lean_dec(x_20);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
x_46 = !lean_is_exclusive(x_25);
if (x_46 == 0)
{
return x_25;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_25, 0);
x_48 = lean_ctor_get(x_25, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_25);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
else
{
uint8_t x_50; 
lean_dec(x_20);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_50 = !lean_is_exclusive(x_22);
if (x_50 == 0)
{
return x_22;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_51 = lean_ctor_get(x_22, 0);
x_52 = lean_ctor_get(x_22, 1);
lean_inc(x_52);
lean_inc(x_51);
lean_dec(x_22);
x_53 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_53, 0, x_51);
lean_ctor_set(x_53, 1, x_52);
return x_53;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_traceScript___spec__16(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg___boxed), 12, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_1, 5);
lean_dec(x_5);
lean_ctor_set(x_1, 5, x_3);
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_6 = lean_ctor_get(x_1, 0);
x_7 = lean_ctor_get(x_1, 1);
x_8 = lean_ctor_get(x_1, 2);
x_9 = lean_ctor_get(x_1, 3);
x_10 = lean_ctor_get(x_1, 4);
x_11 = lean_ctor_get(x_1, 6);
x_12 = lean_ctor_get(x_1, 7);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_1);
x_13 = lean_alloc_ctor(0, 8, 0);
lean_ctor_set(x_13, 0, x_6);
lean_ctor_set(x_13, 1, x_7);
lean_ctor_set(x_13, 2, x_8);
lean_ctor_set(x_13, 3, x_9);
lean_ctor_set(x_13, 4, x_10);
lean_ctor_set(x_13, 5, x_3);
lean_ctor_set(x_13, 6, x_11);
lean_ctor_set(x_13, 7, x_12);
return x_13;
}
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop", 5, 5);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__2(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, uint8_t x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16) {
_start:
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_st_ref_get(x_10, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_19 = l_Aesop_Script_UScript_optimize(x_1, x_2, x_3, x_4, x_12, x_13, x_14, x_15, x_18);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_traceScript___rarg___lambda__2___closed__1;
x_23 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg(x_5, x_1, x_20, x_3, x_4, x_6, x_7, x_22, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_21);
lean_dec(x_1);
return x_23;
}
else
{
uint8_t x_24; 
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
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
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_script;
return x_1;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__3___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Unstructured script:", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_traceScript___rarg___lambda__3___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__3(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_13 = lean_ctor_get(x_4, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_4, 1);
lean_inc(x_14);
lean_dec(x_4);
x_15 = lean_st_ref_get(x_6, x_12);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_17 = l_Aesop_Script_UScript_checkIfEnabled(x_13, x_8, x_9, x_10, x_11, x_16);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_st_ref_get(x_6, x_18);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = lean_ctor_get(x_20, 0);
lean_inc(x_22);
lean_dec(x_20);
x_23 = l_Aesop_getRootMVarId(x_22, x_7, x_8, x_9, x_10, x_11, x_21);
lean_dec(x_22);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = lean_st_ref_get(x_6, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Aesop_getRootMetaState___rarg(x_7, x_8, x_9, x_10, x_11, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = l_Aesop_traceScript___rarg___lambda__3___closed__1;
x_32 = l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg(x_31, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_30);
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
x_34 = lean_unbox(x_33);
lean_dec(x_33);
if (x_34 == 0)
{
lean_object* x_35; lean_object* x_36; uint8_t x_37; lean_object* x_38; 
x_35 = lean_ctor_get(x_32, 1);
lean_inc(x_35);
lean_dec(x_32);
x_36 = lean_box(0);
x_37 = lean_unbox(x_14);
lean_dec(x_14);
x_38 = l_Aesop_traceScript___rarg___lambda__2(x_13, x_37, x_29, x_24, x_1, x_2, x_3, x_36, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_35);
return x_38;
}
else
{
uint8_t x_39; 
x_39 = !lean_is_exclusive(x_32);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; 
x_40 = lean_ctor_get(x_32, 1);
x_41 = lean_ctor_get(x_32, 0);
lean_dec(x_41);
x_42 = lean_st_ref_get(x_6, x_40);
x_43 = !lean_is_exclusive(x_42);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_42, 1);
x_45 = lean_ctor_get(x_42, 0);
lean_dec(x_45);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_24);
lean_inc(x_29);
x_46 = l_Aesop_Script_UScript_renderTacticSeq(x_13, x_29, x_24, x_8, x_9, x_10, x_11, x_44);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; uint8_t x_58; lean_object* x_59; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_46, 1);
lean_inc(x_48);
lean_dec(x_46);
x_49 = l_Aesop_TraceOption_script;
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = l_Lean_MessageData_ofSyntax(x_47);
x_52 = l_Lean_indentD(x_51);
x_53 = l_Aesop_traceScript___rarg___lambda__3___closed__3;
lean_ctor_set_tag(x_42, 7);
lean_ctor_set(x_42, 1, x_52);
lean_ctor_set(x_42, 0, x_53);
x_54 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
lean_ctor_set_tag(x_32, 7);
lean_ctor_set(x_32, 1, x_54);
lean_ctor_set(x_32, 0, x_42);
x_55 = l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg(x_50, x_32, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_48);
x_56 = lean_ctor_get(x_55, 0);
lean_inc(x_56);
x_57 = lean_ctor_get(x_55, 1);
lean_inc(x_57);
lean_dec(x_55);
x_58 = lean_unbox(x_14);
lean_dec(x_14);
x_59 = l_Aesop_traceScript___rarg___lambda__2(x_13, x_58, x_29, x_24, x_1, x_2, x_3, x_56, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_57);
lean_dec(x_56);
return x_59;
}
else
{
uint8_t x_60; 
lean_free_object(x_42);
lean_free_object(x_32);
lean_dec(x_29);
lean_dec(x_24);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_60 = !lean_is_exclusive(x_46);
if (x_60 == 0)
{
return x_46;
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_61 = lean_ctor_get(x_46, 0);
x_62 = lean_ctor_get(x_46, 1);
lean_inc(x_62);
lean_inc(x_61);
lean_dec(x_46);
x_63 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_63, 0, x_61);
lean_ctor_set(x_63, 1, x_62);
return x_63;
}
}
}
else
{
lean_object* x_64; lean_object* x_65; 
x_64 = lean_ctor_get(x_42, 1);
lean_inc(x_64);
lean_dec(x_42);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_24);
lean_inc(x_29);
x_65 = l_Aesop_Script_UScript_renderTacticSeq(x_13, x_29, x_24, x_8, x_9, x_10, x_11, x_64);
if (lean_obj_tag(x_65) == 0)
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; uint8_t x_78; lean_object* x_79; 
x_66 = lean_ctor_get(x_65, 0);
lean_inc(x_66);
x_67 = lean_ctor_get(x_65, 1);
lean_inc(x_67);
lean_dec(x_65);
x_68 = l_Aesop_TraceOption_script;
x_69 = lean_ctor_get(x_68, 0);
lean_inc(x_69);
x_70 = l_Lean_MessageData_ofSyntax(x_66);
x_71 = l_Lean_indentD(x_70);
x_72 = l_Aesop_traceScript___rarg___lambda__3___closed__3;
x_73 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_73, 0, x_72);
lean_ctor_set(x_73, 1, x_71);
x_74 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
lean_ctor_set_tag(x_32, 7);
lean_ctor_set(x_32, 1, x_74);
lean_ctor_set(x_32, 0, x_73);
x_75 = l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg(x_69, x_32, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_67);
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_75, 1);
lean_inc(x_77);
lean_dec(x_75);
x_78 = lean_unbox(x_14);
lean_dec(x_14);
x_79 = l_Aesop_traceScript___rarg___lambda__2(x_13, x_78, x_29, x_24, x_1, x_2, x_3, x_76, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_77);
lean_dec(x_76);
return x_79;
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
lean_free_object(x_32);
lean_dec(x_29);
lean_dec(x_24);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_80 = lean_ctor_get(x_65, 0);
lean_inc(x_80);
x_81 = lean_ctor_get(x_65, 1);
lean_inc(x_81);
if (lean_is_exclusive(x_65)) {
 lean_ctor_release(x_65, 0);
 lean_ctor_release(x_65, 1);
 x_82 = x_65;
} else {
 lean_dec_ref(x_65);
 x_82 = lean_box(0);
}
if (lean_is_scalar(x_82)) {
 x_83 = lean_alloc_ctor(1, 2, 0);
} else {
 x_83 = x_82;
}
lean_ctor_set(x_83, 0, x_80);
lean_ctor_set(x_83, 1, x_81);
return x_83;
}
}
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; 
x_84 = lean_ctor_get(x_32, 1);
lean_inc(x_84);
lean_dec(x_32);
x_85 = lean_st_ref_get(x_6, x_84);
x_86 = lean_ctor_get(x_85, 1);
lean_inc(x_86);
if (lean_is_exclusive(x_85)) {
 lean_ctor_release(x_85, 0);
 lean_ctor_release(x_85, 1);
 x_87 = x_85;
} else {
 lean_dec_ref(x_85);
 x_87 = lean_box(0);
}
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_24);
lean_inc(x_29);
x_88 = l_Aesop_Script_UScript_renderTacticSeq(x_13, x_29, x_24, x_8, x_9, x_10, x_11, x_86);
if (lean_obj_tag(x_88) == 0)
{
lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; uint8_t x_102; lean_object* x_103; 
x_89 = lean_ctor_get(x_88, 0);
lean_inc(x_89);
x_90 = lean_ctor_get(x_88, 1);
lean_inc(x_90);
lean_dec(x_88);
x_91 = l_Aesop_TraceOption_script;
x_92 = lean_ctor_get(x_91, 0);
lean_inc(x_92);
x_93 = l_Lean_MessageData_ofSyntax(x_89);
x_94 = l_Lean_indentD(x_93);
x_95 = l_Aesop_traceScript___rarg___lambda__3___closed__3;
if (lean_is_scalar(x_87)) {
 x_96 = lean_alloc_ctor(7, 2, 0);
} else {
 x_96 = x_87;
 lean_ctor_set_tag(x_96, 7);
}
lean_ctor_set(x_96, 0, x_95);
lean_ctor_set(x_96, 1, x_94);
x_97 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_98 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_98, 0, x_96);
lean_ctor_set(x_98, 1, x_97);
x_99 = l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg(x_92, x_98, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_90);
x_100 = lean_ctor_get(x_99, 0);
lean_inc(x_100);
x_101 = lean_ctor_get(x_99, 1);
lean_inc(x_101);
lean_dec(x_99);
x_102 = lean_unbox(x_14);
lean_dec(x_14);
x_103 = l_Aesop_traceScript___rarg___lambda__2(x_13, x_102, x_29, x_24, x_1, x_2, x_3, x_100, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_101);
lean_dec(x_100);
return x_103;
}
else
{
lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; 
lean_dec(x_87);
lean_dec(x_29);
lean_dec(x_24);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_104 = lean_ctor_get(x_88, 0);
lean_inc(x_104);
x_105 = lean_ctor_get(x_88, 1);
lean_inc(x_105);
if (lean_is_exclusive(x_88)) {
 lean_ctor_release(x_88, 0);
 lean_ctor_release(x_88, 1);
 x_106 = x_88;
} else {
 lean_dec_ref(x_88);
 x_106 = lean_box(0);
}
if (lean_is_scalar(x_106)) {
 x_107 = lean_alloc_ctor(1, 2, 0);
} else {
 x_107 = x_106;
}
lean_ctor_set(x_107, 0, x_104);
lean_ctor_set(x_107, 1, x_105);
return x_107;
}
}
}
}
else
{
uint8_t x_108; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_108 = !lean_is_exclusive(x_23);
if (x_108 == 0)
{
return x_23;
}
else
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; 
x_109 = lean_ctor_get(x_23, 0);
x_110 = lean_ctor_get(x_23, 1);
lean_inc(x_110);
lean_inc(x_109);
lean_dec(x_23);
x_111 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_111, 0, x_109);
lean_ctor_set(x_111, 1, x_110);
return x_111;
}
}
}
else
{
uint8_t x_112; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_112 = !lean_is_exclusive(x_17);
if (x_112 == 0)
{
return x_17;
}
else
{
lean_object* x_113; lean_object* x_114; lean_object* x_115; 
x_113 = lean_ctor_get(x_17, 0);
x_114 = lean_ctor_get(x_17, 1);
lean_inc(x_114);
lean_inc(x_113);
lean_dec(x_17);
x_115 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_115, 0, x_113);
lean_ctor_set(x_115, 1, x_114);
return x_115;
}
}
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" Extract script", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_traceScript___rarg___lambda__4___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = l_Lean_exceptEmoji___rarg(x_1);
x_10 = l_Lean_stringToMessageData(x_9);
lean_dec(x_9);
x_11 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_12 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_10);
x_13 = l_Aesop_traceScript___rarg___lambda__4___closed__2;
x_14 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_8);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_alloc_closure((void*)(l_Aesop_GoalRef_extractScriptCore___boxed), 9, 1);
lean_closure_set(x_9, 0, x_1);
x_10 = l_Aesop_ExtractScriptM_run___rarg(x_9, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__6___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_getRootGoal___boxed), 7, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__6___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_traceScript___rarg___lambda__5), 8, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__6___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_traceScript___rarg___lambda__6___closed__1;
x_2 = l_Aesop_traceScript___rarg___lambda__6___closed__2;
x_3 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_extractScript___spec__1___rarg), 9, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___lambda__6___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_traceScript___rarg___lambda__4___boxed), 8, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__6(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
if (x_3 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_13 = lean_st_ref_get(x_6, x_12);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_ctor_get(x_14, 0);
lean_inc(x_16);
lean_dec(x_14);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
x_17 = l_Aesop_extractSafePrefixScript(x_16, x_7, x_8, x_9, x_10, x_11, x_15);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = l_Aesop_traceScript___rarg___lambda__3(x_1, x_2, x_3, x_18, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_19);
lean_dec(x_7);
return x_20;
}
else
{
uint8_t x_21; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
x_21 = !lean_is_exclusive(x_17);
if (x_21 == 0)
{
return x_17;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_17, 0);
x_23 = lean_ctor_get(x_17, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_17);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; lean_object* x_33; 
x_25 = lean_st_ref_get(x_6, x_12);
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_25, 1);
lean_inc(x_27);
lean_dec(x_25);
x_28 = lean_ctor_get(x_26, 0);
lean_inc(x_28);
lean_dec(x_26);
x_29 = l_Aesop_traceScript___rarg___lambda__3___closed__1;
x_30 = l_Aesop_traceScript___rarg___lambda__6___closed__4;
x_31 = l_Aesop_traceScript___rarg___lambda__6___closed__3;
x_32 = 1;
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
x_33 = l_Aesop_withAesopTraceNode___at_Aesop_extractScript___spec__2___rarg(x_29, x_30, x_31, x_32, x_28, x_7, x_8, x_9, x_10, x_11, x_27);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
x_35 = lean_ctor_get(x_33, 1);
lean_inc(x_35);
lean_dec(x_33);
x_36 = l_Aesop_traceScript___rarg___lambda__3(x_1, x_2, x_3, x_34, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_35);
lean_dec(x_7);
return x_36;
}
else
{
uint8_t x_37; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
x_37 = !lean_is_exclusive(x_33);
if (x_37 == 0)
{
return x_33;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_33, 0);
x_39 = lean_ctor_get(x_33, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_33);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__7(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_ctor_get(x_3, 2);
x_13 = lean_ctor_get_uint8(x_12, sizeof(void*)*2);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_11);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_box(0);
x_17 = l_Aesop_traceScript___rarg___lambda__6(x_1, x_12, x_2, x_16, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_17;
}
}
}
static lean_object* _init_l_Aesop_traceScript___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_traceScript___rarg___lambda__1___boxed), 3, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_box(x_2);
lean_inc(x_1);
x_12 = lean_alloc_closure((void*)(l_Aesop_traceScript___rarg___lambda__7___boxed), 11, 2);
lean_closure_set(x_12, 0, x_1);
lean_closure_set(x_12, 1, x_11);
x_13 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg___boxed), 8, 0);
x_14 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_traceScript___spec__15___rarg), 10, 2);
lean_closure_set(x_14, 0, x_13);
lean_closure_set(x_14, 1, x_12);
x_15 = l_Aesop_traceScript___rarg___closed__1;
x_16 = l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg(x_1, lean_box(0), x_15, x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_traceScript___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_ReaderT_read___at_Aesop_traceScript___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_traceScript___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ReaderT_read___at_Aesop_traceScript___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Check_isEnabled___at_Aesop_traceScript___spec__4(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; lean_object* x_11; 
x_10 = lean_unbox(x_5);
lean_dec(x_5);
x_11 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_1, x_2, x_3, x_4, x_10, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__7___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_logAt___at_Aesop_traceScript___spec__7(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_log___at_Aesop_traceScript___spec__6___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_logAt___at_Aesop_traceScript___spec__9___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_traceScript___spec__9___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_logAt___at_Aesop_traceScript___spec__9(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_traceScript___spec__8___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_log___at_Aesop_traceScript___spec__8___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_logWarning___at_Aesop_traceScript___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_traceScript___spec__10___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_traceScript___spec__10___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_throwError___at_Aesop_traceScript___spec__10(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_modifyCurrentStats___at_Aesop_traceScript___spec__12___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_recordScriptGenerated___at_Aesop_traceScript___spec__11___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; lean_object* x_15; 
x_14 = lean_unbox(x_4);
lean_dec(x_4);
x_15 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__2(x_1, x_2, x_3, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16) {
_start:
{
uint8_t x_17; lean_object* x_18; 
x_17 = lean_unbox(x_7);
lean_dec(x_7);
x_18 = l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_17, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_18;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_addTrace___at_Aesop_traceScript___spec__14___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_traceScript___spec__14___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_addTrace___at_Aesop_traceScript___spec__14(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_traceScript___spec__15___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_ReaderT_bind___at_Aesop_traceScript___spec__15(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__18(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_TraceOption_isEnabled___at_Aesop_traceScript___spec__19(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_profiling___at_Aesop_traceScript___spec__16___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_traceScript___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16) {
_start:
{
uint8_t x_17; uint8_t x_18; lean_object* x_19; 
x_17 = lean_unbox(x_2);
lean_dec(x_2);
x_18 = lean_unbox(x_7);
lean_dec(x_7);
x_19 = l_Aesop_traceScript___rarg___lambda__2(x_1, x_17, x_3, x_4, x_5, x_6, x_18, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
return x_19;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
x_13 = lean_unbox(x_3);
lean_dec(x_3);
x_14 = l_Aesop_traceScript___rarg___lambda__3(x_1, x_2, x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_traceScript___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
x_13 = lean_unbox(x_3);
lean_dec(x_3);
x_14 = l_Aesop_traceScript___rarg___lambda__6(x_1, x_2, x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___lambda__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_2);
lean_dec(x_2);
x_13 = l_Aesop_traceScript___rarg___lambda__7(x_1, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceScript___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = lean_unbox(x_2);
lean_dec(x_2);
x_12 = l_Aesop_traceScript___rarg(x_1, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
static lean_object* _init_l_Aesop_traceTree___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_TraceOption_tree;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceTree___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_st_ref_get(x_1, x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
x_12 = l_Aesop_getRootGoal(x_11, x_2, x_3, x_4, x_5, x_6, x_10);
lean_dec(x_11);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_st_ref_get(x_13, x_14);
lean_dec(x_13);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_st_ref_get(x_1, x_17);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_Aesop_traceTree___rarg___closed__1;
x_21 = l_Aesop_Goal_traceTree(x_16, x_20, x_3, x_4, x_5, x_6, x_19);
return x_21;
}
else
{
uint8_t x_22; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
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
LEAN_EXPORT lean_object* l_Aesop_traceTree(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_traceTree___rarg___boxed), 7, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceTree___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_traceTree___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_traceTree___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_traceTree(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_finishIfProven___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_11 = l_Aesop_finalizeProof___rarg(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = 1;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_14 = l_Aesop_traceScript___rarg(x_1, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_12);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = l_Aesop_traceTree___rarg(x_4, x_5, x_6, x_7, x_8, x_9, x_15);
lean_dec(x_5);
lean_dec(x_4);
if (lean_obj_tag(x_16) == 0)
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_16, 0);
lean_dec(x_18);
x_19 = lean_box(x_13);
lean_ctor_set(x_16, 0, x_19);
return x_16;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_16, 1);
lean_inc(x_20);
lean_dec(x_16);
x_21 = lean_box(x_13);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
}
else
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_16);
if (x_23 == 0)
{
return x_16;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_16, 0);
x_25 = lean_ctor_get(x_16, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_16);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
else
{
uint8_t x_27; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
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
else
{
uint8_t x_31; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_31 = !lean_is_exclusive(x_11);
if (x_31 == 0)
{
return x_11;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_11, 0);
x_33 = lean_ctor_get(x_11, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_11);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_finishIfProven___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Aesop_getRootMVarCluster___rarg(x_4, x_5, x_6, x_7, x_8, x_11);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_st_ref_get(x_13, x_14);
lean_dec(x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; uint8_t x_21; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Aesop_treeImpl___elambda__1(x_17);
lean_dec(x_17);
x_20 = lean_ctor_get_uint8(x_19, sizeof(void*)*2 + 1);
lean_dec(x_19);
x_21 = l_Aesop_NodeState_isProven(x_20);
if (x_21 == 0)
{
uint8_t x_22; lean_object* x_23; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_22 = 0;
x_23 = lean_box(x_22);
lean_ctor_set(x_15, 0, x_23);
return x_15;
}
else
{
lean_object* x_24; lean_object* x_25; 
lean_free_object(x_15);
x_24 = lean_box(0);
x_25 = l_Aesop_finishIfProven___rarg___lambda__1(x_1, x_24, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_18);
return x_25;
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; uint8_t x_30; 
x_26 = lean_ctor_get(x_15, 0);
x_27 = lean_ctor_get(x_15, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_15);
x_28 = l_Aesop_treeImpl___elambda__1(x_26);
lean_dec(x_26);
x_29 = lean_ctor_get_uint8(x_28, sizeof(void*)*2 + 1);
lean_dec(x_28);
x_30 = l_Aesop_NodeState_isProven(x_29);
if (x_30 == 0)
{
uint8_t x_31; lean_object* x_32; lean_object* x_33; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_31 = 0;
x_32 = lean_box(x_31);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_27);
return x_33;
}
else
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_box(0);
x_35 = l_Aesop_finishIfProven___rarg___lambda__1(x_1, x_34, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_27);
return x_35;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_finishIfProven(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_finishIfProven___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_finishIfProven___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_finishIfProven___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_eq(x_3, x_4);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_5);
x_14 = lean_array_uget(x_2, x_3);
x_15 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_15, 0, x_14);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_16 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(x_1, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_3, x_19);
x_3 = x_20;
x_5 = x_17;
x_12 = x_18;
goto _start;
}
else
{
uint8_t x_22; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_22 = !lean_is_exclusive(x_16);
if (x_22 == 0)
{
return x_16;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_16, 0);
x_24 = lean_ctor_get(x_16, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_16);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
else
{
lean_object* x_26; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_5);
lean_ctor_set(x_26, 1, x_12);
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_eq(x_3, x_4);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_5);
x_14 = lean_array_uget(x_2, x_3);
x_15 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_15, 0, x_14);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_16 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(x_1, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_3, x_19);
x_3 = x_20;
x_5 = x_17;
x_12 = x_18;
goto _start;
}
else
{
uint8_t x_22; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_22 = !lean_is_exclusive(x_16);
if (x_22 == 0)
{
return x_16;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_16, 0);
x_24 = lean_ctor_get(x_16, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_16);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
else
{
lean_object* x_26; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_5);
lean_ctor_set(x_26, 1, x_12);
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_eq(x_3, x_4);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_5);
x_14 = lean_array_uget(x_2, x_3);
x_15 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_15, 0, x_14);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_16 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(x_1, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_3, x_19);
x_3 = x_20;
x_5 = x_17;
x_12 = x_18;
goto _start;
}
else
{
uint8_t x_22; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_22 = !lean_is_exclusive(x_16);
if (x_22 == 0)
{
return x_16;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_16, 0);
x_24 = lean_ctor_get(x_16, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_16);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
else
{
lean_object* x_26; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_5);
lean_ctor_set(x_26, 1, x_12);
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_9 = 1;
x_10 = lean_box(x_9);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_8);
return x_11;
}
}
static lean_object* _init_l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___lambda__1___boxed), 8, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 0:
{
lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_10 = lean_ctor_get(x_2, 0);
x_63 = lean_st_ref_get(x_10, x_9);
x_64 = lean_ctor_get(x_63, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_63, 1);
lean_inc(x_65);
lean_dec(x_63);
x_66 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___closed__1;
x_67 = l_Aesop_treeImpl___elambda__5(x_64);
lean_dec(x_64);
x_68 = lean_ctor_get(x_67, 6);
lean_inc(x_68);
x_69 = l_Aesop_NormalizationState_normalizedGoal_x3f(x_68);
lean_dec(x_68);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; 
lean_dec(x_67);
x_70 = lean_box(0);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_71 = lean_apply_8(x_66, x_70, x_3, x_4, x_5, x_6, x_7, x_8, x_65);
if (lean_obj_tag(x_71) == 0)
{
lean_object* x_72; lean_object* x_73; uint8_t x_74; 
x_72 = lean_ctor_get(x_71, 0);
lean_inc(x_72);
x_73 = lean_ctor_get(x_71, 1);
lean_inc(x_73);
lean_dec(x_71);
x_74 = lean_unbox(x_72);
lean_dec(x_72);
x_11 = x_74;
x_12 = x_73;
goto block_62;
}
else
{
uint8_t x_75; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_75 = !lean_is_exclusive(x_71);
if (x_75 == 0)
{
return x_71;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_76 = lean_ctor_get(x_71, 0);
x_77 = lean_ctor_get(x_71, 1);
lean_inc(x_77);
lean_inc(x_76);
lean_dec(x_71);
x_78 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_78, 0, x_76);
lean_ctor_set(x_78, 1, x_77);
return x_78;
}
}
}
else
{
lean_object* x_79; lean_object* x_80; uint8_t x_81; 
x_79 = lean_ctor_get(x_69, 0);
lean_inc(x_79);
lean_dec(x_69);
x_80 = lean_ctor_get(x_67, 5);
lean_inc(x_80);
lean_dec(x_67);
x_81 = lean_name_eq(x_79, x_80);
lean_dec(x_80);
lean_dec(x_79);
if (x_81 == 0)
{
uint8_t x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; uint8_t x_86; 
x_82 = 1;
x_83 = lean_box(x_82);
x_84 = lean_st_ref_set(x_1, x_83, x_65);
x_85 = lean_ctor_get(x_84, 1);
lean_inc(x_85);
lean_dec(x_84);
x_86 = 0;
x_11 = x_86;
x_12 = x_85;
goto block_62;
}
else
{
lean_object* x_87; lean_object* x_88; 
x_87 = lean_box(0);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_88 = lean_apply_8(x_66, x_87, x_3, x_4, x_5, x_6, x_7, x_8, x_65);
if (lean_obj_tag(x_88) == 0)
{
lean_object* x_89; lean_object* x_90; uint8_t x_91; 
x_89 = lean_ctor_get(x_88, 0);
lean_inc(x_89);
x_90 = lean_ctor_get(x_88, 1);
lean_inc(x_90);
lean_dec(x_88);
x_91 = lean_unbox(x_89);
lean_dec(x_89);
x_11 = x_91;
x_12 = x_90;
goto block_62;
}
else
{
uint8_t x_92; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_92 = !lean_is_exclusive(x_88);
if (x_92 == 0)
{
return x_88;
}
else
{
lean_object* x_93; lean_object* x_94; lean_object* x_95; 
x_93 = lean_ctor_get(x_88, 0);
x_94 = lean_ctor_get(x_88, 1);
lean_inc(x_94);
lean_inc(x_93);
lean_dec(x_88);
x_95 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_95, 0, x_93);
lean_ctor_set(x_95, 1, x_94);
return x_95;
}
}
}
}
block_62:
{
if (x_11 == 0)
{
lean_object* x_13; lean_object* x_14; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_13 = lean_box(0);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; uint8_t x_16; 
x_15 = lean_st_ref_get(x_10, x_12);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Aesop_treeImpl___elambda__5(x_17);
lean_dec(x_17);
x_20 = lean_ctor_get(x_19, 2);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_array_get_size(x_20);
x_22 = lean_unsigned_to_nat(0u);
x_23 = lean_nat_dec_lt(x_22, x_21);
if (x_23 == 0)
{
lean_object* x_24; 
lean_dec(x_21);
lean_dec(x_20);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_24 = lean_box(0);
lean_ctor_set(x_15, 0, x_24);
return x_15;
}
else
{
uint8_t x_25; 
x_25 = lean_nat_dec_le(x_21, x_21);
if (x_25 == 0)
{
lean_object* x_26; 
lean_dec(x_21);
lean_dec(x_20);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_26 = lean_box(0);
lean_ctor_set(x_15, 0, x_26);
return x_15;
}
else
{
size_t x_27; size_t x_28; lean_object* x_29; lean_object* x_30; 
lean_free_object(x_15);
x_27 = 0;
x_28 = lean_usize_of_nat(x_21);
lean_dec(x_21);
x_29 = lean_box(0);
x_30 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2(x_1, x_20, x_27, x_28, x_29, x_3, x_4, x_5, x_6, x_7, x_8, x_18);
lean_dec(x_20);
if (lean_obj_tag(x_30) == 0)
{
uint8_t x_31; 
x_31 = !lean_is_exclusive(x_30);
if (x_31 == 0)
{
lean_object* x_32; 
x_32 = lean_ctor_get(x_30, 0);
lean_dec(x_32);
lean_ctor_set(x_30, 0, x_29);
return x_30;
}
else
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_30, 1);
lean_inc(x_33);
lean_dec(x_30);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_29);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
else
{
uint8_t x_35; 
x_35 = !lean_is_exclusive(x_30);
if (x_35 == 0)
{
return x_30;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_30, 0);
x_37 = lean_ctor_get(x_30, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_30);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
return x_38;
}
}
}
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_39 = lean_ctor_get(x_15, 0);
x_40 = lean_ctor_get(x_15, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_15);
x_41 = l_Aesop_treeImpl___elambda__5(x_39);
lean_dec(x_39);
x_42 = lean_ctor_get(x_41, 2);
lean_inc(x_42);
lean_dec(x_41);
x_43 = lean_array_get_size(x_42);
x_44 = lean_unsigned_to_nat(0u);
x_45 = lean_nat_dec_lt(x_44, x_43);
if (x_45 == 0)
{
lean_object* x_46; lean_object* x_47; 
lean_dec(x_43);
lean_dec(x_42);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_46 = lean_box(0);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_40);
return x_47;
}
else
{
uint8_t x_48; 
x_48 = lean_nat_dec_le(x_43, x_43);
if (x_48 == 0)
{
lean_object* x_49; lean_object* x_50; 
lean_dec(x_43);
lean_dec(x_42);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_49 = lean_box(0);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_40);
return x_50;
}
else
{
size_t x_51; size_t x_52; lean_object* x_53; lean_object* x_54; 
x_51 = 0;
x_52 = lean_usize_of_nat(x_43);
lean_dec(x_43);
x_53 = lean_box(0);
x_54 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2(x_1, x_42, x_51, x_52, x_53, x_3, x_4, x_5, x_6, x_7, x_8, x_40);
lean_dec(x_42);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; lean_object* x_57; 
x_55 = lean_ctor_get(x_54, 1);
lean_inc(x_55);
if (lean_is_exclusive(x_54)) {
 lean_ctor_release(x_54, 0);
 lean_ctor_release(x_54, 1);
 x_56 = x_54;
} else {
 lean_dec_ref(x_54);
 x_56 = lean_box(0);
}
if (lean_is_scalar(x_56)) {
 x_57 = lean_alloc_ctor(0, 2, 0);
} else {
 x_57 = x_56;
}
lean_ctor_set(x_57, 0, x_53);
lean_ctor_set(x_57, 1, x_55);
return x_57;
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_58 = lean_ctor_get(x_54, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_54, 1);
lean_inc(x_59);
if (lean_is_exclusive(x_54)) {
 lean_ctor_release(x_54, 0);
 lean_ctor_release(x_54, 1);
 x_60 = x_54;
} else {
 lean_dec_ref(x_54);
 x_60 = lean_box(0);
}
if (lean_is_scalar(x_60)) {
 x_61 = lean_alloc_ctor(1, 2, 0);
} else {
 x_61 = x_60;
}
lean_ctor_set(x_61, 0, x_58);
lean_ctor_set(x_61, 1, x_59);
return x_61;
}
}
}
}
}
}
}
case 1:
{
lean_object* x_96; uint8_t x_97; lean_object* x_98; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_163; lean_object* x_164; lean_object* x_165; uint64_t x_166; uint64_t x_167; uint8_t x_168; 
x_96 = lean_ctor_get(x_2, 0);
x_149 = lean_st_ref_get(x_96, x_9);
x_150 = lean_ctor_get(x_149, 0);
lean_inc(x_150);
x_151 = lean_ctor_get(x_149, 1);
lean_inc(x_151);
lean_dec(x_149);
x_152 = l_Aesop_treeImpl___elambda__3(x_150);
lean_dec(x_150);
x_153 = lean_ctor_get(x_152, 3);
lean_inc(x_153);
lean_dec(x_152);
x_163 = l_Aesop_RegularRule_name(x_153);
x_164 = l_Aesop_preprocessRule;
x_165 = lean_ctor_get(x_164, 0);
lean_inc(x_165);
x_166 = lean_ctor_get_uint64(x_163, sizeof(void*)*1);
x_167 = lean_ctor_get_uint64(x_165, sizeof(void*)*1);
x_168 = lean_uint64_dec_eq(x_166, x_167);
if (x_168 == 0)
{
lean_object* x_169; 
lean_dec(x_165);
lean_dec(x_163);
x_169 = lean_box(0);
x_154 = x_169;
goto block_162;
}
else
{
uint8_t x_170; uint8_t x_171; uint8_t x_172; 
x_170 = lean_ctor_get_uint8(x_163, sizeof(void*)*1 + 8);
x_171 = lean_ctor_get_uint8(x_165, sizeof(void*)*1 + 8);
x_172 = l___private_Aesop_Rule_Name_0__Aesop_beqBuilderName____x40_Aesop_Rule_Name___hyg_237_(x_170, x_171);
if (x_172 == 0)
{
lean_object* x_173; 
lean_dec(x_165);
lean_dec(x_163);
x_173 = lean_box(0);
x_154 = x_173;
goto block_162;
}
else
{
uint8_t x_174; uint8_t x_175; uint8_t x_176; 
x_174 = lean_ctor_get_uint8(x_163, sizeof(void*)*1 + 9);
x_175 = lean_ctor_get_uint8(x_165, sizeof(void*)*1 + 9);
x_176 = l___private_Aesop_Rule_Name_0__Aesop_beqPhaseName____x40_Aesop_Rule_Name___hyg_19_(x_174, x_175);
if (x_176 == 0)
{
lean_object* x_177; 
lean_dec(x_165);
lean_dec(x_163);
x_177 = lean_box(0);
x_154 = x_177;
goto block_162;
}
else
{
uint8_t x_178; uint8_t x_179; uint8_t x_180; 
x_178 = lean_ctor_get_uint8(x_163, sizeof(void*)*1 + 10);
x_179 = lean_ctor_get_uint8(x_165, sizeof(void*)*1 + 10);
x_180 = l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(x_178, x_179);
if (x_180 == 0)
{
lean_object* x_181; 
lean_dec(x_165);
lean_dec(x_163);
x_181 = lean_box(0);
x_154 = x_181;
goto block_162;
}
else
{
lean_object* x_182; lean_object* x_183; uint8_t x_184; 
x_182 = lean_ctor_get(x_163, 0);
lean_inc(x_182);
lean_dec(x_163);
x_183 = lean_ctor_get(x_165, 0);
lean_inc(x_183);
lean_dec(x_165);
x_184 = lean_name_eq(x_182, x_183);
lean_dec(x_183);
lean_dec(x_182);
if (x_184 == 0)
{
lean_object* x_185; 
x_185 = lean_box(0);
x_154 = x_185;
goto block_162;
}
else
{
uint8_t x_186; 
lean_dec(x_153);
x_186 = 1;
x_97 = x_186;
x_98 = x_151;
goto block_148;
}
}
}
}
}
block_148:
{
if (x_97 == 0)
{
lean_object* x_99; lean_object* x_100; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_99 = lean_box(0);
x_100 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_100, 0, x_99);
lean_ctor_set(x_100, 1, x_98);
return x_100;
}
else
{
lean_object* x_101; uint8_t x_102; 
x_101 = lean_st_ref_get(x_96, x_98);
x_102 = !lean_is_exclusive(x_101);
if (x_102 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_103 = lean_ctor_get(x_101, 0);
x_104 = lean_ctor_get(x_101, 1);
x_105 = l_Aesop_treeImpl___elambda__3(x_103);
lean_dec(x_103);
x_106 = lean_ctor_get(x_105, 2);
lean_inc(x_106);
lean_dec(x_105);
x_107 = lean_array_get_size(x_106);
x_108 = lean_unsigned_to_nat(0u);
x_109 = lean_nat_dec_lt(x_108, x_107);
if (x_109 == 0)
{
lean_object* x_110; 
lean_dec(x_107);
lean_dec(x_106);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_110 = lean_box(0);
lean_ctor_set(x_101, 0, x_110);
return x_101;
}
else
{
uint8_t x_111; 
x_111 = lean_nat_dec_le(x_107, x_107);
if (x_111 == 0)
{
lean_object* x_112; 
lean_dec(x_107);
lean_dec(x_106);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_112 = lean_box(0);
lean_ctor_set(x_101, 0, x_112);
return x_101;
}
else
{
size_t x_113; size_t x_114; lean_object* x_115; lean_object* x_116; 
lean_free_object(x_101);
x_113 = 0;
x_114 = lean_usize_of_nat(x_107);
lean_dec(x_107);
x_115 = lean_box(0);
x_116 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3(x_1, x_106, x_113, x_114, x_115, x_3, x_4, x_5, x_6, x_7, x_8, x_104);
lean_dec(x_106);
if (lean_obj_tag(x_116) == 0)
{
uint8_t x_117; 
x_117 = !lean_is_exclusive(x_116);
if (x_117 == 0)
{
lean_object* x_118; 
x_118 = lean_ctor_get(x_116, 0);
lean_dec(x_118);
lean_ctor_set(x_116, 0, x_115);
return x_116;
}
else
{
lean_object* x_119; lean_object* x_120; 
x_119 = lean_ctor_get(x_116, 1);
lean_inc(x_119);
lean_dec(x_116);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_115);
lean_ctor_set(x_120, 1, x_119);
return x_120;
}
}
else
{
uint8_t x_121; 
x_121 = !lean_is_exclusive(x_116);
if (x_121 == 0)
{
return x_116;
}
else
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; 
x_122 = lean_ctor_get(x_116, 0);
x_123 = lean_ctor_get(x_116, 1);
lean_inc(x_123);
lean_inc(x_122);
lean_dec(x_116);
x_124 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_124, 0, x_122);
lean_ctor_set(x_124, 1, x_123);
return x_124;
}
}
}
}
}
else
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; uint8_t x_131; 
x_125 = lean_ctor_get(x_101, 0);
x_126 = lean_ctor_get(x_101, 1);
lean_inc(x_126);
lean_inc(x_125);
lean_dec(x_101);
x_127 = l_Aesop_treeImpl___elambda__3(x_125);
lean_dec(x_125);
x_128 = lean_ctor_get(x_127, 2);
lean_inc(x_128);
lean_dec(x_127);
x_129 = lean_array_get_size(x_128);
x_130 = lean_unsigned_to_nat(0u);
x_131 = lean_nat_dec_lt(x_130, x_129);
if (x_131 == 0)
{
lean_object* x_132; lean_object* x_133; 
lean_dec(x_129);
lean_dec(x_128);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_132 = lean_box(0);
x_133 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_133, 0, x_132);
lean_ctor_set(x_133, 1, x_126);
return x_133;
}
else
{
uint8_t x_134; 
x_134 = lean_nat_dec_le(x_129, x_129);
if (x_134 == 0)
{
lean_object* x_135; lean_object* x_136; 
lean_dec(x_129);
lean_dec(x_128);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_135 = lean_box(0);
x_136 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_136, 0, x_135);
lean_ctor_set(x_136, 1, x_126);
return x_136;
}
else
{
size_t x_137; size_t x_138; lean_object* x_139; lean_object* x_140; 
x_137 = 0;
x_138 = lean_usize_of_nat(x_129);
lean_dec(x_129);
x_139 = lean_box(0);
x_140 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3(x_1, x_128, x_137, x_138, x_139, x_3, x_4, x_5, x_6, x_7, x_8, x_126);
lean_dec(x_128);
if (lean_obj_tag(x_140) == 0)
{
lean_object* x_141; lean_object* x_142; lean_object* x_143; 
x_141 = lean_ctor_get(x_140, 1);
lean_inc(x_141);
if (lean_is_exclusive(x_140)) {
 lean_ctor_release(x_140, 0);
 lean_ctor_release(x_140, 1);
 x_142 = x_140;
} else {
 lean_dec_ref(x_140);
 x_142 = lean_box(0);
}
if (lean_is_scalar(x_142)) {
 x_143 = lean_alloc_ctor(0, 2, 0);
} else {
 x_143 = x_142;
}
lean_ctor_set(x_143, 0, x_139);
lean_ctor_set(x_143, 1, x_141);
return x_143;
}
else
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; 
x_144 = lean_ctor_get(x_140, 0);
lean_inc(x_144);
x_145 = lean_ctor_get(x_140, 1);
lean_inc(x_145);
if (lean_is_exclusive(x_140)) {
 lean_ctor_release(x_140, 0);
 lean_ctor_release(x_140, 1);
 x_146 = x_140;
} else {
 lean_dec_ref(x_140);
 x_146 = lean_box(0);
}
if (lean_is_scalar(x_146)) {
 x_147 = lean_alloc_ctor(1, 2, 0);
} else {
 x_147 = x_146;
}
lean_ctor_set(x_147, 0, x_144);
lean_ctor_set(x_147, 1, x_145);
return x_147;
}
}
}
}
}
}
block_162:
{
uint8_t x_155; 
lean_dec(x_154);
x_155 = l_Aesop_RegularRule_isUnsafe(x_153);
lean_dec(x_153);
if (x_155 == 0)
{
uint8_t x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; uint8_t x_160; 
x_156 = 1;
x_157 = lean_box(x_156);
x_158 = lean_st_ref_set(x_1, x_157, x_151);
x_159 = lean_ctor_get(x_158, 1);
lean_inc(x_159);
lean_dec(x_158);
x_160 = 0;
x_97 = x_160;
x_98 = x_159;
goto block_148;
}
else
{
uint8_t x_161; 
x_161 = 0;
x_97 = x_161;
x_98 = x_151;
goto block_148;
}
}
}
default: 
{
lean_object* x_187; lean_object* x_188; uint8_t x_189; 
x_187 = lean_ctor_get(x_2, 0);
x_188 = lean_st_ref_get(x_187, x_9);
x_189 = !lean_is_exclusive(x_188);
if (x_189 == 0)
{
lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; uint8_t x_196; 
x_190 = lean_ctor_get(x_188, 0);
x_191 = lean_ctor_get(x_188, 1);
x_192 = l_Aesop_treeImpl___elambda__1(x_190);
lean_dec(x_190);
x_193 = lean_ctor_get(x_192, 1);
lean_inc(x_193);
lean_dec(x_192);
x_194 = lean_array_get_size(x_193);
x_195 = lean_unsigned_to_nat(0u);
x_196 = lean_nat_dec_lt(x_195, x_194);
if (x_196 == 0)
{
lean_object* x_197; 
lean_dec(x_194);
lean_dec(x_193);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_197 = lean_box(0);
lean_ctor_set(x_188, 0, x_197);
return x_188;
}
else
{
uint8_t x_198; 
x_198 = lean_nat_dec_le(x_194, x_194);
if (x_198 == 0)
{
lean_object* x_199; 
lean_dec(x_194);
lean_dec(x_193);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_199 = lean_box(0);
lean_ctor_set(x_188, 0, x_199);
return x_188;
}
else
{
size_t x_200; size_t x_201; lean_object* x_202; lean_object* x_203; 
lean_free_object(x_188);
x_200 = 0;
x_201 = lean_usize_of_nat(x_194);
lean_dec(x_194);
x_202 = lean_box(0);
x_203 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4(x_1, x_193, x_200, x_201, x_202, x_3, x_4, x_5, x_6, x_7, x_8, x_191);
lean_dec(x_193);
if (lean_obj_tag(x_203) == 0)
{
uint8_t x_204; 
x_204 = !lean_is_exclusive(x_203);
if (x_204 == 0)
{
lean_object* x_205; 
x_205 = lean_ctor_get(x_203, 0);
lean_dec(x_205);
lean_ctor_set(x_203, 0, x_202);
return x_203;
}
else
{
lean_object* x_206; lean_object* x_207; 
x_206 = lean_ctor_get(x_203, 1);
lean_inc(x_206);
lean_dec(x_203);
x_207 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_207, 0, x_202);
lean_ctor_set(x_207, 1, x_206);
return x_207;
}
}
else
{
uint8_t x_208; 
x_208 = !lean_is_exclusive(x_203);
if (x_208 == 0)
{
return x_203;
}
else
{
lean_object* x_209; lean_object* x_210; lean_object* x_211; 
x_209 = lean_ctor_get(x_203, 0);
x_210 = lean_ctor_get(x_203, 1);
lean_inc(x_210);
lean_inc(x_209);
lean_dec(x_203);
x_211 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_211, 0, x_209);
lean_ctor_set(x_211, 1, x_210);
return x_211;
}
}
}
}
}
else
{
lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; uint8_t x_218; 
x_212 = lean_ctor_get(x_188, 0);
x_213 = lean_ctor_get(x_188, 1);
lean_inc(x_213);
lean_inc(x_212);
lean_dec(x_188);
x_214 = l_Aesop_treeImpl___elambda__1(x_212);
lean_dec(x_212);
x_215 = lean_ctor_get(x_214, 1);
lean_inc(x_215);
lean_dec(x_214);
x_216 = lean_array_get_size(x_215);
x_217 = lean_unsigned_to_nat(0u);
x_218 = lean_nat_dec_lt(x_217, x_216);
if (x_218 == 0)
{
lean_object* x_219; lean_object* x_220; 
lean_dec(x_216);
lean_dec(x_215);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_219 = lean_box(0);
x_220 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_220, 0, x_219);
lean_ctor_set(x_220, 1, x_213);
return x_220;
}
else
{
uint8_t x_221; 
x_221 = lean_nat_dec_le(x_216, x_216);
if (x_221 == 0)
{
lean_object* x_222; lean_object* x_223; 
lean_dec(x_216);
lean_dec(x_215);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_222 = lean_box(0);
x_223 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_223, 0, x_222);
lean_ctor_set(x_223, 1, x_213);
return x_223;
}
else
{
size_t x_224; size_t x_225; lean_object* x_226; lean_object* x_227; 
x_224 = 0;
x_225 = lean_usize_of_nat(x_216);
lean_dec(x_216);
x_226 = lean_box(0);
x_227 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4(x_1, x_215, x_224, x_225, x_226, x_3, x_4, x_5, x_6, x_7, x_8, x_213);
lean_dec(x_215);
if (lean_obj_tag(x_227) == 0)
{
lean_object* x_228; lean_object* x_229; lean_object* x_230; 
x_228 = lean_ctor_get(x_227, 1);
lean_inc(x_228);
if (lean_is_exclusive(x_227)) {
 lean_ctor_release(x_227, 0);
 lean_ctor_release(x_227, 1);
 x_229 = x_227;
} else {
 lean_dec_ref(x_227);
 x_229 = lean_box(0);
}
if (lean_is_scalar(x_229)) {
 x_230 = lean_alloc_ctor(0, 2, 0);
} else {
 x_230 = x_229;
}
lean_ctor_set(x_230, 0, x_226);
lean_ctor_set(x_230, 1, x_228);
return x_230;
}
else
{
lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; 
x_231 = lean_ctor_get(x_227, 0);
lean_inc(x_231);
x_232 = lean_ctor_get(x_227, 1);
lean_inc(x_232);
if (lean_is_exclusive(x_227)) {
 lean_ctor_release(x_227, 0);
 lean_ctor_release(x_227, 1);
 x_233 = x_227;
} else {
 lean_dec_ref(x_227);
 x_233 = lean_box(0);
}
if (lean_is_scalar(x_233)) {
 x_234 = lean_alloc_ctor(1, 2, 0);
} else {
 x_234 = x_233;
}
lean_ctor_set(x_234, 0, x_231);
lean_ctor_set(x_234, 1, x_232);
return x_234;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_treeHasProgress(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_8 = 0;
x_9 = lean_box(x_8);
x_10 = lean_st_mk_ref(x_9, x_7);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_st_ref_get(x_2, x_12);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_ctor_get(x_14, 0);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_17, 0, x_16);
x_18 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(x_11, x_17, x_1, x_2, x_3, x_4, x_5, x_6, x_15);
lean_dec(x_17);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = lean_st_ref_get(x_11, x_19);
lean_dec(x_11);
x_21 = !lean_is_exclusive(x_20);
if (x_21 == 0)
{
return x_20;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_20, 0);
x_23 = lean_ctor_get(x_20, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_20);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
else
{
uint8_t x_25; 
lean_dec(x_11);
x_25 = !lean_is_exclusive(x_18);
if (x_25 == 0)
{
return x_18;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_18, 0);
x_27 = lean_ctor_get(x_18, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_18);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__2(x_1, x_2, x_13, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__3(x_1, x_2, x_13, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = l_Array_foldlMUnsafe_fold___at_Aesop_treeHasProgress___spec__4(x_1, x_2, x_13, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = lean_st_ref_get(x_3, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_ctor_get(x_11, 0);
lean_dec(x_14);
x_15 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_13);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_17);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set_tag(x_15, 1);
lean_ctor_set(x_15, 0, x_11);
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
lean_inc(x_10);
lean_ctor_set(x_11, 1, x_18);
lean_ctor_set(x_11, 0, x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_11);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_dec(x_11);
x_22 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(1, 2, 0);
} else {
 x_27 = x_25;
 lean_ctor_set_tag(x_27, 1);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg___boxed), 9, 0);
return x_4;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_aesop_smallErrorMessages;
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tactic 'aesop' failed\nInitial goal:", 35, 35);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tactic 'aesop' failed, ", 23, 23);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nInitial goal:", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__6;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\n\n", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__8;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__9;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nRemaining goals after safe rules:", 34, 34);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__11;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nThe safe prefix was not fully expanded because the maximum number of rule applications (", 89, 89);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__13;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(") was reached.", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__15;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tactic 'aesop' failed", 21, 21);
return x_1;
}
}
static lean_object* _init_l_Aesop_throwAesopEx___rarg___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_throwAesopEx___rarg___closed__17;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_throwAesopEx___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_15 = lean_ctor_get(x_12, 2);
x_16 = l_Aesop_throwAesopEx___rarg___closed__1;
x_17 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_15, x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_29; lean_object* x_30; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_44 = lean_ctor_get(x_7, 2);
lean_inc(x_44);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
lean_dec(x_44);
x_46 = lean_ctor_get(x_45, 4);
lean_inc(x_46);
lean_dec(x_45);
x_47 = l_Array_isEmpty___rarg(x_4);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; 
x_48 = lean_array_to_list(lean_box(0), x_4);
x_49 = lean_box(0);
x_50 = l_List_mapTR_loop___at_Lean_Elab_goalsToMessageData___spec__1(x_48, x_49);
x_51 = l_Aesop_throwAesopEx___rarg___closed__10;
x_52 = l_Lean_MessageData_joinSep(x_50, x_51);
x_53 = l_Lean_indentD(x_52);
x_54 = l_Aesop_throwAesopEx___rarg___closed__12;
x_55 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_55, 0, x_54);
lean_ctor_set(x_55, 1, x_53);
x_56 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_57 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_57, 0, x_55);
lean_ctor_set(x_57, 1, x_56);
if (x_5 == 0)
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_58 = l___private_Init_Data_Repr_0__Nat_reprFast(x_46);
x_59 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_59, 0, x_58);
x_60 = l_Lean_MessageData_ofFormat(x_59);
x_61 = l_Aesop_throwAesopEx___rarg___closed__14;
x_62 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_60);
x_63 = l_Aesop_throwAesopEx___rarg___closed__16;
x_64 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_64, 0, x_62);
lean_ctor_set(x_64, 1, x_63);
x_65 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_65, 0, x_57);
lean_ctor_set(x_65, 1, x_64);
x_66 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_66, 0, x_65);
lean_ctor_set(x_66, 1, x_56);
if (lean_obj_tag(x_6) == 0)
{
x_18 = x_66;
goto block_28;
}
else
{
lean_object* x_67; 
x_67 = lean_ctor_get(x_6, 0);
lean_inc(x_67);
lean_dec(x_6);
x_29 = x_66;
x_30 = x_67;
goto block_43;
}
}
else
{
lean_object* x_68; lean_object* x_69; 
lean_dec(x_46);
x_68 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_68, 0, x_57);
lean_ctor_set(x_68, 1, x_56);
x_69 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_69, 0, x_68);
lean_ctor_set(x_69, 1, x_56);
if (lean_obj_tag(x_6) == 0)
{
x_18 = x_69;
goto block_28;
}
else
{
lean_object* x_70; 
x_70 = lean_ctor_get(x_6, 0);
lean_inc(x_70);
lean_dec(x_6);
x_29 = x_69;
x_30 = x_70;
goto block_43;
}
}
}
else
{
lean_dec(x_46);
lean_dec(x_4);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_71; 
x_71 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_18 = x_71;
goto block_28;
}
else
{
lean_object* x_72; lean_object* x_73; 
x_72 = lean_ctor_get(x_6, 0);
lean_inc(x_72);
lean_dec(x_6);
x_73 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_29 = x_73;
x_30 = x_72;
goto block_43;
}
}
block_28:
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_3);
x_20 = l_Lean_indentD(x_19);
x_21 = l_Aesop_throwAesopEx___rarg___closed__3;
x_22 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
x_23 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_24 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
x_25 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_18);
x_26 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_23);
x_27 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg(x_26, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_7);
return x_27;
}
block_43:
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_31 = l_Aesop_throwAesopEx___rarg___closed__5;
x_32 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_30);
x_33 = l_Aesop_throwAesopEx___rarg___closed__7;
x_34 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_3);
x_36 = l_Lean_indentD(x_35);
x_37 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_37, 0, x_34);
lean_ctor_set(x_37, 1, x_36);
x_38 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_39 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
x_40 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_40, 0, x_39);
lean_ctor_set(x_40, 1, x_29);
x_41 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_38);
x_42 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg(x_41, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_7);
return x_42;
}
}
else
{
lean_dec(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_74; lean_object* x_75; 
x_74 = l_Aesop_throwAesopEx___rarg___closed__18;
x_75 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg(x_74, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_7);
return x_75;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_76 = lean_ctor_get(x_6, 0);
lean_inc(x_76);
lean_dec(x_6);
x_77 = l_Aesop_throwAesopEx___rarg___closed__5;
x_78 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_78, 0, x_77);
lean_ctor_set(x_78, 1, x_76);
x_79 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_80 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_80, 0, x_78);
lean_ctor_set(x_80, 1, x_79);
x_81 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg(x_80, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_7);
return x_81;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_throwAesopEx(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_throwAesopEx___rarg___boxed), 14, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__2(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__3(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_throwAesopEx___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_throwError___at_Aesop_throwAesopEx___spec__4(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_throwAesopEx___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; lean_object* x_16; 
x_15 = lean_unbox(x_5);
lean_dec(x_5);
x_16 = l_Aesop_throwAesopEx___rarg(x_1, x_2, x_3, x_4, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 2);
x_11 = lean_ctor_get(x_1, 1);
x_12 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_10, x_11);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_lt(x_3, x_2);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_4);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_array_uget(x_4, x_3);
x_16 = lean_unsigned_to_nat(0u);
x_17 = lean_array_uset(x_4, x_3, x_16);
x_18 = lean_st_ref_get(x_6, x_12);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_20 = l_Aesop_clearForwardImplDetailHyps(x_15, x_8, x_9, x_10, x_11, x_19);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; size_t x_23; size_t x_24; lean_object* x_25; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = 1;
x_24 = lean_usize_add(x_3, x_23);
x_25 = lean_array_uset(x_17, x_3, x_21);
x_3 = x_24;
x_4 = x_25;
x_12 = x_22;
goto _start;
}
else
{
uint8_t x_27; 
lean_dec(x_17);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_27 = !lean_is_exclusive(x_20);
if (x_27 == 0)
{
return x_20;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_20, 0);
x_29 = lean_ctor_get(x_20, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_20);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg___boxed), 12, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_235; uint8_t x_236; 
x_235 = 2;
x_236 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_235);
if (x_236 == 0)
{
lean_object* x_237; 
x_237 = lean_box(0);
x_12 = x_237;
goto block_234;
}
else
{
lean_object* x_238; uint8_t x_239; 
lean_inc(x_2);
x_238 = l_Lean_MessageData_hasSyntheticSorry(x_2);
x_239 = lean_unbox(x_238);
lean_dec(x_238);
if (x_239 == 0)
{
lean_object* x_240; 
x_240 = lean_box(0);
x_12 = x_240;
goto block_234;
}
else
{
lean_object* x_241; lean_object* x_242; 
lean_dec(x_9);
lean_dec(x_2);
x_241 = lean_box(0);
x_242 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_242, 0, x_241);
lean_ctor_set(x_242, 1, x_11);
return x_242;
}
}
block_234:
{
uint8_t x_13; lean_object* x_228; uint8_t x_229; uint8_t x_230; 
lean_dec(x_12);
x_228 = lean_ctor_get(x_9, 2);
lean_inc(x_228);
x_229 = 1;
x_230 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_229);
if (x_230 == 0)
{
lean_dec(x_228);
x_13 = x_3;
goto block_227;
}
else
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_232 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_228, x_231);
lean_dec(x_228);
if (x_232 == 0)
{
x_13 = x_3;
goto block_227;
}
else
{
uint8_t x_233; 
x_233 = 2;
x_13 = x_233;
goto block_227;
}
}
block_227:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_14 = lean_st_ref_get(x_5, x_11);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_9, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_9, 5);
lean_inc(x_18);
x_19 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
x_20 = l_Lean_replaceRef(x_1, x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = l_Lean_Syntax_getPos_x3f(x_20, x_21);
x_23 = l_Lean_Syntax_getTailPos_x3f(x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_st_ref_get(x_5, x_15);
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_5, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_5, x_30);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_unsigned_to_nat(0u);
x_34 = l_Lean_FileMap_toPosition(x_17, x_33);
lean_inc(x_34);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_st_ref_get(x_5, x_32);
if (x_19 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_box(0);
x_39 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_38, x_9, x_10, x_37);
lean_dec(x_9);
return x_39;
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_36, 1);
x_42 = lean_ctor_get(x_36, 0);
lean_dec(x_42);
x_43 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_44 = l_Lean_MessageData_hasTag(x_43, x_29);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_45 = lean_box(0);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_free_object(x_36);
x_46 = lean_box(0);
x_47 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_46, x_9, x_10, x_41);
lean_dec(x_9);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_36, 1);
lean_inc(x_48);
lean_dec(x_36);
x_49 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_50 = l_Lean_MessageData_hasTag(x_49, x_29);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_51 = lean_box(0);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_48);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; 
x_53 = lean_box(0);
x_54 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_53, x_9, x_10, x_48);
lean_dec(x_9);
return x_54;
}
}
}
}
else
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_23);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_56 = lean_ctor_get(x_23, 0);
x_57 = lean_st_ref_get(x_5, x_15);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_st_ref_get(x_5, x_58);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_60);
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = lean_st_ref_get(x_5, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_66 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_67 = l_Lean_FileMap_toPosition(x_17, x_66);
x_68 = l_Lean_FileMap_toPosition(x_17, x_56);
lean_dec(x_56);
lean_ctor_set(x_23, 0, x_68);
x_69 = lean_st_ref_get(x_5, x_65);
if (x_19 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
lean_dec(x_69);
x_71 = lean_box(0);
x_72 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_71, x_9, x_10, x_70);
lean_dec(x_9);
return x_72;
}
else
{
uint8_t x_73; 
x_73 = !lean_is_exclusive(x_69);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_74 = lean_ctor_get(x_69, 1);
x_75 = lean_ctor_get(x_69, 0);
lean_dec(x_75);
x_76 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_77 = l_Lean_MessageData_hasTag(x_76, x_62);
if (x_77 == 0)
{
lean_object* x_78; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_78 = lean_box(0);
lean_ctor_set(x_69, 0, x_78);
return x_69;
}
else
{
lean_object* x_79; lean_object* x_80; 
lean_free_object(x_69);
x_79 = lean_box(0);
x_80 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_79, x_9, x_10, x_74);
lean_dec(x_9);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_69, 1);
lean_inc(x_81);
lean_dec(x_69);
x_82 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_83 = l_Lean_MessageData_hasTag(x_82, x_62);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_81);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
x_86 = lean_box(0);
x_87 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_86, x_9, x_10, x_81);
lean_dec(x_9);
return x_87;
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_88 = lean_ctor_get(x_23, 0);
lean_inc(x_88);
lean_dec(x_23);
x_89 = lean_st_ref_get(x_5, x_15);
x_90 = lean_ctor_get(x_89, 1);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_st_ref_get(x_5, x_90);
x_92 = lean_ctor_get(x_91, 1);
lean_inc(x_92);
lean_dec(x_91);
x_93 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_92);
x_94 = lean_ctor_get(x_93, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_93, 1);
lean_inc(x_95);
lean_dec(x_93);
x_96 = lean_st_ref_get(x_5, x_95);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_99 = l_Lean_FileMap_toPosition(x_17, x_98);
x_100 = l_Lean_FileMap_toPosition(x_17, x_88);
lean_dec(x_88);
x_101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = lean_st_ref_get(x_5, x_97);
if (x_19 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_102, 1);
lean_inc(x_103);
lean_dec(x_102);
x_104 = lean_box(0);
x_105 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_104, x_9, x_10, x_103);
lean_dec(x_9);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_106 = lean_ctor_get(x_102, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_107 = x_102;
} else {
 lean_dec_ref(x_102);
 x_107 = lean_box(0);
}
x_108 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_94);
x_109 = l_Lean_MessageData_hasTag(x_108, x_94);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
lean_dec(x_101);
lean_dec(x_99);
lean_dec(x_94);
lean_dec(x_16);
lean_dec(x_9);
x_110 = lean_box(0);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_107);
x_112 = lean_box(0);
x_113 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_112, x_9, x_10, x_106);
lean_dec(x_9);
return x_113;
}
}
}
}
}
else
{
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_114; 
x_114 = !lean_is_exclusive(x_22);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_115 = lean_ctor_get(x_22, 0);
x_116 = lean_st_ref_get(x_5, x_15);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
x_118 = lean_st_ref_get(x_5, x_117);
x_119 = lean_ctor_get(x_118, 1);
lean_inc(x_119);
lean_dec(x_118);
x_120 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
lean_dec(x_120);
x_123 = lean_st_ref_get(x_5, x_122);
x_124 = lean_ctor_get(x_123, 1);
lean_inc(x_124);
lean_dec(x_123);
x_125 = l_Lean_FileMap_toPosition(x_17, x_115);
lean_dec(x_115);
lean_inc(x_125);
lean_ctor_set(x_22, 0, x_125);
x_126 = lean_st_ref_get(x_5, x_124);
if (x_19 == 0)
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_ctor_get(x_126, 1);
lean_inc(x_127);
lean_dec(x_126);
x_128 = lean_box(0);
x_129 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_128, x_9, x_10, x_127);
lean_dec(x_9);
return x_129;
}
else
{
uint8_t x_130; 
x_130 = !lean_is_exclusive(x_126);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_131 = lean_ctor_get(x_126, 1);
x_132 = lean_ctor_get(x_126, 0);
lean_dec(x_132);
x_133 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_134 = l_Lean_MessageData_hasTag(x_133, x_121);
if (x_134 == 0)
{
lean_object* x_135; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_135 = lean_box(0);
lean_ctor_set(x_126, 0, x_135);
return x_126;
}
else
{
lean_object* x_136; lean_object* x_137; 
lean_free_object(x_126);
x_136 = lean_box(0);
x_137 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_136, x_9, x_10, x_131);
lean_dec(x_9);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_138 = lean_ctor_get(x_126, 1);
lean_inc(x_138);
lean_dec(x_126);
x_139 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_140 = l_Lean_MessageData_hasTag(x_139, x_121);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_138);
return x_142;
}
else
{
lean_object* x_143; lean_object* x_144; 
x_143 = lean_box(0);
x_144 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_143, x_9, x_10, x_138);
lean_dec(x_9);
return x_144;
}
}
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_145 = lean_ctor_get(x_22, 0);
lean_inc(x_145);
lean_dec(x_22);
x_146 = lean_st_ref_get(x_5, x_15);
x_147 = lean_ctor_get(x_146, 1);
lean_inc(x_147);
lean_dec(x_146);
x_148 = lean_st_ref_get(x_5, x_147);
x_149 = lean_ctor_get(x_148, 1);
lean_inc(x_149);
lean_dec(x_148);
x_150 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_149);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_153 = lean_st_ref_get(x_5, x_152);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_FileMap_toPosition(x_17, x_145);
lean_dec(x_145);
lean_inc(x_155);
x_156 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_156, 0, x_155);
x_157 = lean_st_ref_get(x_5, x_154);
if (x_19 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_157, 1);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_box(0);
x_160 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_159, x_9, x_10, x_158);
lean_dec(x_9);
return x_160;
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_161 = lean_ctor_get(x_157, 1);
lean_inc(x_161);
if (lean_is_exclusive(x_157)) {
 lean_ctor_release(x_157, 0);
 lean_ctor_release(x_157, 1);
 x_162 = x_157;
} else {
 lean_dec_ref(x_157);
 x_162 = lean_box(0);
}
x_163 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_151);
x_164 = l_Lean_MessageData_hasTag(x_163, x_151);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_156);
lean_dec(x_155);
lean_dec(x_151);
lean_dec(x_16);
lean_dec(x_9);
x_165 = lean_box(0);
if (lean_is_scalar(x_162)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_162;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_161);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; 
lean_dec(x_162);
x_167 = lean_box(0);
x_168 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_167, x_9, x_10, x_161);
lean_dec(x_9);
return x_168;
}
}
}
}
else
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_22, 0);
lean_inc(x_169);
lean_dec(x_22);
x_170 = !lean_is_exclusive(x_23);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_171 = lean_ctor_get(x_23, 0);
x_172 = lean_st_ref_get(x_5, x_15);
x_173 = lean_ctor_get(x_172, 1);
lean_inc(x_173);
lean_dec(x_172);
x_174 = lean_st_ref_get(x_5, x_173);
x_175 = lean_ctor_get(x_174, 1);
lean_inc(x_175);
lean_dec(x_174);
x_176 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_175);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_st_ref_get(x_5, x_178);
x_180 = lean_ctor_get(x_179, 1);
lean_inc(x_180);
lean_dec(x_179);
lean_inc(x_17);
x_181 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_182 = l_Lean_FileMap_toPosition(x_17, x_171);
lean_dec(x_171);
lean_ctor_set(x_23, 0, x_182);
x_183 = lean_st_ref_get(x_5, x_180);
if (x_19 == 0)
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_183, 1);
lean_inc(x_184);
lean_dec(x_183);
x_185 = lean_box(0);
x_186 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_185, x_9, x_10, x_184);
lean_dec(x_9);
return x_186;
}
else
{
uint8_t x_187; 
x_187 = !lean_is_exclusive(x_183);
if (x_187 == 0)
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; uint8_t x_191; 
x_188 = lean_ctor_get(x_183, 1);
x_189 = lean_ctor_get(x_183, 0);
lean_dec(x_189);
x_190 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_191 = l_Lean_MessageData_hasTag(x_190, x_177);
if (x_191 == 0)
{
lean_object* x_192; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_192 = lean_box(0);
lean_ctor_set(x_183, 0, x_192);
return x_183;
}
else
{
lean_object* x_193; lean_object* x_194; 
lean_free_object(x_183);
x_193 = lean_box(0);
x_194 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_193, x_9, x_10, x_188);
lean_dec(x_9);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; uint8_t x_197; 
x_195 = lean_ctor_get(x_183, 1);
lean_inc(x_195);
lean_dec(x_183);
x_196 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_197 = l_Lean_MessageData_hasTag(x_196, x_177);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_198 = lean_box(0);
x_199 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_199, 0, x_198);
lean_ctor_set(x_199, 1, x_195);
return x_199;
}
else
{
lean_object* x_200; lean_object* x_201; 
x_200 = lean_box(0);
x_201 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_200, x_9, x_10, x_195);
lean_dec(x_9);
return x_201;
}
}
}
}
else
{
lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_202 = lean_ctor_get(x_23, 0);
lean_inc(x_202);
lean_dec(x_23);
x_203 = lean_st_ref_get(x_5, x_15);
x_204 = lean_ctor_get(x_203, 1);
lean_inc(x_204);
lean_dec(x_203);
x_205 = lean_st_ref_get(x_5, x_204);
x_206 = lean_ctor_get(x_205, 1);
lean_inc(x_206);
lean_dec(x_205);
x_207 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_206);
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_ctor_get(x_207, 1);
lean_inc(x_209);
lean_dec(x_207);
x_210 = lean_st_ref_get(x_5, x_209);
x_211 = lean_ctor_get(x_210, 1);
lean_inc(x_211);
lean_dec(x_210);
lean_inc(x_17);
x_212 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_213 = l_Lean_FileMap_toPosition(x_17, x_202);
lean_dec(x_202);
x_214 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_214, 0, x_213);
x_215 = lean_st_ref_get(x_5, x_211);
if (x_19 == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; 
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = lean_box(0);
x_218 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_217, x_9, x_10, x_216);
lean_dec(x_9);
return x_218;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; uint8_t x_222; 
x_219 = lean_ctor_get(x_215, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_215)) {
 lean_ctor_release(x_215, 0);
 lean_ctor_release(x_215, 1);
 x_220 = x_215;
} else {
 lean_dec_ref(x_215);
 x_220 = lean_box(0);
}
x_221 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_208);
x_222 = l_Lean_MessageData_hasTag(x_221, x_208);
if (x_222 == 0)
{
lean_object* x_223; lean_object* x_224; 
lean_dec(x_214);
lean_dec(x_212);
lean_dec(x_208);
lean_dec(x_16);
lean_dec(x_9);
x_223 = lean_box(0);
if (lean_is_scalar(x_220)) {
 x_224 = lean_alloc_ctor(0, 2, 0);
} else {
 x_224 = x_220;
}
lean_ctor_set(x_224, 0, x_223);
lean_ctor_set(x_224, 1, x_219);
return x_224;
}
else
{
lean_object* x_225; lean_object* x_226; 
lean_dec(x_220);
x_225 = lean_box(0);
x_226 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_225, x_9, x_10, x_219);
lean_dec(x_9);
return x_226;
}
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg___boxed), 11, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_st_ref_get(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_9, 5);
lean_inc(x_14);
x_15 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_235; uint8_t x_236; 
x_235 = 2;
x_236 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_235);
if (x_236 == 0)
{
lean_object* x_237; 
x_237 = lean_box(0);
x_12 = x_237;
goto block_234;
}
else
{
lean_object* x_238; uint8_t x_239; 
lean_inc(x_2);
x_238 = l_Lean_MessageData_hasSyntheticSorry(x_2);
x_239 = lean_unbox(x_238);
lean_dec(x_238);
if (x_239 == 0)
{
lean_object* x_240; 
x_240 = lean_box(0);
x_12 = x_240;
goto block_234;
}
else
{
lean_object* x_241; lean_object* x_242; 
lean_dec(x_9);
lean_dec(x_2);
x_241 = lean_box(0);
x_242 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_242, 0, x_241);
lean_ctor_set(x_242, 1, x_11);
return x_242;
}
}
block_234:
{
uint8_t x_13; lean_object* x_228; uint8_t x_229; uint8_t x_230; 
lean_dec(x_12);
x_228 = lean_ctor_get(x_9, 2);
lean_inc(x_228);
x_229 = 1;
x_230 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_229);
if (x_230 == 0)
{
lean_dec(x_228);
x_13 = x_3;
goto block_227;
}
else
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_232 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_228, x_231);
lean_dec(x_228);
if (x_232 == 0)
{
x_13 = x_3;
goto block_227;
}
else
{
uint8_t x_233; 
x_233 = 2;
x_13 = x_233;
goto block_227;
}
}
block_227:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_14 = lean_st_ref_get(x_5, x_11);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_9, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_9, 5);
lean_inc(x_18);
x_19 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
x_20 = l_Lean_replaceRef(x_1, x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = l_Lean_Syntax_getPos_x3f(x_20, x_21);
x_23 = l_Lean_Syntax_getTailPos_x3f(x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_st_ref_get(x_5, x_15);
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_5, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_5, x_30);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_unsigned_to_nat(0u);
x_34 = l_Lean_FileMap_toPosition(x_17, x_33);
lean_inc(x_34);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_st_ref_get(x_5, x_32);
if (x_19 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_box(0);
x_39 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_38, x_9, x_10, x_37);
lean_dec(x_9);
return x_39;
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_36, 1);
x_42 = lean_ctor_get(x_36, 0);
lean_dec(x_42);
x_43 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_44 = l_Lean_MessageData_hasTag(x_43, x_29);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_45 = lean_box(0);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_free_object(x_36);
x_46 = lean_box(0);
x_47 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_46, x_9, x_10, x_41);
lean_dec(x_9);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_36, 1);
lean_inc(x_48);
lean_dec(x_36);
x_49 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_50 = l_Lean_MessageData_hasTag(x_49, x_29);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_51 = lean_box(0);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_48);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; 
x_53 = lean_box(0);
x_54 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_53, x_9, x_10, x_48);
lean_dec(x_9);
return x_54;
}
}
}
}
else
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_23);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_56 = lean_ctor_get(x_23, 0);
x_57 = lean_st_ref_get(x_5, x_15);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_st_ref_get(x_5, x_58);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_60);
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = lean_st_ref_get(x_5, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_66 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_67 = l_Lean_FileMap_toPosition(x_17, x_66);
x_68 = l_Lean_FileMap_toPosition(x_17, x_56);
lean_dec(x_56);
lean_ctor_set(x_23, 0, x_68);
x_69 = lean_st_ref_get(x_5, x_65);
if (x_19 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
lean_dec(x_69);
x_71 = lean_box(0);
x_72 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_71, x_9, x_10, x_70);
lean_dec(x_9);
return x_72;
}
else
{
uint8_t x_73; 
x_73 = !lean_is_exclusive(x_69);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_74 = lean_ctor_get(x_69, 1);
x_75 = lean_ctor_get(x_69, 0);
lean_dec(x_75);
x_76 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_77 = l_Lean_MessageData_hasTag(x_76, x_62);
if (x_77 == 0)
{
lean_object* x_78; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_78 = lean_box(0);
lean_ctor_set(x_69, 0, x_78);
return x_69;
}
else
{
lean_object* x_79; lean_object* x_80; 
lean_free_object(x_69);
x_79 = lean_box(0);
x_80 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_79, x_9, x_10, x_74);
lean_dec(x_9);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_69, 1);
lean_inc(x_81);
lean_dec(x_69);
x_82 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_83 = l_Lean_MessageData_hasTag(x_82, x_62);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_81);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
x_86 = lean_box(0);
x_87 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_86, x_9, x_10, x_81);
lean_dec(x_9);
return x_87;
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_88 = lean_ctor_get(x_23, 0);
lean_inc(x_88);
lean_dec(x_23);
x_89 = lean_st_ref_get(x_5, x_15);
x_90 = lean_ctor_get(x_89, 1);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_st_ref_get(x_5, x_90);
x_92 = lean_ctor_get(x_91, 1);
lean_inc(x_92);
lean_dec(x_91);
x_93 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_92);
x_94 = lean_ctor_get(x_93, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_93, 1);
lean_inc(x_95);
lean_dec(x_93);
x_96 = lean_st_ref_get(x_5, x_95);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_99 = l_Lean_FileMap_toPosition(x_17, x_98);
x_100 = l_Lean_FileMap_toPosition(x_17, x_88);
lean_dec(x_88);
x_101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = lean_st_ref_get(x_5, x_97);
if (x_19 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_102, 1);
lean_inc(x_103);
lean_dec(x_102);
x_104 = lean_box(0);
x_105 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_104, x_9, x_10, x_103);
lean_dec(x_9);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_106 = lean_ctor_get(x_102, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_107 = x_102;
} else {
 lean_dec_ref(x_102);
 x_107 = lean_box(0);
}
x_108 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_94);
x_109 = l_Lean_MessageData_hasTag(x_108, x_94);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
lean_dec(x_101);
lean_dec(x_99);
lean_dec(x_94);
lean_dec(x_16);
lean_dec(x_9);
x_110 = lean_box(0);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_107);
x_112 = lean_box(0);
x_113 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_112, x_9, x_10, x_106);
lean_dec(x_9);
return x_113;
}
}
}
}
}
else
{
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_114; 
x_114 = !lean_is_exclusive(x_22);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_115 = lean_ctor_get(x_22, 0);
x_116 = lean_st_ref_get(x_5, x_15);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
x_118 = lean_st_ref_get(x_5, x_117);
x_119 = lean_ctor_get(x_118, 1);
lean_inc(x_119);
lean_dec(x_118);
x_120 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
lean_dec(x_120);
x_123 = lean_st_ref_get(x_5, x_122);
x_124 = lean_ctor_get(x_123, 1);
lean_inc(x_124);
lean_dec(x_123);
x_125 = l_Lean_FileMap_toPosition(x_17, x_115);
lean_dec(x_115);
lean_inc(x_125);
lean_ctor_set(x_22, 0, x_125);
x_126 = lean_st_ref_get(x_5, x_124);
if (x_19 == 0)
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_ctor_get(x_126, 1);
lean_inc(x_127);
lean_dec(x_126);
x_128 = lean_box(0);
x_129 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_128, x_9, x_10, x_127);
lean_dec(x_9);
return x_129;
}
else
{
uint8_t x_130; 
x_130 = !lean_is_exclusive(x_126);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_131 = lean_ctor_get(x_126, 1);
x_132 = lean_ctor_get(x_126, 0);
lean_dec(x_132);
x_133 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_134 = l_Lean_MessageData_hasTag(x_133, x_121);
if (x_134 == 0)
{
lean_object* x_135; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_135 = lean_box(0);
lean_ctor_set(x_126, 0, x_135);
return x_126;
}
else
{
lean_object* x_136; lean_object* x_137; 
lean_free_object(x_126);
x_136 = lean_box(0);
x_137 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_136, x_9, x_10, x_131);
lean_dec(x_9);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_138 = lean_ctor_get(x_126, 1);
lean_inc(x_138);
lean_dec(x_126);
x_139 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_140 = l_Lean_MessageData_hasTag(x_139, x_121);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_138);
return x_142;
}
else
{
lean_object* x_143; lean_object* x_144; 
x_143 = lean_box(0);
x_144 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_143, x_9, x_10, x_138);
lean_dec(x_9);
return x_144;
}
}
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_145 = lean_ctor_get(x_22, 0);
lean_inc(x_145);
lean_dec(x_22);
x_146 = lean_st_ref_get(x_5, x_15);
x_147 = lean_ctor_get(x_146, 1);
lean_inc(x_147);
lean_dec(x_146);
x_148 = lean_st_ref_get(x_5, x_147);
x_149 = lean_ctor_get(x_148, 1);
lean_inc(x_149);
lean_dec(x_148);
x_150 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_149);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_153 = lean_st_ref_get(x_5, x_152);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_FileMap_toPosition(x_17, x_145);
lean_dec(x_145);
lean_inc(x_155);
x_156 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_156, 0, x_155);
x_157 = lean_st_ref_get(x_5, x_154);
if (x_19 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_157, 1);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_box(0);
x_160 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_159, x_9, x_10, x_158);
lean_dec(x_9);
return x_160;
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_161 = lean_ctor_get(x_157, 1);
lean_inc(x_161);
if (lean_is_exclusive(x_157)) {
 lean_ctor_release(x_157, 0);
 lean_ctor_release(x_157, 1);
 x_162 = x_157;
} else {
 lean_dec_ref(x_157);
 x_162 = lean_box(0);
}
x_163 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_151);
x_164 = l_Lean_MessageData_hasTag(x_163, x_151);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_156);
lean_dec(x_155);
lean_dec(x_151);
lean_dec(x_16);
lean_dec(x_9);
x_165 = lean_box(0);
if (lean_is_scalar(x_162)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_162;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_161);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; 
lean_dec(x_162);
x_167 = lean_box(0);
x_168 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_167, x_9, x_10, x_161);
lean_dec(x_9);
return x_168;
}
}
}
}
else
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_22, 0);
lean_inc(x_169);
lean_dec(x_22);
x_170 = !lean_is_exclusive(x_23);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_171 = lean_ctor_get(x_23, 0);
x_172 = lean_st_ref_get(x_5, x_15);
x_173 = lean_ctor_get(x_172, 1);
lean_inc(x_173);
lean_dec(x_172);
x_174 = lean_st_ref_get(x_5, x_173);
x_175 = lean_ctor_get(x_174, 1);
lean_inc(x_175);
lean_dec(x_174);
x_176 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_175);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_st_ref_get(x_5, x_178);
x_180 = lean_ctor_get(x_179, 1);
lean_inc(x_180);
lean_dec(x_179);
lean_inc(x_17);
x_181 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_182 = l_Lean_FileMap_toPosition(x_17, x_171);
lean_dec(x_171);
lean_ctor_set(x_23, 0, x_182);
x_183 = lean_st_ref_get(x_5, x_180);
if (x_19 == 0)
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_183, 1);
lean_inc(x_184);
lean_dec(x_183);
x_185 = lean_box(0);
x_186 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_185, x_9, x_10, x_184);
lean_dec(x_9);
return x_186;
}
else
{
uint8_t x_187; 
x_187 = !lean_is_exclusive(x_183);
if (x_187 == 0)
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; uint8_t x_191; 
x_188 = lean_ctor_get(x_183, 1);
x_189 = lean_ctor_get(x_183, 0);
lean_dec(x_189);
x_190 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_191 = l_Lean_MessageData_hasTag(x_190, x_177);
if (x_191 == 0)
{
lean_object* x_192; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_192 = lean_box(0);
lean_ctor_set(x_183, 0, x_192);
return x_183;
}
else
{
lean_object* x_193; lean_object* x_194; 
lean_free_object(x_183);
x_193 = lean_box(0);
x_194 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_193, x_9, x_10, x_188);
lean_dec(x_9);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; uint8_t x_197; 
x_195 = lean_ctor_get(x_183, 1);
lean_inc(x_195);
lean_dec(x_183);
x_196 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_197 = l_Lean_MessageData_hasTag(x_196, x_177);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_198 = lean_box(0);
x_199 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_199, 0, x_198);
lean_ctor_set(x_199, 1, x_195);
return x_199;
}
else
{
lean_object* x_200; lean_object* x_201; 
x_200 = lean_box(0);
x_201 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_200, x_9, x_10, x_195);
lean_dec(x_9);
return x_201;
}
}
}
}
else
{
lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_202 = lean_ctor_get(x_23, 0);
lean_inc(x_202);
lean_dec(x_23);
x_203 = lean_st_ref_get(x_5, x_15);
x_204 = lean_ctor_get(x_203, 1);
lean_inc(x_204);
lean_dec(x_203);
x_205 = lean_st_ref_get(x_5, x_204);
x_206 = lean_ctor_get(x_205, 1);
lean_inc(x_206);
lean_dec(x_205);
x_207 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_206);
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_ctor_get(x_207, 1);
lean_inc(x_209);
lean_dec(x_207);
x_210 = lean_st_ref_get(x_5, x_209);
x_211 = lean_ctor_get(x_210, 1);
lean_inc(x_211);
lean_dec(x_210);
lean_inc(x_17);
x_212 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_213 = l_Lean_FileMap_toPosition(x_17, x_202);
lean_dec(x_202);
x_214 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_214, 0, x_213);
x_215 = lean_st_ref_get(x_5, x_211);
if (x_19 == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; 
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = lean_box(0);
x_218 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_217, x_9, x_10, x_216);
lean_dec(x_9);
return x_218;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; uint8_t x_222; 
x_219 = lean_ctor_get(x_215, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_215)) {
 lean_ctor_release(x_215, 0);
 lean_ctor_release(x_215, 1);
 x_220 = x_215;
} else {
 lean_dec_ref(x_215);
 x_220 = lean_box(0);
}
x_221 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_208);
x_222 = l_Lean_MessageData_hasTag(x_221, x_208);
if (x_222 == 0)
{
lean_object* x_223; lean_object* x_224; 
lean_dec(x_214);
lean_dec(x_212);
lean_dec(x_208);
lean_dec(x_16);
lean_dec(x_9);
x_223 = lean_box(0);
if (lean_is_scalar(x_220)) {
 x_224 = lean_alloc_ctor(0, 2, 0);
} else {
 x_224 = x_220;
}
lean_ctor_set(x_224, 0, x_223);
lean_ctor_set(x_224, 1, x_219);
return x_224;
}
else
{
lean_object* x_225; lean_object* x_226; 
lean_dec(x_220);
x_225 = lean_box(0);
x_226 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_225, x_9, x_10, x_219);
lean_dec(x_9);
return x_226;
}
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg___boxed), 11, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_st_ref_get(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_9, 5);
lean_inc(x_14);
x_15 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__6(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_8, 2);
lean_inc(x_11);
x_12 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_13 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_11, x_12);
lean_dec(x_11);
if (x_13 == 0)
{
uint8_t x_14; lean_object* x_15; 
x_14 = 1;
x_15 = l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg(x_1, x_2, x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_15;
}
else
{
uint8_t x_16; lean_object* x_17; 
x_16 = 2;
x_17 = l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg(x_1, x_2, x_16, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_235; uint8_t x_236; 
x_235 = 2;
x_236 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_235);
if (x_236 == 0)
{
lean_object* x_237; 
x_237 = lean_box(0);
x_12 = x_237;
goto block_234;
}
else
{
lean_object* x_238; uint8_t x_239; 
lean_inc(x_2);
x_238 = l_Lean_MessageData_hasSyntheticSorry(x_2);
x_239 = lean_unbox(x_238);
lean_dec(x_238);
if (x_239 == 0)
{
lean_object* x_240; 
x_240 = lean_box(0);
x_12 = x_240;
goto block_234;
}
else
{
lean_object* x_241; lean_object* x_242; 
lean_dec(x_9);
lean_dec(x_2);
x_241 = lean_box(0);
x_242 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_242, 0, x_241);
lean_ctor_set(x_242, 1, x_11);
return x_242;
}
}
block_234:
{
uint8_t x_13; lean_object* x_228; uint8_t x_229; uint8_t x_230; 
lean_dec(x_12);
x_228 = lean_ctor_get(x_9, 2);
lean_inc(x_228);
x_229 = 1;
x_230 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_229);
if (x_230 == 0)
{
lean_dec(x_228);
x_13 = x_3;
goto block_227;
}
else
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_232 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_228, x_231);
lean_dec(x_228);
if (x_232 == 0)
{
x_13 = x_3;
goto block_227;
}
else
{
uint8_t x_233; 
x_233 = 2;
x_13 = x_233;
goto block_227;
}
}
block_227:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_14 = lean_st_ref_get(x_5, x_11);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_9, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_9, 5);
lean_inc(x_18);
x_19 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
x_20 = l_Lean_replaceRef(x_1, x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = l_Lean_Syntax_getPos_x3f(x_20, x_21);
x_23 = l_Lean_Syntax_getTailPos_x3f(x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_st_ref_get(x_5, x_15);
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_5, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_5, x_30);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_unsigned_to_nat(0u);
x_34 = l_Lean_FileMap_toPosition(x_17, x_33);
lean_inc(x_34);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_st_ref_get(x_5, x_32);
if (x_19 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_box(0);
x_39 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_38, x_9, x_10, x_37);
lean_dec(x_9);
return x_39;
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_36, 1);
x_42 = lean_ctor_get(x_36, 0);
lean_dec(x_42);
x_43 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_44 = l_Lean_MessageData_hasTag(x_43, x_29);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_45 = lean_box(0);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_free_object(x_36);
x_46 = lean_box(0);
x_47 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_46, x_9, x_10, x_41);
lean_dec(x_9);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_36, 1);
lean_inc(x_48);
lean_dec(x_36);
x_49 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_50 = l_Lean_MessageData_hasTag(x_49, x_29);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_51 = lean_box(0);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_48);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; 
x_53 = lean_box(0);
x_54 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_53, x_9, x_10, x_48);
lean_dec(x_9);
return x_54;
}
}
}
}
else
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_23);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_56 = lean_ctor_get(x_23, 0);
x_57 = lean_st_ref_get(x_5, x_15);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_st_ref_get(x_5, x_58);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_60);
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = lean_st_ref_get(x_5, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_66 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_67 = l_Lean_FileMap_toPosition(x_17, x_66);
x_68 = l_Lean_FileMap_toPosition(x_17, x_56);
lean_dec(x_56);
lean_ctor_set(x_23, 0, x_68);
x_69 = lean_st_ref_get(x_5, x_65);
if (x_19 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
lean_dec(x_69);
x_71 = lean_box(0);
x_72 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_71, x_9, x_10, x_70);
lean_dec(x_9);
return x_72;
}
else
{
uint8_t x_73; 
x_73 = !lean_is_exclusive(x_69);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_74 = lean_ctor_get(x_69, 1);
x_75 = lean_ctor_get(x_69, 0);
lean_dec(x_75);
x_76 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_77 = l_Lean_MessageData_hasTag(x_76, x_62);
if (x_77 == 0)
{
lean_object* x_78; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_78 = lean_box(0);
lean_ctor_set(x_69, 0, x_78);
return x_69;
}
else
{
lean_object* x_79; lean_object* x_80; 
lean_free_object(x_69);
x_79 = lean_box(0);
x_80 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_79, x_9, x_10, x_74);
lean_dec(x_9);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_69, 1);
lean_inc(x_81);
lean_dec(x_69);
x_82 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_83 = l_Lean_MessageData_hasTag(x_82, x_62);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_81);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
x_86 = lean_box(0);
x_87 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_86, x_9, x_10, x_81);
lean_dec(x_9);
return x_87;
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_88 = lean_ctor_get(x_23, 0);
lean_inc(x_88);
lean_dec(x_23);
x_89 = lean_st_ref_get(x_5, x_15);
x_90 = lean_ctor_get(x_89, 1);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_st_ref_get(x_5, x_90);
x_92 = lean_ctor_get(x_91, 1);
lean_inc(x_92);
lean_dec(x_91);
x_93 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_92);
x_94 = lean_ctor_get(x_93, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_93, 1);
lean_inc(x_95);
lean_dec(x_93);
x_96 = lean_st_ref_get(x_5, x_95);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_99 = l_Lean_FileMap_toPosition(x_17, x_98);
x_100 = l_Lean_FileMap_toPosition(x_17, x_88);
lean_dec(x_88);
x_101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = lean_st_ref_get(x_5, x_97);
if (x_19 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_102, 1);
lean_inc(x_103);
lean_dec(x_102);
x_104 = lean_box(0);
x_105 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_104, x_9, x_10, x_103);
lean_dec(x_9);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_106 = lean_ctor_get(x_102, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_107 = x_102;
} else {
 lean_dec_ref(x_102);
 x_107 = lean_box(0);
}
x_108 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_94);
x_109 = l_Lean_MessageData_hasTag(x_108, x_94);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
lean_dec(x_101);
lean_dec(x_99);
lean_dec(x_94);
lean_dec(x_16);
lean_dec(x_9);
x_110 = lean_box(0);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_107);
x_112 = lean_box(0);
x_113 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_112, x_9, x_10, x_106);
lean_dec(x_9);
return x_113;
}
}
}
}
}
else
{
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_114; 
x_114 = !lean_is_exclusive(x_22);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_115 = lean_ctor_get(x_22, 0);
x_116 = lean_st_ref_get(x_5, x_15);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
x_118 = lean_st_ref_get(x_5, x_117);
x_119 = lean_ctor_get(x_118, 1);
lean_inc(x_119);
lean_dec(x_118);
x_120 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
lean_dec(x_120);
x_123 = lean_st_ref_get(x_5, x_122);
x_124 = lean_ctor_get(x_123, 1);
lean_inc(x_124);
lean_dec(x_123);
x_125 = l_Lean_FileMap_toPosition(x_17, x_115);
lean_dec(x_115);
lean_inc(x_125);
lean_ctor_set(x_22, 0, x_125);
x_126 = lean_st_ref_get(x_5, x_124);
if (x_19 == 0)
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_ctor_get(x_126, 1);
lean_inc(x_127);
lean_dec(x_126);
x_128 = lean_box(0);
x_129 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_128, x_9, x_10, x_127);
lean_dec(x_9);
return x_129;
}
else
{
uint8_t x_130; 
x_130 = !lean_is_exclusive(x_126);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_131 = lean_ctor_get(x_126, 1);
x_132 = lean_ctor_get(x_126, 0);
lean_dec(x_132);
x_133 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_134 = l_Lean_MessageData_hasTag(x_133, x_121);
if (x_134 == 0)
{
lean_object* x_135; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_135 = lean_box(0);
lean_ctor_set(x_126, 0, x_135);
return x_126;
}
else
{
lean_object* x_136; lean_object* x_137; 
lean_free_object(x_126);
x_136 = lean_box(0);
x_137 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_136, x_9, x_10, x_131);
lean_dec(x_9);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_138 = lean_ctor_get(x_126, 1);
lean_inc(x_138);
lean_dec(x_126);
x_139 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_140 = l_Lean_MessageData_hasTag(x_139, x_121);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_138);
return x_142;
}
else
{
lean_object* x_143; lean_object* x_144; 
x_143 = lean_box(0);
x_144 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_143, x_9, x_10, x_138);
lean_dec(x_9);
return x_144;
}
}
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_145 = lean_ctor_get(x_22, 0);
lean_inc(x_145);
lean_dec(x_22);
x_146 = lean_st_ref_get(x_5, x_15);
x_147 = lean_ctor_get(x_146, 1);
lean_inc(x_147);
lean_dec(x_146);
x_148 = lean_st_ref_get(x_5, x_147);
x_149 = lean_ctor_get(x_148, 1);
lean_inc(x_149);
lean_dec(x_148);
x_150 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_149);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_153 = lean_st_ref_get(x_5, x_152);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_FileMap_toPosition(x_17, x_145);
lean_dec(x_145);
lean_inc(x_155);
x_156 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_156, 0, x_155);
x_157 = lean_st_ref_get(x_5, x_154);
if (x_19 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_157, 1);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_box(0);
x_160 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_159, x_9, x_10, x_158);
lean_dec(x_9);
return x_160;
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_161 = lean_ctor_get(x_157, 1);
lean_inc(x_161);
if (lean_is_exclusive(x_157)) {
 lean_ctor_release(x_157, 0);
 lean_ctor_release(x_157, 1);
 x_162 = x_157;
} else {
 lean_dec_ref(x_157);
 x_162 = lean_box(0);
}
x_163 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_151);
x_164 = l_Lean_MessageData_hasTag(x_163, x_151);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_156);
lean_dec(x_155);
lean_dec(x_151);
lean_dec(x_16);
lean_dec(x_9);
x_165 = lean_box(0);
if (lean_is_scalar(x_162)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_162;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_161);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; 
lean_dec(x_162);
x_167 = lean_box(0);
x_168 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_167, x_9, x_10, x_161);
lean_dec(x_9);
return x_168;
}
}
}
}
else
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_22, 0);
lean_inc(x_169);
lean_dec(x_22);
x_170 = !lean_is_exclusive(x_23);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_171 = lean_ctor_get(x_23, 0);
x_172 = lean_st_ref_get(x_5, x_15);
x_173 = lean_ctor_get(x_172, 1);
lean_inc(x_173);
lean_dec(x_172);
x_174 = lean_st_ref_get(x_5, x_173);
x_175 = lean_ctor_get(x_174, 1);
lean_inc(x_175);
lean_dec(x_174);
x_176 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_175);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_st_ref_get(x_5, x_178);
x_180 = lean_ctor_get(x_179, 1);
lean_inc(x_180);
lean_dec(x_179);
lean_inc(x_17);
x_181 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_182 = l_Lean_FileMap_toPosition(x_17, x_171);
lean_dec(x_171);
lean_ctor_set(x_23, 0, x_182);
x_183 = lean_st_ref_get(x_5, x_180);
if (x_19 == 0)
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_183, 1);
lean_inc(x_184);
lean_dec(x_183);
x_185 = lean_box(0);
x_186 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_185, x_9, x_10, x_184);
lean_dec(x_9);
return x_186;
}
else
{
uint8_t x_187; 
x_187 = !lean_is_exclusive(x_183);
if (x_187 == 0)
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; uint8_t x_191; 
x_188 = lean_ctor_get(x_183, 1);
x_189 = lean_ctor_get(x_183, 0);
lean_dec(x_189);
x_190 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_191 = l_Lean_MessageData_hasTag(x_190, x_177);
if (x_191 == 0)
{
lean_object* x_192; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_192 = lean_box(0);
lean_ctor_set(x_183, 0, x_192);
return x_183;
}
else
{
lean_object* x_193; lean_object* x_194; 
lean_free_object(x_183);
x_193 = lean_box(0);
x_194 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_193, x_9, x_10, x_188);
lean_dec(x_9);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; uint8_t x_197; 
x_195 = lean_ctor_get(x_183, 1);
lean_inc(x_195);
lean_dec(x_183);
x_196 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_197 = l_Lean_MessageData_hasTag(x_196, x_177);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_198 = lean_box(0);
x_199 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_199, 0, x_198);
lean_ctor_set(x_199, 1, x_195);
return x_199;
}
else
{
lean_object* x_200; lean_object* x_201; 
x_200 = lean_box(0);
x_201 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_200, x_9, x_10, x_195);
lean_dec(x_9);
return x_201;
}
}
}
}
else
{
lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_202 = lean_ctor_get(x_23, 0);
lean_inc(x_202);
lean_dec(x_23);
x_203 = lean_st_ref_get(x_5, x_15);
x_204 = lean_ctor_get(x_203, 1);
lean_inc(x_204);
lean_dec(x_203);
x_205 = lean_st_ref_get(x_5, x_204);
x_206 = lean_ctor_get(x_205, 1);
lean_inc(x_206);
lean_dec(x_205);
x_207 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_206);
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_ctor_get(x_207, 1);
lean_inc(x_209);
lean_dec(x_207);
x_210 = lean_st_ref_get(x_5, x_209);
x_211 = lean_ctor_get(x_210, 1);
lean_inc(x_211);
lean_dec(x_210);
lean_inc(x_17);
x_212 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_213 = l_Lean_FileMap_toPosition(x_17, x_202);
lean_dec(x_202);
x_214 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_214, 0, x_213);
x_215 = lean_st_ref_get(x_5, x_211);
if (x_19 == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; 
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = lean_box(0);
x_218 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_217, x_9, x_10, x_216);
lean_dec(x_9);
return x_218;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; uint8_t x_222; 
x_219 = lean_ctor_get(x_215, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_215)) {
 lean_ctor_release(x_215, 0);
 lean_ctor_release(x_215, 1);
 x_220 = x_215;
} else {
 lean_dec_ref(x_215);
 x_220 = lean_box(0);
}
x_221 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_208);
x_222 = l_Lean_MessageData_hasTag(x_221, x_208);
if (x_222 == 0)
{
lean_object* x_223; lean_object* x_224; 
lean_dec(x_214);
lean_dec(x_212);
lean_dec(x_208);
lean_dec(x_16);
lean_dec(x_9);
x_223 = lean_box(0);
if (lean_is_scalar(x_220)) {
 x_224 = lean_alloc_ctor(0, 2, 0);
} else {
 x_224 = x_220;
}
lean_ctor_set(x_224, 0, x_223);
lean_ctor_set(x_224, 1, x_219);
return x_224;
}
else
{
lean_object* x_225; lean_object* x_226; 
lean_dec(x_220);
x_225 = lean_box(0);
x_226 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_225, x_9, x_10, x_219);
lean_dec(x_9);
return x_226;
}
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg___boxed), 11, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_st_ref_get(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_9, 5);
lean_inc(x_14);
x_15 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__9(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_235; uint8_t x_236; 
x_235 = 2;
x_236 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_235);
if (x_236 == 0)
{
lean_object* x_237; 
x_237 = lean_box(0);
x_12 = x_237;
goto block_234;
}
else
{
lean_object* x_238; uint8_t x_239; 
lean_inc(x_2);
x_238 = l_Lean_MessageData_hasSyntheticSorry(x_2);
x_239 = lean_unbox(x_238);
lean_dec(x_238);
if (x_239 == 0)
{
lean_object* x_240; 
x_240 = lean_box(0);
x_12 = x_240;
goto block_234;
}
else
{
lean_object* x_241; lean_object* x_242; 
lean_dec(x_9);
lean_dec(x_2);
x_241 = lean_box(0);
x_242 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_242, 0, x_241);
lean_ctor_set(x_242, 1, x_11);
return x_242;
}
}
block_234:
{
uint8_t x_13; lean_object* x_228; uint8_t x_229; uint8_t x_230; 
lean_dec(x_12);
x_228 = lean_ctor_get(x_9, 2);
lean_inc(x_228);
x_229 = 1;
x_230 = l___private_Lean_Message_0__Lean_beqMessageSeverity____x40_Lean_Message___hyg_106_(x_3, x_229);
if (x_230 == 0)
{
lean_dec(x_228);
x_13 = x_3;
goto block_227;
}
else
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_232 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_228, x_231);
lean_dec(x_228);
if (x_232 == 0)
{
x_13 = x_3;
goto block_227;
}
else
{
uint8_t x_233; 
x_233 = 2;
x_13 = x_233;
goto block_227;
}
}
block_227:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_14 = lean_st_ref_get(x_5, x_11);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_9, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
x_18 = lean_ctor_get(x_9, 5);
lean_inc(x_18);
x_19 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
x_20 = l_Lean_replaceRef(x_1, x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = l_Lean_Syntax_getPos_x3f(x_20, x_21);
x_23 = l_Lean_Syntax_getTailPos_x3f(x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_st_ref_get(x_5, x_15);
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_5, x_25);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_5, x_30);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_unsigned_to_nat(0u);
x_34 = l_Lean_FileMap_toPosition(x_17, x_33);
lean_inc(x_34);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_st_ref_get(x_5, x_32);
if (x_19 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_box(0);
x_39 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_38, x_9, x_10, x_37);
lean_dec(x_9);
return x_39;
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_36, 1);
x_42 = lean_ctor_get(x_36, 0);
lean_dec(x_42);
x_43 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_44 = l_Lean_MessageData_hasTag(x_43, x_29);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_45 = lean_box(0);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; 
lean_free_object(x_36);
x_46 = lean_box(0);
x_47 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_46, x_9, x_10, x_41);
lean_dec(x_9);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_36, 1);
lean_inc(x_48);
lean_dec(x_36);
x_49 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_29);
x_50 = l_Lean_MessageData_hasTag(x_49, x_29);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_35);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_16);
lean_dec(x_9);
x_51 = lean_box(0);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_48);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; 
x_53 = lean_box(0);
x_54 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_29, x_16, x_34, x_35, x_13, x_53, x_9, x_10, x_48);
lean_dec(x_9);
return x_54;
}
}
}
}
else
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_23);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_56 = lean_ctor_get(x_23, 0);
x_57 = lean_st_ref_get(x_5, x_15);
x_58 = lean_ctor_get(x_57, 1);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_st_ref_get(x_5, x_58);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_60);
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = lean_st_ref_get(x_5, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_66 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_67 = l_Lean_FileMap_toPosition(x_17, x_66);
x_68 = l_Lean_FileMap_toPosition(x_17, x_56);
lean_dec(x_56);
lean_ctor_set(x_23, 0, x_68);
x_69 = lean_st_ref_get(x_5, x_65);
if (x_19 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
lean_dec(x_69);
x_71 = lean_box(0);
x_72 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_71, x_9, x_10, x_70);
lean_dec(x_9);
return x_72;
}
else
{
uint8_t x_73; 
x_73 = !lean_is_exclusive(x_69);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_74 = lean_ctor_get(x_69, 1);
x_75 = lean_ctor_get(x_69, 0);
lean_dec(x_75);
x_76 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_77 = l_Lean_MessageData_hasTag(x_76, x_62);
if (x_77 == 0)
{
lean_object* x_78; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_78 = lean_box(0);
lean_ctor_set(x_69, 0, x_78);
return x_69;
}
else
{
lean_object* x_79; lean_object* x_80; 
lean_free_object(x_69);
x_79 = lean_box(0);
x_80 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_79, x_9, x_10, x_74);
lean_dec(x_9);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_69, 1);
lean_inc(x_81);
lean_dec(x_69);
x_82 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_62);
x_83 = l_Lean_MessageData_hasTag(x_82, x_62);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_23);
lean_dec(x_67);
lean_dec(x_62);
lean_dec(x_16);
lean_dec(x_9);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_81);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
x_86 = lean_box(0);
x_87 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_62, x_16, x_67, x_23, x_13, x_86, x_9, x_10, x_81);
lean_dec(x_9);
return x_87;
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_88 = lean_ctor_get(x_23, 0);
lean_inc(x_88);
lean_dec(x_23);
x_89 = lean_st_ref_get(x_5, x_15);
x_90 = lean_ctor_get(x_89, 1);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_st_ref_get(x_5, x_90);
x_92 = lean_ctor_get(x_91, 1);
lean_inc(x_92);
lean_dec(x_91);
x_93 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_92);
x_94 = lean_ctor_get(x_93, 0);
lean_inc(x_94);
x_95 = lean_ctor_get(x_93, 1);
lean_inc(x_95);
lean_dec(x_93);
x_96 = lean_st_ref_get(x_5, x_95);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_unsigned_to_nat(0u);
lean_inc(x_17);
x_99 = l_Lean_FileMap_toPosition(x_17, x_98);
x_100 = l_Lean_FileMap_toPosition(x_17, x_88);
lean_dec(x_88);
x_101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = lean_st_ref_get(x_5, x_97);
if (x_19 == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_102, 1);
lean_inc(x_103);
lean_dec(x_102);
x_104 = lean_box(0);
x_105 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_104, x_9, x_10, x_103);
lean_dec(x_9);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_106 = lean_ctor_get(x_102, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_107 = x_102;
} else {
 lean_dec_ref(x_102);
 x_107 = lean_box(0);
}
x_108 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_94);
x_109 = l_Lean_MessageData_hasTag(x_108, x_94);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
lean_dec(x_101);
lean_dec(x_99);
lean_dec(x_94);
lean_dec(x_16);
lean_dec(x_9);
x_110 = lean_box(0);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_107);
x_112 = lean_box(0);
x_113 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_94, x_16, x_99, x_101, x_13, x_112, x_9, x_10, x_106);
lean_dec(x_9);
return x_113;
}
}
}
}
}
else
{
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_114; 
x_114 = !lean_is_exclusive(x_22);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_115 = lean_ctor_get(x_22, 0);
x_116 = lean_st_ref_get(x_5, x_15);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
x_118 = lean_st_ref_get(x_5, x_117);
x_119 = lean_ctor_get(x_118, 1);
lean_inc(x_119);
lean_dec(x_118);
x_120 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
lean_dec(x_120);
x_123 = lean_st_ref_get(x_5, x_122);
x_124 = lean_ctor_get(x_123, 1);
lean_inc(x_124);
lean_dec(x_123);
x_125 = l_Lean_FileMap_toPosition(x_17, x_115);
lean_dec(x_115);
lean_inc(x_125);
lean_ctor_set(x_22, 0, x_125);
x_126 = lean_st_ref_get(x_5, x_124);
if (x_19 == 0)
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_ctor_get(x_126, 1);
lean_inc(x_127);
lean_dec(x_126);
x_128 = lean_box(0);
x_129 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_128, x_9, x_10, x_127);
lean_dec(x_9);
return x_129;
}
else
{
uint8_t x_130; 
x_130 = !lean_is_exclusive(x_126);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_131 = lean_ctor_get(x_126, 1);
x_132 = lean_ctor_get(x_126, 0);
lean_dec(x_132);
x_133 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_134 = l_Lean_MessageData_hasTag(x_133, x_121);
if (x_134 == 0)
{
lean_object* x_135; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_135 = lean_box(0);
lean_ctor_set(x_126, 0, x_135);
return x_126;
}
else
{
lean_object* x_136; lean_object* x_137; 
lean_free_object(x_126);
x_136 = lean_box(0);
x_137 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_136, x_9, x_10, x_131);
lean_dec(x_9);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_138 = lean_ctor_get(x_126, 1);
lean_inc(x_138);
lean_dec(x_126);
x_139 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_121);
x_140 = l_Lean_MessageData_hasTag(x_139, x_121);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
lean_dec(x_22);
lean_dec(x_125);
lean_dec(x_121);
lean_dec(x_16);
lean_dec(x_9);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_138);
return x_142;
}
else
{
lean_object* x_143; lean_object* x_144; 
x_143 = lean_box(0);
x_144 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_121, x_16, x_125, x_22, x_13, x_143, x_9, x_10, x_138);
lean_dec(x_9);
return x_144;
}
}
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_145 = lean_ctor_get(x_22, 0);
lean_inc(x_145);
lean_dec(x_22);
x_146 = lean_st_ref_get(x_5, x_15);
x_147 = lean_ctor_get(x_146, 1);
lean_inc(x_147);
lean_dec(x_146);
x_148 = lean_st_ref_get(x_5, x_147);
x_149 = lean_ctor_get(x_148, 1);
lean_inc(x_149);
lean_dec(x_148);
x_150 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_149);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_153 = lean_st_ref_get(x_5, x_152);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_FileMap_toPosition(x_17, x_145);
lean_dec(x_145);
lean_inc(x_155);
x_156 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_156, 0, x_155);
x_157 = lean_st_ref_get(x_5, x_154);
if (x_19 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_158 = lean_ctor_get(x_157, 1);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_box(0);
x_160 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_159, x_9, x_10, x_158);
lean_dec(x_9);
return x_160;
}
else
{
lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_161 = lean_ctor_get(x_157, 1);
lean_inc(x_161);
if (lean_is_exclusive(x_157)) {
 lean_ctor_release(x_157, 0);
 lean_ctor_release(x_157, 1);
 x_162 = x_157;
} else {
 lean_dec_ref(x_157);
 x_162 = lean_box(0);
}
x_163 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_151);
x_164 = l_Lean_MessageData_hasTag(x_163, x_151);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_156);
lean_dec(x_155);
lean_dec(x_151);
lean_dec(x_16);
lean_dec(x_9);
x_165 = lean_box(0);
if (lean_is_scalar(x_162)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_162;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_161);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; 
lean_dec(x_162);
x_167 = lean_box(0);
x_168 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_151, x_16, x_155, x_156, x_13, x_167, x_9, x_10, x_161);
lean_dec(x_9);
return x_168;
}
}
}
}
else
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_22, 0);
lean_inc(x_169);
lean_dec(x_22);
x_170 = !lean_is_exclusive(x_23);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_171 = lean_ctor_get(x_23, 0);
x_172 = lean_st_ref_get(x_5, x_15);
x_173 = lean_ctor_get(x_172, 1);
lean_inc(x_173);
lean_dec(x_172);
x_174 = lean_st_ref_get(x_5, x_173);
x_175 = lean_ctor_get(x_174, 1);
lean_inc(x_175);
lean_dec(x_174);
x_176 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_175);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
x_179 = lean_st_ref_get(x_5, x_178);
x_180 = lean_ctor_get(x_179, 1);
lean_inc(x_180);
lean_dec(x_179);
lean_inc(x_17);
x_181 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_182 = l_Lean_FileMap_toPosition(x_17, x_171);
lean_dec(x_171);
lean_ctor_set(x_23, 0, x_182);
x_183 = lean_st_ref_get(x_5, x_180);
if (x_19 == 0)
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_183, 1);
lean_inc(x_184);
lean_dec(x_183);
x_185 = lean_box(0);
x_186 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_185, x_9, x_10, x_184);
lean_dec(x_9);
return x_186;
}
else
{
uint8_t x_187; 
x_187 = !lean_is_exclusive(x_183);
if (x_187 == 0)
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; uint8_t x_191; 
x_188 = lean_ctor_get(x_183, 1);
x_189 = lean_ctor_get(x_183, 0);
lean_dec(x_189);
x_190 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_191 = l_Lean_MessageData_hasTag(x_190, x_177);
if (x_191 == 0)
{
lean_object* x_192; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_192 = lean_box(0);
lean_ctor_set(x_183, 0, x_192);
return x_183;
}
else
{
lean_object* x_193; lean_object* x_194; 
lean_free_object(x_183);
x_193 = lean_box(0);
x_194 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_193, x_9, x_10, x_188);
lean_dec(x_9);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; uint8_t x_197; 
x_195 = lean_ctor_get(x_183, 1);
lean_inc(x_195);
lean_dec(x_183);
x_196 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_177);
x_197 = l_Lean_MessageData_hasTag(x_196, x_177);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; 
lean_dec(x_23);
lean_dec(x_181);
lean_dec(x_177);
lean_dec(x_16);
lean_dec(x_9);
x_198 = lean_box(0);
x_199 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_199, 0, x_198);
lean_ctor_set(x_199, 1, x_195);
return x_199;
}
else
{
lean_object* x_200; lean_object* x_201; 
x_200 = lean_box(0);
x_201 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_177, x_16, x_181, x_23, x_13, x_200, x_9, x_10, x_195);
lean_dec(x_9);
return x_201;
}
}
}
}
else
{
lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_202 = lean_ctor_get(x_23, 0);
lean_inc(x_202);
lean_dec(x_23);
x_203 = lean_st_ref_get(x_5, x_15);
x_204 = lean_ctor_get(x_203, 1);
lean_inc(x_204);
lean_dec(x_203);
x_205 = lean_st_ref_get(x_5, x_204);
x_206 = lean_ctor_get(x_205, 1);
lean_inc(x_206);
lean_dec(x_205);
x_207 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_7, x_8, x_9, x_10, x_206);
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_ctor_get(x_207, 1);
lean_inc(x_209);
lean_dec(x_207);
x_210 = lean_st_ref_get(x_5, x_209);
x_211 = lean_ctor_get(x_210, 1);
lean_inc(x_211);
lean_dec(x_210);
lean_inc(x_17);
x_212 = l_Lean_FileMap_toPosition(x_17, x_169);
lean_dec(x_169);
x_213 = l_Lean_FileMap_toPosition(x_17, x_202);
lean_dec(x_202);
x_214 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_214, 0, x_213);
x_215 = lean_st_ref_get(x_5, x_211);
if (x_19 == 0)
{
lean_object* x_216; lean_object* x_217; lean_object* x_218; 
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = lean_box(0);
x_218 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_217, x_9, x_10, x_216);
lean_dec(x_9);
return x_218;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; uint8_t x_222; 
x_219 = lean_ctor_get(x_215, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_215)) {
 lean_ctor_release(x_215, 0);
 lean_ctor_release(x_215, 1);
 x_220 = x_215;
} else {
 lean_dec_ref(x_215);
 x_220 = lean_box(0);
}
x_221 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1;
lean_inc(x_208);
x_222 = l_Lean_MessageData_hasTag(x_221, x_208);
if (x_222 == 0)
{
lean_object* x_223; lean_object* x_224; 
lean_dec(x_214);
lean_dec(x_212);
lean_dec(x_208);
lean_dec(x_16);
lean_dec(x_9);
x_223 = lean_box(0);
if (lean_is_scalar(x_220)) {
 x_224 = lean_alloc_ctor(0, 2, 0);
} else {
 x_224 = x_220;
}
lean_ctor_set(x_224, 0, x_223);
lean_ctor_set(x_224, 1, x_219);
return x_224;
}
else
{
lean_object* x_225; lean_object* x_226; 
lean_dec(x_220);
x_225 = lean_box(0);
x_226 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__1(x_208, x_16, x_212, x_214, x_13, x_225, x_9, x_10, x_219);
lean_dec(x_9);
return x_226;
}
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg___boxed), 11, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_st_ref_get(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_9, 5);
lean_inc(x_14);
x_15 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__11(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg___boxed), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_8, 2);
lean_inc(x_11);
x_12 = l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2;
x_13 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_11, x_12);
lean_dec(x_11);
if (x_13 == 0)
{
uint8_t x_14; lean_object* x_15; 
x_14 = 1;
x_15 = l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg(x_1, x_2, x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_15;
}
else
{
uint8_t x_16; lean_object* x_17; 
x_16 = 2;
x_17 = l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg(x_1, x_2, x_16, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_11 = lean_ctor_get(x_8, 5);
x_12 = lean_st_ref_get(x_4, x_10);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_6, x_7, x_8, x_9, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_4, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_st_ref_take(x_9, x_18);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; double x_25; uint8_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_21, 3);
x_25 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_26 = 0;
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_28 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_28, 0, x_1);
lean_ctor_set(x_28, 1, x_27);
lean_ctor_set_float(x_28, sizeof(void*)*2, x_25);
lean_ctor_set_float(x_28, sizeof(void*)*2 + 8, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*2 + 16, x_26);
x_29 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_30 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_15);
lean_ctor_set(x_30, 2, x_29);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_30);
lean_ctor_set(x_19, 0, x_11);
x_31 = l_Lean_PersistentArray_push___rarg(x_24, x_19);
lean_ctor_set(x_21, 3, x_31);
x_32 = lean_st_ref_set(x_9, x_21, x_23);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_32, 0);
lean_dec(x_34);
x_35 = lean_box(0);
lean_ctor_set(x_32, 0, x_35);
return x_32;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
lean_dec(x_32);
x_37 = lean_box(0);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; double x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_39 = lean_ctor_get(x_19, 1);
x_40 = lean_ctor_get(x_21, 0);
x_41 = lean_ctor_get(x_21, 1);
x_42 = lean_ctor_get(x_21, 2);
x_43 = lean_ctor_get(x_21, 3);
x_44 = lean_ctor_get(x_21, 4);
x_45 = lean_ctor_get(x_21, 5);
x_46 = lean_ctor_get(x_21, 6);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_21);
x_47 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_48 = 0;
x_49 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_50 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_50, 0, x_1);
lean_ctor_set(x_50, 1, x_49);
lean_ctor_set_float(x_50, sizeof(void*)*2, x_47);
lean_ctor_set_float(x_50, sizeof(void*)*2 + 8, x_47);
lean_ctor_set_uint8(x_50, sizeof(void*)*2 + 16, x_48);
x_51 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_52 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_15);
lean_ctor_set(x_52, 2, x_51);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_52);
lean_ctor_set(x_19, 0, x_11);
x_53 = l_Lean_PersistentArray_push___rarg(x_43, x_19);
x_54 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_54, 0, x_40);
lean_ctor_set(x_54, 1, x_41);
lean_ctor_set(x_54, 2, x_42);
lean_ctor_set(x_54, 3, x_53);
lean_ctor_set(x_54, 4, x_44);
lean_ctor_set(x_54, 5, x_45);
lean_ctor_set(x_54, 6, x_46);
x_55 = lean_st_ref_set(x_9, x_54, x_39);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_57 = x_55;
} else {
 lean_dec_ref(x_55);
 x_57 = lean_box(0);
}
x_58 = lean_box(0);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(0, 2, 0);
} else {
 x_59 = x_57;
}
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; double x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_60 = lean_ctor_get(x_19, 0);
x_61 = lean_ctor_get(x_19, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_19);
x_62 = lean_ctor_get(x_60, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_60, 1);
lean_inc(x_63);
x_64 = lean_ctor_get(x_60, 2);
lean_inc(x_64);
x_65 = lean_ctor_get(x_60, 3);
lean_inc(x_65);
x_66 = lean_ctor_get(x_60, 4);
lean_inc(x_66);
x_67 = lean_ctor_get(x_60, 5);
lean_inc(x_67);
x_68 = lean_ctor_get(x_60, 6);
lean_inc(x_68);
if (lean_is_exclusive(x_60)) {
 lean_ctor_release(x_60, 0);
 lean_ctor_release(x_60, 1);
 lean_ctor_release(x_60, 2);
 lean_ctor_release(x_60, 3);
 lean_ctor_release(x_60, 4);
 lean_ctor_release(x_60, 5);
 lean_ctor_release(x_60, 6);
 x_69 = x_60;
} else {
 lean_dec_ref(x_60);
 x_69 = lean_box(0);
}
x_70 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_71 = 0;
x_72 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_73 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_73, 0, x_1);
lean_ctor_set(x_73, 1, x_72);
lean_ctor_set_float(x_73, sizeof(void*)*2, x_70);
lean_ctor_set_float(x_73, sizeof(void*)*2 + 8, x_70);
lean_ctor_set_uint8(x_73, sizeof(void*)*2 + 16, x_71);
x_74 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_75 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_75, 0, x_73);
lean_ctor_set(x_75, 1, x_15);
lean_ctor_set(x_75, 2, x_74);
lean_inc(x_11);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_11);
lean_ctor_set(x_76, 1, x_75);
x_77 = l_Lean_PersistentArray_push___rarg(x_65, x_76);
if (lean_is_scalar(x_69)) {
 x_78 = lean_alloc_ctor(0, 7, 0);
} else {
 x_78 = x_69;
}
lean_ctor_set(x_78, 0, x_62);
lean_ctor_set(x_78, 1, x_63);
lean_ctor_set(x_78, 2, x_64);
lean_ctor_set(x_78, 3, x_77);
lean_ctor_set(x_78, 4, x_66);
lean_ctor_set(x_78, 5, x_67);
lean_ctor_set(x_78, 6, x_68);
x_79 = lean_st_ref_set(x_9, x_78, x_61);
x_80 = lean_ctor_get(x_79, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_81 = x_79;
} else {
 lean_dec_ref(x_79);
 x_81 = lean_box(0);
}
x_82 = lean_box(0);
if (lean_is_scalar(x_81)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_81;
}
lean_ctor_set(x_83, 0, x_82);
lean_ctor_set(x_83, 1, x_80);
return x_83;
}
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg___boxed), 10, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_11 = lean_ctor_get(x_8, 5);
x_12 = lean_st_ref_get(x_4, x_10);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_2, x_6, x_7, x_8, x_9, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_4, x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_st_ref_take(x_9, x_18);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; double x_25; uint8_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_21, 3);
x_25 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_26 = 0;
x_27 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_28 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_28, 0, x_1);
lean_ctor_set(x_28, 1, x_27);
lean_ctor_set_float(x_28, sizeof(void*)*2, x_25);
lean_ctor_set_float(x_28, sizeof(void*)*2 + 8, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*2 + 16, x_26);
x_29 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_30 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_15);
lean_ctor_set(x_30, 2, x_29);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_30);
lean_ctor_set(x_19, 0, x_11);
x_31 = l_Lean_PersistentArray_push___rarg(x_24, x_19);
lean_ctor_set(x_21, 3, x_31);
x_32 = lean_st_ref_set(x_9, x_21, x_23);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_32, 0);
lean_dec(x_34);
x_35 = lean_box(0);
lean_ctor_set(x_32, 0, x_35);
return x_32;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
lean_dec(x_32);
x_37 = lean_box(0);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; double x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_39 = lean_ctor_get(x_19, 1);
x_40 = lean_ctor_get(x_21, 0);
x_41 = lean_ctor_get(x_21, 1);
x_42 = lean_ctor_get(x_21, 2);
x_43 = lean_ctor_get(x_21, 3);
x_44 = lean_ctor_get(x_21, 4);
x_45 = lean_ctor_get(x_21, 5);
x_46 = lean_ctor_get(x_21, 6);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_21);
x_47 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_48 = 0;
x_49 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_50 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_50, 0, x_1);
lean_ctor_set(x_50, 1, x_49);
lean_ctor_set_float(x_50, sizeof(void*)*2, x_47);
lean_ctor_set_float(x_50, sizeof(void*)*2 + 8, x_47);
lean_ctor_set_uint8(x_50, sizeof(void*)*2 + 16, x_48);
x_51 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_52 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_15);
lean_ctor_set(x_52, 2, x_51);
lean_inc(x_11);
lean_ctor_set(x_19, 1, x_52);
lean_ctor_set(x_19, 0, x_11);
x_53 = l_Lean_PersistentArray_push___rarg(x_43, x_19);
x_54 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_54, 0, x_40);
lean_ctor_set(x_54, 1, x_41);
lean_ctor_set(x_54, 2, x_42);
lean_ctor_set(x_54, 3, x_53);
lean_ctor_set(x_54, 4, x_44);
lean_ctor_set(x_54, 5, x_45);
lean_ctor_set(x_54, 6, x_46);
x_55 = lean_st_ref_set(x_9, x_54, x_39);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_57 = x_55;
} else {
 lean_dec_ref(x_55);
 x_57 = lean_box(0);
}
x_58 = lean_box(0);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(0, 2, 0);
} else {
 x_59 = x_57;
}
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; double x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_60 = lean_ctor_get(x_19, 0);
x_61 = lean_ctor_get(x_19, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_19);
x_62 = lean_ctor_get(x_60, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_60, 1);
lean_inc(x_63);
x_64 = lean_ctor_get(x_60, 2);
lean_inc(x_64);
x_65 = lean_ctor_get(x_60, 3);
lean_inc(x_65);
x_66 = lean_ctor_get(x_60, 4);
lean_inc(x_66);
x_67 = lean_ctor_get(x_60, 5);
lean_inc(x_67);
x_68 = lean_ctor_get(x_60, 6);
lean_inc(x_68);
if (lean_is_exclusive(x_60)) {
 lean_ctor_release(x_60, 0);
 lean_ctor_release(x_60, 1);
 lean_ctor_release(x_60, 2);
 lean_ctor_release(x_60, 3);
 lean_ctor_release(x_60, 4);
 lean_ctor_release(x_60, 5);
 lean_ctor_release(x_60, 6);
 x_69 = x_60;
} else {
 lean_dec_ref(x_60);
 x_69 = lean_box(0);
}
x_70 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1;
x_71 = 0;
x_72 = l_Aesop_expandNextGoal_fmt___rarg___closed__1;
x_73 = lean_alloc_ctor(0, 2, 17);
lean_ctor_set(x_73, 0, x_1);
lean_ctor_set(x_73, 1, x_72);
lean_ctor_set_float(x_73, sizeof(void*)*2, x_70);
lean_ctor_set_float(x_73, sizeof(void*)*2 + 8, x_70);
lean_ctor_set_uint8(x_73, sizeof(void*)*2 + 16, x_71);
x_74 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_75 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_75, 0, x_73);
lean_ctor_set(x_75, 1, x_15);
lean_ctor_set(x_75, 2, x_74);
lean_inc(x_11);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_11);
lean_ctor_set(x_76, 1, x_75);
x_77 = l_Lean_PersistentArray_push___rarg(x_65, x_76);
if (lean_is_scalar(x_69)) {
 x_78 = lean_alloc_ctor(0, 7, 0);
} else {
 x_78 = x_69;
}
lean_ctor_set(x_78, 0, x_62);
lean_ctor_set(x_78, 1, x_63);
lean_ctor_set(x_78, 2, x_64);
lean_ctor_set(x_78, 3, x_77);
lean_ctor_set(x_78, 4, x_66);
lean_ctor_set(x_78, 5, x_67);
lean_ctor_set(x_78, 6, x_68);
x_79 = lean_st_ref_set(x_9, x_78, x_61);
x_80 = lean_ctor_get(x_79, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_81 = x_79;
} else {
 lean_dec_ref(x_79);
 x_81 = lean_box(0);
}
x_82 = lean_box(0);
if (lean_is_scalar(x_81)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_81;
}
lean_ctor_set(x_83, 0, x_82);
lean_ctor_set(x_83, 1, x_80);
return x_83;
}
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg___boxed), 10, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_apply_3(x_2, x_3, x_4, x_5);
x_12 = l___private_Lean_Meta_Basic_0__Lean_Meta_withMVarContextImp___rarg(x_1, x_11, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
return x_12;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_12);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_12);
if (x_17 == 0)
{
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_12, 0);
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_12);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___rarg), 10, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_array_size(x_1);
x_13 = 0;
x_14 = l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg(x_2, x_12, x_13, x_1, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: safe prefix was not fully expanded because the maximum number of rule applications (", 91, 91);
return x_1;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_handleNonfatalError___rarg___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__2(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
if (x_3 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_13 = lean_ctor_get(x_5, 2);
lean_inc(x_13);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
lean_dec(x_13);
x_15 = lean_ctor_get(x_14, 4);
lean_inc(x_15);
lean_dec(x_14);
x_16 = l___private_Init_Data_Repr_0__Nat_reprFast(x_15);
x_17 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_17, 0, x_16);
x_18 = l_Lean_MessageData_ofFormat(x_17);
x_19 = l_Aesop_handleNonfatalError___rarg___lambda__2___closed__2;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
x_21 = l_Aesop_throwAesopEx___rarg___closed__16;
x_22 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
lean_inc(x_10);
x_23 = l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg(x_2, x_22, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = l_Aesop_handleNonfatalError___rarg___lambda__1(x_1, x_2, x_24, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_25);
lean_dec(x_5);
lean_dec(x_24);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_box(0);
x_28 = l_Aesop_handleNonfatalError___rarg___lambda__1(x_1, x_2, x_27, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_5);
return x_28;
}
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: ", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_handleNonfatalError___rarg___lambda__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__3(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; uint8_t x_16; 
x_15 = lean_ctor_get(x_4, 0);
x_16 = lean_ctor_get_uint8(x_15, sizeof(void*)*9 + 5);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_dec(x_5);
x_17 = lean_box(0);
x_18 = l_Aesop_handleNonfatalError___rarg___lambda__2(x_1, x_2, x_3, x_17, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_19 = l_Aesop_handleNonfatalError___rarg___lambda__3___closed__2;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_5);
x_21 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_22 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
lean_inc(x_12);
x_23 = l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg(x_2, x_22, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = l_Aesop_handleNonfatalError___rarg___lambda__2(x_1, x_2, x_3, x_24, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_25);
lean_dec(x_24);
return x_26;
}
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("made no progress", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_handleNonfatalError___rarg___lambda__4___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_handleNonfatalError___rarg___lambda__4___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_handleNonfatalError___rarg___lambda__4___closed__3;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_15 = lean_st_ref_get(x_8, x_14);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_ctor_get(x_16, 0);
lean_inc(x_18);
lean_dec(x_16);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_19 = l_Aesop_treeHasProgress(x_18, x_9, x_10, x_11, x_12, x_13, x_17);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; uint8_t x_21; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_unbox(x_20);
lean_dec(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
lean_dec(x_5);
lean_dec(x_1);
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_dec(x_19);
x_23 = lean_st_ref_get(x_8, x_22);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = lean_ctor_get(x_24, 0);
lean_inc(x_26);
lean_dec(x_24);
x_27 = l_Aesop_getRootMVarId(x_26, x_9, x_10, x_11, x_12, x_13, x_25);
lean_dec(x_26);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_27, 1);
lean_inc(x_29);
lean_dec(x_27);
x_30 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_31 = l_Aesop_handleNonfatalError___rarg___lambda__4___closed__4;
x_32 = l_Aesop_throwAesopEx___rarg(x_2, lean_box(0), x_28, x_30, x_3, x_31, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_29);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
return x_32;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_32, 0);
x_35 = lean_ctor_get(x_32, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_32);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
else
{
uint8_t x_37; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
x_37 = !lean_is_exclusive(x_27);
if (x_37 == 0)
{
return x_27;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_27, 0);
x_39 = lean_ctor_get(x_27, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_27);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_19, 1);
lean_inc(x_41);
lean_dec(x_19);
x_42 = lean_box(0);
x_43 = l_Aesop_handleNonfatalError___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5, x_42, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_41);
lean_dec(x_9);
return x_43;
}
}
else
{
uint8_t x_44; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_1);
x_44 = !lean_is_exclusive(x_19);
if (x_44 == 0)
{
return x_19;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_19, 0);
x_46 = lean_ctor_get(x_19, 1);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_19);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__5(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; 
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
x_14 = l_Aesop_traceTree___rarg(x_7, x_8, x_9, x_10, x_11, x_12, x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = 0;
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_1);
x_17 = l_Aesop_traceScript___rarg(x_1, x_16, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_15);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_18 = lean_ctor_get(x_6, 2);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get_uint8(x_19, sizeof(void*)*9 + 4);
lean_dec(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_17, 1);
lean_inc(x_21);
lean_dec(x_17);
x_22 = lean_box(0);
x_23 = l_Aesop_handleNonfatalError___rarg___lambda__4(x_2, x_1, x_3, x_18, x_4, x_22, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_21);
lean_dec(x_7);
lean_dec(x_18);
lean_dec(x_1);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_18);
x_24 = lean_ctor_get(x_17, 1);
lean_inc(x_24);
lean_dec(x_17);
x_25 = lean_st_ref_get(x_7, x_24);
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_25, 1);
lean_inc(x_27);
lean_dec(x_25);
x_28 = lean_ctor_get(x_26, 0);
lean_inc(x_28);
lean_dec(x_26);
x_29 = l_Aesop_getRootMVarId(x_28, x_8, x_9, x_10, x_11, x_12, x_27);
lean_dec(x_28);
if (lean_obj_tag(x_29) == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_4);
x_33 = l_Aesop_throwAesopEx___rarg(x_1, lean_box(0), x_30, x_2, x_3, x_32, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_31);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_1);
x_34 = !lean_is_exclusive(x_33);
if (x_34 == 0)
{
return x_33;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_33, 0);
x_36 = lean_ctor_get(x_33, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_33);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
else
{
uint8_t x_38; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_38 = !lean_is_exclusive(x_29);
if (x_38 == 0)
{
return x_29;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_29, 0);
x_40 = lean_ctor_get(x_29, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_29);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
}
else
{
uint8_t x_42; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_42 = !lean_is_exclusive(x_17);
if (x_42 == 0)
{
return x_17;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_17, 0);
x_44 = lean_ctor_get(x_17, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_17);
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
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_46 = !lean_is_exclusive(x_14);
if (x_46 == 0)
{
return x_14;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_14, 0);
x_48 = lean_ctor_get(x_14, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_14);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("<no proof>", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_handleNonfatalError___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_handleNonfatalError___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_11 = l_Aesop_expandSafePrefix___rarg(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_st_ref_get(x_4, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_18 = l_Aesop_extractSafePrefix(x_17, x_5, x_6, x_7, x_8, x_9, x_16);
lean_dec(x_17);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = l_Aesop_finalizeProof___rarg___lambda__3___closed__1;
x_22 = l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg(x_21, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_20);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_unbox(x_23);
lean_dec(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; 
x_25 = lean_ctor_get(x_22, 1);
lean_inc(x_25);
lean_dec(x_22);
x_26 = lean_box(0);
x_27 = lean_unbox(x_12);
lean_dec(x_12);
x_28 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_19, x_27, x_2, x_26, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_25);
return x_28;
}
else
{
uint8_t x_29; 
x_29 = !lean_is_exclusive(x_22);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_22, 1);
x_31 = lean_ctor_get(x_22, 0);
lean_dec(x_31);
x_32 = l_Aesop_getProof_x3f___rarg(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_30);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_33; 
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; lean_object* x_42; 
lean_free_object(x_22);
x_34 = lean_ctor_get(x_32, 1);
lean_inc(x_34);
lean_dec(x_32);
x_35 = l_Aesop_TraceOption_proof;
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = l_Aesop_handleNonfatalError___rarg___closed__2;
x_38 = l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg(x_36, x_37, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_34);
x_39 = lean_ctor_get(x_38, 0);
lean_inc(x_39);
x_40 = lean_ctor_get(x_38, 1);
lean_inc(x_40);
lean_dec(x_38);
x_41 = lean_unbox(x_12);
lean_dec(x_12);
x_42 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_19, x_41, x_2, x_39, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_40);
lean_dec(x_39);
return x_42;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; uint8_t x_46; 
x_43 = lean_ctor_get(x_32, 1);
lean_inc(x_43);
lean_dec(x_32);
x_44 = lean_ctor_get(x_33, 0);
lean_inc(x_44);
lean_dec(x_33);
x_45 = lean_st_ref_get(x_4, x_43);
x_46 = !lean_is_exclusive(x_45);
if (x_46 == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_47 = lean_ctor_get(x_45, 0);
x_48 = lean_ctor_get(x_45, 1);
x_49 = lean_ctor_get(x_47, 0);
lean_inc(x_49);
lean_dec(x_47);
x_50 = l_Aesop_getRootMVarId(x_49, x_5, x_6, x_7, x_8, x_9, x_48);
lean_dec(x_49);
if (lean_obj_tag(x_50) == 0)
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_51 = lean_ctor_get(x_50, 0);
lean_inc(x_51);
x_52 = lean_ctor_get(x_50, 1);
lean_inc(x_52);
lean_dec(x_50);
x_53 = l_Aesop_TraceOption_proof;
x_54 = lean_ctor_get(x_53, 0);
lean_inc(x_54);
x_55 = l_Lean_MessageData_ofExpr(x_44);
x_56 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
lean_ctor_set_tag(x_45, 7);
lean_ctor_set(x_45, 1, x_55);
lean_ctor_set(x_45, 0, x_56);
lean_ctor_set_tag(x_22, 7);
lean_ctor_set(x_22, 1, x_56);
lean_ctor_set(x_22, 0, x_45);
x_57 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg___boxed), 10, 2);
lean_closure_set(x_57, 0, x_54);
lean_closure_set(x_57, 1, x_22);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_58 = l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___rarg(x_51, x_57, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_52);
if (lean_obj_tag(x_58) == 0)
{
lean_object* x_59; lean_object* x_60; uint8_t x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_58, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_58, 1);
lean_inc(x_60);
lean_dec(x_58);
x_61 = lean_unbox(x_12);
lean_dec(x_12);
x_62 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_19, x_61, x_2, x_59, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_60);
lean_dec(x_59);
return x_62;
}
else
{
uint8_t x_63; 
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_63 = !lean_is_exclusive(x_58);
if (x_63 == 0)
{
return x_58;
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_58, 0);
x_65 = lean_ctor_get(x_58, 1);
lean_inc(x_65);
lean_inc(x_64);
lean_dec(x_58);
x_66 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_66, 0, x_64);
lean_ctor_set(x_66, 1, x_65);
return x_66;
}
}
}
else
{
uint8_t x_67; 
lean_free_object(x_45);
lean_dec(x_44);
lean_free_object(x_22);
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_67 = !lean_is_exclusive(x_50);
if (x_67 == 0)
{
return x_50;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_50, 0);
x_69 = lean_ctor_get(x_50, 1);
lean_inc(x_69);
lean_inc(x_68);
lean_dec(x_50);
x_70 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_70, 0, x_68);
lean_ctor_set(x_70, 1, x_69);
return x_70;
}
}
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; 
x_71 = lean_ctor_get(x_45, 0);
x_72 = lean_ctor_get(x_45, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_45);
x_73 = lean_ctor_get(x_71, 0);
lean_inc(x_73);
lean_dec(x_71);
x_74 = l_Aesop_getRootMVarId(x_73, x_5, x_6, x_7, x_8, x_9, x_72);
lean_dec(x_73);
if (lean_obj_tag(x_74) == 0)
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
lean_dec(x_74);
x_77 = l_Aesop_TraceOption_proof;
x_78 = lean_ctor_get(x_77, 0);
lean_inc(x_78);
x_79 = l_Lean_MessageData_ofExpr(x_44);
x_80 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
x_81 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_79);
lean_ctor_set_tag(x_22, 7);
lean_ctor_set(x_22, 1, x_80);
lean_ctor_set(x_22, 0, x_81);
x_82 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg___boxed), 10, 2);
lean_closure_set(x_82, 0, x_78);
lean_closure_set(x_82, 1, x_22);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_83 = l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___rarg(x_75, x_82, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_76);
if (lean_obj_tag(x_83) == 0)
{
lean_object* x_84; lean_object* x_85; uint8_t x_86; lean_object* x_87; 
x_84 = lean_ctor_get(x_83, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_83, 1);
lean_inc(x_85);
lean_dec(x_83);
x_86 = lean_unbox(x_12);
lean_dec(x_12);
x_87 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_19, x_86, x_2, x_84, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_85);
lean_dec(x_84);
return x_87;
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; 
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_88 = lean_ctor_get(x_83, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_83, 1);
lean_inc(x_89);
if (lean_is_exclusive(x_83)) {
 lean_ctor_release(x_83, 0);
 lean_ctor_release(x_83, 1);
 x_90 = x_83;
} else {
 lean_dec_ref(x_83);
 x_90 = lean_box(0);
}
if (lean_is_scalar(x_90)) {
 x_91 = lean_alloc_ctor(1, 2, 0);
} else {
 x_91 = x_90;
}
lean_ctor_set(x_91, 0, x_88);
lean_ctor_set(x_91, 1, x_89);
return x_91;
}
}
else
{
lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; 
lean_dec(x_44);
lean_free_object(x_22);
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_92 = lean_ctor_get(x_74, 0);
lean_inc(x_92);
x_93 = lean_ctor_get(x_74, 1);
lean_inc(x_93);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_94 = x_74;
} else {
 lean_dec_ref(x_74);
 x_94 = lean_box(0);
}
if (lean_is_scalar(x_94)) {
 x_95 = lean_alloc_ctor(1, 2, 0);
} else {
 x_95 = x_94;
}
lean_ctor_set(x_95, 0, x_92);
lean_ctor_set(x_95, 1, x_93);
return x_95;
}
}
}
}
else
{
uint8_t x_96; 
lean_free_object(x_22);
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_96 = !lean_is_exclusive(x_32);
if (x_96 == 0)
{
return x_32;
}
else
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_97 = lean_ctor_get(x_32, 0);
x_98 = lean_ctor_get(x_32, 1);
lean_inc(x_98);
lean_inc(x_97);
lean_dec(x_32);
x_99 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_99, 0, x_97);
lean_ctor_set(x_99, 1, x_98);
return x_99;
}
}
}
else
{
lean_object* x_100; lean_object* x_101; 
x_100 = lean_ctor_get(x_22, 1);
lean_inc(x_100);
lean_dec(x_22);
x_101 = l_Aesop_getProof_x3f___rarg(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_100);
if (lean_obj_tag(x_101) == 0)
{
lean_object* x_102; 
x_102 = lean_ctor_get(x_101, 0);
lean_inc(x_102);
if (lean_obj_tag(x_102) == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; uint8_t x_110; lean_object* x_111; 
x_103 = lean_ctor_get(x_101, 1);
lean_inc(x_103);
lean_dec(x_101);
x_104 = l_Aesop_TraceOption_proof;
x_105 = lean_ctor_get(x_104, 0);
lean_inc(x_105);
x_106 = l_Aesop_handleNonfatalError___rarg___closed__2;
x_107 = l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg(x_105, x_106, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_103);
x_108 = lean_ctor_get(x_107, 0);
lean_inc(x_108);
x_109 = lean_ctor_get(x_107, 1);
lean_inc(x_109);
lean_dec(x_107);
x_110 = lean_unbox(x_12);
lean_dec(x_12);
x_111 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_19, x_110, x_2, x_108, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_109);
lean_dec(x_108);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; 
x_112 = lean_ctor_get(x_101, 1);
lean_inc(x_112);
lean_dec(x_101);
x_113 = lean_ctor_get(x_102, 0);
lean_inc(x_113);
lean_dec(x_102);
x_114 = lean_st_ref_get(x_4, x_112);
x_115 = lean_ctor_get(x_114, 0);
lean_inc(x_115);
x_116 = lean_ctor_get(x_114, 1);
lean_inc(x_116);
if (lean_is_exclusive(x_114)) {
 lean_ctor_release(x_114, 0);
 lean_ctor_release(x_114, 1);
 x_117 = x_114;
} else {
 lean_dec_ref(x_114);
 x_117 = lean_box(0);
}
x_118 = lean_ctor_get(x_115, 0);
lean_inc(x_118);
lean_dec(x_115);
x_119 = l_Aesop_getRootMVarId(x_118, x_5, x_6, x_7, x_8, x_9, x_116);
lean_dec(x_118);
if (lean_obj_tag(x_119) == 0)
{
lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_120 = lean_ctor_get(x_119, 0);
lean_inc(x_120);
x_121 = lean_ctor_get(x_119, 1);
lean_inc(x_121);
lean_dec(x_119);
x_122 = l_Aesop_TraceOption_proof;
x_123 = lean_ctor_get(x_122, 0);
lean_inc(x_123);
x_124 = l_Lean_MessageData_ofExpr(x_113);
x_125 = l_Aesop_expandNextGoal_fmt___rarg___closed__2;
if (lean_is_scalar(x_117)) {
 x_126 = lean_alloc_ctor(7, 2, 0);
} else {
 x_126 = x_117;
 lean_ctor_set_tag(x_126, 7);
}
lean_ctor_set(x_126, 0, x_125);
lean_ctor_set(x_126, 1, x_124);
x_127 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_127, 0, x_126);
lean_ctor_set(x_127, 1, x_125);
x_128 = lean_alloc_closure((void*)(l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg___boxed), 10, 2);
lean_closure_set(x_128, 0, x_123);
lean_closure_set(x_128, 1, x_127);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_129 = l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___rarg(x_120, x_128, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_121);
if (lean_obj_tag(x_129) == 0)
{
lean_object* x_130; lean_object* x_131; uint8_t x_132; lean_object* x_133; 
x_130 = lean_ctor_get(x_129, 0);
lean_inc(x_130);
x_131 = lean_ctor_get(x_129, 1);
lean_inc(x_131);
lean_dec(x_129);
x_132 = lean_unbox(x_12);
lean_dec(x_12);
x_133 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_19, x_132, x_2, x_130, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_131);
lean_dec(x_130);
return x_133;
}
else
{
lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; 
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_134 = lean_ctor_get(x_129, 0);
lean_inc(x_134);
x_135 = lean_ctor_get(x_129, 1);
lean_inc(x_135);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_136 = x_129;
} else {
 lean_dec_ref(x_129);
 x_136 = lean_box(0);
}
if (lean_is_scalar(x_136)) {
 x_137 = lean_alloc_ctor(1, 2, 0);
} else {
 x_137 = x_136;
}
lean_ctor_set(x_137, 0, x_134);
lean_ctor_set(x_137, 1, x_135);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; 
lean_dec(x_117);
lean_dec(x_113);
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_138 = lean_ctor_get(x_119, 0);
lean_inc(x_138);
x_139 = lean_ctor_get(x_119, 1);
lean_inc(x_139);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 lean_ctor_release(x_119, 1);
 x_140 = x_119;
} else {
 lean_dec_ref(x_119);
 x_140 = lean_box(0);
}
if (lean_is_scalar(x_140)) {
 x_141 = lean_alloc_ctor(1, 2, 0);
} else {
 x_141 = x_140;
}
lean_ctor_set(x_141, 0, x_138);
lean_ctor_set(x_141, 1, x_139);
return x_141;
}
}
}
else
{
lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; 
lean_dec(x_19);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_142 = lean_ctor_get(x_101, 0);
lean_inc(x_142);
x_143 = lean_ctor_get(x_101, 1);
lean_inc(x_143);
if (lean_is_exclusive(x_101)) {
 lean_ctor_release(x_101, 0);
 lean_ctor_release(x_101, 1);
 x_144 = x_101;
} else {
 lean_dec_ref(x_101);
 x_144 = lean_box(0);
}
if (lean_is_scalar(x_144)) {
 x_145 = lean_alloc_ctor(1, 2, 0);
} else {
 x_145 = x_144;
}
lean_ctor_set(x_145, 0, x_142);
lean_ctor_set(x_145, 1, x_143);
return x_145;
}
}
}
}
else
{
uint8_t x_146; 
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_146 = !lean_is_exclusive(x_18);
if (x_146 == 0)
{
return x_18;
}
else
{
lean_object* x_147; lean_object* x_148; lean_object* x_149; 
x_147 = lean_ctor_get(x_18, 0);
x_148 = lean_ctor_get(x_18, 1);
lean_inc(x_148);
lean_inc(x_147);
lean_dec(x_18);
x_149 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_149, 0, x_147);
lean_ctor_set(x_149, 1, x_148);
return x_149;
}
}
}
else
{
uint8_t x_150; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_150 = !lean_is_exclusive(x_11);
if (x_150 == 0)
{
return x_11;
}
else
{
lean_object* x_151; lean_object* x_152; lean_object* x_153; 
x_151 = lean_ctor_get(x_11, 0);
x_152 = lean_ctor_get(x_11, 1);
lean_inc(x_152);
lean_inc(x_151);
lean_dec(x_11);
x_153 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_153, 0, x_151);
lean_ctor_set(x_153, 1, x_152);
return x_153;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_handleNonfatalError___rarg), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_TraceOption_isEnabled___at_Aesop_handleNonfatalError___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_15 = l_Array_mapMUnsafe_map___at_Aesop_handleNonfatalError___spec__2___rarg(x_1, x_13, x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__5(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_log___at_Aesop_handleNonfatalError___spec__4___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__7(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_log___at_Aesop_handleNonfatalError___spec__6___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__10(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_log___at_Aesop_handleNonfatalError___spec__9___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_logAt___at_Aesop_handleNonfatalError___spec__12(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = lean_unbox(x_3);
lean_dec(x_3);
x_13 = l_Lean_log___at_Aesop_handleNonfatalError___spec__11___rarg(x_1, x_2, x_12, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_logWarning___at_Aesop_handleNonfatalError___spec__8___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__13(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_addTrace___at_Aesop_handleNonfatalError___spec__14(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_MVarId_withContext___at_Aesop_handleNonfatalError___spec__15(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Aesop_handleNonfatalError___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
x_13 = lean_unbox(x_3);
lean_dec(x_3);
x_14 = l_Aesop_handleNonfatalError___rarg___lambda__2(x_1, x_2, x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_2);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; lean_object* x_16; 
x_15 = lean_unbox(x_3);
lean_dec(x_3);
x_16 = l_Aesop_handleNonfatalError___rarg___lambda__3(x_1, x_2, x_15, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_2);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; lean_object* x_16; 
x_15 = lean_unbox(x_3);
lean_dec(x_3);
x_16 = l_Aesop_handleNonfatalError___rarg___lambda__4(x_1, x_2, x_15, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_2);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_handleNonfatalError___rarg___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; lean_object* x_15; 
x_14 = lean_unbox(x_3);
lean_dec(x_3);
x_15 = l_Aesop_handleNonfatalError___rarg___lambda__5(x_1, x_2, x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_5);
return x_15;
}
}
static lean_object* _init_l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_maxRecDepthErrorMessage;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__1;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__2;
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_10);
x_12 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_9);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_searchLoop___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; uint8_t x_23; uint8_t x_24; 
x_10 = lean_ctor_get(x_7, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_7, 1);
lean_inc(x_11);
x_12 = lean_ctor_get(x_7, 2);
lean_inc(x_12);
x_13 = lean_ctor_get(x_7, 3);
lean_inc(x_13);
x_14 = lean_ctor_get(x_7, 4);
lean_inc(x_14);
x_15 = lean_ctor_get(x_7, 5);
lean_inc(x_15);
x_16 = lean_ctor_get(x_7, 6);
lean_inc(x_16);
x_17 = lean_ctor_get(x_7, 7);
lean_inc(x_17);
x_18 = lean_ctor_get(x_7, 8);
lean_inc(x_18);
x_19 = lean_ctor_get(x_7, 9);
lean_inc(x_19);
x_20 = lean_ctor_get(x_7, 10);
lean_inc(x_20);
x_21 = lean_ctor_get_uint8(x_7, sizeof(void*)*12);
x_22 = lean_ctor_get(x_7, 11);
lean_inc(x_22);
x_23 = lean_ctor_get_uint8(x_7, sizeof(void*)*12 + 1);
x_24 = lean_nat_dec_eq(x_13, x_14);
if (x_24 == 0)
{
uint8_t x_25; 
x_25 = !lean_is_exclusive(x_7);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_26 = lean_ctor_get(x_7, 11);
lean_dec(x_26);
x_27 = lean_ctor_get(x_7, 10);
lean_dec(x_27);
x_28 = lean_ctor_get(x_7, 9);
lean_dec(x_28);
x_29 = lean_ctor_get(x_7, 8);
lean_dec(x_29);
x_30 = lean_ctor_get(x_7, 7);
lean_dec(x_30);
x_31 = lean_ctor_get(x_7, 6);
lean_dec(x_31);
x_32 = lean_ctor_get(x_7, 5);
lean_dec(x_32);
x_33 = lean_ctor_get(x_7, 4);
lean_dec(x_33);
x_34 = lean_ctor_get(x_7, 3);
lean_dec(x_34);
x_35 = lean_ctor_get(x_7, 2);
lean_dec(x_35);
x_36 = lean_ctor_get(x_7, 1);
lean_dec(x_36);
x_37 = lean_ctor_get(x_7, 0);
lean_dec(x_37);
x_38 = lean_unsigned_to_nat(1u);
x_39 = lean_nat_add(x_13, x_38);
lean_dec(x_13);
lean_ctor_set(x_7, 3, x_39);
x_40 = lean_st_ref_get(x_3, x_9);
x_41 = lean_ctor_get(x_40, 1);
lean_inc(x_41);
lean_dec(x_40);
x_42 = l_Aesop_traceScript___rarg___lambda__2___closed__1;
x_43 = l_Lean_Core_checkSystem(x_42, x_7, x_8, x_41);
if (lean_obj_tag(x_43) == 0)
{
lean_object* x_44; lean_object* x_45; 
x_44 = lean_ctor_get(x_43, 1);
lean_inc(x_44);
lean_dec(x_43);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_45 = l_Aesop_checkRootUnprovable___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_44);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; 
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; 
x_47 = lean_ctor_get(x_45, 1);
lean_inc(x_47);
lean_dec(x_45);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_48 = l_Aesop_finishIfProven___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_47);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; uint8_t x_50; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_unbox(x_49);
lean_dec(x_49);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
x_51 = lean_ctor_get(x_48, 1);
lean_inc(x_51);
lean_dec(x_48);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_52 = l_Aesop_checkGoalLimit___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_51);
if (lean_obj_tag(x_52) == 0)
{
lean_object* x_53; 
x_53 = lean_ctor_get(x_52, 0);
lean_inc(x_53);
if (lean_obj_tag(x_53) == 0)
{
lean_object* x_54; lean_object* x_55; 
x_54 = lean_ctor_get(x_52, 1);
lean_inc(x_54);
lean_dec(x_52);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_55 = l_Aesop_checkRappLimit___rarg(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_54);
if (lean_obj_tag(x_55) == 0)
{
lean_object* x_56; 
x_56 = lean_ctor_get(x_55, 0);
lean_inc(x_56);
if (lean_obj_tag(x_56) == 0)
{
lean_object* x_57; lean_object* x_58; 
x_57 = lean_ctor_get(x_55, 1);
lean_inc(x_57);
lean_dec(x_55);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_58 = l_Aesop_expandNextGoal___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_57);
if (lean_obj_tag(x_58) == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_58, 1);
lean_inc(x_59);
lean_dec(x_58);
x_60 = lean_st_ref_get(x_3, x_59);
x_61 = lean_ctor_get(x_60, 1);
lean_inc(x_61);
lean_dec(x_60);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_62 = l_Aesop_checkInvariantsIfEnabled___rarg(x_4, x_5, x_6, x_7, x_8, x_61);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_62, 1);
lean_inc(x_63);
lean_dec(x_62);
x_64 = l_Aesop_incrementIteration___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_63);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
lean_dec(x_64);
x_9 = x_65;
goto _start;
}
else
{
uint8_t x_67; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_67 = !lean_is_exclusive(x_62);
if (x_67 == 0)
{
return x_62;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_62, 0);
x_69 = lean_ctor_get(x_62, 1);
lean_inc(x_69);
lean_inc(x_68);
lean_dec(x_62);
x_70 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_70, 0, x_68);
lean_ctor_set(x_70, 1, x_69);
return x_70;
}
}
}
else
{
uint8_t x_71; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_71 = !lean_is_exclusive(x_58);
if (x_71 == 0)
{
return x_58;
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; 
x_72 = lean_ctor_get(x_58, 0);
x_73 = lean_ctor_get(x_58, 1);
lean_inc(x_73);
lean_inc(x_72);
lean_dec(x_58);
x_74 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_74, 0, x_72);
lean_ctor_set(x_74, 1, x_73);
return x_74;
}
}
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_75 = lean_ctor_get(x_55, 1);
lean_inc(x_75);
lean_dec(x_55);
x_76 = lean_ctor_get(x_56, 0);
lean_inc(x_76);
lean_dec(x_56);
x_77 = l_Aesop_handleNonfatalError___rarg(x_1, x_76, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_75);
return x_77;
}
}
else
{
uint8_t x_78; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_78 = !lean_is_exclusive(x_55);
if (x_78 == 0)
{
return x_55;
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_79 = lean_ctor_get(x_55, 0);
x_80 = lean_ctor_get(x_55, 1);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_55);
x_81 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_81, 0, x_79);
lean_ctor_set(x_81, 1, x_80);
return x_81;
}
}
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_82 = lean_ctor_get(x_52, 1);
lean_inc(x_82);
lean_dec(x_52);
x_83 = lean_ctor_get(x_53, 0);
lean_inc(x_83);
lean_dec(x_53);
x_84 = l_Aesop_handleNonfatalError___rarg(x_1, x_83, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_82);
return x_84;
}
}
else
{
uint8_t x_85; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_85 = !lean_is_exclusive(x_52);
if (x_85 == 0)
{
return x_52;
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; 
x_86 = lean_ctor_get(x_52, 0);
x_87 = lean_ctor_get(x_52, 1);
lean_inc(x_87);
lean_inc(x_86);
lean_dec(x_52);
x_88 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_88, 0, x_86);
lean_ctor_set(x_88, 1, x_87);
return x_88;
}
}
}
else
{
uint8_t x_89; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_89 = !lean_is_exclusive(x_48);
if (x_89 == 0)
{
lean_object* x_90; lean_object* x_91; 
x_90 = lean_ctor_get(x_48, 0);
lean_dec(x_90);
x_91 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
lean_ctor_set(x_48, 0, x_91);
return x_48;
}
else
{
lean_object* x_92; lean_object* x_93; lean_object* x_94; 
x_92 = lean_ctor_get(x_48, 1);
lean_inc(x_92);
lean_dec(x_48);
x_93 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
x_94 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_94, 0, x_93);
lean_ctor_set(x_94, 1, x_92);
return x_94;
}
}
}
else
{
uint8_t x_95; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_95 = !lean_is_exclusive(x_48);
if (x_95 == 0)
{
return x_48;
}
else
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; 
x_96 = lean_ctor_get(x_48, 0);
x_97 = lean_ctor_get(x_48, 1);
lean_inc(x_97);
lean_inc(x_96);
lean_dec(x_48);
x_98 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_98, 0, x_96);
lean_ctor_set(x_98, 1, x_97);
return x_98;
}
}
}
else
{
lean_object* x_99; lean_object* x_100; lean_object* x_101; 
x_99 = lean_ctor_get(x_45, 1);
lean_inc(x_99);
lean_dec(x_45);
x_100 = lean_ctor_get(x_46, 0);
lean_inc(x_100);
lean_dec(x_46);
x_101 = l_Aesop_handleNonfatalError___rarg(x_1, x_100, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_99);
return x_101;
}
}
else
{
uint8_t x_102; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_102 = !lean_is_exclusive(x_45);
if (x_102 == 0)
{
return x_45;
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_103 = lean_ctor_get(x_45, 0);
x_104 = lean_ctor_get(x_45, 1);
lean_inc(x_104);
lean_inc(x_103);
lean_dec(x_45);
x_105 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_105, 0, x_103);
lean_ctor_set(x_105, 1, x_104);
return x_105;
}
}
}
else
{
uint8_t x_106; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_106 = !lean_is_exclusive(x_43);
if (x_106 == 0)
{
return x_43;
}
else
{
lean_object* x_107; lean_object* x_108; lean_object* x_109; 
x_107 = lean_ctor_get(x_43, 0);
x_108 = lean_ctor_get(x_43, 1);
lean_inc(x_108);
lean_inc(x_107);
lean_dec(x_43);
x_109 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_109, 0, x_107);
lean_ctor_set(x_109, 1, x_108);
return x_109;
}
}
}
else
{
lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; 
lean_dec(x_7);
x_110 = lean_unsigned_to_nat(1u);
x_111 = lean_nat_add(x_13, x_110);
lean_dec(x_13);
x_112 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_112, 0, x_10);
lean_ctor_set(x_112, 1, x_11);
lean_ctor_set(x_112, 2, x_12);
lean_ctor_set(x_112, 3, x_111);
lean_ctor_set(x_112, 4, x_14);
lean_ctor_set(x_112, 5, x_15);
lean_ctor_set(x_112, 6, x_16);
lean_ctor_set(x_112, 7, x_17);
lean_ctor_set(x_112, 8, x_18);
lean_ctor_set(x_112, 9, x_19);
lean_ctor_set(x_112, 10, x_20);
lean_ctor_set(x_112, 11, x_22);
lean_ctor_set_uint8(x_112, sizeof(void*)*12, x_21);
lean_ctor_set_uint8(x_112, sizeof(void*)*12 + 1, x_23);
x_113 = lean_st_ref_get(x_3, x_9);
x_114 = lean_ctor_get(x_113, 1);
lean_inc(x_114);
lean_dec(x_113);
x_115 = l_Aesop_traceScript___rarg___lambda__2___closed__1;
x_116 = l_Lean_Core_checkSystem(x_115, x_112, x_8, x_114);
if (lean_obj_tag(x_116) == 0)
{
lean_object* x_117; lean_object* x_118; 
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
lean_inc(x_8);
lean_inc(x_112);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_118 = l_Aesop_checkRootUnprovable___rarg(x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_117);
if (lean_obj_tag(x_118) == 0)
{
lean_object* x_119; 
x_119 = lean_ctor_get(x_118, 0);
lean_inc(x_119);
if (lean_obj_tag(x_119) == 0)
{
lean_object* x_120; lean_object* x_121; 
x_120 = lean_ctor_get(x_118, 1);
lean_inc(x_120);
lean_dec(x_118);
lean_inc(x_8);
lean_inc(x_112);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_121 = l_Aesop_finishIfProven___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_120);
if (lean_obj_tag(x_121) == 0)
{
lean_object* x_122; uint8_t x_123; 
x_122 = lean_ctor_get(x_121, 0);
lean_inc(x_122);
x_123 = lean_unbox(x_122);
lean_dec(x_122);
if (x_123 == 0)
{
lean_object* x_124; lean_object* x_125; 
x_124 = lean_ctor_get(x_121, 1);
lean_inc(x_124);
lean_dec(x_121);
lean_inc(x_8);
lean_inc(x_112);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_125 = l_Aesop_checkGoalLimit___rarg(x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_124);
if (lean_obj_tag(x_125) == 0)
{
lean_object* x_126; 
x_126 = lean_ctor_get(x_125, 0);
lean_inc(x_126);
if (lean_obj_tag(x_126) == 0)
{
lean_object* x_127; lean_object* x_128; 
x_127 = lean_ctor_get(x_125, 1);
lean_inc(x_127);
lean_dec(x_125);
lean_inc(x_8);
lean_inc(x_112);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_128 = l_Aesop_checkRappLimit___rarg(x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_127);
if (lean_obj_tag(x_128) == 0)
{
lean_object* x_129; 
x_129 = lean_ctor_get(x_128, 0);
lean_inc(x_129);
if (lean_obj_tag(x_129) == 0)
{
lean_object* x_130; lean_object* x_131; 
x_130 = lean_ctor_get(x_128, 1);
lean_inc(x_130);
lean_dec(x_128);
lean_inc(x_8);
lean_inc(x_112);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_131 = l_Aesop_expandNextGoal___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_130);
if (lean_obj_tag(x_131) == 0)
{
lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; 
x_132 = lean_ctor_get(x_131, 1);
lean_inc(x_132);
lean_dec(x_131);
x_133 = lean_st_ref_get(x_3, x_132);
x_134 = lean_ctor_get(x_133, 1);
lean_inc(x_134);
lean_dec(x_133);
lean_inc(x_8);
lean_inc(x_112);
lean_inc(x_6);
lean_inc(x_5);
x_135 = l_Aesop_checkInvariantsIfEnabled___rarg(x_4, x_5, x_6, x_112, x_8, x_134);
if (lean_obj_tag(x_135) == 0)
{
lean_object* x_136; lean_object* x_137; lean_object* x_138; 
x_136 = lean_ctor_get(x_135, 1);
lean_inc(x_136);
lean_dec(x_135);
x_137 = l_Aesop_incrementIteration___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_136);
x_138 = lean_ctor_get(x_137, 1);
lean_inc(x_138);
lean_dec(x_137);
x_7 = x_112;
x_9 = x_138;
goto _start;
}
else
{
lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_140 = lean_ctor_get(x_135, 0);
lean_inc(x_140);
x_141 = lean_ctor_get(x_135, 1);
lean_inc(x_141);
if (lean_is_exclusive(x_135)) {
 lean_ctor_release(x_135, 0);
 lean_ctor_release(x_135, 1);
 x_142 = x_135;
} else {
 lean_dec_ref(x_135);
 x_142 = lean_box(0);
}
if (lean_is_scalar(x_142)) {
 x_143 = lean_alloc_ctor(1, 2, 0);
} else {
 x_143 = x_142;
}
lean_ctor_set(x_143, 0, x_140);
lean_ctor_set(x_143, 1, x_141);
return x_143;
}
}
else
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_144 = lean_ctor_get(x_131, 0);
lean_inc(x_144);
x_145 = lean_ctor_get(x_131, 1);
lean_inc(x_145);
if (lean_is_exclusive(x_131)) {
 lean_ctor_release(x_131, 0);
 lean_ctor_release(x_131, 1);
 x_146 = x_131;
} else {
 lean_dec_ref(x_131);
 x_146 = lean_box(0);
}
if (lean_is_scalar(x_146)) {
 x_147 = lean_alloc_ctor(1, 2, 0);
} else {
 x_147 = x_146;
}
lean_ctor_set(x_147, 0, x_144);
lean_ctor_set(x_147, 1, x_145);
return x_147;
}
}
else
{
lean_object* x_148; lean_object* x_149; lean_object* x_150; 
x_148 = lean_ctor_get(x_128, 1);
lean_inc(x_148);
lean_dec(x_128);
x_149 = lean_ctor_get(x_129, 0);
lean_inc(x_149);
lean_dec(x_129);
x_150 = l_Aesop_handleNonfatalError___rarg(x_1, x_149, x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_148);
return x_150;
}
}
else
{
lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_151 = lean_ctor_get(x_128, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_128, 1);
lean_inc(x_152);
if (lean_is_exclusive(x_128)) {
 lean_ctor_release(x_128, 0);
 lean_ctor_release(x_128, 1);
 x_153 = x_128;
} else {
 lean_dec_ref(x_128);
 x_153 = lean_box(0);
}
if (lean_is_scalar(x_153)) {
 x_154 = lean_alloc_ctor(1, 2, 0);
} else {
 x_154 = x_153;
}
lean_ctor_set(x_154, 0, x_151);
lean_ctor_set(x_154, 1, x_152);
return x_154;
}
}
else
{
lean_object* x_155; lean_object* x_156; lean_object* x_157; 
x_155 = lean_ctor_get(x_125, 1);
lean_inc(x_155);
lean_dec(x_125);
x_156 = lean_ctor_get(x_126, 0);
lean_inc(x_156);
lean_dec(x_126);
x_157 = l_Aesop_handleNonfatalError___rarg(x_1, x_156, x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_155);
return x_157;
}
}
else
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_158 = lean_ctor_get(x_125, 0);
lean_inc(x_158);
x_159 = lean_ctor_get(x_125, 1);
lean_inc(x_159);
if (lean_is_exclusive(x_125)) {
 lean_ctor_release(x_125, 0);
 lean_ctor_release(x_125, 1);
 x_160 = x_125;
} else {
 lean_dec_ref(x_125);
 x_160 = lean_box(0);
}
if (lean_is_scalar(x_160)) {
 x_161 = lean_alloc_ctor(1, 2, 0);
} else {
 x_161 = x_160;
}
lean_ctor_set(x_161, 0, x_158);
lean_ctor_set(x_161, 1, x_159);
return x_161;
}
}
else
{
lean_object* x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_162 = lean_ctor_get(x_121, 1);
lean_inc(x_162);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_163 = x_121;
} else {
 lean_dec_ref(x_121);
 x_163 = lean_box(0);
}
x_164 = l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2;
if (lean_is_scalar(x_163)) {
 x_165 = lean_alloc_ctor(0, 2, 0);
} else {
 x_165 = x_163;
}
lean_ctor_set(x_165, 0, x_164);
lean_ctor_set(x_165, 1, x_162);
return x_165;
}
}
else
{
lean_object* x_166; lean_object* x_167; lean_object* x_168; lean_object* x_169; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_166 = lean_ctor_get(x_121, 0);
lean_inc(x_166);
x_167 = lean_ctor_get(x_121, 1);
lean_inc(x_167);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_168 = x_121;
} else {
 lean_dec_ref(x_121);
 x_168 = lean_box(0);
}
if (lean_is_scalar(x_168)) {
 x_169 = lean_alloc_ctor(1, 2, 0);
} else {
 x_169 = x_168;
}
lean_ctor_set(x_169, 0, x_166);
lean_ctor_set(x_169, 1, x_167);
return x_169;
}
}
else
{
lean_object* x_170; lean_object* x_171; lean_object* x_172; 
x_170 = lean_ctor_get(x_118, 1);
lean_inc(x_170);
lean_dec(x_118);
x_171 = lean_ctor_get(x_119, 0);
lean_inc(x_171);
lean_dec(x_119);
x_172 = l_Aesop_handleNonfatalError___rarg(x_1, x_171, x_2, x_3, x_4, x_5, x_6, x_112, x_8, x_170);
return x_172;
}
}
else
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_173 = lean_ctor_get(x_118, 0);
lean_inc(x_173);
x_174 = lean_ctor_get(x_118, 1);
lean_inc(x_174);
if (lean_is_exclusive(x_118)) {
 lean_ctor_release(x_118, 0);
 lean_ctor_release(x_118, 1);
 x_175 = x_118;
} else {
 lean_dec_ref(x_118);
 x_175 = lean_box(0);
}
if (lean_is_scalar(x_175)) {
 x_176 = lean_alloc_ctor(1, 2, 0);
} else {
 x_176 = x_175;
}
lean_ctor_set(x_176, 0, x_173);
lean_ctor_set(x_176, 1, x_174);
return x_176;
}
}
else
{
lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; 
lean_dec(x_112);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_177 = lean_ctor_get(x_116, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_116, 1);
lean_inc(x_178);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_179 = x_116;
} else {
 lean_dec_ref(x_116);
 x_179 = lean_box(0);
}
if (lean_is_scalar(x_179)) {
 x_180 = lean_alloc_ctor(1, 2, 0);
} else {
 x_180 = x_179;
}
lean_ctor_set(x_180, 0, x_177);
lean_ctor_set(x_180, 1, x_178);
return x_180;
}
}
}
else
{
lean_object* x_181; 
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_1);
x_181 = l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg(x_15, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_181;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_searchLoop(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_searchLoop___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_aesop_dev_generateScript;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_5, 2);
x_9 = l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___closed__1;
x_10 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_8, x_9);
if (x_10 == 0)
{
uint8_t x_11; 
x_11 = lean_ctor_get_uint8(x_1, sizeof(void*)*9 + 6);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = l_Aesop_Check_script;
x_13 = l_Aesop_Check_isEnabled___at_Aesop_MVarClusterRef_checkInvariantsIfEnabled___spec__1(x_12, x_3, x_4, x_5, x_6, x_7);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_unbox(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
lean_dec(x_14);
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_16);
lean_dec(x_13);
x_17 = l_Aesop_Check_script_steps;
x_18 = l_Aesop_Check_isEnabled___at_Aesop_MVarClusterRef_checkInvariantsIfEnabled___spec__1(x_17, x_3, x_4, x_5, x_6, x_16);
x_19 = !lean_is_exclusive(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_20 = lean_ctor_get(x_18, 0);
x_21 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_21, 0, x_1);
lean_ctor_set(x_21, 1, x_2);
x_22 = lean_unbox(x_20);
lean_dec(x_20);
lean_ctor_set_uint8(x_21, sizeof(void*)*2, x_22);
lean_ctor_set(x_18, 0, x_21);
return x_18;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; lean_object* x_27; 
x_23 = lean_ctor_get(x_18, 0);
x_24 = lean_ctor_get(x_18, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_18);
x_25 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_25, 0, x_1);
lean_ctor_set(x_25, 1, x_2);
x_26 = lean_unbox(x_23);
lean_dec(x_23);
lean_ctor_set_uint8(x_25, sizeof(void*)*2, x_26);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
else
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_13);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; uint8_t x_31; 
x_29 = lean_ctor_get(x_13, 0);
lean_dec(x_29);
x_30 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_30, 0, x_1);
lean_ctor_set(x_30, 1, x_2);
x_31 = lean_unbox(x_14);
lean_dec(x_14);
lean_ctor_set_uint8(x_30, sizeof(void*)*2, x_31);
lean_ctor_set(x_13, 0, x_30);
return x_13;
}
else
{
lean_object* x_32; lean_object* x_33; uint8_t x_34; lean_object* x_35; 
x_32 = lean_ctor_get(x_13, 1);
lean_inc(x_32);
lean_dec(x_13);
x_33 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_33, 0, x_1);
lean_ctor_set(x_33, 1, x_2);
x_34 = lean_unbox(x_14);
lean_dec(x_14);
lean_ctor_set_uint8(x_33, sizeof(void*)*2, x_34);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_32);
return x_35;
}
}
}
else
{
lean_object* x_36; lean_object* x_37; 
x_36 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_36, 0, x_1);
lean_ctor_set(x_36, 1, x_2);
lean_ctor_set_uint8(x_36, sizeof(void*)*2, x_11);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_7);
return x_37;
}
}
else
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_38, 0, x_1);
lean_ctor_set(x_38, 1, x_2);
lean_ctor_set_uint8(x_38, sizeof(void*)*2, x_10);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_7);
return x_39;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
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
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_search___spec__3___rarg___boxed), 6, 0);
return x_4;
}
}
static lean_object* _init_l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: internal error: root mvar cluster does not contain exactly one goal.", 75, 75);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; 
lean_inc(x_12);
x_15 = l_Aesop_mkInitialTree(x_7, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint32_t x_22; lean_object* x_23; size_t x_24; size_t x_25; lean_object* x_26; lean_object* x_27; uint32_t x_28; lean_object* x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; uint8_t x_34; lean_object* x_35; size_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_Meta_getSimpCongrTheorems___rarg(x_13, x_17);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_ctor_get(x_5, 1);
lean_inc(x_21);
x_22 = l_UInt32_ofNatTruncate(x_21);
x_23 = lean_ctor_get(x_3, 1);
lean_inc(x_23);
x_24 = lean_array_size(x_23);
x_25 = 0;
x_26 = l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1(x_24, x_25, x_23);
x_27 = lean_box(0);
x_28 = 0;
x_29 = lean_unsigned_to_nat(0u);
x_30 = 0;
x_31 = lean_alloc_ctor(0, 5, 9);
lean_ctor_set(x_31, 0, x_5);
lean_ctor_set(x_31, 1, x_26);
lean_ctor_set(x_31, 2, x_19);
lean_ctor_set(x_31, 3, x_27);
lean_ctor_set(x_31, 4, x_29);
lean_ctor_set_uint32(x_31, sizeof(void*)*5, x_22);
lean_ctor_set_uint32(x_31, sizeof(void*)*5 + 4, x_28);
lean_ctor_set_uint8(x_31, sizeof(void*)*5 + 8, x_30);
x_32 = lean_ctor_get(x_4, 0);
lean_inc(x_32);
x_33 = lean_ctor_get_uint8(x_32, sizeof(void*)*9 + 7);
x_34 = lean_ctor_get_uint8(x_32, sizeof(void*)*9 + 8);
lean_dec(x_32);
x_35 = lean_ctor_get(x_3, 2);
lean_inc(x_35);
x_36 = lean_array_size(x_35);
x_37 = l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2(x_36, x_25, x_35);
x_38 = lean_alloc_ctor(0, 3, 2);
lean_ctor_set(x_38, 0, x_31);
lean_ctor_set(x_38, 1, x_6);
lean_ctor_set(x_38, 2, x_37);
lean_ctor_set_uint8(x_38, sizeof(void*)*3, x_33);
lean_ctor_set_uint8(x_38, sizeof(void*)*3 + 1, x_34);
x_39 = lean_st_mk_ref(x_8, x_20);
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_ctor_get(x_39, 1);
lean_inc(x_41);
lean_dec(x_39);
x_42 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_42, 0, x_3);
lean_ctor_set(x_42, 1, x_38);
lean_ctor_set(x_42, 2, x_4);
lean_ctor_set(x_42, 3, x_40);
x_43 = lean_ctor_get(x_16, 0);
lean_inc(x_43);
x_44 = lean_st_ref_get(x_43, x_41);
lean_dec(x_43);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_44, 1);
lean_inc(x_46);
lean_dec(x_44);
x_47 = l_Aesop_treeImpl___elambda__1(x_45);
lean_dec(x_45);
x_48 = lean_ctor_get(x_47, 1);
lean_inc(x_48);
lean_dec(x_47);
x_49 = lean_array_get_size(x_48);
x_50 = lean_unsigned_to_nat(1u);
x_51 = lean_nat_dec_eq(x_49, x_50);
lean_dec(x_49);
if (x_51 == 0)
{
lean_object* x_52; lean_object* x_53; 
lean_dec(x_48);
lean_dec(x_42);
lean_dec(x_16);
lean_dec(x_9);
lean_dec(x_1);
x_52 = l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__2;
x_53 = l_Lean_throwError___at_Aesop_search___spec__3___rarg(x_52, x_10, x_11, x_12, x_13, x_46);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
return x_53;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_54 = lean_array_fget(x_48, x_29);
lean_dec(x_48);
x_55 = l_Aesop_expandNextGoal___rarg___lambda__4___closed__1;
x_56 = lean_array_push(x_55, x_54);
x_57 = l_Aesop_Queue_init_x27___rarg(x_1, x_56, x_46);
x_58 = lean_ctor_get(x_57, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 1);
lean_inc(x_59);
lean_dec(x_57);
x_60 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_60, 0, x_50);
lean_ctor_set(x_60, 1, x_58);
lean_ctor_set_uint8(x_60, sizeof(void*)*2, x_30);
x_61 = l_Aesop_SearchM_run_x27___rarg(x_42, x_60, x_16, x_9, x_10, x_11, x_12, x_13, x_59);
return x_61;
}
}
else
{
uint8_t x_62; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_62 = !lean_is_exclusive(x_15);
if (x_62 == 0)
{
return x_15;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_15, 0);
x_64 = lean_ctor_get(x_15, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_15);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_run___at_Aesop_search___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg), 14, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_search___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_10 = l_Aesop_searchLoop___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_st_ref_get(x_3, x_12);
lean_dec(x_3);
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_15 = l_Aesop_freeTree___rarg(x_4, x_5, x_6, x_7, x_8, x_14);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_dec(x_17);
lean_ctor_set(x_15, 0, x_11);
return x_15;
}
else
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_15, 1);
lean_inc(x_18);
lean_dec(x_15);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_11);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_20 = lean_ctor_get(x_10, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_10, 1);
lean_inc(x_21);
lean_dec(x_10);
x_22 = lean_st_ref_get(x_3, x_21);
lean_dec(x_3);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = l_Aesop_freeTree___rarg(x_4, x_5, x_6, x_7, x_8, x_23);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; 
x_26 = lean_ctor_get(x_24, 0);
lean_dec(x_26);
lean_ctor_set_tag(x_24, 1);
lean_ctor_set(x_24, 0, x_20);
return x_24;
}
else
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
lean_dec(x_24);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_20);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_search___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = l_Aesop_Options_queue(x_12);
lean_dec(x_12);
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
lean_inc(x_14);
x_15 = lean_alloc_closure((void*)(l_Aesop_search___lambda__1), 9, 1);
lean_closure_set(x_15, 0, x_14);
x_16 = l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg(x_14, lean_box(0), x_6, x_1, x_2, x_3, x_4, x_5, x_15, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = !lean_is_exclusive(x_16);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_16, 0);
lean_dec(x_21);
x_22 = lean_ctor_get(x_17, 0);
lean_inc(x_22);
lean_dec(x_17);
x_23 = !lean_is_exclusive(x_19);
if (x_23 == 0)
{
lean_object* x_24; 
x_24 = lean_ctor_get(x_19, 0);
lean_dec(x_24);
lean_ctor_set(x_19, 0, x_22);
lean_ctor_set(x_16, 0, x_19);
return x_16;
}
else
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_19, 1);
lean_inc(x_25);
lean_dec(x_19);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_22);
lean_ctor_set(x_26, 1, x_25);
lean_ctor_set(x_16, 0, x_26);
return x_16;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_27 = lean_ctor_get(x_16, 1);
lean_inc(x_27);
lean_dec(x_16);
x_28 = lean_ctor_get(x_17, 0);
lean_inc(x_28);
lean_dec(x_17);
x_29 = lean_ctor_get(x_19, 1);
lean_inc(x_29);
if (lean_is_exclusive(x_19)) {
 lean_ctor_release(x_19, 0);
 lean_ctor_release(x_19, 1);
 x_30 = x_19;
} else {
 lean_dec_ref(x_19);
 x_30 = lean_box(0);
}
if (lean_is_scalar(x_30)) {
 x_31 = lean_alloc_ctor(0, 2, 0);
} else {
 x_31 = x_30;
}
lean_ctor_set(x_31, 0, x_28);
lean_ctor_set(x_31, 1, x_29);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_27);
return x_32;
}
}
else
{
uint8_t x_33; 
x_33 = !lean_is_exclusive(x_16);
if (x_33 == 0)
{
return x_16;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_16, 0);
x_35 = lean_ctor_get(x_16, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_16);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
}
static lean_object* _init_l_Aesop_search___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_traceScript___rarg___lambda__2___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_search(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
x_12 = l_Aesop_search___closed__1;
lean_inc(x_1);
x_13 = l_Lean_MVarId_checkNotAssigned(x_1, x_12, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_15 = lean_box(0);
x_16 = l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1(x_3, x_15, x_7, x_8, x_9, x_10, x_14);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = l_Aesop_Frontend_getDefaultGlobalRuleSets(x_9, x_10, x_18);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_mkLocalRuleSet(x_20, x_17, x_9, x_10, x_21);
lean_dec(x_20);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = l_Aesop_search___lambda__2(x_17, x_4, x_5, x_1, x_6, x_23, x_7, x_8, x_9, x_10, x_24);
return x_25;
}
else
{
uint8_t x_26; 
lean_dec(x_17);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_26 = !lean_is_exclusive(x_19);
if (x_26 == 0)
{
return x_19;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_19, 0);
x_28 = lean_ctor_get(x_19, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_19);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_30 = lean_ctor_get(x_16, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_16, 1);
lean_inc(x_31);
lean_dec(x_16);
x_32 = lean_ctor_get(x_2, 0);
lean_inc(x_32);
lean_dec(x_2);
x_33 = l_Aesop_search___lambda__2(x_30, x_4, x_5, x_1, x_6, x_32, x_7, x_8, x_9, x_10, x_31);
return x_33;
}
}
else
{
uint8_t x_34; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_34 = !lean_is_exclusive(x_13);
if (x_34 == 0)
{
return x_13;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_13, 0);
x_36 = lean_ctor_get(x_13, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_13);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Aesop_search___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_search___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_throwError___at_Aesop_search___spec__3(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Check(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Options(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleSet(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Script_Check(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Script_Main(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_Expansion(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_ExpandSafePrefix(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_Queue(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Frontend_Extension(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Search_Main(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Check(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Options(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleSet(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Script_Check(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Script_Main(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_Expansion(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_ExpandSafePrefix(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_Queue(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Frontend_Extension(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_nextActiveGoal___rarg___closed__1 = _init_l_Aesop_nextActiveGoal___rarg___closed__1();
lean_mark_persistent(l_Aesop_nextActiveGoal___rarg___closed__1);
l_Aesop_nextActiveGoal___rarg___closed__2 = _init_l_Aesop_nextActiveGoal___rarg___closed__2();
lean_mark_persistent(l_Aesop_nextActiveGoal___rarg___closed__2);
l_Aesop_expandNextGoal_fmt___rarg___closed__1 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__1();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__1);
l_Aesop_expandNextGoal_fmt___rarg___closed__2 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__2();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__2);
l_Aesop_expandNextGoal_fmt___rarg___closed__3 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__3();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__3);
l_Aesop_expandNextGoal_fmt___rarg___closed__4 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__4();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__4);
l_Aesop_expandNextGoal_fmt___rarg___closed__5 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__5();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__5);
l_Aesop_expandNextGoal_fmt___rarg___closed__6 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__6();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__6);
l_Aesop_expandNextGoal_fmt___rarg___closed__7 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__7();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__7);
l_Aesop_expandNextGoal_fmt___rarg___closed__8 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__8();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__8);
l_Aesop_expandNextGoal_fmt___rarg___closed__9 = _init_l_Aesop_expandNextGoal_fmt___rarg___closed__9();
lean_mark_persistent(l_Aesop_expandNextGoal_fmt___rarg___closed__9);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__1 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__1);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__2 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__2();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__2);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__3 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__3();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__1___closed__3);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__1 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__1);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__2 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__2();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__2);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__3 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__3();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__3);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__4 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__4();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__4);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__5 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__5();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__2___closed__5);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___lambda__3___closed__1);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__1 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__1);
l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__2 = _init_l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__2();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Aesop_expandNextGoal_traceNewRapps___spec__2___rarg___closed__2);
l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1 = _init_l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__1();
l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2 = _init_l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2();
lean_mark_persistent(l_Lean_addTrace___at_Aesop_expandNextGoal___spec__2___rarg___closed__2);
l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___closed__1 = _init_l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___closed__1();
lean_mark_persistent(l_Lean_isTracingEnabledFor___at_Aesop_expandNextGoal___spec__6___rarg___closed__1);
l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1 = _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1();
lean_mark_persistent(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__1);
l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__2 = _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__2();
lean_mark_persistent(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__2);
l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3 = _init_l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3();
lean_mark_persistent(l___private_Lean_Util_Trace_0__Lean_getResetTraces___at_Aesop_expandNextGoal___spec__7___rarg___closed__3);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__2___closed__1);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__1 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__1();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__1);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__3___closed__2);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__1);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__2);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__3);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__4 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__4();
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__5);
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__6();
l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7 = _init_l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7();
lean_mark_persistent(l_Lean_withTraceNode___at_Aesop_expandNextGoal___spec__5___rarg___lambda__7___closed__7);
l_Aesop_expandNextGoal___rarg___lambda__1___closed__1 = _init_l_Aesop_expandNextGoal___rarg___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__1___closed__1);
l_Aesop_expandNextGoal___rarg___lambda__1___closed__2 = _init_l_Aesop_expandNextGoal___rarg___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__1___closed__2);
l_Aesop_expandNextGoal___rarg___lambda__4___closed__1 = _init_l_Aesop_expandNextGoal___rarg___lambda__4___closed__1();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__4___closed__1);
l_Aesop_expandNextGoal___rarg___lambda__6___closed__1 = _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__1();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__6___closed__1);
l_Aesop_expandNextGoal___rarg___lambda__6___closed__2 = _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__2();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__6___closed__2);
l_Aesop_expandNextGoal___rarg___lambda__6___closed__3 = _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__3();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__6___closed__3);
l_Aesop_expandNextGoal___rarg___lambda__6___closed__4 = _init_l_Aesop_expandNextGoal___rarg___lambda__6___closed__4();
lean_mark_persistent(l_Aesop_expandNextGoal___rarg___lambda__6___closed__4);
l_Aesop_checkGoalLimit___rarg___closed__1 = _init_l_Aesop_checkGoalLimit___rarg___closed__1();
lean_mark_persistent(l_Aesop_checkGoalLimit___rarg___closed__1);
l_Aesop_checkGoalLimit___rarg___closed__2 = _init_l_Aesop_checkGoalLimit___rarg___closed__2();
lean_mark_persistent(l_Aesop_checkGoalLimit___rarg___closed__2);
l_Aesop_checkGoalLimit___rarg___closed__3 = _init_l_Aesop_checkGoalLimit___rarg___closed__3();
lean_mark_persistent(l_Aesop_checkGoalLimit___rarg___closed__3);
l_Aesop_checkGoalLimit___rarg___closed__4 = _init_l_Aesop_checkGoalLimit___rarg___closed__4();
lean_mark_persistent(l_Aesop_checkGoalLimit___rarg___closed__4);
l_Aesop_checkGoalLimit___rarg___closed__5 = _init_l_Aesop_checkGoalLimit___rarg___closed__5();
lean_mark_persistent(l_Aesop_checkGoalLimit___rarg___closed__5);
l_Aesop_checkRappLimit___rarg___closed__1 = _init_l_Aesop_checkRappLimit___rarg___closed__1();
lean_mark_persistent(l_Aesop_checkRappLimit___rarg___closed__1);
l_Aesop_checkRappLimit___rarg___closed__2 = _init_l_Aesop_checkRappLimit___rarg___closed__2();
lean_mark_persistent(l_Aesop_checkRappLimit___rarg___closed__2);
l_Aesop_checkRappLimit___rarg___closed__3 = _init_l_Aesop_checkRappLimit___rarg___closed__3();
lean_mark_persistent(l_Aesop_checkRappLimit___rarg___closed__3);
l_Aesop_checkRappLimit___rarg___closed__4 = _init_l_Aesop_checkRappLimit___rarg___closed__4();
lean_mark_persistent(l_Aesop_checkRappLimit___rarg___closed__4);
l_Aesop_checkRootUnprovable___rarg___closed__1 = _init_l_Aesop_checkRootUnprovable___rarg___closed__1();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__1);
l_Aesop_checkRootUnprovable___rarg___closed__2 = _init_l_Aesop_checkRootUnprovable___rarg___closed__2();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__2);
l_Aesop_checkRootUnprovable___rarg___closed__3 = _init_l_Aesop_checkRootUnprovable___rarg___closed__3();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__3);
l_Aesop_checkRootUnprovable___rarg___closed__4 = _init_l_Aesop_checkRootUnprovable___rarg___closed__4();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__4);
l_Aesop_checkRootUnprovable___rarg___closed__5 = _init_l_Aesop_checkRootUnprovable___rarg___closed__5();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__5);
l_Aesop_checkRootUnprovable___rarg___closed__6 = _init_l_Aesop_checkRootUnprovable___rarg___closed__6();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__6);
l_Aesop_checkRootUnprovable___rarg___closed__7 = _init_l_Aesop_checkRootUnprovable___rarg___closed__7();
lean_mark_persistent(l_Aesop_checkRootUnprovable___rarg___closed__7);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__1 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__1();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__1);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__2 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__2();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__2);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___lambda__1___closed__3);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___closed__1 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___closed__1();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___rarg___closed__1);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___lambda__1___closed__1);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__1 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__1();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__1);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__2 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__2();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__2);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__3 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__3();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__3);
l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4 = _init_l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4();
lean_mark_persistent(l___private_Aesop_Search_Main_0__Aesop_withPPAnalyze___at_Aesop_finalizeProof___spec__6___rarg___closed__4);
l_Aesop_finalizeProof___rarg___lambda__2___closed__1 = _init_l_Aesop_finalizeProof___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__2___closed__1);
l_Aesop_finalizeProof___rarg___lambda__2___closed__2 = _init_l_Aesop_finalizeProof___rarg___lambda__2___closed__2();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__2___closed__2);
l_Aesop_finalizeProof___rarg___lambda__3___closed__1 = _init_l_Aesop_finalizeProof___rarg___lambda__3___closed__1();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__3___closed__1);
l_Aesop_finalizeProof___rarg___lambda__4___closed__1 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__1();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__1);
l_Aesop_finalizeProof___rarg___lambda__4___closed__2 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__2();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__2);
l_Aesop_finalizeProof___rarg___lambda__4___closed__3 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__3();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__3);
l_Aesop_finalizeProof___rarg___lambda__4___closed__4 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__4();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__4);
l_Aesop_finalizeProof___rarg___lambda__4___closed__5 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__5();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__5);
l_Aesop_finalizeProof___rarg___lambda__4___closed__6 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__6();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__6);
l_Aesop_finalizeProof___rarg___lambda__4___closed__7 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__7();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__7);
l_Aesop_finalizeProof___rarg___lambda__4___closed__8 = _init_l_Aesop_finalizeProof___rarg___lambda__4___closed__8();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___lambda__4___closed__8);
l_Aesop_finalizeProof___rarg___closed__1 = _init_l_Aesop_finalizeProof___rarg___closed__1();
lean_mark_persistent(l_Aesop_finalizeProof___rarg___closed__1);
l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__1 = _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__1);
l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__2 = _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__2();
lean_mark_persistent(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__2);
l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__3 = _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__3();
lean_mark_persistent(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__3);
l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__4 = _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__4();
lean_mark_persistent(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___lambda__2___closed__4);
l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1 = _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1();
lean_mark_persistent(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__1);
l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2 = _init_l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2();
lean_mark_persistent(l_Lean_logAt___at_Aesop_traceScript___spec__7___rarg___closed__2);
l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1 = _init_l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1();
lean_mark_persistent(l_Aesop_isStatsCollectionEnabled___at_Aesop_traceScript___spec__13___rarg___closed__1);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__1 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__1);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__2 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__2);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__3 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__3();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__3);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__4 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__4();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__4);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__5 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__5();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__5);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__6 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__6();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__6);
l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__7 = _init_l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__7();
lean_mark_persistent(l_Aesop_checkAndTraceScript___at_Aesop_traceScript___spec__3___rarg___lambda__1___closed__7);
l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___closed__1 = _init_l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___closed__1();
lean_mark_persistent(l_Aesop_isStatsCollectionOrTracingEnabled___at_Aesop_traceScript___spec__17___rarg___closed__1);
l_Aesop_traceScript___rarg___lambda__2___closed__1 = _init_l_Aesop_traceScript___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__2___closed__1);
l_Aesop_traceScript___rarg___lambda__3___closed__1 = _init_l_Aesop_traceScript___rarg___lambda__3___closed__1();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__3___closed__1);
l_Aesop_traceScript___rarg___lambda__3___closed__2 = _init_l_Aesop_traceScript___rarg___lambda__3___closed__2();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__3___closed__2);
l_Aesop_traceScript___rarg___lambda__3___closed__3 = _init_l_Aesop_traceScript___rarg___lambda__3___closed__3();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__3___closed__3);
l_Aesop_traceScript___rarg___lambda__4___closed__1 = _init_l_Aesop_traceScript___rarg___lambda__4___closed__1();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__4___closed__1);
l_Aesop_traceScript___rarg___lambda__4___closed__2 = _init_l_Aesop_traceScript___rarg___lambda__4___closed__2();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__4___closed__2);
l_Aesop_traceScript___rarg___lambda__6___closed__1 = _init_l_Aesop_traceScript___rarg___lambda__6___closed__1();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__6___closed__1);
l_Aesop_traceScript___rarg___lambda__6___closed__2 = _init_l_Aesop_traceScript___rarg___lambda__6___closed__2();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__6___closed__2);
l_Aesop_traceScript___rarg___lambda__6___closed__3 = _init_l_Aesop_traceScript___rarg___lambda__6___closed__3();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__6___closed__3);
l_Aesop_traceScript___rarg___lambda__6___closed__4 = _init_l_Aesop_traceScript___rarg___lambda__6___closed__4();
lean_mark_persistent(l_Aesop_traceScript___rarg___lambda__6___closed__4);
l_Aesop_traceScript___rarg___closed__1 = _init_l_Aesop_traceScript___rarg___closed__1();
lean_mark_persistent(l_Aesop_traceScript___rarg___closed__1);
l_Aesop_traceTree___rarg___closed__1 = _init_l_Aesop_traceTree___rarg___closed__1();
lean_mark_persistent(l_Aesop_traceTree___rarg___closed__1);
l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___closed__1 = _init_l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___closed__1();
lean_mark_persistent(l_Aesop_traverseDown___at_Aesop_treeHasProgress___spec__1___closed__1);
l_Aesop_throwAesopEx___rarg___closed__1 = _init_l_Aesop_throwAesopEx___rarg___closed__1();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__1);
l_Aesop_throwAesopEx___rarg___closed__2 = _init_l_Aesop_throwAesopEx___rarg___closed__2();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__2);
l_Aesop_throwAesopEx___rarg___closed__3 = _init_l_Aesop_throwAesopEx___rarg___closed__3();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__3);
l_Aesop_throwAesopEx___rarg___closed__4 = _init_l_Aesop_throwAesopEx___rarg___closed__4();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__4);
l_Aesop_throwAesopEx___rarg___closed__5 = _init_l_Aesop_throwAesopEx___rarg___closed__5();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__5);
l_Aesop_throwAesopEx___rarg___closed__6 = _init_l_Aesop_throwAesopEx___rarg___closed__6();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__6);
l_Aesop_throwAesopEx___rarg___closed__7 = _init_l_Aesop_throwAesopEx___rarg___closed__7();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__7);
l_Aesop_throwAesopEx___rarg___closed__8 = _init_l_Aesop_throwAesopEx___rarg___closed__8();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__8);
l_Aesop_throwAesopEx___rarg___closed__9 = _init_l_Aesop_throwAesopEx___rarg___closed__9();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__9);
l_Aesop_throwAesopEx___rarg___closed__10 = _init_l_Aesop_throwAesopEx___rarg___closed__10();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__10);
l_Aesop_throwAesopEx___rarg___closed__11 = _init_l_Aesop_throwAesopEx___rarg___closed__11();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__11);
l_Aesop_throwAesopEx___rarg___closed__12 = _init_l_Aesop_throwAesopEx___rarg___closed__12();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__12);
l_Aesop_throwAesopEx___rarg___closed__13 = _init_l_Aesop_throwAesopEx___rarg___closed__13();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__13);
l_Aesop_throwAesopEx___rarg___closed__14 = _init_l_Aesop_throwAesopEx___rarg___closed__14();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__14);
l_Aesop_throwAesopEx___rarg___closed__15 = _init_l_Aesop_throwAesopEx___rarg___closed__15();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__15);
l_Aesop_throwAesopEx___rarg___closed__16 = _init_l_Aesop_throwAesopEx___rarg___closed__16();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__16);
l_Aesop_throwAesopEx___rarg___closed__17 = _init_l_Aesop_throwAesopEx___rarg___closed__17();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__17);
l_Aesop_throwAesopEx___rarg___closed__18 = _init_l_Aesop_throwAesopEx___rarg___closed__18();
lean_mark_persistent(l_Aesop_throwAesopEx___rarg___closed__18);
l_Aesop_handleNonfatalError___rarg___lambda__2___closed__1 = _init_l_Aesop_handleNonfatalError___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__2___closed__1);
l_Aesop_handleNonfatalError___rarg___lambda__2___closed__2 = _init_l_Aesop_handleNonfatalError___rarg___lambda__2___closed__2();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__2___closed__2);
l_Aesop_handleNonfatalError___rarg___lambda__3___closed__1 = _init_l_Aesop_handleNonfatalError___rarg___lambda__3___closed__1();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__3___closed__1);
l_Aesop_handleNonfatalError___rarg___lambda__3___closed__2 = _init_l_Aesop_handleNonfatalError___rarg___lambda__3___closed__2();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__3___closed__2);
l_Aesop_handleNonfatalError___rarg___lambda__4___closed__1 = _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__1();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__4___closed__1);
l_Aesop_handleNonfatalError___rarg___lambda__4___closed__2 = _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__2();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__4___closed__2);
l_Aesop_handleNonfatalError___rarg___lambda__4___closed__3 = _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__3();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__4___closed__3);
l_Aesop_handleNonfatalError___rarg___lambda__4___closed__4 = _init_l_Aesop_handleNonfatalError___rarg___lambda__4___closed__4();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___lambda__4___closed__4);
l_Aesop_handleNonfatalError___rarg___closed__1 = _init_l_Aesop_handleNonfatalError___rarg___closed__1();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___closed__1);
l_Aesop_handleNonfatalError___rarg___closed__2 = _init_l_Aesop_handleNonfatalError___rarg___closed__2();
lean_mark_persistent(l_Aesop_handleNonfatalError___rarg___closed__2);
l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__1 = _init_l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__1();
lean_mark_persistent(l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__1);
l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__2 = _init_l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__2();
lean_mark_persistent(l_Lean_throwMaxRecDepthAt___at_Aesop_searchLoop___spec__1___rarg___closed__2);
l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___closed__1 = _init_l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___closed__1();
lean_mark_persistent(l_Aesop_Options_toOptions_x27___at_Aesop_search___spec__1___closed__1);
l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__1 = _init_l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__1();
lean_mark_persistent(l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__1);
l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__2 = _init_l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__2();
lean_mark_persistent(l_Aesop_SearchM_run___at_Aesop_search___spec__2___rarg___closed__2);
l_Aesop_search___closed__1 = _init_l_Aesop_search___closed__1();
lean_mark_persistent(l_Aesop_search___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
