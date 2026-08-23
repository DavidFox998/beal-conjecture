// Lean compiler output
// Module: Mathlib.Tactic.Tauto
// Imports: Init Mathlib.Tactic.CasesM Mathlib.Tactic.Core Mathlib.Lean.Elab.Tactic.Basic Mathlib.Logic.Basic Qq Batteries.Tactic.Classical
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
static lean_object* l_Mathlib_Tactic_Tauto_tautology___closed__1;
lean_object* l_Lean_Expr_const___override(lean_object*, lean_object*);
lean_object* l_Lean_Meta_FVarSubst_apply(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__32;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_elabConfig___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__5;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__25;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__8;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__22;
lean_object* l_Batteries_Tactic_classical___at_Batteries_Tactic___aux__Batteries__Tactic__Classical______elabRules__Batteries__Tactic__tacticClassical____1___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__15;
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__5;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__2;
lean_object* l_Lean_Meta_mkFreshLevelMVar(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__11;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__12;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__5;
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Mathlib_Tactic_Tauto_distribNotAt___spec__1(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_isProp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__29;
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
lean_object* l_Lean_Elab_Term_synthesizeSyntheticMVars(uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2;
lean_object* l_Lean_Meta_isExprDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__8;
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Level_succ___override(lean_object*);
lean_object* l_Lean_Elab_Term_elabTermEnsuringType(lean_object*, lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10;
lean_object* l_Lean_Expr_sort___override(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__34;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__6;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5;
lean_object* l_Lean_replaceRef(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautology___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_withoutRecover___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__7;
lean_object* l_Lean_Elab_Tactic_getMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__19;
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__7;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__45;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16;
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_orElse___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__10;
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__6;
lean_object* l_Lean_Elab_Tactic_SavedState_restore(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotAux(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__13;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__12;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__13;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__9;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14;
static lean_object* l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_elabConfig(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__1;
lean_object* l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_withSynthesizeImp___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__12;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__7;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__5;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__36;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__4___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
lean_object* l_Lean_Elab_Tactic_getUnsolvedGoals(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__26;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__5(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_casesMatcher(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_SourceInfo_fromRef(lean_object*, uint8_t);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__3;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__4(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_node6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__40;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3;
lean_object* l_Lean_registerTraceClass(lean_object*, uint8_t, lean_object*, lean_object*);
lean_object* l_Lean_Meta_SavedState_restore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__10;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7_(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNot(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotAt(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNot___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__10;
lean_object* l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953_(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_FVarId_getDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_forallE___override(lean_object*, lean_object*, lean_object*, uint8_t);
lean_object* l_Lean_Elab_Tactic_withMainContext___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_intros_x21(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_casesMatching___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion___rarg___boxed(lean_object*);
lean_object* l_Mathlib_Tactic_constructorMatching(lean_object*, lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__7;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__42;
lean_object* l_Lean_Name_num___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__15;
lean_object* l_Lean_Syntax_node3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__20;
lean_object* l_Lean_MVarId_assertAfter(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__6;
lean_object* l_Lean_Elab_Tactic_andThenOnSubgoals(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__9;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__9;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__37;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__47;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__18;
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__1;
lean_object* l_Lean_addMacroScope(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2;
lean_object* l_Lean_MVarId_clear(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4;
lean_object* l_Lean_Syntax_node2(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_mkOptionalNode(lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__39;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3;
uint8_t l_Lean_Syntax_matchesNull(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2;
lean_object* l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_fvarId(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__23;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__27;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__16;
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__9;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__15;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15;
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__13;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__8;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__11;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_casesMatcher___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7;
lean_object* l_Lean_MessageData_ofExpr(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_LocalDecl_isImplementationDetail(lean_object*);
lean_object* l_List_tail_x21___rarg(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__7;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5;
lean_object* l_Qq_synthInstanceQ___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_userName(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__8;
lean_object* l_Lean_Elab_Tactic_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__12;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__43;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_elabConfig___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__13;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__10;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__14;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotAt___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__44;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__14;
lean_object* l_Lean_Expr_app___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3;
lean_object* l_Lean_Elab_withSaveInfoContext___at_Lean_Elab_Tactic_SolveByElim_elabConfig___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__17;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__14;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__2;
lean_object* lean_environment_main_module(lean_object*);
lean_object* l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___closed__1;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__33;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__9;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__4;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__12;
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__3;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__6;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_object* l_Lean_Syntax_node1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__3(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__1;
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__6;
lean_object* l_Lean_LocalDecl_type(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__2;
uint8_t l_Lean_Syntax_isNone(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__30;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__17;
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__4;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__17;
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tauto;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8;
static lean_object* l_Mathlib_Tactic_Tauto_tautology___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__4;
lean_object* l_List_reverse___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_toCtorIdx(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__9;
static lean_object* l_Mathlib_Tactic_Tauto_tauto___closed__6;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__4;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694_;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__11;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_toCtorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__2;
lean_object* l_Lean_Elab_withoutModifyingStateWithInfoAndMessages___at_Lean_Elab_Tactic_SolveByElim_elabConfig___spec__13(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_List_beq___at_Mathlib_Linter_UnusedTactic_eraseUsedTactics___spec__1(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__46;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__1;
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
lean_object* l_Lean_Expr_fvar___override(lean_object*);
size_t lean_array_size(lean_object*);
lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__14;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__38;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Parser_Tactic_config;
lean_object* l_Lean_Elab_Tactic_allGoals(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__11;
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__35;
lean_object* l_Lean_Elab_Tactic_evalTactic(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__41;
lean_object* l_Lean_Meta_evalExpr_x27___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__8;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__15;
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Classical______elabRules__Batteries__Tactic__tacticClassical_x21__1___spec__1___rarg(lean_object*);
lean_object* l_Lean_LocalDecl_toExpr(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_instantiateLevelMVars___at_Lean_Meta_normalizeLevel___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4;
uint8_t lean_usize_dec_lt(size_t, size_t);
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_finishingConstructorMatcher(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Exception_isRuntime(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__1___closed__1;
lean_object* l_String_toSubstring_x27(lean_object*);
lean_object* l_Lean_Elab_Tactic_liftMetaTactic_x27(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautology___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
lean_object* l_Lean_Elab_Tactic_replaceMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__21;
static lean_object* l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__3;
lean_object* l_Lean_Elab_Tactic_liftMetaTactic(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__4;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__18;
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
static lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12;
static lean_object* l_Mathlib_Tactic_Tauto_elabConfig___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__24;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_withLCtx___at_Lean_Elab_Term_ToDepElimPattern_main___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__31;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion___rarg(lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5;
lean_object* l_Lean_Elab_Tactic_tryTactic___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__9;
static lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2;
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tauto", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Mathlib", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__4;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tauto", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__6;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("initFn", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("_@", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__10;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__12;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__13;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__14;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("_hyg", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__15;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__17;
x_2 = lean_unsigned_to_nat(7u);
x_3 = l_Lean_Name_num___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7_(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__2;
x_3 = 0;
x_4 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__18;
x_5 = l_Lean_registerTraceClass(x_2, x_3, x_4, x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
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
LEAN_EXPORT lean_object* l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = l_Lean_Meta_saveState___rarg(x_3, x_4, x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_10 = lean_apply_5(x_1, x_2, x_3, x_4, x_5, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_dec(x_8);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
else
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
x_14 = l_Lean_Exception_isInterrupt(x_12);
if (x_14 == 0)
{
uint8_t x_15; 
x_15 = l_Lean_Exception_isRuntime(x_12);
if (x_15 == 0)
{
lean_object* x_16; uint8_t x_17; 
lean_free_object(x_10);
x_16 = l_Lean_Meta_SavedState_restore(x_8, x_2, x_3, x_4, x_5, x_13);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_8);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_16, 0);
lean_dec(x_18);
lean_ctor_set_tag(x_16, 1);
lean_ctor_set(x_16, 0, x_12);
return x_16;
}
else
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_16, 1);
lean_inc(x_19);
lean_dec(x_16);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_12);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_dec(x_8);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
else
{
lean_dec(x_8);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
else
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_10, 0);
x_22 = lean_ctor_get(x_10, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_10);
x_23 = l_Lean_Exception_isInterrupt(x_21);
if (x_23 == 0)
{
uint8_t x_24; 
x_24 = l_Lean_Exception_isRuntime(x_21);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_25 = l_Lean_Meta_SavedState_restore(x_8, x_2, x_3, x_4, x_5, x_22);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_8);
x_26 = lean_ctor_get(x_25, 1);
lean_inc(x_26);
if (lean_is_exclusive(x_25)) {
 lean_ctor_release(x_25, 0);
 lean_ctor_release(x_25, 1);
 x_27 = x_25;
} else {
 lean_dec_ref(x_25);
 x_27 = lean_box(0);
}
if (lean_is_scalar(x_27)) {
 x_28 = lean_alloc_ctor(1, 2, 0);
} else {
 x_28 = x_27;
 lean_ctor_set_tag(x_28, 1);
}
lean_ctor_set(x_28, 0, x_21);
lean_ctor_set(x_28, 1, x_26);
return x_28;
}
else
{
lean_object* x_29; 
lean_dec(x_8);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_21);
lean_ctor_set(x_29, 1, x_22);
return x_29;
}
}
else
{
lean_object* x_30; 
lean_dec(x_8);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_21);
lean_ctor_set(x_30, 1, x_22);
return x_30;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_3);
x_14 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; uint8_t x_22; uint8_t x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; uint8_t x_40; uint8_t x_41; lean_object* x_42; lean_object* x_43; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = 0;
lean_inc(x_16);
lean_inc(x_12);
x_19 = l_Lean_Expr_forallE___override(x_9, x_12, x_16, x_18);
x_20 = lean_ctor_get(x_3, 0);
lean_inc(x_20);
x_21 = lean_ctor_get_uint8(x_20, 0);
x_22 = lean_ctor_get_uint8(x_20, 1);
x_23 = lean_ctor_get_uint8(x_20, 2);
x_24 = lean_ctor_get_uint8(x_20, 3);
x_25 = lean_ctor_get_uint8(x_20, 4);
x_26 = lean_ctor_get_uint8(x_20, 5);
x_27 = lean_ctor_get_uint8(x_20, 6);
x_28 = lean_ctor_get_uint8(x_20, 7);
x_29 = lean_ctor_get_uint8(x_20, 8);
x_30 = lean_ctor_get_uint8(x_20, 10);
x_31 = lean_ctor_get_uint8(x_20, 11);
x_32 = lean_ctor_get_uint8(x_20, 12);
lean_dec(x_20);
x_33 = 2;
x_34 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_34, 0, x_21);
lean_ctor_set_uint8(x_34, 1, x_22);
lean_ctor_set_uint8(x_34, 2, x_23);
lean_ctor_set_uint8(x_34, 3, x_24);
lean_ctor_set_uint8(x_34, 4, x_25);
lean_ctor_set_uint8(x_34, 5, x_26);
lean_ctor_set_uint8(x_34, 6, x_27);
lean_ctor_set_uint8(x_34, 7, x_28);
lean_ctor_set_uint8(x_34, 8, x_29);
lean_ctor_set_uint8(x_34, 9, x_33);
lean_ctor_set_uint8(x_34, 10, x_30);
lean_ctor_set_uint8(x_34, 11, x_31);
lean_ctor_set_uint8(x_34, 12, x_32);
x_35 = lean_ctor_get(x_3, 1);
lean_inc(x_35);
x_36 = lean_ctor_get(x_3, 2);
lean_inc(x_36);
x_37 = lean_ctor_get(x_3, 3);
lean_inc(x_37);
x_38 = lean_ctor_get(x_3, 4);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 5);
lean_inc(x_39);
x_40 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_41 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_42 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_42, 0, x_34);
lean_ctor_set(x_42, 1, x_35);
lean_ctor_set(x_42, 2, x_36);
lean_ctor_set(x_42, 3, x_37);
lean_ctor_set(x_42, 4, x_38);
lean_ctor_set(x_42, 5, x_39);
lean_ctor_set_uint8(x_42, sizeof(void*)*6, x_40);
lean_ctor_set_uint8(x_42, sizeof(void*)*6 + 1, x_41);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_43 = l_Lean_Meta_isExprDefEq(x_19, x_2, x_42, x_4, x_5, x_6, x_17);
if (lean_obj_tag(x_43) == 0)
{
lean_object* x_44; uint8_t x_45; 
x_44 = lean_ctor_get(x_43, 0);
lean_inc(x_44);
x_45 = lean_unbox(x_44);
lean_dec(x_44);
if (x_45 == 0)
{
uint8_t x_46; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_46 = !lean_is_exclusive(x_43);
if (x_46 == 0)
{
lean_object* x_47; uint8_t x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_43, 0);
lean_dec(x_47);
x_48 = 0;
x_49 = lean_box(x_48);
lean_ctor_set(x_14, 1, x_49);
lean_ctor_set(x_10, 1, x_14);
lean_ctor_set(x_43, 0, x_10);
return x_43;
}
else
{
lean_object* x_50; uint8_t x_51; lean_object* x_52; lean_object* x_53; 
x_50 = lean_ctor_get(x_43, 1);
lean_inc(x_50);
lean_dec(x_43);
x_51 = 0;
x_52 = lean_box(x_51);
lean_ctor_set(x_14, 1, x_52);
lean_ctor_set(x_10, 1, x_14);
x_53 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_53, 0, x_10);
lean_ctor_set(x_53, 1, x_50);
return x_53;
}
}
else
{
lean_object* x_54; lean_object* x_55; uint8_t x_56; 
lean_free_object(x_10);
x_54 = lean_ctor_get(x_43, 1);
lean_inc(x_54);
lean_dec(x_43);
x_55 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_54);
x_56 = !lean_is_exclusive(x_55);
if (x_56 == 0)
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; uint8_t x_60; 
x_57 = lean_ctor_get(x_55, 0);
x_58 = lean_ctor_get(x_55, 1);
x_59 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_58);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_60 = !lean_is_exclusive(x_59);
if (x_60 == 0)
{
lean_object* x_61; uint8_t x_62; lean_object* x_63; 
x_61 = lean_ctor_get(x_59, 0);
x_62 = 1;
x_63 = lean_box(x_62);
lean_ctor_set(x_55, 1, x_63);
lean_ctor_set(x_55, 0, x_61);
lean_ctor_set(x_14, 1, x_55);
lean_ctor_set(x_14, 0, x_57);
lean_ctor_set(x_59, 0, x_14);
return x_59;
}
else
{
lean_object* x_64; lean_object* x_65; uint8_t x_66; lean_object* x_67; lean_object* x_68; 
x_64 = lean_ctor_get(x_59, 0);
x_65 = lean_ctor_get(x_59, 1);
lean_inc(x_65);
lean_inc(x_64);
lean_dec(x_59);
x_66 = 1;
x_67 = lean_box(x_66);
lean_ctor_set(x_55, 1, x_67);
lean_ctor_set(x_55, 0, x_64);
lean_ctor_set(x_14, 1, x_55);
lean_ctor_set(x_14, 0, x_57);
x_68 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_68, 0, x_14);
lean_ctor_set(x_68, 1, x_65);
return x_68;
}
}
else
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; uint8_t x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_69 = lean_ctor_get(x_55, 0);
x_70 = lean_ctor_get(x_55, 1);
lean_inc(x_70);
lean_inc(x_69);
lean_dec(x_55);
x_71 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_70);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_72 = lean_ctor_get(x_71, 0);
lean_inc(x_72);
x_73 = lean_ctor_get(x_71, 1);
lean_inc(x_73);
if (lean_is_exclusive(x_71)) {
 lean_ctor_release(x_71, 0);
 lean_ctor_release(x_71, 1);
 x_74 = x_71;
} else {
 lean_dec_ref(x_71);
 x_74 = lean_box(0);
}
x_75 = 1;
x_76 = lean_box(x_75);
x_77 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_77, 0, x_72);
lean_ctor_set(x_77, 1, x_76);
lean_ctor_set(x_14, 1, x_77);
lean_ctor_set(x_14, 0, x_69);
if (lean_is_scalar(x_74)) {
 x_78 = lean_alloc_ctor(0, 2, 0);
} else {
 x_78 = x_74;
}
lean_ctor_set(x_78, 0, x_14);
lean_ctor_set(x_78, 1, x_73);
return x_78;
}
}
}
else
{
uint8_t x_79; 
lean_free_object(x_14);
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_79 = !lean_is_exclusive(x_43);
if (x_79 == 0)
{
return x_43;
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_80 = lean_ctor_get(x_43, 0);
x_81 = lean_ctor_get(x_43, 1);
lean_inc(x_81);
lean_inc(x_80);
lean_dec(x_43);
x_82 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_82, 0, x_80);
lean_ctor_set(x_82, 1, x_81);
return x_82;
}
}
}
else
{
lean_object* x_83; lean_object* x_84; uint8_t x_85; lean_object* x_86; lean_object* x_87; uint8_t x_88; uint8_t x_89; uint8_t x_90; uint8_t x_91; uint8_t x_92; uint8_t x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; uint8_t x_107; uint8_t x_108; lean_object* x_109; lean_object* x_110; 
x_83 = lean_ctor_get(x_14, 0);
x_84 = lean_ctor_get(x_14, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_14);
x_85 = 0;
lean_inc(x_83);
lean_inc(x_12);
x_86 = l_Lean_Expr_forallE___override(x_9, x_12, x_83, x_85);
x_87 = lean_ctor_get(x_3, 0);
lean_inc(x_87);
x_88 = lean_ctor_get_uint8(x_87, 0);
x_89 = lean_ctor_get_uint8(x_87, 1);
x_90 = lean_ctor_get_uint8(x_87, 2);
x_91 = lean_ctor_get_uint8(x_87, 3);
x_92 = lean_ctor_get_uint8(x_87, 4);
x_93 = lean_ctor_get_uint8(x_87, 5);
x_94 = lean_ctor_get_uint8(x_87, 6);
x_95 = lean_ctor_get_uint8(x_87, 7);
x_96 = lean_ctor_get_uint8(x_87, 8);
x_97 = lean_ctor_get_uint8(x_87, 10);
x_98 = lean_ctor_get_uint8(x_87, 11);
x_99 = lean_ctor_get_uint8(x_87, 12);
lean_dec(x_87);
x_100 = 2;
x_101 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_101, 0, x_88);
lean_ctor_set_uint8(x_101, 1, x_89);
lean_ctor_set_uint8(x_101, 2, x_90);
lean_ctor_set_uint8(x_101, 3, x_91);
lean_ctor_set_uint8(x_101, 4, x_92);
lean_ctor_set_uint8(x_101, 5, x_93);
lean_ctor_set_uint8(x_101, 6, x_94);
lean_ctor_set_uint8(x_101, 7, x_95);
lean_ctor_set_uint8(x_101, 8, x_96);
lean_ctor_set_uint8(x_101, 9, x_100);
lean_ctor_set_uint8(x_101, 10, x_97);
lean_ctor_set_uint8(x_101, 11, x_98);
lean_ctor_set_uint8(x_101, 12, x_99);
x_102 = lean_ctor_get(x_3, 1);
lean_inc(x_102);
x_103 = lean_ctor_get(x_3, 2);
lean_inc(x_103);
x_104 = lean_ctor_get(x_3, 3);
lean_inc(x_104);
x_105 = lean_ctor_get(x_3, 4);
lean_inc(x_105);
x_106 = lean_ctor_get(x_3, 5);
lean_inc(x_106);
x_107 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_108 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_109 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_109, 0, x_101);
lean_ctor_set(x_109, 1, x_102);
lean_ctor_set(x_109, 2, x_103);
lean_ctor_set(x_109, 3, x_104);
lean_ctor_set(x_109, 4, x_105);
lean_ctor_set(x_109, 5, x_106);
lean_ctor_set_uint8(x_109, sizeof(void*)*6, x_107);
lean_ctor_set_uint8(x_109, sizeof(void*)*6 + 1, x_108);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_110 = l_Lean_Meta_isExprDefEq(x_86, x_2, x_109, x_4, x_5, x_6, x_84);
if (lean_obj_tag(x_110) == 0)
{
lean_object* x_111; uint8_t x_112; 
x_111 = lean_ctor_get(x_110, 0);
lean_inc(x_111);
x_112 = lean_unbox(x_111);
lean_dec(x_111);
if (x_112 == 0)
{
lean_object* x_113; lean_object* x_114; uint8_t x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_113 = lean_ctor_get(x_110, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_110)) {
 lean_ctor_release(x_110, 0);
 lean_ctor_release(x_110, 1);
 x_114 = x_110;
} else {
 lean_dec_ref(x_110);
 x_114 = lean_box(0);
}
x_115 = 0;
x_116 = lean_box(x_115);
x_117 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_117, 0, x_83);
lean_ctor_set(x_117, 1, x_116);
lean_ctor_set(x_10, 1, x_117);
if (lean_is_scalar(x_114)) {
 x_118 = lean_alloc_ctor(0, 2, 0);
} else {
 x_118 = x_114;
}
lean_ctor_set(x_118, 0, x_10);
lean_ctor_set(x_118, 1, x_113);
return x_118;
}
else
{
lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; uint8_t x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; 
lean_free_object(x_10);
x_119 = lean_ctor_get(x_110, 1);
lean_inc(x_119);
lean_dec(x_110);
x_120 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_119);
x_121 = lean_ctor_get(x_120, 0);
lean_inc(x_121);
x_122 = lean_ctor_get(x_120, 1);
lean_inc(x_122);
if (lean_is_exclusive(x_120)) {
 lean_ctor_release(x_120, 0);
 lean_ctor_release(x_120, 1);
 x_123 = x_120;
} else {
 lean_dec_ref(x_120);
 x_123 = lean_box(0);
}
x_124 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_83, x_3, x_4, x_5, x_6, x_122);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_125 = lean_ctor_get(x_124, 0);
lean_inc(x_125);
x_126 = lean_ctor_get(x_124, 1);
lean_inc(x_126);
if (lean_is_exclusive(x_124)) {
 lean_ctor_release(x_124, 0);
 lean_ctor_release(x_124, 1);
 x_127 = x_124;
} else {
 lean_dec_ref(x_124);
 x_127 = lean_box(0);
}
x_128 = 1;
x_129 = lean_box(x_128);
if (lean_is_scalar(x_123)) {
 x_130 = lean_alloc_ctor(0, 2, 0);
} else {
 x_130 = x_123;
}
lean_ctor_set(x_130, 0, x_125);
lean_ctor_set(x_130, 1, x_129);
x_131 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_131, 0, x_121);
lean_ctor_set(x_131, 1, x_130);
if (lean_is_scalar(x_127)) {
 x_132 = lean_alloc_ctor(0, 2, 0);
} else {
 x_132 = x_127;
}
lean_ctor_set(x_132, 0, x_131);
lean_ctor_set(x_132, 1, x_126);
return x_132;
}
}
else
{
lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; 
lean_dec(x_83);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_133 = lean_ctor_get(x_110, 0);
lean_inc(x_133);
x_134 = lean_ctor_get(x_110, 1);
lean_inc(x_134);
if (lean_is_exclusive(x_110)) {
 lean_ctor_release(x_110, 0);
 lean_ctor_release(x_110, 1);
 x_135 = x_110;
} else {
 lean_dec_ref(x_110);
 x_135 = lean_box(0);
}
if (lean_is_scalar(x_135)) {
 x_136 = lean_alloc_ctor(1, 2, 0);
} else {
 x_136 = x_135;
}
lean_ctor_set(x_136, 0, x_133);
lean_ctor_set(x_136, 1, x_134);
return x_136;
}
}
}
else
{
lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; uint8_t x_143; lean_object* x_144; lean_object* x_145; uint8_t x_146; uint8_t x_147; uint8_t x_148; uint8_t x_149; uint8_t x_150; uint8_t x_151; uint8_t x_152; uint8_t x_153; uint8_t x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; uint8_t x_165; uint8_t x_166; lean_object* x_167; lean_object* x_168; 
x_137 = lean_ctor_get(x_10, 0);
x_138 = lean_ctor_get(x_10, 1);
lean_inc(x_138);
lean_inc(x_137);
lean_dec(x_10);
lean_inc(x_3);
x_139 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_138);
x_140 = lean_ctor_get(x_139, 0);
lean_inc(x_140);
x_141 = lean_ctor_get(x_139, 1);
lean_inc(x_141);
if (lean_is_exclusive(x_139)) {
 lean_ctor_release(x_139, 0);
 lean_ctor_release(x_139, 1);
 x_142 = x_139;
} else {
 lean_dec_ref(x_139);
 x_142 = lean_box(0);
}
x_143 = 0;
lean_inc(x_140);
lean_inc(x_137);
x_144 = l_Lean_Expr_forallE___override(x_9, x_137, x_140, x_143);
x_145 = lean_ctor_get(x_3, 0);
lean_inc(x_145);
x_146 = lean_ctor_get_uint8(x_145, 0);
x_147 = lean_ctor_get_uint8(x_145, 1);
x_148 = lean_ctor_get_uint8(x_145, 2);
x_149 = lean_ctor_get_uint8(x_145, 3);
x_150 = lean_ctor_get_uint8(x_145, 4);
x_151 = lean_ctor_get_uint8(x_145, 5);
x_152 = lean_ctor_get_uint8(x_145, 6);
x_153 = lean_ctor_get_uint8(x_145, 7);
x_154 = lean_ctor_get_uint8(x_145, 8);
x_155 = lean_ctor_get_uint8(x_145, 10);
x_156 = lean_ctor_get_uint8(x_145, 11);
x_157 = lean_ctor_get_uint8(x_145, 12);
lean_dec(x_145);
x_158 = 2;
x_159 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_159, 0, x_146);
lean_ctor_set_uint8(x_159, 1, x_147);
lean_ctor_set_uint8(x_159, 2, x_148);
lean_ctor_set_uint8(x_159, 3, x_149);
lean_ctor_set_uint8(x_159, 4, x_150);
lean_ctor_set_uint8(x_159, 5, x_151);
lean_ctor_set_uint8(x_159, 6, x_152);
lean_ctor_set_uint8(x_159, 7, x_153);
lean_ctor_set_uint8(x_159, 8, x_154);
lean_ctor_set_uint8(x_159, 9, x_158);
lean_ctor_set_uint8(x_159, 10, x_155);
lean_ctor_set_uint8(x_159, 11, x_156);
lean_ctor_set_uint8(x_159, 12, x_157);
x_160 = lean_ctor_get(x_3, 1);
lean_inc(x_160);
x_161 = lean_ctor_get(x_3, 2);
lean_inc(x_161);
x_162 = lean_ctor_get(x_3, 3);
lean_inc(x_162);
x_163 = lean_ctor_get(x_3, 4);
lean_inc(x_163);
x_164 = lean_ctor_get(x_3, 5);
lean_inc(x_164);
x_165 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_166 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_167 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_167, 0, x_159);
lean_ctor_set(x_167, 1, x_160);
lean_ctor_set(x_167, 2, x_161);
lean_ctor_set(x_167, 3, x_162);
lean_ctor_set(x_167, 4, x_163);
lean_ctor_set(x_167, 5, x_164);
lean_ctor_set_uint8(x_167, sizeof(void*)*6, x_165);
lean_ctor_set_uint8(x_167, sizeof(void*)*6 + 1, x_166);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_168 = l_Lean_Meta_isExprDefEq(x_144, x_2, x_167, x_4, x_5, x_6, x_141);
if (lean_obj_tag(x_168) == 0)
{
lean_object* x_169; uint8_t x_170; 
x_169 = lean_ctor_get(x_168, 0);
lean_inc(x_169);
x_170 = lean_unbox(x_169);
lean_dec(x_169);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; uint8_t x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_171 = lean_ctor_get(x_168, 1);
lean_inc(x_171);
if (lean_is_exclusive(x_168)) {
 lean_ctor_release(x_168, 0);
 lean_ctor_release(x_168, 1);
 x_172 = x_168;
} else {
 lean_dec_ref(x_168);
 x_172 = lean_box(0);
}
x_173 = 0;
x_174 = lean_box(x_173);
if (lean_is_scalar(x_142)) {
 x_175 = lean_alloc_ctor(0, 2, 0);
} else {
 x_175 = x_142;
}
lean_ctor_set(x_175, 0, x_140);
lean_ctor_set(x_175, 1, x_174);
x_176 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_176, 0, x_137);
lean_ctor_set(x_176, 1, x_175);
if (lean_is_scalar(x_172)) {
 x_177 = lean_alloc_ctor(0, 2, 0);
} else {
 x_177 = x_172;
}
lean_ctor_set(x_177, 0, x_176);
lean_ctor_set(x_177, 1, x_171);
return x_177;
}
else
{
lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; uint8_t x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; 
x_178 = lean_ctor_get(x_168, 1);
lean_inc(x_178);
lean_dec(x_168);
x_179 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_137, x_3, x_4, x_5, x_6, x_178);
x_180 = lean_ctor_get(x_179, 0);
lean_inc(x_180);
x_181 = lean_ctor_get(x_179, 1);
lean_inc(x_181);
if (lean_is_exclusive(x_179)) {
 lean_ctor_release(x_179, 0);
 lean_ctor_release(x_179, 1);
 x_182 = x_179;
} else {
 lean_dec_ref(x_179);
 x_182 = lean_box(0);
}
x_183 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_140, x_3, x_4, x_5, x_6, x_181);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_184 = lean_ctor_get(x_183, 0);
lean_inc(x_184);
x_185 = lean_ctor_get(x_183, 1);
lean_inc(x_185);
if (lean_is_exclusive(x_183)) {
 lean_ctor_release(x_183, 0);
 lean_ctor_release(x_183, 1);
 x_186 = x_183;
} else {
 lean_dec_ref(x_183);
 x_186 = lean_box(0);
}
x_187 = 1;
x_188 = lean_box(x_187);
if (lean_is_scalar(x_182)) {
 x_189 = lean_alloc_ctor(0, 2, 0);
} else {
 x_189 = x_182;
}
lean_ctor_set(x_189, 0, x_184);
lean_ctor_set(x_189, 1, x_188);
if (lean_is_scalar(x_142)) {
 x_190 = lean_alloc_ctor(0, 2, 0);
} else {
 x_190 = x_142;
}
lean_ctor_set(x_190, 0, x_180);
lean_ctor_set(x_190, 1, x_189);
if (lean_is_scalar(x_186)) {
 x_191 = lean_alloc_ctor(0, 2, 0);
} else {
 x_191 = x_186;
}
lean_ctor_set(x_191, 0, x_190);
lean_ctor_set(x_191, 1, x_185);
return x_191;
}
}
else
{
lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; 
lean_dec(x_142);
lean_dec(x_140);
lean_dec(x_137);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_192 = lean_ctor_get(x_168, 0);
lean_inc(x_192);
x_193 = lean_ctor_get(x_168, 1);
lean_inc(x_193);
if (lean_is_exclusive(x_168)) {
 lean_ctor_release(x_168, 0);
 lean_ctor_release(x_168, 1);
 x_194 = x_168;
} else {
 lean_dec_ref(x_168);
 x_194 = lean_box(0);
}
if (lean_is_scalar(x_194)) {
 x_195 = lean_alloc_ctor(1, 2, 0);
} else {
 x_195 = x_194;
}
lean_ctor_set(x_195, 0, x_192);
lean_ctor_set(x_195, 1, x_193);
return x_195;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("False", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; uint8_t x_19; uint8_t x_20; uint8_t x_21; uint8_t x_22; uint8_t x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; uint8_t x_38; lean_object* x_39; lean_object* x_40; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
x_14 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3;
x_15 = 0;
lean_inc(x_12);
x_16 = l_Lean_Expr_forallE___override(x_9, x_12, x_14, x_15);
x_17 = lean_ctor_get(x_3, 0);
lean_inc(x_17);
x_18 = lean_ctor_get_uint8(x_17, 0);
x_19 = lean_ctor_get_uint8(x_17, 1);
x_20 = lean_ctor_get_uint8(x_17, 2);
x_21 = lean_ctor_get_uint8(x_17, 3);
x_22 = lean_ctor_get_uint8(x_17, 4);
x_23 = lean_ctor_get_uint8(x_17, 5);
x_24 = lean_ctor_get_uint8(x_17, 6);
x_25 = lean_ctor_get_uint8(x_17, 7);
x_26 = lean_ctor_get_uint8(x_17, 8);
x_27 = lean_ctor_get_uint8(x_17, 10);
x_28 = lean_ctor_get_uint8(x_17, 11);
x_29 = lean_ctor_get_uint8(x_17, 12);
lean_dec(x_17);
x_30 = 2;
x_31 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_31, 0, x_18);
lean_ctor_set_uint8(x_31, 1, x_19);
lean_ctor_set_uint8(x_31, 2, x_20);
lean_ctor_set_uint8(x_31, 3, x_21);
lean_ctor_set_uint8(x_31, 4, x_22);
lean_ctor_set_uint8(x_31, 5, x_23);
lean_ctor_set_uint8(x_31, 6, x_24);
lean_ctor_set_uint8(x_31, 7, x_25);
lean_ctor_set_uint8(x_31, 8, x_26);
lean_ctor_set_uint8(x_31, 9, x_30);
lean_ctor_set_uint8(x_31, 10, x_27);
lean_ctor_set_uint8(x_31, 11, x_28);
lean_ctor_set_uint8(x_31, 12, x_29);
x_32 = lean_ctor_get(x_3, 1);
lean_inc(x_32);
x_33 = lean_ctor_get(x_3, 2);
lean_inc(x_33);
x_34 = lean_ctor_get(x_3, 3);
lean_inc(x_34);
x_35 = lean_ctor_get(x_3, 4);
lean_inc(x_35);
x_36 = lean_ctor_get(x_3, 5);
lean_inc(x_36);
x_37 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_38 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_39 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_39, 0, x_31);
lean_ctor_set(x_39, 1, x_32);
lean_ctor_set(x_39, 2, x_33);
lean_ctor_set(x_39, 3, x_34);
lean_ctor_set(x_39, 4, x_35);
lean_ctor_set(x_39, 5, x_36);
lean_ctor_set_uint8(x_39, sizeof(void*)*6, x_37);
lean_ctor_set_uint8(x_39, sizeof(void*)*6 + 1, x_38);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_40 = l_Lean_Meta_isExprDefEq(x_16, x_2, x_39, x_4, x_5, x_6, x_13);
if (lean_obj_tag(x_40) == 0)
{
lean_object* x_41; uint8_t x_42; 
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
x_42 = lean_unbox(x_41);
lean_dec(x_41);
if (x_42 == 0)
{
uint8_t x_43; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_43 = !lean_is_exclusive(x_40);
if (x_43 == 0)
{
lean_object* x_44; uint8_t x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_40, 0);
lean_dec(x_44);
x_45 = 0;
x_46 = lean_box(x_45);
lean_ctor_set(x_10, 1, x_46);
lean_ctor_set(x_40, 0, x_10);
return x_40;
}
else
{
lean_object* x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; 
x_47 = lean_ctor_get(x_40, 1);
lean_inc(x_47);
lean_dec(x_40);
x_48 = 0;
x_49 = lean_box(x_48);
lean_ctor_set(x_10, 1, x_49);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_10);
lean_ctor_set(x_50, 1, x_47);
return x_50;
}
}
else
{
lean_object* x_51; lean_object* x_52; uint8_t x_53; 
x_51 = lean_ctor_get(x_40, 1);
lean_inc(x_51);
lean_dec(x_40);
x_52 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_51);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_53 = !lean_is_exclusive(x_52);
if (x_53 == 0)
{
lean_object* x_54; uint8_t x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_52, 0);
x_55 = 1;
x_56 = lean_box(x_55);
lean_ctor_set(x_10, 1, x_56);
lean_ctor_set(x_10, 0, x_54);
lean_ctor_set(x_52, 0, x_10);
return x_52;
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; lean_object* x_60; lean_object* x_61; 
x_57 = lean_ctor_get(x_52, 0);
x_58 = lean_ctor_get(x_52, 1);
lean_inc(x_58);
lean_inc(x_57);
lean_dec(x_52);
x_59 = 1;
x_60 = lean_box(x_59);
lean_ctor_set(x_10, 1, x_60);
lean_ctor_set(x_10, 0, x_57);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_10);
lean_ctor_set(x_61, 1, x_58);
return x_61;
}
}
}
else
{
uint8_t x_62; 
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_62 = !lean_is_exclusive(x_40);
if (x_62 == 0)
{
return x_40;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_40, 0);
x_64 = lean_ctor_get(x_40, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_40);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; uint8_t x_69; lean_object* x_70; lean_object* x_71; uint8_t x_72; uint8_t x_73; uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; uint8_t x_91; uint8_t x_92; lean_object* x_93; lean_object* x_94; 
x_66 = lean_ctor_get(x_10, 0);
x_67 = lean_ctor_get(x_10, 1);
lean_inc(x_67);
lean_inc(x_66);
lean_dec(x_10);
x_68 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3;
x_69 = 0;
lean_inc(x_66);
x_70 = l_Lean_Expr_forallE___override(x_9, x_66, x_68, x_69);
x_71 = lean_ctor_get(x_3, 0);
lean_inc(x_71);
x_72 = lean_ctor_get_uint8(x_71, 0);
x_73 = lean_ctor_get_uint8(x_71, 1);
x_74 = lean_ctor_get_uint8(x_71, 2);
x_75 = lean_ctor_get_uint8(x_71, 3);
x_76 = lean_ctor_get_uint8(x_71, 4);
x_77 = lean_ctor_get_uint8(x_71, 5);
x_78 = lean_ctor_get_uint8(x_71, 6);
x_79 = lean_ctor_get_uint8(x_71, 7);
x_80 = lean_ctor_get_uint8(x_71, 8);
x_81 = lean_ctor_get_uint8(x_71, 10);
x_82 = lean_ctor_get_uint8(x_71, 11);
x_83 = lean_ctor_get_uint8(x_71, 12);
lean_dec(x_71);
x_84 = 2;
x_85 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_85, 0, x_72);
lean_ctor_set_uint8(x_85, 1, x_73);
lean_ctor_set_uint8(x_85, 2, x_74);
lean_ctor_set_uint8(x_85, 3, x_75);
lean_ctor_set_uint8(x_85, 4, x_76);
lean_ctor_set_uint8(x_85, 5, x_77);
lean_ctor_set_uint8(x_85, 6, x_78);
lean_ctor_set_uint8(x_85, 7, x_79);
lean_ctor_set_uint8(x_85, 8, x_80);
lean_ctor_set_uint8(x_85, 9, x_84);
lean_ctor_set_uint8(x_85, 10, x_81);
lean_ctor_set_uint8(x_85, 11, x_82);
lean_ctor_set_uint8(x_85, 12, x_83);
x_86 = lean_ctor_get(x_3, 1);
lean_inc(x_86);
x_87 = lean_ctor_get(x_3, 2);
lean_inc(x_87);
x_88 = lean_ctor_get(x_3, 3);
lean_inc(x_88);
x_89 = lean_ctor_get(x_3, 4);
lean_inc(x_89);
x_90 = lean_ctor_get(x_3, 5);
lean_inc(x_90);
x_91 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_92 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_93 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_93, 0, x_85);
lean_ctor_set(x_93, 1, x_86);
lean_ctor_set(x_93, 2, x_87);
lean_ctor_set(x_93, 3, x_88);
lean_ctor_set(x_93, 4, x_89);
lean_ctor_set(x_93, 5, x_90);
lean_ctor_set_uint8(x_93, sizeof(void*)*6, x_91);
lean_ctor_set_uint8(x_93, sizeof(void*)*6 + 1, x_92);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_94 = l_Lean_Meta_isExprDefEq(x_70, x_2, x_93, x_4, x_5, x_6, x_67);
if (lean_obj_tag(x_94) == 0)
{
lean_object* x_95; uint8_t x_96; 
x_95 = lean_ctor_get(x_94, 0);
lean_inc(x_95);
x_96 = lean_unbox(x_95);
lean_dec(x_95);
if (x_96 == 0)
{
lean_object* x_97; lean_object* x_98; uint8_t x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_97 = lean_ctor_get(x_94, 1);
lean_inc(x_97);
if (lean_is_exclusive(x_94)) {
 lean_ctor_release(x_94, 0);
 lean_ctor_release(x_94, 1);
 x_98 = x_94;
} else {
 lean_dec_ref(x_94);
 x_98 = lean_box(0);
}
x_99 = 0;
x_100 = lean_box(x_99);
x_101 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_101, 0, x_66);
lean_ctor_set(x_101, 1, x_100);
if (lean_is_scalar(x_98)) {
 x_102 = lean_alloc_ctor(0, 2, 0);
} else {
 x_102 = x_98;
}
lean_ctor_set(x_102, 0, x_101);
lean_ctor_set(x_102, 1, x_97);
return x_102;
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; uint8_t x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
x_103 = lean_ctor_get(x_94, 1);
lean_inc(x_103);
lean_dec(x_94);
x_104 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_66, x_3, x_4, x_5, x_6, x_103);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_105 = lean_ctor_get(x_104, 0);
lean_inc(x_105);
x_106 = lean_ctor_get(x_104, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_107 = x_104;
} else {
 lean_dec_ref(x_104);
 x_107 = lean_box(0);
}
x_108 = 1;
x_109 = lean_box(x_108);
x_110 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_110, 0, x_105);
lean_ctor_set(x_110, 1, x_109);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_dec(x_66);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_112 = lean_ctor_get(x_94, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_94, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_94)) {
 lean_ctor_release(x_94, 0);
 lean_ctor_release(x_94, 1);
 x_114 = x_94;
} else {
 lean_dec_ref(x_94);
 x_114 = lean_box(0);
}
if (lean_is_scalar(x_114)) {
 x_115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_115 = x_114;
}
lean_ctor_set(x_115, 0, x_112);
lean_ctor_set(x_115, 1, x_113);
return x_115;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Iff", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_3);
x_14 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; uint8_t x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3;
lean_inc(x_12);
x_19 = l_Lean_Expr_app___override(x_18, x_12);
lean_inc(x_16);
x_20 = l_Lean_Expr_app___override(x_19, x_16);
x_21 = lean_ctor_get(x_3, 0);
lean_inc(x_21);
x_22 = lean_ctor_get_uint8(x_21, 0);
x_23 = lean_ctor_get_uint8(x_21, 1);
x_24 = lean_ctor_get_uint8(x_21, 2);
x_25 = lean_ctor_get_uint8(x_21, 3);
x_26 = lean_ctor_get_uint8(x_21, 4);
x_27 = lean_ctor_get_uint8(x_21, 5);
x_28 = lean_ctor_get_uint8(x_21, 6);
x_29 = lean_ctor_get_uint8(x_21, 7);
x_30 = lean_ctor_get_uint8(x_21, 8);
x_31 = lean_ctor_get_uint8(x_21, 10);
x_32 = lean_ctor_get_uint8(x_21, 11);
x_33 = lean_ctor_get_uint8(x_21, 12);
lean_dec(x_21);
x_34 = 2;
x_35 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_35, 0, x_22);
lean_ctor_set_uint8(x_35, 1, x_23);
lean_ctor_set_uint8(x_35, 2, x_24);
lean_ctor_set_uint8(x_35, 3, x_25);
lean_ctor_set_uint8(x_35, 4, x_26);
lean_ctor_set_uint8(x_35, 5, x_27);
lean_ctor_set_uint8(x_35, 6, x_28);
lean_ctor_set_uint8(x_35, 7, x_29);
lean_ctor_set_uint8(x_35, 8, x_30);
lean_ctor_set_uint8(x_35, 9, x_34);
lean_ctor_set_uint8(x_35, 10, x_31);
lean_ctor_set_uint8(x_35, 11, x_32);
lean_ctor_set_uint8(x_35, 12, x_33);
x_36 = lean_ctor_get(x_3, 1);
lean_inc(x_36);
x_37 = lean_ctor_get(x_3, 2);
lean_inc(x_37);
x_38 = lean_ctor_get(x_3, 3);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 4);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 5);
lean_inc(x_40);
x_41 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_42 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_43 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_43, 0, x_35);
lean_ctor_set(x_43, 1, x_36);
lean_ctor_set(x_43, 2, x_37);
lean_ctor_set(x_43, 3, x_38);
lean_ctor_set(x_43, 4, x_39);
lean_ctor_set(x_43, 5, x_40);
lean_ctor_set_uint8(x_43, sizeof(void*)*6, x_41);
lean_ctor_set_uint8(x_43, sizeof(void*)*6 + 1, x_42);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_44 = l_Lean_Meta_isExprDefEq(x_20, x_2, x_43, x_4, x_5, x_6, x_17);
if (lean_obj_tag(x_44) == 0)
{
lean_object* x_45; uint8_t x_46; 
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = lean_unbox(x_45);
lean_dec(x_45);
if (x_46 == 0)
{
uint8_t x_47; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_47 = !lean_is_exclusive(x_44);
if (x_47 == 0)
{
lean_object* x_48; uint8_t x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_44, 0);
lean_dec(x_48);
x_49 = 0;
x_50 = lean_box(x_49);
lean_ctor_set(x_14, 1, x_50);
lean_ctor_set(x_10, 1, x_14);
lean_ctor_set(x_44, 0, x_10);
return x_44;
}
else
{
lean_object* x_51; uint8_t x_52; lean_object* x_53; lean_object* x_54; 
x_51 = lean_ctor_get(x_44, 1);
lean_inc(x_51);
lean_dec(x_44);
x_52 = 0;
x_53 = lean_box(x_52);
lean_ctor_set(x_14, 1, x_53);
lean_ctor_set(x_10, 1, x_14);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_10);
lean_ctor_set(x_54, 1, x_51);
return x_54;
}
}
else
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; 
lean_free_object(x_10);
x_55 = lean_ctor_get(x_44, 1);
lean_inc(x_55);
lean_dec(x_44);
x_56 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_55);
x_57 = !lean_is_exclusive(x_56);
if (x_57 == 0)
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; uint8_t x_61; 
x_58 = lean_ctor_get(x_56, 0);
x_59 = lean_ctor_get(x_56, 1);
x_60 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_59);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_61 = !lean_is_exclusive(x_60);
if (x_61 == 0)
{
lean_object* x_62; uint8_t x_63; lean_object* x_64; 
x_62 = lean_ctor_get(x_60, 0);
x_63 = 1;
x_64 = lean_box(x_63);
lean_ctor_set(x_56, 1, x_64);
lean_ctor_set(x_56, 0, x_62);
lean_ctor_set(x_14, 1, x_56);
lean_ctor_set(x_14, 0, x_58);
lean_ctor_set(x_60, 0, x_14);
return x_60;
}
else
{
lean_object* x_65; lean_object* x_66; uint8_t x_67; lean_object* x_68; lean_object* x_69; 
x_65 = lean_ctor_get(x_60, 0);
x_66 = lean_ctor_get(x_60, 1);
lean_inc(x_66);
lean_inc(x_65);
lean_dec(x_60);
x_67 = 1;
x_68 = lean_box(x_67);
lean_ctor_set(x_56, 1, x_68);
lean_ctor_set(x_56, 0, x_65);
lean_ctor_set(x_14, 1, x_56);
lean_ctor_set(x_14, 0, x_58);
x_69 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_69, 0, x_14);
lean_ctor_set(x_69, 1, x_66);
return x_69;
}
}
else
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; uint8_t x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_70 = lean_ctor_get(x_56, 0);
x_71 = lean_ctor_get(x_56, 1);
lean_inc(x_71);
lean_inc(x_70);
lean_dec(x_56);
x_72 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_71);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_73 = lean_ctor_get(x_72, 0);
lean_inc(x_73);
x_74 = lean_ctor_get(x_72, 1);
lean_inc(x_74);
if (lean_is_exclusive(x_72)) {
 lean_ctor_release(x_72, 0);
 lean_ctor_release(x_72, 1);
 x_75 = x_72;
} else {
 lean_dec_ref(x_72);
 x_75 = lean_box(0);
}
x_76 = 1;
x_77 = lean_box(x_76);
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_73);
lean_ctor_set(x_78, 1, x_77);
lean_ctor_set(x_14, 1, x_78);
lean_ctor_set(x_14, 0, x_70);
if (lean_is_scalar(x_75)) {
 x_79 = lean_alloc_ctor(0, 2, 0);
} else {
 x_79 = x_75;
}
lean_ctor_set(x_79, 0, x_14);
lean_ctor_set(x_79, 1, x_74);
return x_79;
}
}
}
else
{
uint8_t x_80; 
lean_free_object(x_14);
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_80 = !lean_is_exclusive(x_44);
if (x_80 == 0)
{
return x_44;
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_81 = lean_ctor_get(x_44, 0);
x_82 = lean_ctor_get(x_44, 1);
lean_inc(x_82);
lean_inc(x_81);
lean_dec(x_44);
x_83 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_83, 0, x_81);
lean_ctor_set(x_83, 1, x_82);
return x_83;
}
}
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; uint8_t x_90; uint8_t x_91; uint8_t x_92; uint8_t x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; uint8_t x_110; lean_object* x_111; lean_object* x_112; 
x_84 = lean_ctor_get(x_14, 0);
x_85 = lean_ctor_get(x_14, 1);
lean_inc(x_85);
lean_inc(x_84);
lean_dec(x_14);
x_86 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3;
lean_inc(x_12);
x_87 = l_Lean_Expr_app___override(x_86, x_12);
lean_inc(x_84);
x_88 = l_Lean_Expr_app___override(x_87, x_84);
x_89 = lean_ctor_get(x_3, 0);
lean_inc(x_89);
x_90 = lean_ctor_get_uint8(x_89, 0);
x_91 = lean_ctor_get_uint8(x_89, 1);
x_92 = lean_ctor_get_uint8(x_89, 2);
x_93 = lean_ctor_get_uint8(x_89, 3);
x_94 = lean_ctor_get_uint8(x_89, 4);
x_95 = lean_ctor_get_uint8(x_89, 5);
x_96 = lean_ctor_get_uint8(x_89, 6);
x_97 = lean_ctor_get_uint8(x_89, 7);
x_98 = lean_ctor_get_uint8(x_89, 8);
x_99 = lean_ctor_get_uint8(x_89, 10);
x_100 = lean_ctor_get_uint8(x_89, 11);
x_101 = lean_ctor_get_uint8(x_89, 12);
lean_dec(x_89);
x_102 = 2;
x_103 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_103, 0, x_90);
lean_ctor_set_uint8(x_103, 1, x_91);
lean_ctor_set_uint8(x_103, 2, x_92);
lean_ctor_set_uint8(x_103, 3, x_93);
lean_ctor_set_uint8(x_103, 4, x_94);
lean_ctor_set_uint8(x_103, 5, x_95);
lean_ctor_set_uint8(x_103, 6, x_96);
lean_ctor_set_uint8(x_103, 7, x_97);
lean_ctor_set_uint8(x_103, 8, x_98);
lean_ctor_set_uint8(x_103, 9, x_102);
lean_ctor_set_uint8(x_103, 10, x_99);
lean_ctor_set_uint8(x_103, 11, x_100);
lean_ctor_set_uint8(x_103, 12, x_101);
x_104 = lean_ctor_get(x_3, 1);
lean_inc(x_104);
x_105 = lean_ctor_get(x_3, 2);
lean_inc(x_105);
x_106 = lean_ctor_get(x_3, 3);
lean_inc(x_106);
x_107 = lean_ctor_get(x_3, 4);
lean_inc(x_107);
x_108 = lean_ctor_get(x_3, 5);
lean_inc(x_108);
x_109 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_110 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_111 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_111, 0, x_103);
lean_ctor_set(x_111, 1, x_104);
lean_ctor_set(x_111, 2, x_105);
lean_ctor_set(x_111, 3, x_106);
lean_ctor_set(x_111, 4, x_107);
lean_ctor_set(x_111, 5, x_108);
lean_ctor_set_uint8(x_111, sizeof(void*)*6, x_109);
lean_ctor_set_uint8(x_111, sizeof(void*)*6 + 1, x_110);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_112 = l_Lean_Meta_isExprDefEq(x_88, x_2, x_111, x_4, x_5, x_6, x_85);
if (lean_obj_tag(x_112) == 0)
{
lean_object* x_113; uint8_t x_114; 
x_113 = lean_ctor_get(x_112, 0);
lean_inc(x_113);
x_114 = lean_unbox(x_113);
lean_dec(x_113);
if (x_114 == 0)
{
lean_object* x_115; lean_object* x_116; uint8_t x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_115 = lean_ctor_get(x_112, 1);
lean_inc(x_115);
if (lean_is_exclusive(x_112)) {
 lean_ctor_release(x_112, 0);
 lean_ctor_release(x_112, 1);
 x_116 = x_112;
} else {
 lean_dec_ref(x_112);
 x_116 = lean_box(0);
}
x_117 = 0;
x_118 = lean_box(x_117);
x_119 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_119, 0, x_84);
lean_ctor_set(x_119, 1, x_118);
lean_ctor_set(x_10, 1, x_119);
if (lean_is_scalar(x_116)) {
 x_120 = lean_alloc_ctor(0, 2, 0);
} else {
 x_120 = x_116;
}
lean_ctor_set(x_120, 0, x_10);
lean_ctor_set(x_120, 1, x_115);
return x_120;
}
else
{
lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; uint8_t x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; 
lean_free_object(x_10);
x_121 = lean_ctor_get(x_112, 1);
lean_inc(x_121);
lean_dec(x_112);
x_122 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_121);
x_123 = lean_ctor_get(x_122, 0);
lean_inc(x_123);
x_124 = lean_ctor_get(x_122, 1);
lean_inc(x_124);
if (lean_is_exclusive(x_122)) {
 lean_ctor_release(x_122, 0);
 lean_ctor_release(x_122, 1);
 x_125 = x_122;
} else {
 lean_dec_ref(x_122);
 x_125 = lean_box(0);
}
x_126 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_84, x_3, x_4, x_5, x_6, x_124);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
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
x_130 = 1;
x_131 = lean_box(x_130);
if (lean_is_scalar(x_125)) {
 x_132 = lean_alloc_ctor(0, 2, 0);
} else {
 x_132 = x_125;
}
lean_ctor_set(x_132, 0, x_127);
lean_ctor_set(x_132, 1, x_131);
x_133 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_133, 0, x_123);
lean_ctor_set(x_133, 1, x_132);
if (lean_is_scalar(x_129)) {
 x_134 = lean_alloc_ctor(0, 2, 0);
} else {
 x_134 = x_129;
}
lean_ctor_set(x_134, 0, x_133);
lean_ctor_set(x_134, 1, x_128);
return x_134;
}
}
else
{
lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; 
lean_dec(x_84);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_135 = lean_ctor_get(x_112, 0);
lean_inc(x_135);
x_136 = lean_ctor_get(x_112, 1);
lean_inc(x_136);
if (lean_is_exclusive(x_112)) {
 lean_ctor_release(x_112, 0);
 lean_ctor_release(x_112, 1);
 x_137 = x_112;
} else {
 lean_dec_ref(x_112);
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
}
else
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; uint8_t x_149; uint8_t x_150; uint8_t x_151; uint8_t x_152; uint8_t x_153; uint8_t x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; uint8_t x_168; uint8_t x_169; lean_object* x_170; lean_object* x_171; 
x_139 = lean_ctor_get(x_10, 0);
x_140 = lean_ctor_get(x_10, 1);
lean_inc(x_140);
lean_inc(x_139);
lean_dec(x_10);
lean_inc(x_3);
x_141 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_140);
x_142 = lean_ctor_get(x_141, 0);
lean_inc(x_142);
x_143 = lean_ctor_get(x_141, 1);
lean_inc(x_143);
if (lean_is_exclusive(x_141)) {
 lean_ctor_release(x_141, 0);
 lean_ctor_release(x_141, 1);
 x_144 = x_141;
} else {
 lean_dec_ref(x_141);
 x_144 = lean_box(0);
}
x_145 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3;
lean_inc(x_139);
x_146 = l_Lean_Expr_app___override(x_145, x_139);
lean_inc(x_142);
x_147 = l_Lean_Expr_app___override(x_146, x_142);
x_148 = lean_ctor_get(x_3, 0);
lean_inc(x_148);
x_149 = lean_ctor_get_uint8(x_148, 0);
x_150 = lean_ctor_get_uint8(x_148, 1);
x_151 = lean_ctor_get_uint8(x_148, 2);
x_152 = lean_ctor_get_uint8(x_148, 3);
x_153 = lean_ctor_get_uint8(x_148, 4);
x_154 = lean_ctor_get_uint8(x_148, 5);
x_155 = lean_ctor_get_uint8(x_148, 6);
x_156 = lean_ctor_get_uint8(x_148, 7);
x_157 = lean_ctor_get_uint8(x_148, 8);
x_158 = lean_ctor_get_uint8(x_148, 10);
x_159 = lean_ctor_get_uint8(x_148, 11);
x_160 = lean_ctor_get_uint8(x_148, 12);
lean_dec(x_148);
x_161 = 2;
x_162 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_162, 0, x_149);
lean_ctor_set_uint8(x_162, 1, x_150);
lean_ctor_set_uint8(x_162, 2, x_151);
lean_ctor_set_uint8(x_162, 3, x_152);
lean_ctor_set_uint8(x_162, 4, x_153);
lean_ctor_set_uint8(x_162, 5, x_154);
lean_ctor_set_uint8(x_162, 6, x_155);
lean_ctor_set_uint8(x_162, 7, x_156);
lean_ctor_set_uint8(x_162, 8, x_157);
lean_ctor_set_uint8(x_162, 9, x_161);
lean_ctor_set_uint8(x_162, 10, x_158);
lean_ctor_set_uint8(x_162, 11, x_159);
lean_ctor_set_uint8(x_162, 12, x_160);
x_163 = lean_ctor_get(x_3, 1);
lean_inc(x_163);
x_164 = lean_ctor_get(x_3, 2);
lean_inc(x_164);
x_165 = lean_ctor_get(x_3, 3);
lean_inc(x_165);
x_166 = lean_ctor_get(x_3, 4);
lean_inc(x_166);
x_167 = lean_ctor_get(x_3, 5);
lean_inc(x_167);
x_168 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_169 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_170 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_170, 0, x_162);
lean_ctor_set(x_170, 1, x_163);
lean_ctor_set(x_170, 2, x_164);
lean_ctor_set(x_170, 3, x_165);
lean_ctor_set(x_170, 4, x_166);
lean_ctor_set(x_170, 5, x_167);
lean_ctor_set_uint8(x_170, sizeof(void*)*6, x_168);
lean_ctor_set_uint8(x_170, sizeof(void*)*6 + 1, x_169);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_171 = l_Lean_Meta_isExprDefEq(x_147, x_2, x_170, x_4, x_5, x_6, x_143);
if (lean_obj_tag(x_171) == 0)
{
lean_object* x_172; uint8_t x_173; 
x_172 = lean_ctor_get(x_171, 0);
lean_inc(x_172);
x_173 = lean_unbox(x_172);
lean_dec(x_172);
if (x_173 == 0)
{
lean_object* x_174; lean_object* x_175; uint8_t x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_174 = lean_ctor_get(x_171, 1);
lean_inc(x_174);
if (lean_is_exclusive(x_171)) {
 lean_ctor_release(x_171, 0);
 lean_ctor_release(x_171, 1);
 x_175 = x_171;
} else {
 lean_dec_ref(x_171);
 x_175 = lean_box(0);
}
x_176 = 0;
x_177 = lean_box(x_176);
if (lean_is_scalar(x_144)) {
 x_178 = lean_alloc_ctor(0, 2, 0);
} else {
 x_178 = x_144;
}
lean_ctor_set(x_178, 0, x_142);
lean_ctor_set(x_178, 1, x_177);
x_179 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_179, 0, x_139);
lean_ctor_set(x_179, 1, x_178);
if (lean_is_scalar(x_175)) {
 x_180 = lean_alloc_ctor(0, 2, 0);
} else {
 x_180 = x_175;
}
lean_ctor_set(x_180, 0, x_179);
lean_ctor_set(x_180, 1, x_174);
return x_180;
}
else
{
lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; uint8_t x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; 
x_181 = lean_ctor_get(x_171, 1);
lean_inc(x_181);
lean_dec(x_171);
x_182 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_139, x_3, x_4, x_5, x_6, x_181);
x_183 = lean_ctor_get(x_182, 0);
lean_inc(x_183);
x_184 = lean_ctor_get(x_182, 1);
lean_inc(x_184);
if (lean_is_exclusive(x_182)) {
 lean_ctor_release(x_182, 0);
 lean_ctor_release(x_182, 1);
 x_185 = x_182;
} else {
 lean_dec_ref(x_182);
 x_185 = lean_box(0);
}
x_186 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_142, x_3, x_4, x_5, x_6, x_184);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_187 = lean_ctor_get(x_186, 0);
lean_inc(x_187);
x_188 = lean_ctor_get(x_186, 1);
lean_inc(x_188);
if (lean_is_exclusive(x_186)) {
 lean_ctor_release(x_186, 0);
 lean_ctor_release(x_186, 1);
 x_189 = x_186;
} else {
 lean_dec_ref(x_186);
 x_189 = lean_box(0);
}
x_190 = 1;
x_191 = lean_box(x_190);
if (lean_is_scalar(x_185)) {
 x_192 = lean_alloc_ctor(0, 2, 0);
} else {
 x_192 = x_185;
}
lean_ctor_set(x_192, 0, x_187);
lean_ctor_set(x_192, 1, x_191);
if (lean_is_scalar(x_144)) {
 x_193 = lean_alloc_ctor(0, 2, 0);
} else {
 x_193 = x_144;
}
lean_ctor_set(x_193, 0, x_183);
lean_ctor_set(x_193, 1, x_192);
if (lean_is_scalar(x_189)) {
 x_194 = lean_alloc_ctor(0, 2, 0);
} else {
 x_194 = x_189;
}
lean_ctor_set(x_194, 0, x_193);
lean_ctor_set(x_194, 1, x_188);
return x_194;
}
}
else
{
lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; 
lean_dec(x_144);
lean_dec(x_142);
lean_dec(x_139);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_195 = lean_ctor_get(x_171, 0);
lean_inc(x_195);
x_196 = lean_ctor_get(x_171, 1);
lean_inc(x_196);
if (lean_is_exclusive(x_171)) {
 lean_ctor_release(x_171, 0);
 lean_ctor_release(x_171, 1);
 x_197 = x_171;
} else {
 lean_dec_ref(x_171);
 x_197 = lean_box(0);
}
if (lean_is_scalar(x_197)) {
 x_198 = lean_alloc_ctor(1, 2, 0);
} else {
 x_198 = x_197;
}
lean_ctor_set(x_198, 0, x_195);
lean_ctor_set(x_198, 1, x_196);
return x_198;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Not", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_3);
x_14 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; uint8_t x_44; lean_object* x_45; lean_object* x_46; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
lean_inc(x_12);
x_19 = l_Lean_Expr_app___override(x_18, x_12);
lean_inc(x_16);
x_20 = l_Lean_Expr_app___override(x_19, x_16);
x_21 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_22 = l_Lean_Expr_app___override(x_21, x_20);
x_23 = lean_ctor_get(x_3, 0);
lean_inc(x_23);
x_24 = lean_ctor_get_uint8(x_23, 0);
x_25 = lean_ctor_get_uint8(x_23, 1);
x_26 = lean_ctor_get_uint8(x_23, 2);
x_27 = lean_ctor_get_uint8(x_23, 3);
x_28 = lean_ctor_get_uint8(x_23, 4);
x_29 = lean_ctor_get_uint8(x_23, 5);
x_30 = lean_ctor_get_uint8(x_23, 6);
x_31 = lean_ctor_get_uint8(x_23, 7);
x_32 = lean_ctor_get_uint8(x_23, 8);
x_33 = lean_ctor_get_uint8(x_23, 10);
x_34 = lean_ctor_get_uint8(x_23, 11);
x_35 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_36 = 2;
x_37 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_37, 0, x_24);
lean_ctor_set_uint8(x_37, 1, x_25);
lean_ctor_set_uint8(x_37, 2, x_26);
lean_ctor_set_uint8(x_37, 3, x_27);
lean_ctor_set_uint8(x_37, 4, x_28);
lean_ctor_set_uint8(x_37, 5, x_29);
lean_ctor_set_uint8(x_37, 6, x_30);
lean_ctor_set_uint8(x_37, 7, x_31);
lean_ctor_set_uint8(x_37, 8, x_32);
lean_ctor_set_uint8(x_37, 9, x_36);
lean_ctor_set_uint8(x_37, 10, x_33);
lean_ctor_set_uint8(x_37, 11, x_34);
lean_ctor_set_uint8(x_37, 12, x_35);
x_38 = lean_ctor_get(x_3, 1);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 2);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 3);
lean_inc(x_40);
x_41 = lean_ctor_get(x_3, 4);
lean_inc(x_41);
x_42 = lean_ctor_get(x_3, 5);
lean_inc(x_42);
x_43 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_44 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_45 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_45, 0, x_37);
lean_ctor_set(x_45, 1, x_38);
lean_ctor_set(x_45, 2, x_39);
lean_ctor_set(x_45, 3, x_40);
lean_ctor_set(x_45, 4, x_41);
lean_ctor_set(x_45, 5, x_42);
lean_ctor_set_uint8(x_45, sizeof(void*)*6, x_43);
lean_ctor_set_uint8(x_45, sizeof(void*)*6 + 1, x_44);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_46 = l_Lean_Meta_isExprDefEq(x_22, x_2, x_45, x_4, x_5, x_6, x_17);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; uint8_t x_48; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_unbox(x_47);
lean_dec(x_47);
if (x_48 == 0)
{
uint8_t x_49; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_49 = !lean_is_exclusive(x_46);
if (x_49 == 0)
{
lean_object* x_50; uint8_t x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_46, 0);
lean_dec(x_50);
x_51 = 0;
x_52 = lean_box(x_51);
lean_ctor_set(x_14, 1, x_52);
lean_ctor_set(x_10, 1, x_14);
lean_ctor_set(x_46, 0, x_10);
return x_46;
}
else
{
lean_object* x_53; uint8_t x_54; lean_object* x_55; lean_object* x_56; 
x_53 = lean_ctor_get(x_46, 1);
lean_inc(x_53);
lean_dec(x_46);
x_54 = 0;
x_55 = lean_box(x_54);
lean_ctor_set(x_14, 1, x_55);
lean_ctor_set(x_10, 1, x_14);
x_56 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_56, 0, x_10);
lean_ctor_set(x_56, 1, x_53);
return x_56;
}
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; 
lean_free_object(x_10);
x_57 = lean_ctor_get(x_46, 1);
lean_inc(x_57);
lean_dec(x_46);
x_58 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_57);
x_59 = !lean_is_exclusive(x_58);
if (x_59 == 0)
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; uint8_t x_63; 
x_60 = lean_ctor_get(x_58, 0);
x_61 = lean_ctor_get(x_58, 1);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_61);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_63 = !lean_is_exclusive(x_62);
if (x_63 == 0)
{
lean_object* x_64; uint8_t x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_62, 0);
x_65 = 1;
x_66 = lean_box(x_65);
lean_ctor_set(x_58, 1, x_66);
lean_ctor_set(x_58, 0, x_64);
lean_ctor_set(x_14, 1, x_58);
lean_ctor_set(x_14, 0, x_60);
lean_ctor_set(x_62, 0, x_14);
return x_62;
}
else
{
lean_object* x_67; lean_object* x_68; uint8_t x_69; lean_object* x_70; lean_object* x_71; 
x_67 = lean_ctor_get(x_62, 0);
x_68 = lean_ctor_get(x_62, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_62);
x_69 = 1;
x_70 = lean_box(x_69);
lean_ctor_set(x_58, 1, x_70);
lean_ctor_set(x_58, 0, x_67);
lean_ctor_set(x_14, 1, x_58);
lean_ctor_set(x_14, 0, x_60);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_14);
lean_ctor_set(x_71, 1, x_68);
return x_71;
}
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; uint8_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_72 = lean_ctor_get(x_58, 0);
x_73 = lean_ctor_get(x_58, 1);
lean_inc(x_73);
lean_inc(x_72);
lean_dec(x_58);
x_74 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_73);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_77 = x_74;
} else {
 lean_dec_ref(x_74);
 x_77 = lean_box(0);
}
x_78 = 1;
x_79 = lean_box(x_78);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_75);
lean_ctor_set(x_80, 1, x_79);
lean_ctor_set(x_14, 1, x_80);
lean_ctor_set(x_14, 0, x_72);
if (lean_is_scalar(x_77)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_77;
}
lean_ctor_set(x_81, 0, x_14);
lean_ctor_set(x_81, 1, x_76);
return x_81;
}
}
}
else
{
uint8_t x_82; 
lean_free_object(x_14);
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_82 = !lean_is_exclusive(x_46);
if (x_82 == 0)
{
return x_46;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_46, 0);
x_84 = lean_ctor_get(x_46, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_46);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; uint8_t x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; uint8_t x_113; uint8_t x_114; lean_object* x_115; lean_object* x_116; 
x_86 = lean_ctor_get(x_14, 0);
x_87 = lean_ctor_get(x_14, 1);
lean_inc(x_87);
lean_inc(x_86);
lean_dec(x_14);
x_88 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
lean_inc(x_12);
x_89 = l_Lean_Expr_app___override(x_88, x_12);
lean_inc(x_86);
x_90 = l_Lean_Expr_app___override(x_89, x_86);
x_91 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_92 = l_Lean_Expr_app___override(x_91, x_90);
x_93 = lean_ctor_get(x_3, 0);
lean_inc(x_93);
x_94 = lean_ctor_get_uint8(x_93, 0);
x_95 = lean_ctor_get_uint8(x_93, 1);
x_96 = lean_ctor_get_uint8(x_93, 2);
x_97 = lean_ctor_get_uint8(x_93, 3);
x_98 = lean_ctor_get_uint8(x_93, 4);
x_99 = lean_ctor_get_uint8(x_93, 5);
x_100 = lean_ctor_get_uint8(x_93, 6);
x_101 = lean_ctor_get_uint8(x_93, 7);
x_102 = lean_ctor_get_uint8(x_93, 8);
x_103 = lean_ctor_get_uint8(x_93, 10);
x_104 = lean_ctor_get_uint8(x_93, 11);
x_105 = lean_ctor_get_uint8(x_93, 12);
lean_dec(x_93);
x_106 = 2;
x_107 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_107, 0, x_94);
lean_ctor_set_uint8(x_107, 1, x_95);
lean_ctor_set_uint8(x_107, 2, x_96);
lean_ctor_set_uint8(x_107, 3, x_97);
lean_ctor_set_uint8(x_107, 4, x_98);
lean_ctor_set_uint8(x_107, 5, x_99);
lean_ctor_set_uint8(x_107, 6, x_100);
lean_ctor_set_uint8(x_107, 7, x_101);
lean_ctor_set_uint8(x_107, 8, x_102);
lean_ctor_set_uint8(x_107, 9, x_106);
lean_ctor_set_uint8(x_107, 10, x_103);
lean_ctor_set_uint8(x_107, 11, x_104);
lean_ctor_set_uint8(x_107, 12, x_105);
x_108 = lean_ctor_get(x_3, 1);
lean_inc(x_108);
x_109 = lean_ctor_get(x_3, 2);
lean_inc(x_109);
x_110 = lean_ctor_get(x_3, 3);
lean_inc(x_110);
x_111 = lean_ctor_get(x_3, 4);
lean_inc(x_111);
x_112 = lean_ctor_get(x_3, 5);
lean_inc(x_112);
x_113 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_114 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_115 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_115, 0, x_107);
lean_ctor_set(x_115, 1, x_108);
lean_ctor_set(x_115, 2, x_109);
lean_ctor_set(x_115, 3, x_110);
lean_ctor_set(x_115, 4, x_111);
lean_ctor_set(x_115, 5, x_112);
lean_ctor_set_uint8(x_115, sizeof(void*)*6, x_113);
lean_ctor_set_uint8(x_115, sizeof(void*)*6 + 1, x_114);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_116 = l_Lean_Meta_isExprDefEq(x_92, x_2, x_115, x_4, x_5, x_6, x_87);
if (lean_obj_tag(x_116) == 0)
{
lean_object* x_117; uint8_t x_118; 
x_117 = lean_ctor_get(x_116, 0);
lean_inc(x_117);
x_118 = lean_unbox(x_117);
lean_dec(x_117);
if (x_118 == 0)
{
lean_object* x_119; lean_object* x_120; uint8_t x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_119 = lean_ctor_get(x_116, 1);
lean_inc(x_119);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_120 = x_116;
} else {
 lean_dec_ref(x_116);
 x_120 = lean_box(0);
}
x_121 = 0;
x_122 = lean_box(x_121);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_86);
lean_ctor_set(x_123, 1, x_122);
lean_ctor_set(x_10, 1, x_123);
if (lean_is_scalar(x_120)) {
 x_124 = lean_alloc_ctor(0, 2, 0);
} else {
 x_124 = x_120;
}
lean_ctor_set(x_124, 0, x_10);
lean_ctor_set(x_124, 1, x_119);
return x_124;
}
else
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; 
lean_free_object(x_10);
x_125 = lean_ctor_get(x_116, 1);
lean_inc(x_125);
lean_dec(x_116);
x_126 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_125);
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
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
x_130 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_86, x_3, x_4, x_5, x_6, x_128);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_131 = lean_ctor_get(x_130, 0);
lean_inc(x_131);
x_132 = lean_ctor_get(x_130, 1);
lean_inc(x_132);
if (lean_is_exclusive(x_130)) {
 lean_ctor_release(x_130, 0);
 lean_ctor_release(x_130, 1);
 x_133 = x_130;
} else {
 lean_dec_ref(x_130);
 x_133 = lean_box(0);
}
x_134 = 1;
x_135 = lean_box(x_134);
if (lean_is_scalar(x_129)) {
 x_136 = lean_alloc_ctor(0, 2, 0);
} else {
 x_136 = x_129;
}
lean_ctor_set(x_136, 0, x_131);
lean_ctor_set(x_136, 1, x_135);
x_137 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_137, 0, x_127);
lean_ctor_set(x_137, 1, x_136);
if (lean_is_scalar(x_133)) {
 x_138 = lean_alloc_ctor(0, 2, 0);
} else {
 x_138 = x_133;
}
lean_ctor_set(x_138, 0, x_137);
lean_ctor_set(x_138, 1, x_132);
return x_138;
}
}
else
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; 
lean_dec(x_86);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_139 = lean_ctor_get(x_116, 0);
lean_inc(x_139);
x_140 = lean_ctor_get(x_116, 1);
lean_inc(x_140);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_141 = x_116;
} else {
 lean_dec_ref(x_116);
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
else
{
lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; uint8_t x_165; uint8_t x_166; uint8_t x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; uint8_t x_174; uint8_t x_175; lean_object* x_176; lean_object* x_177; 
x_143 = lean_ctor_get(x_10, 0);
x_144 = lean_ctor_get(x_10, 1);
lean_inc(x_144);
lean_inc(x_143);
lean_dec(x_10);
lean_inc(x_3);
x_145 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_144);
x_146 = lean_ctor_get(x_145, 0);
lean_inc(x_146);
x_147 = lean_ctor_get(x_145, 1);
lean_inc(x_147);
if (lean_is_exclusive(x_145)) {
 lean_ctor_release(x_145, 0);
 lean_ctor_release(x_145, 1);
 x_148 = x_145;
} else {
 lean_dec_ref(x_145);
 x_148 = lean_box(0);
}
x_149 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
lean_inc(x_143);
x_150 = l_Lean_Expr_app___override(x_149, x_143);
lean_inc(x_146);
x_151 = l_Lean_Expr_app___override(x_150, x_146);
x_152 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_153 = l_Lean_Expr_app___override(x_152, x_151);
x_154 = lean_ctor_get(x_3, 0);
lean_inc(x_154);
x_155 = lean_ctor_get_uint8(x_154, 0);
x_156 = lean_ctor_get_uint8(x_154, 1);
x_157 = lean_ctor_get_uint8(x_154, 2);
x_158 = lean_ctor_get_uint8(x_154, 3);
x_159 = lean_ctor_get_uint8(x_154, 4);
x_160 = lean_ctor_get_uint8(x_154, 5);
x_161 = lean_ctor_get_uint8(x_154, 6);
x_162 = lean_ctor_get_uint8(x_154, 7);
x_163 = lean_ctor_get_uint8(x_154, 8);
x_164 = lean_ctor_get_uint8(x_154, 10);
x_165 = lean_ctor_get_uint8(x_154, 11);
x_166 = lean_ctor_get_uint8(x_154, 12);
lean_dec(x_154);
x_167 = 2;
x_168 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_168, 0, x_155);
lean_ctor_set_uint8(x_168, 1, x_156);
lean_ctor_set_uint8(x_168, 2, x_157);
lean_ctor_set_uint8(x_168, 3, x_158);
lean_ctor_set_uint8(x_168, 4, x_159);
lean_ctor_set_uint8(x_168, 5, x_160);
lean_ctor_set_uint8(x_168, 6, x_161);
lean_ctor_set_uint8(x_168, 7, x_162);
lean_ctor_set_uint8(x_168, 8, x_163);
lean_ctor_set_uint8(x_168, 9, x_167);
lean_ctor_set_uint8(x_168, 10, x_164);
lean_ctor_set_uint8(x_168, 11, x_165);
lean_ctor_set_uint8(x_168, 12, x_166);
x_169 = lean_ctor_get(x_3, 1);
lean_inc(x_169);
x_170 = lean_ctor_get(x_3, 2);
lean_inc(x_170);
x_171 = lean_ctor_get(x_3, 3);
lean_inc(x_171);
x_172 = lean_ctor_get(x_3, 4);
lean_inc(x_172);
x_173 = lean_ctor_get(x_3, 5);
lean_inc(x_173);
x_174 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_175 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_176 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_176, 0, x_168);
lean_ctor_set(x_176, 1, x_169);
lean_ctor_set(x_176, 2, x_170);
lean_ctor_set(x_176, 3, x_171);
lean_ctor_set(x_176, 4, x_172);
lean_ctor_set(x_176, 5, x_173);
lean_ctor_set_uint8(x_176, sizeof(void*)*6, x_174);
lean_ctor_set_uint8(x_176, sizeof(void*)*6 + 1, x_175);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_177 = l_Lean_Meta_isExprDefEq(x_153, x_2, x_176, x_4, x_5, x_6, x_147);
if (lean_obj_tag(x_177) == 0)
{
lean_object* x_178; uint8_t x_179; 
x_178 = lean_ctor_get(x_177, 0);
lean_inc(x_178);
x_179 = lean_unbox(x_178);
lean_dec(x_178);
if (x_179 == 0)
{
lean_object* x_180; lean_object* x_181; uint8_t x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_180 = lean_ctor_get(x_177, 1);
lean_inc(x_180);
if (lean_is_exclusive(x_177)) {
 lean_ctor_release(x_177, 0);
 lean_ctor_release(x_177, 1);
 x_181 = x_177;
} else {
 lean_dec_ref(x_177);
 x_181 = lean_box(0);
}
x_182 = 0;
x_183 = lean_box(x_182);
if (lean_is_scalar(x_148)) {
 x_184 = lean_alloc_ctor(0, 2, 0);
} else {
 x_184 = x_148;
}
lean_ctor_set(x_184, 0, x_146);
lean_ctor_set(x_184, 1, x_183);
x_185 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_185, 0, x_143);
lean_ctor_set(x_185, 1, x_184);
if (lean_is_scalar(x_181)) {
 x_186 = lean_alloc_ctor(0, 2, 0);
} else {
 x_186 = x_181;
}
lean_ctor_set(x_186, 0, x_185);
lean_ctor_set(x_186, 1, x_180);
return x_186;
}
else
{
lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; uint8_t x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; lean_object* x_200; 
x_187 = lean_ctor_get(x_177, 1);
lean_inc(x_187);
lean_dec(x_177);
x_188 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_143, x_3, x_4, x_5, x_6, x_187);
x_189 = lean_ctor_get(x_188, 0);
lean_inc(x_189);
x_190 = lean_ctor_get(x_188, 1);
lean_inc(x_190);
if (lean_is_exclusive(x_188)) {
 lean_ctor_release(x_188, 0);
 lean_ctor_release(x_188, 1);
 x_191 = x_188;
} else {
 lean_dec_ref(x_188);
 x_191 = lean_box(0);
}
x_192 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_146, x_3, x_4, x_5, x_6, x_190);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_193 = lean_ctor_get(x_192, 0);
lean_inc(x_193);
x_194 = lean_ctor_get(x_192, 1);
lean_inc(x_194);
if (lean_is_exclusive(x_192)) {
 lean_ctor_release(x_192, 0);
 lean_ctor_release(x_192, 1);
 x_195 = x_192;
} else {
 lean_dec_ref(x_192);
 x_195 = lean_box(0);
}
x_196 = 1;
x_197 = lean_box(x_196);
if (lean_is_scalar(x_191)) {
 x_198 = lean_alloc_ctor(0, 2, 0);
} else {
 x_198 = x_191;
}
lean_ctor_set(x_198, 0, x_193);
lean_ctor_set(x_198, 1, x_197);
if (lean_is_scalar(x_148)) {
 x_199 = lean_alloc_ctor(0, 2, 0);
} else {
 x_199 = x_148;
}
lean_ctor_set(x_199, 0, x_189);
lean_ctor_set(x_199, 1, x_198);
if (lean_is_scalar(x_195)) {
 x_200 = lean_alloc_ctor(0, 2, 0);
} else {
 x_200 = x_195;
}
lean_ctor_set(x_200, 0, x_199);
lean_ctor_set(x_200, 1, x_194);
return x_200;
}
}
else
{
lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; 
lean_dec(x_148);
lean_dec(x_146);
lean_dec(x_143);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_201 = lean_ctor_get(x_177, 0);
lean_inc(x_201);
x_202 = lean_ctor_get(x_177, 1);
lean_inc(x_202);
if (lean_is_exclusive(x_177)) {
 lean_ctor_release(x_177, 0);
 lean_ctor_release(x_177, 1);
 x_203 = x_177;
} else {
 lean_dec_ref(x_177);
 x_203 = lean_box(0);
}
if (lean_is_scalar(x_203)) {
 x_204 = lean_alloc_ctor(1, 2, 0);
} else {
 x_204 = x_203;
}
lean_ctor_set(x_204, 0, x_201);
lean_ctor_set(x_204, 1, x_202);
return x_204;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_3);
x_14 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; uint8_t x_43; lean_object* x_44; lean_object* x_45; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = 0;
lean_inc(x_16);
lean_inc(x_12);
x_19 = l_Lean_Expr_forallE___override(x_9, x_12, x_16, x_18);
x_20 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_21 = l_Lean_Expr_app___override(x_20, x_19);
x_22 = lean_ctor_get(x_3, 0);
lean_inc(x_22);
x_23 = lean_ctor_get_uint8(x_22, 0);
x_24 = lean_ctor_get_uint8(x_22, 1);
x_25 = lean_ctor_get_uint8(x_22, 2);
x_26 = lean_ctor_get_uint8(x_22, 3);
x_27 = lean_ctor_get_uint8(x_22, 4);
x_28 = lean_ctor_get_uint8(x_22, 5);
x_29 = lean_ctor_get_uint8(x_22, 6);
x_30 = lean_ctor_get_uint8(x_22, 7);
x_31 = lean_ctor_get_uint8(x_22, 8);
x_32 = lean_ctor_get_uint8(x_22, 10);
x_33 = lean_ctor_get_uint8(x_22, 11);
x_34 = lean_ctor_get_uint8(x_22, 12);
lean_dec(x_22);
x_35 = 2;
x_36 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_36, 0, x_23);
lean_ctor_set_uint8(x_36, 1, x_24);
lean_ctor_set_uint8(x_36, 2, x_25);
lean_ctor_set_uint8(x_36, 3, x_26);
lean_ctor_set_uint8(x_36, 4, x_27);
lean_ctor_set_uint8(x_36, 5, x_28);
lean_ctor_set_uint8(x_36, 6, x_29);
lean_ctor_set_uint8(x_36, 7, x_30);
lean_ctor_set_uint8(x_36, 8, x_31);
lean_ctor_set_uint8(x_36, 9, x_35);
lean_ctor_set_uint8(x_36, 10, x_32);
lean_ctor_set_uint8(x_36, 11, x_33);
lean_ctor_set_uint8(x_36, 12, x_34);
x_37 = lean_ctor_get(x_3, 1);
lean_inc(x_37);
x_38 = lean_ctor_get(x_3, 2);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 3);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 4);
lean_inc(x_40);
x_41 = lean_ctor_get(x_3, 5);
lean_inc(x_41);
x_42 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_43 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_44 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_44, 0, x_36);
lean_ctor_set(x_44, 1, x_37);
lean_ctor_set(x_44, 2, x_38);
lean_ctor_set(x_44, 3, x_39);
lean_ctor_set(x_44, 4, x_40);
lean_ctor_set(x_44, 5, x_41);
lean_ctor_set_uint8(x_44, sizeof(void*)*6, x_42);
lean_ctor_set_uint8(x_44, sizeof(void*)*6 + 1, x_43);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_45 = l_Lean_Meta_isExprDefEq(x_21, x_2, x_44, x_4, x_5, x_6, x_17);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; uint8_t x_47; 
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
x_47 = lean_unbox(x_46);
lean_dec(x_46);
if (x_47 == 0)
{
uint8_t x_48; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_48 = !lean_is_exclusive(x_45);
if (x_48 == 0)
{
lean_object* x_49; uint8_t x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_45, 0);
lean_dec(x_49);
x_50 = 0;
x_51 = lean_box(x_50);
lean_ctor_set(x_14, 1, x_51);
lean_ctor_set(x_10, 1, x_14);
lean_ctor_set(x_45, 0, x_10);
return x_45;
}
else
{
lean_object* x_52; uint8_t x_53; lean_object* x_54; lean_object* x_55; 
x_52 = lean_ctor_get(x_45, 1);
lean_inc(x_52);
lean_dec(x_45);
x_53 = 0;
x_54 = lean_box(x_53);
lean_ctor_set(x_14, 1, x_54);
lean_ctor_set(x_10, 1, x_14);
x_55 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_55, 0, x_10);
lean_ctor_set(x_55, 1, x_52);
return x_55;
}
}
else
{
lean_object* x_56; lean_object* x_57; uint8_t x_58; 
lean_free_object(x_10);
x_56 = lean_ctor_get(x_45, 1);
lean_inc(x_56);
lean_dec(x_45);
x_57 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_56);
x_58 = !lean_is_exclusive(x_57);
if (x_58 == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; uint8_t x_62; 
x_59 = lean_ctor_get(x_57, 0);
x_60 = lean_ctor_get(x_57, 1);
x_61 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_60);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_62 = !lean_is_exclusive(x_61);
if (x_62 == 0)
{
lean_object* x_63; uint8_t x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_61, 0);
x_64 = 1;
x_65 = lean_box(x_64);
lean_ctor_set(x_57, 1, x_65);
lean_ctor_set(x_57, 0, x_63);
lean_ctor_set(x_14, 1, x_57);
lean_ctor_set(x_14, 0, x_59);
lean_ctor_set(x_61, 0, x_14);
return x_61;
}
else
{
lean_object* x_66; lean_object* x_67; uint8_t x_68; lean_object* x_69; lean_object* x_70; 
x_66 = lean_ctor_get(x_61, 0);
x_67 = lean_ctor_get(x_61, 1);
lean_inc(x_67);
lean_inc(x_66);
lean_dec(x_61);
x_68 = 1;
x_69 = lean_box(x_68);
lean_ctor_set(x_57, 1, x_69);
lean_ctor_set(x_57, 0, x_66);
lean_ctor_set(x_14, 1, x_57);
lean_ctor_set(x_14, 0, x_59);
x_70 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_70, 0, x_14);
lean_ctor_set(x_70, 1, x_67);
return x_70;
}
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; 
x_71 = lean_ctor_get(x_57, 0);
x_72 = lean_ctor_get(x_57, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_57);
x_73 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_72);
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
x_77 = 1;
x_78 = lean_box(x_77);
x_79 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_79, 0, x_74);
lean_ctor_set(x_79, 1, x_78);
lean_ctor_set(x_14, 1, x_79);
lean_ctor_set(x_14, 0, x_71);
if (lean_is_scalar(x_76)) {
 x_80 = lean_alloc_ctor(0, 2, 0);
} else {
 x_80 = x_76;
}
lean_ctor_set(x_80, 0, x_14);
lean_ctor_set(x_80, 1, x_75);
return x_80;
}
}
}
else
{
uint8_t x_81; 
lean_free_object(x_14);
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_81 = !lean_is_exclusive(x_45);
if (x_81 == 0)
{
return x_45;
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_82 = lean_ctor_get(x_45, 0);
x_83 = lean_ctor_get(x_45, 1);
lean_inc(x_83);
lean_inc(x_82);
lean_dec(x_45);
x_84 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_84, 0, x_82);
lean_ctor_set(x_84, 1, x_83);
return x_84;
}
}
}
else
{
lean_object* x_85; lean_object* x_86; uint8_t x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; uint8_t x_92; uint8_t x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; uint8_t x_111; uint8_t x_112; lean_object* x_113; lean_object* x_114; 
x_85 = lean_ctor_get(x_14, 0);
x_86 = lean_ctor_get(x_14, 1);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_14);
x_87 = 0;
lean_inc(x_85);
lean_inc(x_12);
x_88 = l_Lean_Expr_forallE___override(x_9, x_12, x_85, x_87);
x_89 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_90 = l_Lean_Expr_app___override(x_89, x_88);
x_91 = lean_ctor_get(x_3, 0);
lean_inc(x_91);
x_92 = lean_ctor_get_uint8(x_91, 0);
x_93 = lean_ctor_get_uint8(x_91, 1);
x_94 = lean_ctor_get_uint8(x_91, 2);
x_95 = lean_ctor_get_uint8(x_91, 3);
x_96 = lean_ctor_get_uint8(x_91, 4);
x_97 = lean_ctor_get_uint8(x_91, 5);
x_98 = lean_ctor_get_uint8(x_91, 6);
x_99 = lean_ctor_get_uint8(x_91, 7);
x_100 = lean_ctor_get_uint8(x_91, 8);
x_101 = lean_ctor_get_uint8(x_91, 10);
x_102 = lean_ctor_get_uint8(x_91, 11);
x_103 = lean_ctor_get_uint8(x_91, 12);
lean_dec(x_91);
x_104 = 2;
x_105 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_105, 0, x_92);
lean_ctor_set_uint8(x_105, 1, x_93);
lean_ctor_set_uint8(x_105, 2, x_94);
lean_ctor_set_uint8(x_105, 3, x_95);
lean_ctor_set_uint8(x_105, 4, x_96);
lean_ctor_set_uint8(x_105, 5, x_97);
lean_ctor_set_uint8(x_105, 6, x_98);
lean_ctor_set_uint8(x_105, 7, x_99);
lean_ctor_set_uint8(x_105, 8, x_100);
lean_ctor_set_uint8(x_105, 9, x_104);
lean_ctor_set_uint8(x_105, 10, x_101);
lean_ctor_set_uint8(x_105, 11, x_102);
lean_ctor_set_uint8(x_105, 12, x_103);
x_106 = lean_ctor_get(x_3, 1);
lean_inc(x_106);
x_107 = lean_ctor_get(x_3, 2);
lean_inc(x_107);
x_108 = lean_ctor_get(x_3, 3);
lean_inc(x_108);
x_109 = lean_ctor_get(x_3, 4);
lean_inc(x_109);
x_110 = lean_ctor_get(x_3, 5);
lean_inc(x_110);
x_111 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_112 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_113 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_113, 0, x_105);
lean_ctor_set(x_113, 1, x_106);
lean_ctor_set(x_113, 2, x_107);
lean_ctor_set(x_113, 3, x_108);
lean_ctor_set(x_113, 4, x_109);
lean_ctor_set(x_113, 5, x_110);
lean_ctor_set_uint8(x_113, sizeof(void*)*6, x_111);
lean_ctor_set_uint8(x_113, sizeof(void*)*6 + 1, x_112);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_114 = l_Lean_Meta_isExprDefEq(x_90, x_2, x_113, x_4, x_5, x_6, x_86);
if (lean_obj_tag(x_114) == 0)
{
lean_object* x_115; uint8_t x_116; 
x_115 = lean_ctor_get(x_114, 0);
lean_inc(x_115);
x_116 = lean_unbox(x_115);
lean_dec(x_115);
if (x_116 == 0)
{
lean_object* x_117; lean_object* x_118; uint8_t x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_117 = lean_ctor_get(x_114, 1);
lean_inc(x_117);
if (lean_is_exclusive(x_114)) {
 lean_ctor_release(x_114, 0);
 lean_ctor_release(x_114, 1);
 x_118 = x_114;
} else {
 lean_dec_ref(x_114);
 x_118 = lean_box(0);
}
x_119 = 0;
x_120 = lean_box(x_119);
x_121 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_121, 0, x_85);
lean_ctor_set(x_121, 1, x_120);
lean_ctor_set(x_10, 1, x_121);
if (lean_is_scalar(x_118)) {
 x_122 = lean_alloc_ctor(0, 2, 0);
} else {
 x_122 = x_118;
}
lean_ctor_set(x_122, 0, x_10);
lean_ctor_set(x_122, 1, x_117);
return x_122;
}
else
{
lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; uint8_t x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; 
lean_free_object(x_10);
x_123 = lean_ctor_get(x_114, 1);
lean_inc(x_123);
lean_dec(x_114);
x_124 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_123);
x_125 = lean_ctor_get(x_124, 0);
lean_inc(x_125);
x_126 = lean_ctor_get(x_124, 1);
lean_inc(x_126);
if (lean_is_exclusive(x_124)) {
 lean_ctor_release(x_124, 0);
 lean_ctor_release(x_124, 1);
 x_127 = x_124;
} else {
 lean_dec_ref(x_124);
 x_127 = lean_box(0);
}
x_128 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_85, x_3, x_4, x_5, x_6, x_126);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_129 = lean_ctor_get(x_128, 0);
lean_inc(x_129);
x_130 = lean_ctor_get(x_128, 1);
lean_inc(x_130);
if (lean_is_exclusive(x_128)) {
 lean_ctor_release(x_128, 0);
 lean_ctor_release(x_128, 1);
 x_131 = x_128;
} else {
 lean_dec_ref(x_128);
 x_131 = lean_box(0);
}
x_132 = 1;
x_133 = lean_box(x_132);
if (lean_is_scalar(x_127)) {
 x_134 = lean_alloc_ctor(0, 2, 0);
} else {
 x_134 = x_127;
}
lean_ctor_set(x_134, 0, x_129);
lean_ctor_set(x_134, 1, x_133);
x_135 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_135, 0, x_125);
lean_ctor_set(x_135, 1, x_134);
if (lean_is_scalar(x_131)) {
 x_136 = lean_alloc_ctor(0, 2, 0);
} else {
 x_136 = x_131;
}
lean_ctor_set(x_136, 0, x_135);
lean_ctor_set(x_136, 1, x_130);
return x_136;
}
}
else
{
lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; 
lean_dec(x_85);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_137 = lean_ctor_get(x_114, 0);
lean_inc(x_137);
x_138 = lean_ctor_get(x_114, 1);
lean_inc(x_138);
if (lean_is_exclusive(x_114)) {
 lean_ctor_release(x_114, 0);
 lean_ctor_release(x_114, 1);
 x_139 = x_114;
} else {
 lean_dec_ref(x_114);
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
lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; uint8_t x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; uint8_t x_152; uint8_t x_153; uint8_t x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; uint8_t x_171; uint8_t x_172; lean_object* x_173; lean_object* x_174; 
x_141 = lean_ctor_get(x_10, 0);
x_142 = lean_ctor_get(x_10, 1);
lean_inc(x_142);
lean_inc(x_141);
lean_dec(x_10);
lean_inc(x_3);
x_143 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_142);
x_144 = lean_ctor_get(x_143, 0);
lean_inc(x_144);
x_145 = lean_ctor_get(x_143, 1);
lean_inc(x_145);
if (lean_is_exclusive(x_143)) {
 lean_ctor_release(x_143, 0);
 lean_ctor_release(x_143, 1);
 x_146 = x_143;
} else {
 lean_dec_ref(x_143);
 x_146 = lean_box(0);
}
x_147 = 0;
lean_inc(x_144);
lean_inc(x_141);
x_148 = l_Lean_Expr_forallE___override(x_9, x_141, x_144, x_147);
x_149 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_150 = l_Lean_Expr_app___override(x_149, x_148);
x_151 = lean_ctor_get(x_3, 0);
lean_inc(x_151);
x_152 = lean_ctor_get_uint8(x_151, 0);
x_153 = lean_ctor_get_uint8(x_151, 1);
x_154 = lean_ctor_get_uint8(x_151, 2);
x_155 = lean_ctor_get_uint8(x_151, 3);
x_156 = lean_ctor_get_uint8(x_151, 4);
x_157 = lean_ctor_get_uint8(x_151, 5);
x_158 = lean_ctor_get_uint8(x_151, 6);
x_159 = lean_ctor_get_uint8(x_151, 7);
x_160 = lean_ctor_get_uint8(x_151, 8);
x_161 = lean_ctor_get_uint8(x_151, 10);
x_162 = lean_ctor_get_uint8(x_151, 11);
x_163 = lean_ctor_get_uint8(x_151, 12);
lean_dec(x_151);
x_164 = 2;
x_165 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_165, 0, x_152);
lean_ctor_set_uint8(x_165, 1, x_153);
lean_ctor_set_uint8(x_165, 2, x_154);
lean_ctor_set_uint8(x_165, 3, x_155);
lean_ctor_set_uint8(x_165, 4, x_156);
lean_ctor_set_uint8(x_165, 5, x_157);
lean_ctor_set_uint8(x_165, 6, x_158);
lean_ctor_set_uint8(x_165, 7, x_159);
lean_ctor_set_uint8(x_165, 8, x_160);
lean_ctor_set_uint8(x_165, 9, x_164);
lean_ctor_set_uint8(x_165, 10, x_161);
lean_ctor_set_uint8(x_165, 11, x_162);
lean_ctor_set_uint8(x_165, 12, x_163);
x_166 = lean_ctor_get(x_3, 1);
lean_inc(x_166);
x_167 = lean_ctor_get(x_3, 2);
lean_inc(x_167);
x_168 = lean_ctor_get(x_3, 3);
lean_inc(x_168);
x_169 = lean_ctor_get(x_3, 4);
lean_inc(x_169);
x_170 = lean_ctor_get(x_3, 5);
lean_inc(x_170);
x_171 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_172 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_173 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_173, 0, x_165);
lean_ctor_set(x_173, 1, x_166);
lean_ctor_set(x_173, 2, x_167);
lean_ctor_set(x_173, 3, x_168);
lean_ctor_set(x_173, 4, x_169);
lean_ctor_set(x_173, 5, x_170);
lean_ctor_set_uint8(x_173, sizeof(void*)*6, x_171);
lean_ctor_set_uint8(x_173, sizeof(void*)*6 + 1, x_172);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_174 = l_Lean_Meta_isExprDefEq(x_150, x_2, x_173, x_4, x_5, x_6, x_145);
if (lean_obj_tag(x_174) == 0)
{
lean_object* x_175; uint8_t x_176; 
x_175 = lean_ctor_get(x_174, 0);
lean_inc(x_175);
x_176 = lean_unbox(x_175);
lean_dec(x_175);
if (x_176 == 0)
{
lean_object* x_177; lean_object* x_178; uint8_t x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_177 = lean_ctor_get(x_174, 1);
lean_inc(x_177);
if (lean_is_exclusive(x_174)) {
 lean_ctor_release(x_174, 0);
 lean_ctor_release(x_174, 1);
 x_178 = x_174;
} else {
 lean_dec_ref(x_174);
 x_178 = lean_box(0);
}
x_179 = 0;
x_180 = lean_box(x_179);
if (lean_is_scalar(x_146)) {
 x_181 = lean_alloc_ctor(0, 2, 0);
} else {
 x_181 = x_146;
}
lean_ctor_set(x_181, 0, x_144);
lean_ctor_set(x_181, 1, x_180);
x_182 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_182, 0, x_141);
lean_ctor_set(x_182, 1, x_181);
if (lean_is_scalar(x_178)) {
 x_183 = lean_alloc_ctor(0, 2, 0);
} else {
 x_183 = x_178;
}
lean_ctor_set(x_183, 0, x_182);
lean_ctor_set(x_183, 1, x_177);
return x_183;
}
else
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; uint8_t x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; 
x_184 = lean_ctor_get(x_174, 1);
lean_inc(x_184);
lean_dec(x_174);
x_185 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_141, x_3, x_4, x_5, x_6, x_184);
x_186 = lean_ctor_get(x_185, 0);
lean_inc(x_186);
x_187 = lean_ctor_get(x_185, 1);
lean_inc(x_187);
if (lean_is_exclusive(x_185)) {
 lean_ctor_release(x_185, 0);
 lean_ctor_release(x_185, 1);
 x_188 = x_185;
} else {
 lean_dec_ref(x_185);
 x_188 = lean_box(0);
}
x_189 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_144, x_3, x_4, x_5, x_6, x_187);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_190 = lean_ctor_get(x_189, 0);
lean_inc(x_190);
x_191 = lean_ctor_get(x_189, 1);
lean_inc(x_191);
if (lean_is_exclusive(x_189)) {
 lean_ctor_release(x_189, 0);
 lean_ctor_release(x_189, 1);
 x_192 = x_189;
} else {
 lean_dec_ref(x_189);
 x_192 = lean_box(0);
}
x_193 = 1;
x_194 = lean_box(x_193);
if (lean_is_scalar(x_188)) {
 x_195 = lean_alloc_ctor(0, 2, 0);
} else {
 x_195 = x_188;
}
lean_ctor_set(x_195, 0, x_190);
lean_ctor_set(x_195, 1, x_194);
if (lean_is_scalar(x_146)) {
 x_196 = lean_alloc_ctor(0, 2, 0);
} else {
 x_196 = x_146;
}
lean_ctor_set(x_196, 0, x_186);
lean_ctor_set(x_196, 1, x_195);
if (lean_is_scalar(x_192)) {
 x_197 = lean_alloc_ctor(0, 2, 0);
} else {
 x_197 = x_192;
}
lean_ctor_set(x_197, 0, x_196);
lean_ctor_set(x_197, 1, x_191);
return x_197;
}
}
else
{
lean_object* x_198; lean_object* x_199; lean_object* x_200; lean_object* x_201; 
lean_dec(x_146);
lean_dec(x_144);
lean_dec(x_141);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_198 = lean_ctor_get(x_174, 0);
lean_inc(x_198);
x_199 = lean_ctor_get(x_174, 1);
lean_inc(x_199);
if (lean_is_exclusive(x_174)) {
 lean_ctor_release(x_174, 0);
 lean_ctor_release(x_174, 1);
 x_200 = x_174;
} else {
 lean_dec_ref(x_174);
 x_200 = lean_box(0);
}
if (lean_is_scalar(x_200)) {
 x_201 = lean_alloc_ctor(1, 2, 0);
} else {
 x_201 = x_200;
}
lean_ctor_set(x_201, 0, x_198);
lean_ctor_set(x_201, 1, x_199);
return x_201;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; uint8_t x_19; uint8_t x_20; uint8_t x_21; uint8_t x_22; uint8_t x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; uint8_t x_38; lean_object* x_39; lean_object* x_40; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
x_14 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
lean_inc(x_12);
x_15 = l_Lean_Expr_app___override(x_14, x_12);
x_16 = l_Lean_Expr_app___override(x_14, x_15);
x_17 = lean_ctor_get(x_3, 0);
lean_inc(x_17);
x_18 = lean_ctor_get_uint8(x_17, 0);
x_19 = lean_ctor_get_uint8(x_17, 1);
x_20 = lean_ctor_get_uint8(x_17, 2);
x_21 = lean_ctor_get_uint8(x_17, 3);
x_22 = lean_ctor_get_uint8(x_17, 4);
x_23 = lean_ctor_get_uint8(x_17, 5);
x_24 = lean_ctor_get_uint8(x_17, 6);
x_25 = lean_ctor_get_uint8(x_17, 7);
x_26 = lean_ctor_get_uint8(x_17, 8);
x_27 = lean_ctor_get_uint8(x_17, 10);
x_28 = lean_ctor_get_uint8(x_17, 11);
x_29 = lean_ctor_get_uint8(x_17, 12);
lean_dec(x_17);
x_30 = 2;
x_31 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_31, 0, x_18);
lean_ctor_set_uint8(x_31, 1, x_19);
lean_ctor_set_uint8(x_31, 2, x_20);
lean_ctor_set_uint8(x_31, 3, x_21);
lean_ctor_set_uint8(x_31, 4, x_22);
lean_ctor_set_uint8(x_31, 5, x_23);
lean_ctor_set_uint8(x_31, 6, x_24);
lean_ctor_set_uint8(x_31, 7, x_25);
lean_ctor_set_uint8(x_31, 8, x_26);
lean_ctor_set_uint8(x_31, 9, x_30);
lean_ctor_set_uint8(x_31, 10, x_27);
lean_ctor_set_uint8(x_31, 11, x_28);
lean_ctor_set_uint8(x_31, 12, x_29);
x_32 = lean_ctor_get(x_3, 1);
lean_inc(x_32);
x_33 = lean_ctor_get(x_3, 2);
lean_inc(x_33);
x_34 = lean_ctor_get(x_3, 3);
lean_inc(x_34);
x_35 = lean_ctor_get(x_3, 4);
lean_inc(x_35);
x_36 = lean_ctor_get(x_3, 5);
lean_inc(x_36);
x_37 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_38 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_39 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_39, 0, x_31);
lean_ctor_set(x_39, 1, x_32);
lean_ctor_set(x_39, 2, x_33);
lean_ctor_set(x_39, 3, x_34);
lean_ctor_set(x_39, 4, x_35);
lean_ctor_set(x_39, 5, x_36);
lean_ctor_set_uint8(x_39, sizeof(void*)*6, x_37);
lean_ctor_set_uint8(x_39, sizeof(void*)*6 + 1, x_38);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_40 = l_Lean_Meta_isExprDefEq(x_16, x_2, x_39, x_4, x_5, x_6, x_13);
if (lean_obj_tag(x_40) == 0)
{
lean_object* x_41; uint8_t x_42; 
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
x_42 = lean_unbox(x_41);
lean_dec(x_41);
if (x_42 == 0)
{
uint8_t x_43; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_43 = !lean_is_exclusive(x_40);
if (x_43 == 0)
{
lean_object* x_44; uint8_t x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_40, 0);
lean_dec(x_44);
x_45 = 0;
x_46 = lean_box(x_45);
lean_ctor_set(x_10, 1, x_46);
lean_ctor_set(x_40, 0, x_10);
return x_40;
}
else
{
lean_object* x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; 
x_47 = lean_ctor_get(x_40, 1);
lean_inc(x_47);
lean_dec(x_40);
x_48 = 0;
x_49 = lean_box(x_48);
lean_ctor_set(x_10, 1, x_49);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_10);
lean_ctor_set(x_50, 1, x_47);
return x_50;
}
}
else
{
lean_object* x_51; lean_object* x_52; uint8_t x_53; 
x_51 = lean_ctor_get(x_40, 1);
lean_inc(x_51);
lean_dec(x_40);
x_52 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_51);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_53 = !lean_is_exclusive(x_52);
if (x_53 == 0)
{
lean_object* x_54; uint8_t x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_52, 0);
x_55 = 1;
x_56 = lean_box(x_55);
lean_ctor_set(x_10, 1, x_56);
lean_ctor_set(x_10, 0, x_54);
lean_ctor_set(x_52, 0, x_10);
return x_52;
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; lean_object* x_60; lean_object* x_61; 
x_57 = lean_ctor_get(x_52, 0);
x_58 = lean_ctor_get(x_52, 1);
lean_inc(x_58);
lean_inc(x_57);
lean_dec(x_52);
x_59 = 1;
x_60 = lean_box(x_59);
lean_ctor_set(x_10, 1, x_60);
lean_ctor_set(x_10, 0, x_57);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_10);
lean_ctor_set(x_61, 1, x_58);
return x_61;
}
}
}
else
{
uint8_t x_62; 
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_62 = !lean_is_exclusive(x_40);
if (x_62 == 0)
{
return x_40;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_40, 0);
x_64 = lean_ctor_get(x_40, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_40);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; uint8_t x_72; uint8_t x_73; uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; uint8_t x_91; uint8_t x_92; lean_object* x_93; lean_object* x_94; 
x_66 = lean_ctor_get(x_10, 0);
x_67 = lean_ctor_get(x_10, 1);
lean_inc(x_67);
lean_inc(x_66);
lean_dec(x_10);
x_68 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
lean_inc(x_66);
x_69 = l_Lean_Expr_app___override(x_68, x_66);
x_70 = l_Lean_Expr_app___override(x_68, x_69);
x_71 = lean_ctor_get(x_3, 0);
lean_inc(x_71);
x_72 = lean_ctor_get_uint8(x_71, 0);
x_73 = lean_ctor_get_uint8(x_71, 1);
x_74 = lean_ctor_get_uint8(x_71, 2);
x_75 = lean_ctor_get_uint8(x_71, 3);
x_76 = lean_ctor_get_uint8(x_71, 4);
x_77 = lean_ctor_get_uint8(x_71, 5);
x_78 = lean_ctor_get_uint8(x_71, 6);
x_79 = lean_ctor_get_uint8(x_71, 7);
x_80 = lean_ctor_get_uint8(x_71, 8);
x_81 = lean_ctor_get_uint8(x_71, 10);
x_82 = lean_ctor_get_uint8(x_71, 11);
x_83 = lean_ctor_get_uint8(x_71, 12);
lean_dec(x_71);
x_84 = 2;
x_85 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_85, 0, x_72);
lean_ctor_set_uint8(x_85, 1, x_73);
lean_ctor_set_uint8(x_85, 2, x_74);
lean_ctor_set_uint8(x_85, 3, x_75);
lean_ctor_set_uint8(x_85, 4, x_76);
lean_ctor_set_uint8(x_85, 5, x_77);
lean_ctor_set_uint8(x_85, 6, x_78);
lean_ctor_set_uint8(x_85, 7, x_79);
lean_ctor_set_uint8(x_85, 8, x_80);
lean_ctor_set_uint8(x_85, 9, x_84);
lean_ctor_set_uint8(x_85, 10, x_81);
lean_ctor_set_uint8(x_85, 11, x_82);
lean_ctor_set_uint8(x_85, 12, x_83);
x_86 = lean_ctor_get(x_3, 1);
lean_inc(x_86);
x_87 = lean_ctor_get(x_3, 2);
lean_inc(x_87);
x_88 = lean_ctor_get(x_3, 3);
lean_inc(x_88);
x_89 = lean_ctor_get(x_3, 4);
lean_inc(x_89);
x_90 = lean_ctor_get(x_3, 5);
lean_inc(x_90);
x_91 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_92 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_93 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_93, 0, x_85);
lean_ctor_set(x_93, 1, x_86);
lean_ctor_set(x_93, 2, x_87);
lean_ctor_set(x_93, 3, x_88);
lean_ctor_set(x_93, 4, x_89);
lean_ctor_set(x_93, 5, x_90);
lean_ctor_set_uint8(x_93, sizeof(void*)*6, x_91);
lean_ctor_set_uint8(x_93, sizeof(void*)*6 + 1, x_92);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_94 = l_Lean_Meta_isExprDefEq(x_70, x_2, x_93, x_4, x_5, x_6, x_67);
if (lean_obj_tag(x_94) == 0)
{
lean_object* x_95; uint8_t x_96; 
x_95 = lean_ctor_get(x_94, 0);
lean_inc(x_95);
x_96 = lean_unbox(x_95);
lean_dec(x_95);
if (x_96 == 0)
{
lean_object* x_97; lean_object* x_98; uint8_t x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_97 = lean_ctor_get(x_94, 1);
lean_inc(x_97);
if (lean_is_exclusive(x_94)) {
 lean_ctor_release(x_94, 0);
 lean_ctor_release(x_94, 1);
 x_98 = x_94;
} else {
 lean_dec_ref(x_94);
 x_98 = lean_box(0);
}
x_99 = 0;
x_100 = lean_box(x_99);
x_101 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_101, 0, x_66);
lean_ctor_set(x_101, 1, x_100);
if (lean_is_scalar(x_98)) {
 x_102 = lean_alloc_ctor(0, 2, 0);
} else {
 x_102 = x_98;
}
lean_ctor_set(x_102, 0, x_101);
lean_ctor_set(x_102, 1, x_97);
return x_102;
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; uint8_t x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
x_103 = lean_ctor_get(x_94, 1);
lean_inc(x_103);
lean_dec(x_94);
x_104 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_66, x_3, x_4, x_5, x_6, x_103);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_105 = lean_ctor_get(x_104, 0);
lean_inc(x_105);
x_106 = lean_ctor_get(x_104, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_107 = x_104;
} else {
 lean_dec_ref(x_104);
 x_107 = lean_box(0);
}
x_108 = 1;
x_109 = lean_box(x_108);
x_110 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_110, 0, x_105);
lean_ctor_set(x_110, 1, x_109);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_dec(x_66);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_112 = lean_ctor_get(x_94, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_94, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_94)) {
 lean_ctor_release(x_94, 0);
 lean_ctor_release(x_94, 1);
 x_114 = x_94;
} else {
 lean_dec_ref(x_94);
 x_114 = lean_box(0);
}
if (lean_is_scalar(x_114)) {
 x_115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_115 = x_114;
}
lean_ctor_set(x_115, 0, x_112);
lean_ctor_set(x_115, 1, x_113);
return x_115;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Ne", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = l_Lean_Level_succ___override(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__2;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4;
x_3 = l_Lean_Expr_const___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = 0;
x_10 = lean_box(0);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_4);
x_15 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; uint8_t x_37; uint8_t x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; uint8_t x_46; lean_object* x_47; lean_object* x_48; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5;
x_20 = l_Lean_Expr_app___override(x_19, x_2);
lean_inc(x_13);
x_21 = l_Lean_Expr_app___override(x_20, x_13);
lean_inc(x_17);
x_22 = l_Lean_Expr_app___override(x_21, x_17);
x_23 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_24 = l_Lean_Expr_app___override(x_23, x_22);
x_25 = lean_ctor_get(x_4, 0);
lean_inc(x_25);
x_26 = lean_ctor_get_uint8(x_25, 0);
x_27 = lean_ctor_get_uint8(x_25, 1);
x_28 = lean_ctor_get_uint8(x_25, 2);
x_29 = lean_ctor_get_uint8(x_25, 3);
x_30 = lean_ctor_get_uint8(x_25, 4);
x_31 = lean_ctor_get_uint8(x_25, 5);
x_32 = lean_ctor_get_uint8(x_25, 6);
x_33 = lean_ctor_get_uint8(x_25, 7);
x_34 = lean_ctor_get_uint8(x_25, 8);
x_35 = lean_ctor_get_uint8(x_25, 10);
x_36 = lean_ctor_get_uint8(x_25, 11);
x_37 = lean_ctor_get_uint8(x_25, 12);
lean_dec(x_25);
x_38 = 2;
x_39 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_39, 0, x_26);
lean_ctor_set_uint8(x_39, 1, x_27);
lean_ctor_set_uint8(x_39, 2, x_28);
lean_ctor_set_uint8(x_39, 3, x_29);
lean_ctor_set_uint8(x_39, 4, x_30);
lean_ctor_set_uint8(x_39, 5, x_31);
lean_ctor_set_uint8(x_39, 6, x_32);
lean_ctor_set_uint8(x_39, 7, x_33);
lean_ctor_set_uint8(x_39, 8, x_34);
lean_ctor_set_uint8(x_39, 9, x_38);
lean_ctor_set_uint8(x_39, 10, x_35);
lean_ctor_set_uint8(x_39, 11, x_36);
lean_ctor_set_uint8(x_39, 12, x_37);
x_40 = lean_ctor_get(x_4, 1);
lean_inc(x_40);
x_41 = lean_ctor_get(x_4, 2);
lean_inc(x_41);
x_42 = lean_ctor_get(x_4, 3);
lean_inc(x_42);
x_43 = lean_ctor_get(x_4, 4);
lean_inc(x_43);
x_44 = lean_ctor_get(x_4, 5);
lean_inc(x_44);
x_45 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_46 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_47 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_47, 0, x_39);
lean_ctor_set(x_47, 1, x_40);
lean_ctor_set(x_47, 2, x_41);
lean_ctor_set(x_47, 3, x_42);
lean_ctor_set(x_47, 4, x_43);
lean_ctor_set(x_47, 5, x_44);
lean_ctor_set_uint8(x_47, sizeof(void*)*6, x_45);
lean_ctor_set_uint8(x_47, sizeof(void*)*6 + 1, x_46);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_48 = l_Lean_Meta_isExprDefEq(x_24, x_3, x_47, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; uint8_t x_50; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_unbox(x_49);
lean_dec(x_49);
if (x_50 == 0)
{
uint8_t x_51; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_51 = !lean_is_exclusive(x_48);
if (x_51 == 0)
{
lean_object* x_52; uint8_t x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_48, 0);
lean_dec(x_52);
x_53 = 0;
x_54 = lean_box(x_53);
lean_ctor_set(x_15, 1, x_54);
lean_ctor_set(x_11, 1, x_15);
lean_ctor_set(x_48, 0, x_11);
return x_48;
}
else
{
lean_object* x_55; uint8_t x_56; lean_object* x_57; lean_object* x_58; 
x_55 = lean_ctor_get(x_48, 1);
lean_inc(x_55);
lean_dec(x_48);
x_56 = 0;
x_57 = lean_box(x_56);
lean_ctor_set(x_15, 1, x_57);
lean_ctor_set(x_11, 1, x_15);
x_58 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_58, 0, x_11);
lean_ctor_set(x_58, 1, x_55);
return x_58;
}
}
else
{
lean_object* x_59; lean_object* x_60; uint8_t x_61; 
lean_free_object(x_11);
x_59 = lean_ctor_get(x_48, 1);
lean_inc(x_59);
lean_dec(x_48);
x_60 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_59);
x_61 = !lean_is_exclusive(x_60);
if (x_61 == 0)
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; uint8_t x_65; 
x_62 = lean_ctor_get(x_60, 0);
x_63 = lean_ctor_get(x_60, 1);
x_64 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_63);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_65 = !lean_is_exclusive(x_64);
if (x_65 == 0)
{
lean_object* x_66; uint8_t x_67; lean_object* x_68; 
x_66 = lean_ctor_get(x_64, 0);
x_67 = 1;
x_68 = lean_box(x_67);
lean_ctor_set(x_60, 1, x_68);
lean_ctor_set(x_60, 0, x_66);
lean_ctor_set(x_15, 1, x_60);
lean_ctor_set(x_15, 0, x_62);
lean_ctor_set(x_64, 0, x_15);
return x_64;
}
else
{
lean_object* x_69; lean_object* x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; 
x_69 = lean_ctor_get(x_64, 0);
x_70 = lean_ctor_get(x_64, 1);
lean_inc(x_70);
lean_inc(x_69);
lean_dec(x_64);
x_71 = 1;
x_72 = lean_box(x_71);
lean_ctor_set(x_60, 1, x_72);
lean_ctor_set(x_60, 0, x_69);
lean_ctor_set(x_15, 1, x_60);
lean_ctor_set(x_15, 0, x_62);
x_73 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_73, 0, x_15);
lean_ctor_set(x_73, 1, x_70);
return x_73;
}
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; uint8_t x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_74 = lean_ctor_get(x_60, 0);
x_75 = lean_ctor_get(x_60, 1);
lean_inc(x_75);
lean_inc(x_74);
lean_dec(x_60);
x_76 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_75);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_77 = lean_ctor_get(x_76, 0);
lean_inc(x_77);
x_78 = lean_ctor_get(x_76, 1);
lean_inc(x_78);
if (lean_is_exclusive(x_76)) {
 lean_ctor_release(x_76, 0);
 lean_ctor_release(x_76, 1);
 x_79 = x_76;
} else {
 lean_dec_ref(x_76);
 x_79 = lean_box(0);
}
x_80 = 1;
x_81 = lean_box(x_80);
x_82 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_82, 0, x_77);
lean_ctor_set(x_82, 1, x_81);
lean_ctor_set(x_15, 1, x_82);
lean_ctor_set(x_15, 0, x_74);
if (lean_is_scalar(x_79)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_79;
}
lean_ctor_set(x_83, 0, x_15);
lean_ctor_set(x_83, 1, x_78);
return x_83;
}
}
}
else
{
uint8_t x_84; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_84 = !lean_is_exclusive(x_48);
if (x_84 == 0)
{
return x_48;
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_85 = lean_ctor_get(x_48, 0);
x_86 = lean_ctor_get(x_48, 1);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_48);
x_87 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_87, 0, x_85);
lean_ctor_set(x_87, 1, x_86);
return x_87;
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; uint8_t x_106; uint8_t x_107; uint8_t x_108; uint8_t x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; uint8_t x_116; uint8_t x_117; lean_object* x_118; lean_object* x_119; 
x_88 = lean_ctor_get(x_15, 0);
x_89 = lean_ctor_get(x_15, 1);
lean_inc(x_89);
lean_inc(x_88);
lean_dec(x_15);
x_90 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5;
x_91 = l_Lean_Expr_app___override(x_90, x_2);
lean_inc(x_13);
x_92 = l_Lean_Expr_app___override(x_91, x_13);
lean_inc(x_88);
x_93 = l_Lean_Expr_app___override(x_92, x_88);
x_94 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_95 = l_Lean_Expr_app___override(x_94, x_93);
x_96 = lean_ctor_get(x_4, 0);
lean_inc(x_96);
x_97 = lean_ctor_get_uint8(x_96, 0);
x_98 = lean_ctor_get_uint8(x_96, 1);
x_99 = lean_ctor_get_uint8(x_96, 2);
x_100 = lean_ctor_get_uint8(x_96, 3);
x_101 = lean_ctor_get_uint8(x_96, 4);
x_102 = lean_ctor_get_uint8(x_96, 5);
x_103 = lean_ctor_get_uint8(x_96, 6);
x_104 = lean_ctor_get_uint8(x_96, 7);
x_105 = lean_ctor_get_uint8(x_96, 8);
x_106 = lean_ctor_get_uint8(x_96, 10);
x_107 = lean_ctor_get_uint8(x_96, 11);
x_108 = lean_ctor_get_uint8(x_96, 12);
lean_dec(x_96);
x_109 = 2;
x_110 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_110, 0, x_97);
lean_ctor_set_uint8(x_110, 1, x_98);
lean_ctor_set_uint8(x_110, 2, x_99);
lean_ctor_set_uint8(x_110, 3, x_100);
lean_ctor_set_uint8(x_110, 4, x_101);
lean_ctor_set_uint8(x_110, 5, x_102);
lean_ctor_set_uint8(x_110, 6, x_103);
lean_ctor_set_uint8(x_110, 7, x_104);
lean_ctor_set_uint8(x_110, 8, x_105);
lean_ctor_set_uint8(x_110, 9, x_109);
lean_ctor_set_uint8(x_110, 10, x_106);
lean_ctor_set_uint8(x_110, 11, x_107);
lean_ctor_set_uint8(x_110, 12, x_108);
x_111 = lean_ctor_get(x_4, 1);
lean_inc(x_111);
x_112 = lean_ctor_get(x_4, 2);
lean_inc(x_112);
x_113 = lean_ctor_get(x_4, 3);
lean_inc(x_113);
x_114 = lean_ctor_get(x_4, 4);
lean_inc(x_114);
x_115 = lean_ctor_get(x_4, 5);
lean_inc(x_115);
x_116 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_117 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_118 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_118, 0, x_110);
lean_ctor_set(x_118, 1, x_111);
lean_ctor_set(x_118, 2, x_112);
lean_ctor_set(x_118, 3, x_113);
lean_ctor_set(x_118, 4, x_114);
lean_ctor_set(x_118, 5, x_115);
lean_ctor_set_uint8(x_118, sizeof(void*)*6, x_116);
lean_ctor_set_uint8(x_118, sizeof(void*)*6 + 1, x_117);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_119 = l_Lean_Meta_isExprDefEq(x_95, x_3, x_118, x_5, x_6, x_7, x_89);
if (lean_obj_tag(x_119) == 0)
{
lean_object* x_120; uint8_t x_121; 
x_120 = lean_ctor_get(x_119, 0);
lean_inc(x_120);
x_121 = lean_unbox(x_120);
lean_dec(x_120);
if (x_121 == 0)
{
lean_object* x_122; lean_object* x_123; uint8_t x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_122 = lean_ctor_get(x_119, 1);
lean_inc(x_122);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 lean_ctor_release(x_119, 1);
 x_123 = x_119;
} else {
 lean_dec_ref(x_119);
 x_123 = lean_box(0);
}
x_124 = 0;
x_125 = lean_box(x_124);
x_126 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_126, 0, x_88);
lean_ctor_set(x_126, 1, x_125);
lean_ctor_set(x_11, 1, x_126);
if (lean_is_scalar(x_123)) {
 x_127 = lean_alloc_ctor(0, 2, 0);
} else {
 x_127 = x_123;
}
lean_ctor_set(x_127, 0, x_11);
lean_ctor_set(x_127, 1, x_122);
return x_127;
}
else
{
lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; uint8_t x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; 
lean_free_object(x_11);
x_128 = lean_ctor_get(x_119, 1);
lean_inc(x_128);
lean_dec(x_119);
x_129 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_128);
x_130 = lean_ctor_get(x_129, 0);
lean_inc(x_130);
x_131 = lean_ctor_get(x_129, 1);
lean_inc(x_131);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_132 = x_129;
} else {
 lean_dec_ref(x_129);
 x_132 = lean_box(0);
}
x_133 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_88, x_4, x_5, x_6, x_7, x_131);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_134 = lean_ctor_get(x_133, 0);
lean_inc(x_134);
x_135 = lean_ctor_get(x_133, 1);
lean_inc(x_135);
if (lean_is_exclusive(x_133)) {
 lean_ctor_release(x_133, 0);
 lean_ctor_release(x_133, 1);
 x_136 = x_133;
} else {
 lean_dec_ref(x_133);
 x_136 = lean_box(0);
}
x_137 = 1;
x_138 = lean_box(x_137);
if (lean_is_scalar(x_132)) {
 x_139 = lean_alloc_ctor(0, 2, 0);
} else {
 x_139 = x_132;
}
lean_ctor_set(x_139, 0, x_134);
lean_ctor_set(x_139, 1, x_138);
x_140 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_140, 0, x_130);
lean_ctor_set(x_140, 1, x_139);
if (lean_is_scalar(x_136)) {
 x_141 = lean_alloc_ctor(0, 2, 0);
} else {
 x_141 = x_136;
}
lean_ctor_set(x_141, 0, x_140);
lean_ctor_set(x_141, 1, x_135);
return x_141;
}
}
else
{
lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; 
lean_dec(x_88);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_142 = lean_ctor_get(x_119, 0);
lean_inc(x_142);
x_143 = lean_ctor_get(x_119, 1);
lean_inc(x_143);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 lean_ctor_release(x_119, 1);
 x_144 = x_119;
} else {
 lean_dec_ref(x_119);
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
else
{
lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; uint8_t x_165; uint8_t x_166; uint8_t x_167; uint8_t x_168; uint8_t x_169; uint8_t x_170; uint8_t x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; uint8_t x_178; uint8_t x_179; lean_object* x_180; lean_object* x_181; 
x_146 = lean_ctor_get(x_11, 0);
x_147 = lean_ctor_get(x_11, 1);
lean_inc(x_147);
lean_inc(x_146);
lean_dec(x_11);
lean_inc(x_4);
x_148 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_147);
x_149 = lean_ctor_get(x_148, 0);
lean_inc(x_149);
x_150 = lean_ctor_get(x_148, 1);
lean_inc(x_150);
if (lean_is_exclusive(x_148)) {
 lean_ctor_release(x_148, 0);
 lean_ctor_release(x_148, 1);
 x_151 = x_148;
} else {
 lean_dec_ref(x_148);
 x_151 = lean_box(0);
}
x_152 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5;
x_153 = l_Lean_Expr_app___override(x_152, x_2);
lean_inc(x_146);
x_154 = l_Lean_Expr_app___override(x_153, x_146);
lean_inc(x_149);
x_155 = l_Lean_Expr_app___override(x_154, x_149);
x_156 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_157 = l_Lean_Expr_app___override(x_156, x_155);
x_158 = lean_ctor_get(x_4, 0);
lean_inc(x_158);
x_159 = lean_ctor_get_uint8(x_158, 0);
x_160 = lean_ctor_get_uint8(x_158, 1);
x_161 = lean_ctor_get_uint8(x_158, 2);
x_162 = lean_ctor_get_uint8(x_158, 3);
x_163 = lean_ctor_get_uint8(x_158, 4);
x_164 = lean_ctor_get_uint8(x_158, 5);
x_165 = lean_ctor_get_uint8(x_158, 6);
x_166 = lean_ctor_get_uint8(x_158, 7);
x_167 = lean_ctor_get_uint8(x_158, 8);
x_168 = lean_ctor_get_uint8(x_158, 10);
x_169 = lean_ctor_get_uint8(x_158, 11);
x_170 = lean_ctor_get_uint8(x_158, 12);
lean_dec(x_158);
x_171 = 2;
x_172 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_172, 0, x_159);
lean_ctor_set_uint8(x_172, 1, x_160);
lean_ctor_set_uint8(x_172, 2, x_161);
lean_ctor_set_uint8(x_172, 3, x_162);
lean_ctor_set_uint8(x_172, 4, x_163);
lean_ctor_set_uint8(x_172, 5, x_164);
lean_ctor_set_uint8(x_172, 6, x_165);
lean_ctor_set_uint8(x_172, 7, x_166);
lean_ctor_set_uint8(x_172, 8, x_167);
lean_ctor_set_uint8(x_172, 9, x_171);
lean_ctor_set_uint8(x_172, 10, x_168);
lean_ctor_set_uint8(x_172, 11, x_169);
lean_ctor_set_uint8(x_172, 12, x_170);
x_173 = lean_ctor_get(x_4, 1);
lean_inc(x_173);
x_174 = lean_ctor_get(x_4, 2);
lean_inc(x_174);
x_175 = lean_ctor_get(x_4, 3);
lean_inc(x_175);
x_176 = lean_ctor_get(x_4, 4);
lean_inc(x_176);
x_177 = lean_ctor_get(x_4, 5);
lean_inc(x_177);
x_178 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_179 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_180 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_180, 0, x_172);
lean_ctor_set(x_180, 1, x_173);
lean_ctor_set(x_180, 2, x_174);
lean_ctor_set(x_180, 3, x_175);
lean_ctor_set(x_180, 4, x_176);
lean_ctor_set(x_180, 5, x_177);
lean_ctor_set_uint8(x_180, sizeof(void*)*6, x_178);
lean_ctor_set_uint8(x_180, sizeof(void*)*6 + 1, x_179);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_181 = l_Lean_Meta_isExprDefEq(x_157, x_3, x_180, x_5, x_6, x_7, x_150);
if (lean_obj_tag(x_181) == 0)
{
lean_object* x_182; uint8_t x_183; 
x_182 = lean_ctor_get(x_181, 0);
lean_inc(x_182);
x_183 = lean_unbox(x_182);
lean_dec(x_182);
if (x_183 == 0)
{
lean_object* x_184; lean_object* x_185; uint8_t x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_184 = lean_ctor_get(x_181, 1);
lean_inc(x_184);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_185 = x_181;
} else {
 lean_dec_ref(x_181);
 x_185 = lean_box(0);
}
x_186 = 0;
x_187 = lean_box(x_186);
if (lean_is_scalar(x_151)) {
 x_188 = lean_alloc_ctor(0, 2, 0);
} else {
 x_188 = x_151;
}
lean_ctor_set(x_188, 0, x_149);
lean_ctor_set(x_188, 1, x_187);
x_189 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_189, 0, x_146);
lean_ctor_set(x_189, 1, x_188);
if (lean_is_scalar(x_185)) {
 x_190 = lean_alloc_ctor(0, 2, 0);
} else {
 x_190 = x_185;
}
lean_ctor_set(x_190, 0, x_189);
lean_ctor_set(x_190, 1, x_184);
return x_190;
}
else
{
lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; uint8_t x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; 
x_191 = lean_ctor_get(x_181, 1);
lean_inc(x_191);
lean_dec(x_181);
x_192 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_146, x_4, x_5, x_6, x_7, x_191);
x_193 = lean_ctor_get(x_192, 0);
lean_inc(x_193);
x_194 = lean_ctor_get(x_192, 1);
lean_inc(x_194);
if (lean_is_exclusive(x_192)) {
 lean_ctor_release(x_192, 0);
 lean_ctor_release(x_192, 1);
 x_195 = x_192;
} else {
 lean_dec_ref(x_192);
 x_195 = lean_box(0);
}
x_196 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_149, x_4, x_5, x_6, x_7, x_194);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_197 = lean_ctor_get(x_196, 0);
lean_inc(x_197);
x_198 = lean_ctor_get(x_196, 1);
lean_inc(x_198);
if (lean_is_exclusive(x_196)) {
 lean_ctor_release(x_196, 0);
 lean_ctor_release(x_196, 1);
 x_199 = x_196;
} else {
 lean_dec_ref(x_196);
 x_199 = lean_box(0);
}
x_200 = 1;
x_201 = lean_box(x_200);
if (lean_is_scalar(x_195)) {
 x_202 = lean_alloc_ctor(0, 2, 0);
} else {
 x_202 = x_195;
}
lean_ctor_set(x_202, 0, x_197);
lean_ctor_set(x_202, 1, x_201);
if (lean_is_scalar(x_151)) {
 x_203 = lean_alloc_ctor(0, 2, 0);
} else {
 x_203 = x_151;
}
lean_ctor_set(x_203, 0, x_193);
lean_ctor_set(x_203, 1, x_202);
if (lean_is_scalar(x_199)) {
 x_204 = lean_alloc_ctor(0, 2, 0);
} else {
 x_204 = x_199;
}
lean_ctor_set(x_204, 0, x_203);
lean_ctor_set(x_204, 1, x_198);
return x_204;
}
}
else
{
lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; 
lean_dec(x_151);
lean_dec(x_149);
lean_dec(x_146);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_205 = lean_ctor_get(x_181, 0);
lean_inc(x_205);
x_206 = lean_ctor_get(x_181, 1);
lean_inc(x_206);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_207 = x_181;
} else {
 lean_dec_ref(x_181);
 x_207 = lean_box(0);
}
if (lean_is_scalar(x_207)) {
 x_208 = lean_alloc_ctor(1, 2, 0);
} else {
 x_208 = x_207;
}
lean_ctor_set(x_208, 0, x_205);
lean_ctor_set(x_208, 1, x_206);
return x_208;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Or", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_3);
x_14 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; uint8_t x_44; lean_object* x_45; lean_object* x_46; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
lean_inc(x_12);
x_19 = l_Lean_Expr_app___override(x_18, x_12);
lean_inc(x_16);
x_20 = l_Lean_Expr_app___override(x_19, x_16);
x_21 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_22 = l_Lean_Expr_app___override(x_21, x_20);
x_23 = lean_ctor_get(x_3, 0);
lean_inc(x_23);
x_24 = lean_ctor_get_uint8(x_23, 0);
x_25 = lean_ctor_get_uint8(x_23, 1);
x_26 = lean_ctor_get_uint8(x_23, 2);
x_27 = lean_ctor_get_uint8(x_23, 3);
x_28 = lean_ctor_get_uint8(x_23, 4);
x_29 = lean_ctor_get_uint8(x_23, 5);
x_30 = lean_ctor_get_uint8(x_23, 6);
x_31 = lean_ctor_get_uint8(x_23, 7);
x_32 = lean_ctor_get_uint8(x_23, 8);
x_33 = lean_ctor_get_uint8(x_23, 10);
x_34 = lean_ctor_get_uint8(x_23, 11);
x_35 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_36 = 2;
x_37 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_37, 0, x_24);
lean_ctor_set_uint8(x_37, 1, x_25);
lean_ctor_set_uint8(x_37, 2, x_26);
lean_ctor_set_uint8(x_37, 3, x_27);
lean_ctor_set_uint8(x_37, 4, x_28);
lean_ctor_set_uint8(x_37, 5, x_29);
lean_ctor_set_uint8(x_37, 6, x_30);
lean_ctor_set_uint8(x_37, 7, x_31);
lean_ctor_set_uint8(x_37, 8, x_32);
lean_ctor_set_uint8(x_37, 9, x_36);
lean_ctor_set_uint8(x_37, 10, x_33);
lean_ctor_set_uint8(x_37, 11, x_34);
lean_ctor_set_uint8(x_37, 12, x_35);
x_38 = lean_ctor_get(x_3, 1);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 2);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 3);
lean_inc(x_40);
x_41 = lean_ctor_get(x_3, 4);
lean_inc(x_41);
x_42 = lean_ctor_get(x_3, 5);
lean_inc(x_42);
x_43 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_44 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_45 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_45, 0, x_37);
lean_ctor_set(x_45, 1, x_38);
lean_ctor_set(x_45, 2, x_39);
lean_ctor_set(x_45, 3, x_40);
lean_ctor_set(x_45, 4, x_41);
lean_ctor_set(x_45, 5, x_42);
lean_ctor_set_uint8(x_45, sizeof(void*)*6, x_43);
lean_ctor_set_uint8(x_45, sizeof(void*)*6 + 1, x_44);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_46 = l_Lean_Meta_isExprDefEq(x_22, x_2, x_45, x_4, x_5, x_6, x_17);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; uint8_t x_48; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_unbox(x_47);
lean_dec(x_47);
if (x_48 == 0)
{
uint8_t x_49; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_49 = !lean_is_exclusive(x_46);
if (x_49 == 0)
{
lean_object* x_50; uint8_t x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_46, 0);
lean_dec(x_50);
x_51 = 0;
x_52 = lean_box(x_51);
lean_ctor_set(x_14, 1, x_52);
lean_ctor_set(x_10, 1, x_14);
lean_ctor_set(x_46, 0, x_10);
return x_46;
}
else
{
lean_object* x_53; uint8_t x_54; lean_object* x_55; lean_object* x_56; 
x_53 = lean_ctor_get(x_46, 1);
lean_inc(x_53);
lean_dec(x_46);
x_54 = 0;
x_55 = lean_box(x_54);
lean_ctor_set(x_14, 1, x_55);
lean_ctor_set(x_10, 1, x_14);
x_56 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_56, 0, x_10);
lean_ctor_set(x_56, 1, x_53);
return x_56;
}
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; 
lean_free_object(x_10);
x_57 = lean_ctor_get(x_46, 1);
lean_inc(x_57);
lean_dec(x_46);
x_58 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_57);
x_59 = !lean_is_exclusive(x_58);
if (x_59 == 0)
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; uint8_t x_63; 
x_60 = lean_ctor_get(x_58, 0);
x_61 = lean_ctor_get(x_58, 1);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_61);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_63 = !lean_is_exclusive(x_62);
if (x_63 == 0)
{
lean_object* x_64; uint8_t x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_62, 0);
x_65 = 1;
x_66 = lean_box(x_65);
lean_ctor_set(x_58, 1, x_66);
lean_ctor_set(x_58, 0, x_64);
lean_ctor_set(x_14, 1, x_58);
lean_ctor_set(x_14, 0, x_60);
lean_ctor_set(x_62, 0, x_14);
return x_62;
}
else
{
lean_object* x_67; lean_object* x_68; uint8_t x_69; lean_object* x_70; lean_object* x_71; 
x_67 = lean_ctor_get(x_62, 0);
x_68 = lean_ctor_get(x_62, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_62);
x_69 = 1;
x_70 = lean_box(x_69);
lean_ctor_set(x_58, 1, x_70);
lean_ctor_set(x_58, 0, x_67);
lean_ctor_set(x_14, 1, x_58);
lean_ctor_set(x_14, 0, x_60);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_14);
lean_ctor_set(x_71, 1, x_68);
return x_71;
}
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; uint8_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_72 = lean_ctor_get(x_58, 0);
x_73 = lean_ctor_get(x_58, 1);
lean_inc(x_73);
lean_inc(x_72);
lean_dec(x_58);
x_74 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_73);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_77 = x_74;
} else {
 lean_dec_ref(x_74);
 x_77 = lean_box(0);
}
x_78 = 1;
x_79 = lean_box(x_78);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_75);
lean_ctor_set(x_80, 1, x_79);
lean_ctor_set(x_14, 1, x_80);
lean_ctor_set(x_14, 0, x_72);
if (lean_is_scalar(x_77)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_77;
}
lean_ctor_set(x_81, 0, x_14);
lean_ctor_set(x_81, 1, x_76);
return x_81;
}
}
}
else
{
uint8_t x_82; 
lean_free_object(x_14);
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_82 = !lean_is_exclusive(x_46);
if (x_82 == 0)
{
return x_46;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_46, 0);
x_84 = lean_ctor_get(x_46, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_46);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; uint8_t x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; uint8_t x_113; uint8_t x_114; lean_object* x_115; lean_object* x_116; 
x_86 = lean_ctor_get(x_14, 0);
x_87 = lean_ctor_get(x_14, 1);
lean_inc(x_87);
lean_inc(x_86);
lean_dec(x_14);
x_88 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
lean_inc(x_12);
x_89 = l_Lean_Expr_app___override(x_88, x_12);
lean_inc(x_86);
x_90 = l_Lean_Expr_app___override(x_89, x_86);
x_91 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_92 = l_Lean_Expr_app___override(x_91, x_90);
x_93 = lean_ctor_get(x_3, 0);
lean_inc(x_93);
x_94 = lean_ctor_get_uint8(x_93, 0);
x_95 = lean_ctor_get_uint8(x_93, 1);
x_96 = lean_ctor_get_uint8(x_93, 2);
x_97 = lean_ctor_get_uint8(x_93, 3);
x_98 = lean_ctor_get_uint8(x_93, 4);
x_99 = lean_ctor_get_uint8(x_93, 5);
x_100 = lean_ctor_get_uint8(x_93, 6);
x_101 = lean_ctor_get_uint8(x_93, 7);
x_102 = lean_ctor_get_uint8(x_93, 8);
x_103 = lean_ctor_get_uint8(x_93, 10);
x_104 = lean_ctor_get_uint8(x_93, 11);
x_105 = lean_ctor_get_uint8(x_93, 12);
lean_dec(x_93);
x_106 = 2;
x_107 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_107, 0, x_94);
lean_ctor_set_uint8(x_107, 1, x_95);
lean_ctor_set_uint8(x_107, 2, x_96);
lean_ctor_set_uint8(x_107, 3, x_97);
lean_ctor_set_uint8(x_107, 4, x_98);
lean_ctor_set_uint8(x_107, 5, x_99);
lean_ctor_set_uint8(x_107, 6, x_100);
lean_ctor_set_uint8(x_107, 7, x_101);
lean_ctor_set_uint8(x_107, 8, x_102);
lean_ctor_set_uint8(x_107, 9, x_106);
lean_ctor_set_uint8(x_107, 10, x_103);
lean_ctor_set_uint8(x_107, 11, x_104);
lean_ctor_set_uint8(x_107, 12, x_105);
x_108 = lean_ctor_get(x_3, 1);
lean_inc(x_108);
x_109 = lean_ctor_get(x_3, 2);
lean_inc(x_109);
x_110 = lean_ctor_get(x_3, 3);
lean_inc(x_110);
x_111 = lean_ctor_get(x_3, 4);
lean_inc(x_111);
x_112 = lean_ctor_get(x_3, 5);
lean_inc(x_112);
x_113 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_114 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_115 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_115, 0, x_107);
lean_ctor_set(x_115, 1, x_108);
lean_ctor_set(x_115, 2, x_109);
lean_ctor_set(x_115, 3, x_110);
lean_ctor_set(x_115, 4, x_111);
lean_ctor_set(x_115, 5, x_112);
lean_ctor_set_uint8(x_115, sizeof(void*)*6, x_113);
lean_ctor_set_uint8(x_115, sizeof(void*)*6 + 1, x_114);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_116 = l_Lean_Meta_isExprDefEq(x_92, x_2, x_115, x_4, x_5, x_6, x_87);
if (lean_obj_tag(x_116) == 0)
{
lean_object* x_117; uint8_t x_118; 
x_117 = lean_ctor_get(x_116, 0);
lean_inc(x_117);
x_118 = lean_unbox(x_117);
lean_dec(x_117);
if (x_118 == 0)
{
lean_object* x_119; lean_object* x_120; uint8_t x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_119 = lean_ctor_get(x_116, 1);
lean_inc(x_119);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_120 = x_116;
} else {
 lean_dec_ref(x_116);
 x_120 = lean_box(0);
}
x_121 = 0;
x_122 = lean_box(x_121);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_86);
lean_ctor_set(x_123, 1, x_122);
lean_ctor_set(x_10, 1, x_123);
if (lean_is_scalar(x_120)) {
 x_124 = lean_alloc_ctor(0, 2, 0);
} else {
 x_124 = x_120;
}
lean_ctor_set(x_124, 0, x_10);
lean_ctor_set(x_124, 1, x_119);
return x_124;
}
else
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; 
lean_free_object(x_10);
x_125 = lean_ctor_get(x_116, 1);
lean_inc(x_125);
lean_dec(x_116);
x_126 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_125);
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
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
x_130 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_86, x_3, x_4, x_5, x_6, x_128);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_131 = lean_ctor_get(x_130, 0);
lean_inc(x_131);
x_132 = lean_ctor_get(x_130, 1);
lean_inc(x_132);
if (lean_is_exclusive(x_130)) {
 lean_ctor_release(x_130, 0);
 lean_ctor_release(x_130, 1);
 x_133 = x_130;
} else {
 lean_dec_ref(x_130);
 x_133 = lean_box(0);
}
x_134 = 1;
x_135 = lean_box(x_134);
if (lean_is_scalar(x_129)) {
 x_136 = lean_alloc_ctor(0, 2, 0);
} else {
 x_136 = x_129;
}
lean_ctor_set(x_136, 0, x_131);
lean_ctor_set(x_136, 1, x_135);
x_137 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_137, 0, x_127);
lean_ctor_set(x_137, 1, x_136);
if (lean_is_scalar(x_133)) {
 x_138 = lean_alloc_ctor(0, 2, 0);
} else {
 x_138 = x_133;
}
lean_ctor_set(x_138, 0, x_137);
lean_ctor_set(x_138, 1, x_132);
return x_138;
}
}
else
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; 
lean_dec(x_86);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_139 = lean_ctor_get(x_116, 0);
lean_inc(x_139);
x_140 = lean_ctor_get(x_116, 1);
lean_inc(x_140);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_141 = x_116;
} else {
 lean_dec_ref(x_116);
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
else
{
lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; uint8_t x_165; uint8_t x_166; uint8_t x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; uint8_t x_174; uint8_t x_175; lean_object* x_176; lean_object* x_177; 
x_143 = lean_ctor_get(x_10, 0);
x_144 = lean_ctor_get(x_10, 1);
lean_inc(x_144);
lean_inc(x_143);
lean_dec(x_10);
lean_inc(x_3);
x_145 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_144);
x_146 = lean_ctor_get(x_145, 0);
lean_inc(x_146);
x_147 = lean_ctor_get(x_145, 1);
lean_inc(x_147);
if (lean_is_exclusive(x_145)) {
 lean_ctor_release(x_145, 0);
 lean_ctor_release(x_145, 1);
 x_148 = x_145;
} else {
 lean_dec_ref(x_145);
 x_148 = lean_box(0);
}
x_149 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
lean_inc(x_143);
x_150 = l_Lean_Expr_app___override(x_149, x_143);
lean_inc(x_146);
x_151 = l_Lean_Expr_app___override(x_150, x_146);
x_152 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_153 = l_Lean_Expr_app___override(x_152, x_151);
x_154 = lean_ctor_get(x_3, 0);
lean_inc(x_154);
x_155 = lean_ctor_get_uint8(x_154, 0);
x_156 = lean_ctor_get_uint8(x_154, 1);
x_157 = lean_ctor_get_uint8(x_154, 2);
x_158 = lean_ctor_get_uint8(x_154, 3);
x_159 = lean_ctor_get_uint8(x_154, 4);
x_160 = lean_ctor_get_uint8(x_154, 5);
x_161 = lean_ctor_get_uint8(x_154, 6);
x_162 = lean_ctor_get_uint8(x_154, 7);
x_163 = lean_ctor_get_uint8(x_154, 8);
x_164 = lean_ctor_get_uint8(x_154, 10);
x_165 = lean_ctor_get_uint8(x_154, 11);
x_166 = lean_ctor_get_uint8(x_154, 12);
lean_dec(x_154);
x_167 = 2;
x_168 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_168, 0, x_155);
lean_ctor_set_uint8(x_168, 1, x_156);
lean_ctor_set_uint8(x_168, 2, x_157);
lean_ctor_set_uint8(x_168, 3, x_158);
lean_ctor_set_uint8(x_168, 4, x_159);
lean_ctor_set_uint8(x_168, 5, x_160);
lean_ctor_set_uint8(x_168, 6, x_161);
lean_ctor_set_uint8(x_168, 7, x_162);
lean_ctor_set_uint8(x_168, 8, x_163);
lean_ctor_set_uint8(x_168, 9, x_167);
lean_ctor_set_uint8(x_168, 10, x_164);
lean_ctor_set_uint8(x_168, 11, x_165);
lean_ctor_set_uint8(x_168, 12, x_166);
x_169 = lean_ctor_get(x_3, 1);
lean_inc(x_169);
x_170 = lean_ctor_get(x_3, 2);
lean_inc(x_170);
x_171 = lean_ctor_get(x_3, 3);
lean_inc(x_171);
x_172 = lean_ctor_get(x_3, 4);
lean_inc(x_172);
x_173 = lean_ctor_get(x_3, 5);
lean_inc(x_173);
x_174 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_175 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_176 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_176, 0, x_168);
lean_ctor_set(x_176, 1, x_169);
lean_ctor_set(x_176, 2, x_170);
lean_ctor_set(x_176, 3, x_171);
lean_ctor_set(x_176, 4, x_172);
lean_ctor_set(x_176, 5, x_173);
lean_ctor_set_uint8(x_176, sizeof(void*)*6, x_174);
lean_ctor_set_uint8(x_176, sizeof(void*)*6 + 1, x_175);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_177 = l_Lean_Meta_isExprDefEq(x_153, x_2, x_176, x_4, x_5, x_6, x_147);
if (lean_obj_tag(x_177) == 0)
{
lean_object* x_178; uint8_t x_179; 
x_178 = lean_ctor_get(x_177, 0);
lean_inc(x_178);
x_179 = lean_unbox(x_178);
lean_dec(x_178);
if (x_179 == 0)
{
lean_object* x_180; lean_object* x_181; uint8_t x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_180 = lean_ctor_get(x_177, 1);
lean_inc(x_180);
if (lean_is_exclusive(x_177)) {
 lean_ctor_release(x_177, 0);
 lean_ctor_release(x_177, 1);
 x_181 = x_177;
} else {
 lean_dec_ref(x_177);
 x_181 = lean_box(0);
}
x_182 = 0;
x_183 = lean_box(x_182);
if (lean_is_scalar(x_148)) {
 x_184 = lean_alloc_ctor(0, 2, 0);
} else {
 x_184 = x_148;
}
lean_ctor_set(x_184, 0, x_146);
lean_ctor_set(x_184, 1, x_183);
x_185 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_185, 0, x_143);
lean_ctor_set(x_185, 1, x_184);
if (lean_is_scalar(x_181)) {
 x_186 = lean_alloc_ctor(0, 2, 0);
} else {
 x_186 = x_181;
}
lean_ctor_set(x_186, 0, x_185);
lean_ctor_set(x_186, 1, x_180);
return x_186;
}
else
{
lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; uint8_t x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; lean_object* x_200; 
x_187 = lean_ctor_get(x_177, 1);
lean_inc(x_187);
lean_dec(x_177);
x_188 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_143, x_3, x_4, x_5, x_6, x_187);
x_189 = lean_ctor_get(x_188, 0);
lean_inc(x_189);
x_190 = lean_ctor_get(x_188, 1);
lean_inc(x_190);
if (lean_is_exclusive(x_188)) {
 lean_ctor_release(x_188, 0);
 lean_ctor_release(x_188, 1);
 x_191 = x_188;
} else {
 lean_dec_ref(x_188);
 x_191 = lean_box(0);
}
x_192 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_146, x_3, x_4, x_5, x_6, x_190);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_193 = lean_ctor_get(x_192, 0);
lean_inc(x_193);
x_194 = lean_ctor_get(x_192, 1);
lean_inc(x_194);
if (lean_is_exclusive(x_192)) {
 lean_ctor_release(x_192, 0);
 lean_ctor_release(x_192, 1);
 x_195 = x_192;
} else {
 lean_dec_ref(x_192);
 x_195 = lean_box(0);
}
x_196 = 1;
x_197 = lean_box(x_196);
if (lean_is_scalar(x_191)) {
 x_198 = lean_alloc_ctor(0, 2, 0);
} else {
 x_198 = x_191;
}
lean_ctor_set(x_198, 0, x_193);
lean_ctor_set(x_198, 1, x_197);
if (lean_is_scalar(x_148)) {
 x_199 = lean_alloc_ctor(0, 2, 0);
} else {
 x_199 = x_148;
}
lean_ctor_set(x_199, 0, x_189);
lean_ctor_set(x_199, 1, x_198);
if (lean_is_scalar(x_195)) {
 x_200 = lean_alloc_ctor(0, 2, 0);
} else {
 x_200 = x_195;
}
lean_ctor_set(x_200, 0, x_199);
lean_ctor_set(x_200, 1, x_194);
return x_200;
}
}
else
{
lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; 
lean_dec(x_148);
lean_dec(x_146);
lean_dec(x_143);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_201 = lean_ctor_get(x_177, 0);
lean_inc(x_201);
x_202 = lean_ctor_get(x_177, 1);
lean_inc(x_202);
if (lean_is_exclusive(x_177)) {
 lean_ctor_release(x_177, 0);
 lean_ctor_release(x_177, 1);
 x_203 = x_177;
} else {
 lean_dec_ref(x_177);
 x_203 = lean_box(0);
}
if (lean_is_scalar(x_203)) {
 x_204 = lean_alloc_ctor(1, 2, 0);
} else {
 x_204 = x_203;
}
lean_ctor_set(x_204, 0, x_201);
lean_ctor_set(x_204, 1, x_202);
return x_204;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("And", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = 0;
x_9 = lean_box(0);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_3);
x_14 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; uint8_t x_44; lean_object* x_45; lean_object* x_46; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
lean_inc(x_12);
x_19 = l_Lean_Expr_app___override(x_18, x_12);
lean_inc(x_16);
x_20 = l_Lean_Expr_app___override(x_19, x_16);
x_21 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_22 = l_Lean_Expr_app___override(x_21, x_20);
x_23 = lean_ctor_get(x_3, 0);
lean_inc(x_23);
x_24 = lean_ctor_get_uint8(x_23, 0);
x_25 = lean_ctor_get_uint8(x_23, 1);
x_26 = lean_ctor_get_uint8(x_23, 2);
x_27 = lean_ctor_get_uint8(x_23, 3);
x_28 = lean_ctor_get_uint8(x_23, 4);
x_29 = lean_ctor_get_uint8(x_23, 5);
x_30 = lean_ctor_get_uint8(x_23, 6);
x_31 = lean_ctor_get_uint8(x_23, 7);
x_32 = lean_ctor_get_uint8(x_23, 8);
x_33 = lean_ctor_get_uint8(x_23, 10);
x_34 = lean_ctor_get_uint8(x_23, 11);
x_35 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_36 = 2;
x_37 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_37, 0, x_24);
lean_ctor_set_uint8(x_37, 1, x_25);
lean_ctor_set_uint8(x_37, 2, x_26);
lean_ctor_set_uint8(x_37, 3, x_27);
lean_ctor_set_uint8(x_37, 4, x_28);
lean_ctor_set_uint8(x_37, 5, x_29);
lean_ctor_set_uint8(x_37, 6, x_30);
lean_ctor_set_uint8(x_37, 7, x_31);
lean_ctor_set_uint8(x_37, 8, x_32);
lean_ctor_set_uint8(x_37, 9, x_36);
lean_ctor_set_uint8(x_37, 10, x_33);
lean_ctor_set_uint8(x_37, 11, x_34);
lean_ctor_set_uint8(x_37, 12, x_35);
x_38 = lean_ctor_get(x_3, 1);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 2);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 3);
lean_inc(x_40);
x_41 = lean_ctor_get(x_3, 4);
lean_inc(x_41);
x_42 = lean_ctor_get(x_3, 5);
lean_inc(x_42);
x_43 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_44 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_45 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_45, 0, x_37);
lean_ctor_set(x_45, 1, x_38);
lean_ctor_set(x_45, 2, x_39);
lean_ctor_set(x_45, 3, x_40);
lean_ctor_set(x_45, 4, x_41);
lean_ctor_set(x_45, 5, x_42);
lean_ctor_set_uint8(x_45, sizeof(void*)*6, x_43);
lean_ctor_set_uint8(x_45, sizeof(void*)*6 + 1, x_44);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_46 = l_Lean_Meta_isExprDefEq(x_22, x_2, x_45, x_4, x_5, x_6, x_17);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; uint8_t x_48; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_unbox(x_47);
lean_dec(x_47);
if (x_48 == 0)
{
uint8_t x_49; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_49 = !lean_is_exclusive(x_46);
if (x_49 == 0)
{
lean_object* x_50; uint8_t x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_46, 0);
lean_dec(x_50);
x_51 = 0;
x_52 = lean_box(x_51);
lean_ctor_set(x_14, 1, x_52);
lean_ctor_set(x_10, 1, x_14);
lean_ctor_set(x_46, 0, x_10);
return x_46;
}
else
{
lean_object* x_53; uint8_t x_54; lean_object* x_55; lean_object* x_56; 
x_53 = lean_ctor_get(x_46, 1);
lean_inc(x_53);
lean_dec(x_46);
x_54 = 0;
x_55 = lean_box(x_54);
lean_ctor_set(x_14, 1, x_55);
lean_ctor_set(x_10, 1, x_14);
x_56 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_56, 0, x_10);
lean_ctor_set(x_56, 1, x_53);
return x_56;
}
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; 
lean_free_object(x_10);
x_57 = lean_ctor_get(x_46, 1);
lean_inc(x_57);
lean_dec(x_46);
x_58 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_57);
x_59 = !lean_is_exclusive(x_58);
if (x_59 == 0)
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; uint8_t x_63; 
x_60 = lean_ctor_get(x_58, 0);
x_61 = lean_ctor_get(x_58, 1);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_61);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_63 = !lean_is_exclusive(x_62);
if (x_63 == 0)
{
lean_object* x_64; uint8_t x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_62, 0);
x_65 = 1;
x_66 = lean_box(x_65);
lean_ctor_set(x_58, 1, x_66);
lean_ctor_set(x_58, 0, x_64);
lean_ctor_set(x_14, 1, x_58);
lean_ctor_set(x_14, 0, x_60);
lean_ctor_set(x_62, 0, x_14);
return x_62;
}
else
{
lean_object* x_67; lean_object* x_68; uint8_t x_69; lean_object* x_70; lean_object* x_71; 
x_67 = lean_ctor_get(x_62, 0);
x_68 = lean_ctor_get(x_62, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_62);
x_69 = 1;
x_70 = lean_box(x_69);
lean_ctor_set(x_58, 1, x_70);
lean_ctor_set(x_58, 0, x_67);
lean_ctor_set(x_14, 1, x_58);
lean_ctor_set(x_14, 0, x_60);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_14);
lean_ctor_set(x_71, 1, x_68);
return x_71;
}
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; uint8_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_72 = lean_ctor_get(x_58, 0);
x_73 = lean_ctor_get(x_58, 1);
lean_inc(x_73);
lean_inc(x_72);
lean_dec(x_58);
x_74 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_16, x_3, x_4, x_5, x_6, x_73);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_77 = x_74;
} else {
 lean_dec_ref(x_74);
 x_77 = lean_box(0);
}
x_78 = 1;
x_79 = lean_box(x_78);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_75);
lean_ctor_set(x_80, 1, x_79);
lean_ctor_set(x_14, 1, x_80);
lean_ctor_set(x_14, 0, x_72);
if (lean_is_scalar(x_77)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_77;
}
lean_ctor_set(x_81, 0, x_14);
lean_ctor_set(x_81, 1, x_76);
return x_81;
}
}
}
else
{
uint8_t x_82; 
lean_free_object(x_14);
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_82 = !lean_is_exclusive(x_46);
if (x_82 == 0)
{
return x_46;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_46, 0);
x_84 = lean_ctor_get(x_46, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_46);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; uint8_t x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; uint8_t x_113; uint8_t x_114; lean_object* x_115; lean_object* x_116; 
x_86 = lean_ctor_get(x_14, 0);
x_87 = lean_ctor_get(x_14, 1);
lean_inc(x_87);
lean_inc(x_86);
lean_dec(x_14);
x_88 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
lean_inc(x_12);
x_89 = l_Lean_Expr_app___override(x_88, x_12);
lean_inc(x_86);
x_90 = l_Lean_Expr_app___override(x_89, x_86);
x_91 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_92 = l_Lean_Expr_app___override(x_91, x_90);
x_93 = lean_ctor_get(x_3, 0);
lean_inc(x_93);
x_94 = lean_ctor_get_uint8(x_93, 0);
x_95 = lean_ctor_get_uint8(x_93, 1);
x_96 = lean_ctor_get_uint8(x_93, 2);
x_97 = lean_ctor_get_uint8(x_93, 3);
x_98 = lean_ctor_get_uint8(x_93, 4);
x_99 = lean_ctor_get_uint8(x_93, 5);
x_100 = lean_ctor_get_uint8(x_93, 6);
x_101 = lean_ctor_get_uint8(x_93, 7);
x_102 = lean_ctor_get_uint8(x_93, 8);
x_103 = lean_ctor_get_uint8(x_93, 10);
x_104 = lean_ctor_get_uint8(x_93, 11);
x_105 = lean_ctor_get_uint8(x_93, 12);
lean_dec(x_93);
x_106 = 2;
x_107 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_107, 0, x_94);
lean_ctor_set_uint8(x_107, 1, x_95);
lean_ctor_set_uint8(x_107, 2, x_96);
lean_ctor_set_uint8(x_107, 3, x_97);
lean_ctor_set_uint8(x_107, 4, x_98);
lean_ctor_set_uint8(x_107, 5, x_99);
lean_ctor_set_uint8(x_107, 6, x_100);
lean_ctor_set_uint8(x_107, 7, x_101);
lean_ctor_set_uint8(x_107, 8, x_102);
lean_ctor_set_uint8(x_107, 9, x_106);
lean_ctor_set_uint8(x_107, 10, x_103);
lean_ctor_set_uint8(x_107, 11, x_104);
lean_ctor_set_uint8(x_107, 12, x_105);
x_108 = lean_ctor_get(x_3, 1);
lean_inc(x_108);
x_109 = lean_ctor_get(x_3, 2);
lean_inc(x_109);
x_110 = lean_ctor_get(x_3, 3);
lean_inc(x_110);
x_111 = lean_ctor_get(x_3, 4);
lean_inc(x_111);
x_112 = lean_ctor_get(x_3, 5);
lean_inc(x_112);
x_113 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_114 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_115 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_115, 0, x_107);
lean_ctor_set(x_115, 1, x_108);
lean_ctor_set(x_115, 2, x_109);
lean_ctor_set(x_115, 3, x_110);
lean_ctor_set(x_115, 4, x_111);
lean_ctor_set(x_115, 5, x_112);
lean_ctor_set_uint8(x_115, sizeof(void*)*6, x_113);
lean_ctor_set_uint8(x_115, sizeof(void*)*6 + 1, x_114);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_116 = l_Lean_Meta_isExprDefEq(x_92, x_2, x_115, x_4, x_5, x_6, x_87);
if (lean_obj_tag(x_116) == 0)
{
lean_object* x_117; uint8_t x_118; 
x_117 = lean_ctor_get(x_116, 0);
lean_inc(x_117);
x_118 = lean_unbox(x_117);
lean_dec(x_117);
if (x_118 == 0)
{
lean_object* x_119; lean_object* x_120; uint8_t x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_119 = lean_ctor_get(x_116, 1);
lean_inc(x_119);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_120 = x_116;
} else {
 lean_dec_ref(x_116);
 x_120 = lean_box(0);
}
x_121 = 0;
x_122 = lean_box(x_121);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_86);
lean_ctor_set(x_123, 1, x_122);
lean_ctor_set(x_10, 1, x_123);
if (lean_is_scalar(x_120)) {
 x_124 = lean_alloc_ctor(0, 2, 0);
} else {
 x_124 = x_120;
}
lean_ctor_set(x_124, 0, x_10);
lean_ctor_set(x_124, 1, x_119);
return x_124;
}
else
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; 
lean_free_object(x_10);
x_125 = lean_ctor_get(x_116, 1);
lean_inc(x_125);
lean_dec(x_116);
x_126 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_12, x_3, x_4, x_5, x_6, x_125);
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
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
x_130 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_86, x_3, x_4, x_5, x_6, x_128);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_131 = lean_ctor_get(x_130, 0);
lean_inc(x_131);
x_132 = lean_ctor_get(x_130, 1);
lean_inc(x_132);
if (lean_is_exclusive(x_130)) {
 lean_ctor_release(x_130, 0);
 lean_ctor_release(x_130, 1);
 x_133 = x_130;
} else {
 lean_dec_ref(x_130);
 x_133 = lean_box(0);
}
x_134 = 1;
x_135 = lean_box(x_134);
if (lean_is_scalar(x_129)) {
 x_136 = lean_alloc_ctor(0, 2, 0);
} else {
 x_136 = x_129;
}
lean_ctor_set(x_136, 0, x_131);
lean_ctor_set(x_136, 1, x_135);
x_137 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_137, 0, x_127);
lean_ctor_set(x_137, 1, x_136);
if (lean_is_scalar(x_133)) {
 x_138 = lean_alloc_ctor(0, 2, 0);
} else {
 x_138 = x_133;
}
lean_ctor_set(x_138, 0, x_137);
lean_ctor_set(x_138, 1, x_132);
return x_138;
}
}
else
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; 
lean_dec(x_86);
lean_free_object(x_10);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_139 = lean_ctor_get(x_116, 0);
lean_inc(x_139);
x_140 = lean_ctor_get(x_116, 1);
lean_inc(x_140);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_141 = x_116;
} else {
 lean_dec_ref(x_116);
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
else
{
lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; uint8_t x_165; uint8_t x_166; uint8_t x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; uint8_t x_174; uint8_t x_175; lean_object* x_176; lean_object* x_177; 
x_143 = lean_ctor_get(x_10, 0);
x_144 = lean_ctor_get(x_10, 1);
lean_inc(x_144);
lean_inc(x_143);
lean_dec(x_10);
lean_inc(x_3);
x_145 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_144);
x_146 = lean_ctor_get(x_145, 0);
lean_inc(x_146);
x_147 = lean_ctor_get(x_145, 1);
lean_inc(x_147);
if (lean_is_exclusive(x_145)) {
 lean_ctor_release(x_145, 0);
 lean_ctor_release(x_145, 1);
 x_148 = x_145;
} else {
 lean_dec_ref(x_145);
 x_148 = lean_box(0);
}
x_149 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
lean_inc(x_143);
x_150 = l_Lean_Expr_app___override(x_149, x_143);
lean_inc(x_146);
x_151 = l_Lean_Expr_app___override(x_150, x_146);
x_152 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_153 = l_Lean_Expr_app___override(x_152, x_151);
x_154 = lean_ctor_get(x_3, 0);
lean_inc(x_154);
x_155 = lean_ctor_get_uint8(x_154, 0);
x_156 = lean_ctor_get_uint8(x_154, 1);
x_157 = lean_ctor_get_uint8(x_154, 2);
x_158 = lean_ctor_get_uint8(x_154, 3);
x_159 = lean_ctor_get_uint8(x_154, 4);
x_160 = lean_ctor_get_uint8(x_154, 5);
x_161 = lean_ctor_get_uint8(x_154, 6);
x_162 = lean_ctor_get_uint8(x_154, 7);
x_163 = lean_ctor_get_uint8(x_154, 8);
x_164 = lean_ctor_get_uint8(x_154, 10);
x_165 = lean_ctor_get_uint8(x_154, 11);
x_166 = lean_ctor_get_uint8(x_154, 12);
lean_dec(x_154);
x_167 = 2;
x_168 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_168, 0, x_155);
lean_ctor_set_uint8(x_168, 1, x_156);
lean_ctor_set_uint8(x_168, 2, x_157);
lean_ctor_set_uint8(x_168, 3, x_158);
lean_ctor_set_uint8(x_168, 4, x_159);
lean_ctor_set_uint8(x_168, 5, x_160);
lean_ctor_set_uint8(x_168, 6, x_161);
lean_ctor_set_uint8(x_168, 7, x_162);
lean_ctor_set_uint8(x_168, 8, x_163);
lean_ctor_set_uint8(x_168, 9, x_167);
lean_ctor_set_uint8(x_168, 10, x_164);
lean_ctor_set_uint8(x_168, 11, x_165);
lean_ctor_set_uint8(x_168, 12, x_166);
x_169 = lean_ctor_get(x_3, 1);
lean_inc(x_169);
x_170 = lean_ctor_get(x_3, 2);
lean_inc(x_170);
x_171 = lean_ctor_get(x_3, 3);
lean_inc(x_171);
x_172 = lean_ctor_get(x_3, 4);
lean_inc(x_172);
x_173 = lean_ctor_get(x_3, 5);
lean_inc(x_173);
x_174 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_175 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_176 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_176, 0, x_168);
lean_ctor_set(x_176, 1, x_169);
lean_ctor_set(x_176, 2, x_170);
lean_ctor_set(x_176, 3, x_171);
lean_ctor_set(x_176, 4, x_172);
lean_ctor_set(x_176, 5, x_173);
lean_ctor_set_uint8(x_176, sizeof(void*)*6, x_174);
lean_ctor_set_uint8(x_176, sizeof(void*)*6 + 1, x_175);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_177 = l_Lean_Meta_isExprDefEq(x_153, x_2, x_176, x_4, x_5, x_6, x_147);
if (lean_obj_tag(x_177) == 0)
{
lean_object* x_178; uint8_t x_179; 
x_178 = lean_ctor_get(x_177, 0);
lean_inc(x_178);
x_179 = lean_unbox(x_178);
lean_dec(x_178);
if (x_179 == 0)
{
lean_object* x_180; lean_object* x_181; uint8_t x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_180 = lean_ctor_get(x_177, 1);
lean_inc(x_180);
if (lean_is_exclusive(x_177)) {
 lean_ctor_release(x_177, 0);
 lean_ctor_release(x_177, 1);
 x_181 = x_177;
} else {
 lean_dec_ref(x_177);
 x_181 = lean_box(0);
}
x_182 = 0;
x_183 = lean_box(x_182);
if (lean_is_scalar(x_148)) {
 x_184 = lean_alloc_ctor(0, 2, 0);
} else {
 x_184 = x_148;
}
lean_ctor_set(x_184, 0, x_146);
lean_ctor_set(x_184, 1, x_183);
x_185 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_185, 0, x_143);
lean_ctor_set(x_185, 1, x_184);
if (lean_is_scalar(x_181)) {
 x_186 = lean_alloc_ctor(0, 2, 0);
} else {
 x_186 = x_181;
}
lean_ctor_set(x_186, 0, x_185);
lean_ctor_set(x_186, 1, x_180);
return x_186;
}
else
{
lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; uint8_t x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; lean_object* x_200; 
x_187 = lean_ctor_get(x_177, 1);
lean_inc(x_187);
lean_dec(x_177);
x_188 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_143, x_3, x_4, x_5, x_6, x_187);
x_189 = lean_ctor_get(x_188, 0);
lean_inc(x_189);
x_190 = lean_ctor_get(x_188, 1);
lean_inc(x_190);
if (lean_is_exclusive(x_188)) {
 lean_ctor_release(x_188, 0);
 lean_ctor_release(x_188, 1);
 x_191 = x_188;
} else {
 lean_dec_ref(x_188);
 x_191 = lean_box(0);
}
x_192 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_146, x_3, x_4, x_5, x_6, x_190);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_193 = lean_ctor_get(x_192, 0);
lean_inc(x_193);
x_194 = lean_ctor_get(x_192, 1);
lean_inc(x_194);
if (lean_is_exclusive(x_192)) {
 lean_ctor_release(x_192, 0);
 lean_ctor_release(x_192, 1);
 x_195 = x_192;
} else {
 lean_dec_ref(x_192);
 x_195 = lean_box(0);
}
x_196 = 1;
x_197 = lean_box(x_196);
if (lean_is_scalar(x_191)) {
 x_198 = lean_alloc_ctor(0, 2, 0);
} else {
 x_198 = x_191;
}
lean_ctor_set(x_198, 0, x_193);
lean_ctor_set(x_198, 1, x_197);
if (lean_is_scalar(x_148)) {
 x_199 = lean_alloc_ctor(0, 2, 0);
} else {
 x_199 = x_148;
}
lean_ctor_set(x_199, 0, x_189);
lean_ctor_set(x_199, 1, x_198);
if (lean_is_scalar(x_195)) {
 x_200 = lean_alloc_ctor(0, 2, 0);
} else {
 x_200 = x_195;
}
lean_ctor_set(x_200, 0, x_199);
lean_ctor_set(x_200, 1, x_194);
return x_200;
}
}
else
{
lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; 
lean_dec(x_148);
lean_dec(x_146);
lean_dec(x_143);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_201 = lean_ctor_get(x_177, 0);
lean_inc(x_201);
x_202 = lean_ctor_get(x_177, 1);
lean_inc(x_202);
if (lean_is_exclusive(x_177)) {
 lean_ctor_release(x_177, 0);
 lean_ctor_release(x_177, 1);
 x_203 = x_177;
} else {
 lean_dec_ref(x_177);
 x_203 = lean_box(0);
}
if (lean_is_scalar(x_203)) {
 x_204 = lean_alloc_ctor(1, 2, 0);
} else {
 x_204 = x_203;
}
lean_ctor_set(x_204, 0, x_201);
lean_ctor_set(x_204, 1, x_202);
return x_204;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Eq", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__3;
x_3 = l_Lean_Expr_const___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = 0;
x_10 = lean_box(0);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_4);
x_15 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; uint8_t x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; uint8_t x_44; lean_object* x_45; lean_object* x_46; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4;
x_20 = l_Lean_Expr_app___override(x_19, x_2);
lean_inc(x_13);
x_21 = l_Lean_Expr_app___override(x_20, x_13);
lean_inc(x_17);
x_22 = l_Lean_Expr_app___override(x_21, x_17);
x_23 = lean_ctor_get(x_4, 0);
lean_inc(x_23);
x_24 = lean_ctor_get_uint8(x_23, 0);
x_25 = lean_ctor_get_uint8(x_23, 1);
x_26 = lean_ctor_get_uint8(x_23, 2);
x_27 = lean_ctor_get_uint8(x_23, 3);
x_28 = lean_ctor_get_uint8(x_23, 4);
x_29 = lean_ctor_get_uint8(x_23, 5);
x_30 = lean_ctor_get_uint8(x_23, 6);
x_31 = lean_ctor_get_uint8(x_23, 7);
x_32 = lean_ctor_get_uint8(x_23, 8);
x_33 = lean_ctor_get_uint8(x_23, 10);
x_34 = lean_ctor_get_uint8(x_23, 11);
x_35 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_36 = 2;
x_37 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_37, 0, x_24);
lean_ctor_set_uint8(x_37, 1, x_25);
lean_ctor_set_uint8(x_37, 2, x_26);
lean_ctor_set_uint8(x_37, 3, x_27);
lean_ctor_set_uint8(x_37, 4, x_28);
lean_ctor_set_uint8(x_37, 5, x_29);
lean_ctor_set_uint8(x_37, 6, x_30);
lean_ctor_set_uint8(x_37, 7, x_31);
lean_ctor_set_uint8(x_37, 8, x_32);
lean_ctor_set_uint8(x_37, 9, x_36);
lean_ctor_set_uint8(x_37, 10, x_33);
lean_ctor_set_uint8(x_37, 11, x_34);
lean_ctor_set_uint8(x_37, 12, x_35);
x_38 = lean_ctor_get(x_4, 1);
lean_inc(x_38);
x_39 = lean_ctor_get(x_4, 2);
lean_inc(x_39);
x_40 = lean_ctor_get(x_4, 3);
lean_inc(x_40);
x_41 = lean_ctor_get(x_4, 4);
lean_inc(x_41);
x_42 = lean_ctor_get(x_4, 5);
lean_inc(x_42);
x_43 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_44 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_45 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_45, 0, x_37);
lean_ctor_set(x_45, 1, x_38);
lean_ctor_set(x_45, 2, x_39);
lean_ctor_set(x_45, 3, x_40);
lean_ctor_set(x_45, 4, x_41);
lean_ctor_set(x_45, 5, x_42);
lean_ctor_set_uint8(x_45, sizeof(void*)*6, x_43);
lean_ctor_set_uint8(x_45, sizeof(void*)*6 + 1, x_44);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_46 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_45, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; uint8_t x_48; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_unbox(x_47);
lean_dec(x_47);
if (x_48 == 0)
{
uint8_t x_49; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_49 = !lean_is_exclusive(x_46);
if (x_49 == 0)
{
lean_object* x_50; uint8_t x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_46, 0);
lean_dec(x_50);
x_51 = 0;
x_52 = lean_box(x_51);
lean_ctor_set(x_15, 1, x_52);
lean_ctor_set(x_11, 1, x_15);
lean_ctor_set(x_46, 0, x_11);
return x_46;
}
else
{
lean_object* x_53; uint8_t x_54; lean_object* x_55; lean_object* x_56; 
x_53 = lean_ctor_get(x_46, 1);
lean_inc(x_53);
lean_dec(x_46);
x_54 = 0;
x_55 = lean_box(x_54);
lean_ctor_set(x_15, 1, x_55);
lean_ctor_set(x_11, 1, x_15);
x_56 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_56, 0, x_11);
lean_ctor_set(x_56, 1, x_53);
return x_56;
}
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; 
lean_free_object(x_11);
x_57 = lean_ctor_get(x_46, 1);
lean_inc(x_57);
lean_dec(x_46);
x_58 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_57);
x_59 = !lean_is_exclusive(x_58);
if (x_59 == 0)
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; uint8_t x_63; 
x_60 = lean_ctor_get(x_58, 0);
x_61 = lean_ctor_get(x_58, 1);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_61);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_63 = !lean_is_exclusive(x_62);
if (x_63 == 0)
{
lean_object* x_64; uint8_t x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_62, 0);
x_65 = 1;
x_66 = lean_box(x_65);
lean_ctor_set(x_58, 1, x_66);
lean_ctor_set(x_58, 0, x_64);
lean_ctor_set(x_15, 1, x_58);
lean_ctor_set(x_15, 0, x_60);
lean_ctor_set(x_62, 0, x_15);
return x_62;
}
else
{
lean_object* x_67; lean_object* x_68; uint8_t x_69; lean_object* x_70; lean_object* x_71; 
x_67 = lean_ctor_get(x_62, 0);
x_68 = lean_ctor_get(x_62, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_62);
x_69 = 1;
x_70 = lean_box(x_69);
lean_ctor_set(x_58, 1, x_70);
lean_ctor_set(x_58, 0, x_67);
lean_ctor_set(x_15, 1, x_58);
lean_ctor_set(x_15, 0, x_60);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_15);
lean_ctor_set(x_71, 1, x_68);
return x_71;
}
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; uint8_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_72 = lean_ctor_get(x_58, 0);
x_73 = lean_ctor_get(x_58, 1);
lean_inc(x_73);
lean_inc(x_72);
lean_dec(x_58);
x_74 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_73);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_77 = x_74;
} else {
 lean_dec_ref(x_74);
 x_77 = lean_box(0);
}
x_78 = 1;
x_79 = lean_box(x_78);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_75);
lean_ctor_set(x_80, 1, x_79);
lean_ctor_set(x_15, 1, x_80);
lean_ctor_set(x_15, 0, x_72);
if (lean_is_scalar(x_77)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_77;
}
lean_ctor_set(x_81, 0, x_15);
lean_ctor_set(x_81, 1, x_76);
return x_81;
}
}
}
else
{
uint8_t x_82; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_82 = !lean_is_exclusive(x_46);
if (x_82 == 0)
{
return x_46;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_46, 0);
x_84 = lean_ctor_get(x_46, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_46);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; uint8_t x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; uint8_t x_112; uint8_t x_113; lean_object* x_114; lean_object* x_115; 
x_86 = lean_ctor_get(x_15, 0);
x_87 = lean_ctor_get(x_15, 1);
lean_inc(x_87);
lean_inc(x_86);
lean_dec(x_15);
x_88 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4;
x_89 = l_Lean_Expr_app___override(x_88, x_2);
lean_inc(x_13);
x_90 = l_Lean_Expr_app___override(x_89, x_13);
lean_inc(x_86);
x_91 = l_Lean_Expr_app___override(x_90, x_86);
x_92 = lean_ctor_get(x_4, 0);
lean_inc(x_92);
x_93 = lean_ctor_get_uint8(x_92, 0);
x_94 = lean_ctor_get_uint8(x_92, 1);
x_95 = lean_ctor_get_uint8(x_92, 2);
x_96 = lean_ctor_get_uint8(x_92, 3);
x_97 = lean_ctor_get_uint8(x_92, 4);
x_98 = lean_ctor_get_uint8(x_92, 5);
x_99 = lean_ctor_get_uint8(x_92, 6);
x_100 = lean_ctor_get_uint8(x_92, 7);
x_101 = lean_ctor_get_uint8(x_92, 8);
x_102 = lean_ctor_get_uint8(x_92, 10);
x_103 = lean_ctor_get_uint8(x_92, 11);
x_104 = lean_ctor_get_uint8(x_92, 12);
lean_dec(x_92);
x_105 = 2;
x_106 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_106, 0, x_93);
lean_ctor_set_uint8(x_106, 1, x_94);
lean_ctor_set_uint8(x_106, 2, x_95);
lean_ctor_set_uint8(x_106, 3, x_96);
lean_ctor_set_uint8(x_106, 4, x_97);
lean_ctor_set_uint8(x_106, 5, x_98);
lean_ctor_set_uint8(x_106, 6, x_99);
lean_ctor_set_uint8(x_106, 7, x_100);
lean_ctor_set_uint8(x_106, 8, x_101);
lean_ctor_set_uint8(x_106, 9, x_105);
lean_ctor_set_uint8(x_106, 10, x_102);
lean_ctor_set_uint8(x_106, 11, x_103);
lean_ctor_set_uint8(x_106, 12, x_104);
x_107 = lean_ctor_get(x_4, 1);
lean_inc(x_107);
x_108 = lean_ctor_get(x_4, 2);
lean_inc(x_108);
x_109 = lean_ctor_get(x_4, 3);
lean_inc(x_109);
x_110 = lean_ctor_get(x_4, 4);
lean_inc(x_110);
x_111 = lean_ctor_get(x_4, 5);
lean_inc(x_111);
x_112 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_113 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_114 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_114, 0, x_106);
lean_ctor_set(x_114, 1, x_107);
lean_ctor_set(x_114, 2, x_108);
lean_ctor_set(x_114, 3, x_109);
lean_ctor_set(x_114, 4, x_110);
lean_ctor_set(x_114, 5, x_111);
lean_ctor_set_uint8(x_114, sizeof(void*)*6, x_112);
lean_ctor_set_uint8(x_114, sizeof(void*)*6 + 1, x_113);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_115 = l_Lean_Meta_isExprDefEq(x_91, x_3, x_114, x_5, x_6, x_7, x_87);
if (lean_obj_tag(x_115) == 0)
{
lean_object* x_116; uint8_t x_117; 
x_116 = lean_ctor_get(x_115, 0);
lean_inc(x_116);
x_117 = lean_unbox(x_116);
lean_dec(x_116);
if (x_117 == 0)
{
lean_object* x_118; lean_object* x_119; uint8_t x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_118 = lean_ctor_get(x_115, 1);
lean_inc(x_118);
if (lean_is_exclusive(x_115)) {
 lean_ctor_release(x_115, 0);
 lean_ctor_release(x_115, 1);
 x_119 = x_115;
} else {
 lean_dec_ref(x_115);
 x_119 = lean_box(0);
}
x_120 = 0;
x_121 = lean_box(x_120);
x_122 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_122, 0, x_86);
lean_ctor_set(x_122, 1, x_121);
lean_ctor_set(x_11, 1, x_122);
if (lean_is_scalar(x_119)) {
 x_123 = lean_alloc_ctor(0, 2, 0);
} else {
 x_123 = x_119;
}
lean_ctor_set(x_123, 0, x_11);
lean_ctor_set(x_123, 1, x_118);
return x_123;
}
else
{
lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; uint8_t x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; 
lean_free_object(x_11);
x_124 = lean_ctor_get(x_115, 1);
lean_inc(x_124);
lean_dec(x_115);
x_125 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_124);
x_126 = lean_ctor_get(x_125, 0);
lean_inc(x_126);
x_127 = lean_ctor_get(x_125, 1);
lean_inc(x_127);
if (lean_is_exclusive(x_125)) {
 lean_ctor_release(x_125, 0);
 lean_ctor_release(x_125, 1);
 x_128 = x_125;
} else {
 lean_dec_ref(x_125);
 x_128 = lean_box(0);
}
x_129 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_86, x_4, x_5, x_6, x_7, x_127);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_130 = lean_ctor_get(x_129, 0);
lean_inc(x_130);
x_131 = lean_ctor_get(x_129, 1);
lean_inc(x_131);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_132 = x_129;
} else {
 lean_dec_ref(x_129);
 x_132 = lean_box(0);
}
x_133 = 1;
x_134 = lean_box(x_133);
if (lean_is_scalar(x_128)) {
 x_135 = lean_alloc_ctor(0, 2, 0);
} else {
 x_135 = x_128;
}
lean_ctor_set(x_135, 0, x_130);
lean_ctor_set(x_135, 1, x_134);
x_136 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_136, 0, x_126);
lean_ctor_set(x_136, 1, x_135);
if (lean_is_scalar(x_132)) {
 x_137 = lean_alloc_ctor(0, 2, 0);
} else {
 x_137 = x_132;
}
lean_ctor_set(x_137, 0, x_136);
lean_ctor_set(x_137, 1, x_131);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; 
lean_dec(x_86);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_138 = lean_ctor_get(x_115, 0);
lean_inc(x_138);
x_139 = lean_ctor_get(x_115, 1);
lean_inc(x_139);
if (lean_is_exclusive(x_115)) {
 lean_ctor_release(x_115, 0);
 lean_ctor_release(x_115, 1);
 x_140 = x_115;
} else {
 lean_dec_ref(x_115);
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
lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; uint8_t x_153; uint8_t x_154; uint8_t x_155; uint8_t x_156; uint8_t x_157; uint8_t x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; uint8_t x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; uint8_t x_172; uint8_t x_173; lean_object* x_174; lean_object* x_175; 
x_142 = lean_ctor_get(x_11, 0);
x_143 = lean_ctor_get(x_11, 1);
lean_inc(x_143);
lean_inc(x_142);
lean_dec(x_11);
lean_inc(x_4);
x_144 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_143);
x_145 = lean_ctor_get(x_144, 0);
lean_inc(x_145);
x_146 = lean_ctor_get(x_144, 1);
lean_inc(x_146);
if (lean_is_exclusive(x_144)) {
 lean_ctor_release(x_144, 0);
 lean_ctor_release(x_144, 1);
 x_147 = x_144;
} else {
 lean_dec_ref(x_144);
 x_147 = lean_box(0);
}
x_148 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4;
x_149 = l_Lean_Expr_app___override(x_148, x_2);
lean_inc(x_142);
x_150 = l_Lean_Expr_app___override(x_149, x_142);
lean_inc(x_145);
x_151 = l_Lean_Expr_app___override(x_150, x_145);
x_152 = lean_ctor_get(x_4, 0);
lean_inc(x_152);
x_153 = lean_ctor_get_uint8(x_152, 0);
x_154 = lean_ctor_get_uint8(x_152, 1);
x_155 = lean_ctor_get_uint8(x_152, 2);
x_156 = lean_ctor_get_uint8(x_152, 3);
x_157 = lean_ctor_get_uint8(x_152, 4);
x_158 = lean_ctor_get_uint8(x_152, 5);
x_159 = lean_ctor_get_uint8(x_152, 6);
x_160 = lean_ctor_get_uint8(x_152, 7);
x_161 = lean_ctor_get_uint8(x_152, 8);
x_162 = lean_ctor_get_uint8(x_152, 10);
x_163 = lean_ctor_get_uint8(x_152, 11);
x_164 = lean_ctor_get_uint8(x_152, 12);
lean_dec(x_152);
x_165 = 2;
x_166 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_166, 0, x_153);
lean_ctor_set_uint8(x_166, 1, x_154);
lean_ctor_set_uint8(x_166, 2, x_155);
lean_ctor_set_uint8(x_166, 3, x_156);
lean_ctor_set_uint8(x_166, 4, x_157);
lean_ctor_set_uint8(x_166, 5, x_158);
lean_ctor_set_uint8(x_166, 6, x_159);
lean_ctor_set_uint8(x_166, 7, x_160);
lean_ctor_set_uint8(x_166, 8, x_161);
lean_ctor_set_uint8(x_166, 9, x_165);
lean_ctor_set_uint8(x_166, 10, x_162);
lean_ctor_set_uint8(x_166, 11, x_163);
lean_ctor_set_uint8(x_166, 12, x_164);
x_167 = lean_ctor_get(x_4, 1);
lean_inc(x_167);
x_168 = lean_ctor_get(x_4, 2);
lean_inc(x_168);
x_169 = lean_ctor_get(x_4, 3);
lean_inc(x_169);
x_170 = lean_ctor_get(x_4, 4);
lean_inc(x_170);
x_171 = lean_ctor_get(x_4, 5);
lean_inc(x_171);
x_172 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_173 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_174 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_174, 0, x_166);
lean_ctor_set(x_174, 1, x_167);
lean_ctor_set(x_174, 2, x_168);
lean_ctor_set(x_174, 3, x_169);
lean_ctor_set(x_174, 4, x_170);
lean_ctor_set(x_174, 5, x_171);
lean_ctor_set_uint8(x_174, sizeof(void*)*6, x_172);
lean_ctor_set_uint8(x_174, sizeof(void*)*6 + 1, x_173);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_175 = l_Lean_Meta_isExprDefEq(x_151, x_3, x_174, x_5, x_6, x_7, x_146);
if (lean_obj_tag(x_175) == 0)
{
lean_object* x_176; uint8_t x_177; 
x_176 = lean_ctor_get(x_175, 0);
lean_inc(x_176);
x_177 = lean_unbox(x_176);
lean_dec(x_176);
if (x_177 == 0)
{
lean_object* x_178; lean_object* x_179; uint8_t x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_178 = lean_ctor_get(x_175, 1);
lean_inc(x_178);
if (lean_is_exclusive(x_175)) {
 lean_ctor_release(x_175, 0);
 lean_ctor_release(x_175, 1);
 x_179 = x_175;
} else {
 lean_dec_ref(x_175);
 x_179 = lean_box(0);
}
x_180 = 0;
x_181 = lean_box(x_180);
if (lean_is_scalar(x_147)) {
 x_182 = lean_alloc_ctor(0, 2, 0);
} else {
 x_182 = x_147;
}
lean_ctor_set(x_182, 0, x_145);
lean_ctor_set(x_182, 1, x_181);
x_183 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_183, 0, x_142);
lean_ctor_set(x_183, 1, x_182);
if (lean_is_scalar(x_179)) {
 x_184 = lean_alloc_ctor(0, 2, 0);
} else {
 x_184 = x_179;
}
lean_ctor_set(x_184, 0, x_183);
lean_ctor_set(x_184, 1, x_178);
return x_184;
}
else
{
lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; uint8_t x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; 
x_185 = lean_ctor_get(x_175, 1);
lean_inc(x_185);
lean_dec(x_175);
x_186 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_142, x_4, x_5, x_6, x_7, x_185);
x_187 = lean_ctor_get(x_186, 0);
lean_inc(x_187);
x_188 = lean_ctor_get(x_186, 1);
lean_inc(x_188);
if (lean_is_exclusive(x_186)) {
 lean_ctor_release(x_186, 0);
 lean_ctor_release(x_186, 1);
 x_189 = x_186;
} else {
 lean_dec_ref(x_186);
 x_189 = lean_box(0);
}
x_190 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_145, x_4, x_5, x_6, x_7, x_188);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_191 = lean_ctor_get(x_190, 0);
lean_inc(x_191);
x_192 = lean_ctor_get(x_190, 1);
lean_inc(x_192);
if (lean_is_exclusive(x_190)) {
 lean_ctor_release(x_190, 0);
 lean_ctor_release(x_190, 1);
 x_193 = x_190;
} else {
 lean_dec_ref(x_190);
 x_193 = lean_box(0);
}
x_194 = 1;
x_195 = lean_box(x_194);
if (lean_is_scalar(x_189)) {
 x_196 = lean_alloc_ctor(0, 2, 0);
} else {
 x_196 = x_189;
}
lean_ctor_set(x_196, 0, x_191);
lean_ctor_set(x_196, 1, x_195);
if (lean_is_scalar(x_147)) {
 x_197 = lean_alloc_ctor(0, 2, 0);
} else {
 x_197 = x_147;
}
lean_ctor_set(x_197, 0, x_187);
lean_ctor_set(x_197, 1, x_196);
if (lean_is_scalar(x_193)) {
 x_198 = lean_alloc_ctor(0, 2, 0);
} else {
 x_198 = x_193;
}
lean_ctor_set(x_198, 0, x_197);
lean_ctor_set(x_198, 1, x_192);
return x_198;
}
}
else
{
lean_object* x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; 
lean_dec(x_147);
lean_dec(x_145);
lean_dec(x_142);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_199 = lean_ctor_get(x_175, 0);
lean_inc(x_199);
x_200 = lean_ctor_get(x_175, 1);
lean_inc(x_200);
if (lean_is_exclusive(x_175)) {
 lean_ctor_release(x_175, 0);
 lean_ctor_release(x_175, 1);
 x_201 = x_175;
} else {
 lean_dec_ref(x_175);
 x_201 = lean_box(0);
}
if (lean_is_scalar(x_201)) {
 x_202 = lean_alloc_ctor(1, 2, 0);
} else {
 x_202 = x_201;
}
lean_ctor_set(x_202, 0, x_199);
lean_ctor_set(x_202, 1, x_200);
return x_202;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4;
x_3 = l_Lean_Expr_const___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = 0;
x_10 = lean_box(0);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_4);
x_15 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; uint8_t x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; uint8_t x_37; uint8_t x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; uint8_t x_46; lean_object* x_47; lean_object* x_48; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1;
x_20 = l_Lean_Expr_app___override(x_19, x_2);
lean_inc(x_13);
x_21 = l_Lean_Expr_app___override(x_20, x_13);
lean_inc(x_17);
x_22 = l_Lean_Expr_app___override(x_21, x_17);
x_23 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_24 = l_Lean_Expr_app___override(x_23, x_22);
x_25 = lean_ctor_get(x_4, 0);
lean_inc(x_25);
x_26 = lean_ctor_get_uint8(x_25, 0);
x_27 = lean_ctor_get_uint8(x_25, 1);
x_28 = lean_ctor_get_uint8(x_25, 2);
x_29 = lean_ctor_get_uint8(x_25, 3);
x_30 = lean_ctor_get_uint8(x_25, 4);
x_31 = lean_ctor_get_uint8(x_25, 5);
x_32 = lean_ctor_get_uint8(x_25, 6);
x_33 = lean_ctor_get_uint8(x_25, 7);
x_34 = lean_ctor_get_uint8(x_25, 8);
x_35 = lean_ctor_get_uint8(x_25, 10);
x_36 = lean_ctor_get_uint8(x_25, 11);
x_37 = lean_ctor_get_uint8(x_25, 12);
lean_dec(x_25);
x_38 = 2;
x_39 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_39, 0, x_26);
lean_ctor_set_uint8(x_39, 1, x_27);
lean_ctor_set_uint8(x_39, 2, x_28);
lean_ctor_set_uint8(x_39, 3, x_29);
lean_ctor_set_uint8(x_39, 4, x_30);
lean_ctor_set_uint8(x_39, 5, x_31);
lean_ctor_set_uint8(x_39, 6, x_32);
lean_ctor_set_uint8(x_39, 7, x_33);
lean_ctor_set_uint8(x_39, 8, x_34);
lean_ctor_set_uint8(x_39, 9, x_38);
lean_ctor_set_uint8(x_39, 10, x_35);
lean_ctor_set_uint8(x_39, 11, x_36);
lean_ctor_set_uint8(x_39, 12, x_37);
x_40 = lean_ctor_get(x_4, 1);
lean_inc(x_40);
x_41 = lean_ctor_get(x_4, 2);
lean_inc(x_41);
x_42 = lean_ctor_get(x_4, 3);
lean_inc(x_42);
x_43 = lean_ctor_get(x_4, 4);
lean_inc(x_43);
x_44 = lean_ctor_get(x_4, 5);
lean_inc(x_44);
x_45 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_46 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_47 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_47, 0, x_39);
lean_ctor_set(x_47, 1, x_40);
lean_ctor_set(x_47, 2, x_41);
lean_ctor_set(x_47, 3, x_42);
lean_ctor_set(x_47, 4, x_43);
lean_ctor_set(x_47, 5, x_44);
lean_ctor_set_uint8(x_47, sizeof(void*)*6, x_45);
lean_ctor_set_uint8(x_47, sizeof(void*)*6 + 1, x_46);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_48 = l_Lean_Meta_isExprDefEq(x_24, x_3, x_47, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; uint8_t x_50; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_unbox(x_49);
lean_dec(x_49);
if (x_50 == 0)
{
uint8_t x_51; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_51 = !lean_is_exclusive(x_48);
if (x_51 == 0)
{
lean_object* x_52; uint8_t x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_48, 0);
lean_dec(x_52);
x_53 = 0;
x_54 = lean_box(x_53);
lean_ctor_set(x_15, 1, x_54);
lean_ctor_set(x_11, 1, x_15);
lean_ctor_set(x_48, 0, x_11);
return x_48;
}
else
{
lean_object* x_55; uint8_t x_56; lean_object* x_57; lean_object* x_58; 
x_55 = lean_ctor_get(x_48, 1);
lean_inc(x_55);
lean_dec(x_48);
x_56 = 0;
x_57 = lean_box(x_56);
lean_ctor_set(x_15, 1, x_57);
lean_ctor_set(x_11, 1, x_15);
x_58 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_58, 0, x_11);
lean_ctor_set(x_58, 1, x_55);
return x_58;
}
}
else
{
lean_object* x_59; lean_object* x_60; uint8_t x_61; 
lean_free_object(x_11);
x_59 = lean_ctor_get(x_48, 1);
lean_inc(x_59);
lean_dec(x_48);
x_60 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_59);
x_61 = !lean_is_exclusive(x_60);
if (x_61 == 0)
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; uint8_t x_65; 
x_62 = lean_ctor_get(x_60, 0);
x_63 = lean_ctor_get(x_60, 1);
x_64 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_63);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_65 = !lean_is_exclusive(x_64);
if (x_65 == 0)
{
lean_object* x_66; uint8_t x_67; lean_object* x_68; 
x_66 = lean_ctor_get(x_64, 0);
x_67 = 1;
x_68 = lean_box(x_67);
lean_ctor_set(x_60, 1, x_68);
lean_ctor_set(x_60, 0, x_66);
lean_ctor_set(x_15, 1, x_60);
lean_ctor_set(x_15, 0, x_62);
lean_ctor_set(x_64, 0, x_15);
return x_64;
}
else
{
lean_object* x_69; lean_object* x_70; uint8_t x_71; lean_object* x_72; lean_object* x_73; 
x_69 = lean_ctor_get(x_64, 0);
x_70 = lean_ctor_get(x_64, 1);
lean_inc(x_70);
lean_inc(x_69);
lean_dec(x_64);
x_71 = 1;
x_72 = lean_box(x_71);
lean_ctor_set(x_60, 1, x_72);
lean_ctor_set(x_60, 0, x_69);
lean_ctor_set(x_15, 1, x_60);
lean_ctor_set(x_15, 0, x_62);
x_73 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_73, 0, x_15);
lean_ctor_set(x_73, 1, x_70);
return x_73;
}
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; uint8_t x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_74 = lean_ctor_get(x_60, 0);
x_75 = lean_ctor_get(x_60, 1);
lean_inc(x_75);
lean_inc(x_74);
lean_dec(x_60);
x_76 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_75);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_77 = lean_ctor_get(x_76, 0);
lean_inc(x_77);
x_78 = lean_ctor_get(x_76, 1);
lean_inc(x_78);
if (lean_is_exclusive(x_76)) {
 lean_ctor_release(x_76, 0);
 lean_ctor_release(x_76, 1);
 x_79 = x_76;
} else {
 lean_dec_ref(x_76);
 x_79 = lean_box(0);
}
x_80 = 1;
x_81 = lean_box(x_80);
x_82 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_82, 0, x_77);
lean_ctor_set(x_82, 1, x_81);
lean_ctor_set(x_15, 1, x_82);
lean_ctor_set(x_15, 0, x_74);
if (lean_is_scalar(x_79)) {
 x_83 = lean_alloc_ctor(0, 2, 0);
} else {
 x_83 = x_79;
}
lean_ctor_set(x_83, 0, x_15);
lean_ctor_set(x_83, 1, x_78);
return x_83;
}
}
}
else
{
uint8_t x_84; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_84 = !lean_is_exclusive(x_48);
if (x_84 == 0)
{
return x_48;
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_85 = lean_ctor_get(x_48, 0);
x_86 = lean_ctor_get(x_48, 1);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_48);
x_87 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_87, 0, x_85);
lean_ctor_set(x_87, 1, x_86);
return x_87;
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; uint8_t x_106; uint8_t x_107; uint8_t x_108; uint8_t x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; uint8_t x_116; uint8_t x_117; lean_object* x_118; lean_object* x_119; 
x_88 = lean_ctor_get(x_15, 0);
x_89 = lean_ctor_get(x_15, 1);
lean_inc(x_89);
lean_inc(x_88);
lean_dec(x_15);
x_90 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1;
x_91 = l_Lean_Expr_app___override(x_90, x_2);
lean_inc(x_13);
x_92 = l_Lean_Expr_app___override(x_91, x_13);
lean_inc(x_88);
x_93 = l_Lean_Expr_app___override(x_92, x_88);
x_94 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_95 = l_Lean_Expr_app___override(x_94, x_93);
x_96 = lean_ctor_get(x_4, 0);
lean_inc(x_96);
x_97 = lean_ctor_get_uint8(x_96, 0);
x_98 = lean_ctor_get_uint8(x_96, 1);
x_99 = lean_ctor_get_uint8(x_96, 2);
x_100 = lean_ctor_get_uint8(x_96, 3);
x_101 = lean_ctor_get_uint8(x_96, 4);
x_102 = lean_ctor_get_uint8(x_96, 5);
x_103 = lean_ctor_get_uint8(x_96, 6);
x_104 = lean_ctor_get_uint8(x_96, 7);
x_105 = lean_ctor_get_uint8(x_96, 8);
x_106 = lean_ctor_get_uint8(x_96, 10);
x_107 = lean_ctor_get_uint8(x_96, 11);
x_108 = lean_ctor_get_uint8(x_96, 12);
lean_dec(x_96);
x_109 = 2;
x_110 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_110, 0, x_97);
lean_ctor_set_uint8(x_110, 1, x_98);
lean_ctor_set_uint8(x_110, 2, x_99);
lean_ctor_set_uint8(x_110, 3, x_100);
lean_ctor_set_uint8(x_110, 4, x_101);
lean_ctor_set_uint8(x_110, 5, x_102);
lean_ctor_set_uint8(x_110, 6, x_103);
lean_ctor_set_uint8(x_110, 7, x_104);
lean_ctor_set_uint8(x_110, 8, x_105);
lean_ctor_set_uint8(x_110, 9, x_109);
lean_ctor_set_uint8(x_110, 10, x_106);
lean_ctor_set_uint8(x_110, 11, x_107);
lean_ctor_set_uint8(x_110, 12, x_108);
x_111 = lean_ctor_get(x_4, 1);
lean_inc(x_111);
x_112 = lean_ctor_get(x_4, 2);
lean_inc(x_112);
x_113 = lean_ctor_get(x_4, 3);
lean_inc(x_113);
x_114 = lean_ctor_get(x_4, 4);
lean_inc(x_114);
x_115 = lean_ctor_get(x_4, 5);
lean_inc(x_115);
x_116 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_117 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_118 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_118, 0, x_110);
lean_ctor_set(x_118, 1, x_111);
lean_ctor_set(x_118, 2, x_112);
lean_ctor_set(x_118, 3, x_113);
lean_ctor_set(x_118, 4, x_114);
lean_ctor_set(x_118, 5, x_115);
lean_ctor_set_uint8(x_118, sizeof(void*)*6, x_116);
lean_ctor_set_uint8(x_118, sizeof(void*)*6 + 1, x_117);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_119 = l_Lean_Meta_isExprDefEq(x_95, x_3, x_118, x_5, x_6, x_7, x_89);
if (lean_obj_tag(x_119) == 0)
{
lean_object* x_120; uint8_t x_121; 
x_120 = lean_ctor_get(x_119, 0);
lean_inc(x_120);
x_121 = lean_unbox(x_120);
lean_dec(x_120);
if (x_121 == 0)
{
lean_object* x_122; lean_object* x_123; uint8_t x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_122 = lean_ctor_get(x_119, 1);
lean_inc(x_122);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 lean_ctor_release(x_119, 1);
 x_123 = x_119;
} else {
 lean_dec_ref(x_119);
 x_123 = lean_box(0);
}
x_124 = 0;
x_125 = lean_box(x_124);
x_126 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_126, 0, x_88);
lean_ctor_set(x_126, 1, x_125);
lean_ctor_set(x_11, 1, x_126);
if (lean_is_scalar(x_123)) {
 x_127 = lean_alloc_ctor(0, 2, 0);
} else {
 x_127 = x_123;
}
lean_ctor_set(x_127, 0, x_11);
lean_ctor_set(x_127, 1, x_122);
return x_127;
}
else
{
lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; uint8_t x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; 
lean_free_object(x_11);
x_128 = lean_ctor_get(x_119, 1);
lean_inc(x_128);
lean_dec(x_119);
x_129 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_128);
x_130 = lean_ctor_get(x_129, 0);
lean_inc(x_130);
x_131 = lean_ctor_get(x_129, 1);
lean_inc(x_131);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_132 = x_129;
} else {
 lean_dec_ref(x_129);
 x_132 = lean_box(0);
}
x_133 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_88, x_4, x_5, x_6, x_7, x_131);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_134 = lean_ctor_get(x_133, 0);
lean_inc(x_134);
x_135 = lean_ctor_get(x_133, 1);
lean_inc(x_135);
if (lean_is_exclusive(x_133)) {
 lean_ctor_release(x_133, 0);
 lean_ctor_release(x_133, 1);
 x_136 = x_133;
} else {
 lean_dec_ref(x_133);
 x_136 = lean_box(0);
}
x_137 = 1;
x_138 = lean_box(x_137);
if (lean_is_scalar(x_132)) {
 x_139 = lean_alloc_ctor(0, 2, 0);
} else {
 x_139 = x_132;
}
lean_ctor_set(x_139, 0, x_134);
lean_ctor_set(x_139, 1, x_138);
x_140 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_140, 0, x_130);
lean_ctor_set(x_140, 1, x_139);
if (lean_is_scalar(x_136)) {
 x_141 = lean_alloc_ctor(0, 2, 0);
} else {
 x_141 = x_136;
}
lean_ctor_set(x_141, 0, x_140);
lean_ctor_set(x_141, 1, x_135);
return x_141;
}
}
else
{
lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; 
lean_dec(x_88);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_142 = lean_ctor_get(x_119, 0);
lean_inc(x_142);
x_143 = lean_ctor_get(x_119, 1);
lean_inc(x_143);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 lean_ctor_release(x_119, 1);
 x_144 = x_119;
} else {
 lean_dec_ref(x_119);
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
else
{
lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; uint8_t x_159; uint8_t x_160; uint8_t x_161; uint8_t x_162; uint8_t x_163; uint8_t x_164; uint8_t x_165; uint8_t x_166; uint8_t x_167; uint8_t x_168; uint8_t x_169; uint8_t x_170; uint8_t x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; uint8_t x_178; uint8_t x_179; lean_object* x_180; lean_object* x_181; 
x_146 = lean_ctor_get(x_11, 0);
x_147 = lean_ctor_get(x_11, 1);
lean_inc(x_147);
lean_inc(x_146);
lean_dec(x_11);
lean_inc(x_4);
x_148 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_147);
x_149 = lean_ctor_get(x_148, 0);
lean_inc(x_149);
x_150 = lean_ctor_get(x_148, 1);
lean_inc(x_150);
if (lean_is_exclusive(x_148)) {
 lean_ctor_release(x_148, 0);
 lean_ctor_release(x_148, 1);
 x_151 = x_148;
} else {
 lean_dec_ref(x_148);
 x_151 = lean_box(0);
}
x_152 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1;
x_153 = l_Lean_Expr_app___override(x_152, x_2);
lean_inc(x_146);
x_154 = l_Lean_Expr_app___override(x_153, x_146);
lean_inc(x_149);
x_155 = l_Lean_Expr_app___override(x_154, x_149);
x_156 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3;
x_157 = l_Lean_Expr_app___override(x_156, x_155);
x_158 = lean_ctor_get(x_4, 0);
lean_inc(x_158);
x_159 = lean_ctor_get_uint8(x_158, 0);
x_160 = lean_ctor_get_uint8(x_158, 1);
x_161 = lean_ctor_get_uint8(x_158, 2);
x_162 = lean_ctor_get_uint8(x_158, 3);
x_163 = lean_ctor_get_uint8(x_158, 4);
x_164 = lean_ctor_get_uint8(x_158, 5);
x_165 = lean_ctor_get_uint8(x_158, 6);
x_166 = lean_ctor_get_uint8(x_158, 7);
x_167 = lean_ctor_get_uint8(x_158, 8);
x_168 = lean_ctor_get_uint8(x_158, 10);
x_169 = lean_ctor_get_uint8(x_158, 11);
x_170 = lean_ctor_get_uint8(x_158, 12);
lean_dec(x_158);
x_171 = 2;
x_172 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_172, 0, x_159);
lean_ctor_set_uint8(x_172, 1, x_160);
lean_ctor_set_uint8(x_172, 2, x_161);
lean_ctor_set_uint8(x_172, 3, x_162);
lean_ctor_set_uint8(x_172, 4, x_163);
lean_ctor_set_uint8(x_172, 5, x_164);
lean_ctor_set_uint8(x_172, 6, x_165);
lean_ctor_set_uint8(x_172, 7, x_166);
lean_ctor_set_uint8(x_172, 8, x_167);
lean_ctor_set_uint8(x_172, 9, x_171);
lean_ctor_set_uint8(x_172, 10, x_168);
lean_ctor_set_uint8(x_172, 11, x_169);
lean_ctor_set_uint8(x_172, 12, x_170);
x_173 = lean_ctor_get(x_4, 1);
lean_inc(x_173);
x_174 = lean_ctor_get(x_4, 2);
lean_inc(x_174);
x_175 = lean_ctor_get(x_4, 3);
lean_inc(x_175);
x_176 = lean_ctor_get(x_4, 4);
lean_inc(x_176);
x_177 = lean_ctor_get(x_4, 5);
lean_inc(x_177);
x_178 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_179 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_180 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_180, 0, x_172);
lean_ctor_set(x_180, 1, x_173);
lean_ctor_set(x_180, 2, x_174);
lean_ctor_set(x_180, 3, x_175);
lean_ctor_set(x_180, 4, x_176);
lean_ctor_set(x_180, 5, x_177);
lean_ctor_set_uint8(x_180, sizeof(void*)*6, x_178);
lean_ctor_set_uint8(x_180, sizeof(void*)*6 + 1, x_179);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_181 = l_Lean_Meta_isExprDefEq(x_157, x_3, x_180, x_5, x_6, x_7, x_150);
if (lean_obj_tag(x_181) == 0)
{
lean_object* x_182; uint8_t x_183; 
x_182 = lean_ctor_get(x_181, 0);
lean_inc(x_182);
x_183 = lean_unbox(x_182);
lean_dec(x_182);
if (x_183 == 0)
{
lean_object* x_184; lean_object* x_185; uint8_t x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_184 = lean_ctor_get(x_181, 1);
lean_inc(x_184);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_185 = x_181;
} else {
 lean_dec_ref(x_181);
 x_185 = lean_box(0);
}
x_186 = 0;
x_187 = lean_box(x_186);
if (lean_is_scalar(x_151)) {
 x_188 = lean_alloc_ctor(0, 2, 0);
} else {
 x_188 = x_151;
}
lean_ctor_set(x_188, 0, x_149);
lean_ctor_set(x_188, 1, x_187);
x_189 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_189, 0, x_146);
lean_ctor_set(x_189, 1, x_188);
if (lean_is_scalar(x_185)) {
 x_190 = lean_alloc_ctor(0, 2, 0);
} else {
 x_190 = x_185;
}
lean_ctor_set(x_190, 0, x_189);
lean_ctor_set(x_190, 1, x_184);
return x_190;
}
else
{
lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; uint8_t x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; 
x_191 = lean_ctor_get(x_181, 1);
lean_inc(x_191);
lean_dec(x_181);
x_192 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_146, x_4, x_5, x_6, x_7, x_191);
x_193 = lean_ctor_get(x_192, 0);
lean_inc(x_193);
x_194 = lean_ctor_get(x_192, 1);
lean_inc(x_194);
if (lean_is_exclusive(x_192)) {
 lean_ctor_release(x_192, 0);
 lean_ctor_release(x_192, 1);
 x_195 = x_192;
} else {
 lean_dec_ref(x_192);
 x_195 = lean_box(0);
}
x_196 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_149, x_4, x_5, x_6, x_7, x_194);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_197 = lean_ctor_get(x_196, 0);
lean_inc(x_197);
x_198 = lean_ctor_get(x_196, 1);
lean_inc(x_198);
if (lean_is_exclusive(x_196)) {
 lean_ctor_release(x_196, 0);
 lean_ctor_release(x_196, 1);
 x_199 = x_196;
} else {
 lean_dec_ref(x_196);
 x_199 = lean_box(0);
}
x_200 = 1;
x_201 = lean_box(x_200);
if (lean_is_scalar(x_195)) {
 x_202 = lean_alloc_ctor(0, 2, 0);
} else {
 x_202 = x_195;
}
lean_ctor_set(x_202, 0, x_197);
lean_ctor_set(x_202, 1, x_201);
if (lean_is_scalar(x_151)) {
 x_203 = lean_alloc_ctor(0, 2, 0);
} else {
 x_203 = x_151;
}
lean_ctor_set(x_203, 0, x_193);
lean_ctor_set(x_203, 1, x_202);
if (lean_is_scalar(x_199)) {
 x_204 = lean_alloc_ctor(0, 2, 0);
} else {
 x_204 = x_199;
}
lean_ctor_set(x_204, 0, x_203);
lean_ctor_set(x_204, 1, x_198);
return x_204;
}
}
else
{
lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; 
lean_dec(x_151);
lean_dec(x_149);
lean_dec(x_146);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_205 = lean_ctor_get(x_181, 0);
lean_inc(x_205);
x_206 = lean_ctor_get(x_181, 1);
lean_inc(x_206);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_207 = x_181;
} else {
 lean_dec_ref(x_181);
 x_207 = lean_box(0);
}
if (lean_is_scalar(x_207)) {
 x_208 = lean_alloc_ctor(1, 2, 0);
} else {
 x_208 = x_207;
}
lean_ctor_set(x_208, 0, x_205);
lean_ctor_set(x_208, 1, x_206);
return x_208;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1);
x_10 = lean_infer_type(x_1, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Lean_LocalDecl_userName(x_2);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_14 = l_Lean_MVarId_assertAfter(x_3, x_4, x_13, x_11, x_1, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
x_18 = l_Lean_MVarId_clear(x_17, x_4, x_5, x_6, x_7, x_8, x_16);
if (lean_obj_tag(x_18) == 0)
{
uint8_t x_19; 
x_19 = !lean_is_exclusive(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_20 = lean_ctor_get(x_18, 0);
x_21 = lean_ctor_get(x_15, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_15, 2);
lean_inc(x_22);
lean_dec(x_15);
x_23 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_20);
lean_ctor_set(x_23, 2, x_22);
lean_ctor_set(x_18, 0, x_23);
return x_18;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_24 = lean_ctor_get(x_18, 0);
x_25 = lean_ctor_get(x_18, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_18);
x_26 = lean_ctor_get(x_15, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_15, 2);
lean_inc(x_27);
lean_dec(x_15);
x_28 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_24);
lean_ctor_set(x_28, 2, x_27);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_25);
return x_29;
}
}
else
{
uint8_t x_30; 
lean_dec(x_15);
x_30 = !lean_is_exclusive(x_18);
if (x_30 == 0)
{
return x_18;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_18, 0);
x_32 = lean_ctor_get(x_18, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_18);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_34 = !lean_is_exclusive(x_14);
if (x_34 == 0)
{
return x_14;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_14, 0);
x_36 = lean_ctor_get(x_14, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_14);
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
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
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
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("distribNot found nothing to work on", 35, 35);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = l_Lean_Expr_sort___override(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Decidable", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__6;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_or_of_imp", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__8;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__9;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("distribNot found nothing to work on with negation", 49, 49);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__11;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("mp", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__14;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__15;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("iff_iff_and_or_not_and_not", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__17;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__18;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__20() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_iff", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__20;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__21;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__23() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_imp_iff_and_not", 19, 19);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__24() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__23;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__25() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__24;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__26() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("of_not_not", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__27() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__26;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__27;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__29() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
x_3 = l_Lean_Expr_app___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__30() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__31() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_or", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__32() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__31;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__33() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__32;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__34() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_and_iff_or_not_not'", 23, 23);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__35() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__34;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__36() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__35;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__37() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("to_iff", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__38() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__37;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__39() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__38;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__40() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("mt", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__41() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__40;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__42() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__41;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__43() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1;
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
x_3 = l_Lean_Expr_app___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__44() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("propext", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__45() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__44;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__46() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__45;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__47() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__47;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
lean_inc(x_3);
lean_inc(x_1);
x_8 = l_Lean_FVarId_getDecl(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_393; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Lean_LocalDecl_type(x_9);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_11);
x_393 = l_Lean_Meta_isProp(x_11, x_3, x_4, x_5, x_6, x_10);
if (lean_obj_tag(x_393) == 0)
{
lean_object* x_394; uint8_t x_395; 
x_394 = lean_ctor_get(x_393, 0);
lean_inc(x_394);
x_395 = lean_unbox(x_394);
lean_dec(x_394);
if (x_395 == 0)
{
lean_object* x_396; lean_object* x_397; lean_object* x_398; uint8_t x_399; 
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_2);
lean_dec(x_1);
x_396 = lean_ctor_get(x_393, 1);
lean_inc(x_396);
lean_dec(x_393);
x_397 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48;
x_398 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_397, x_3, x_4, x_5, x_6, x_396);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_399 = !lean_is_exclusive(x_398);
if (x_399 == 0)
{
return x_398;
}
else
{
lean_object* x_400; lean_object* x_401; lean_object* x_402; 
x_400 = lean_ctor_get(x_398, 0);
x_401 = lean_ctor_get(x_398, 1);
lean_inc(x_401);
lean_inc(x_400);
lean_dec(x_398);
x_402 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_402, 0, x_400);
lean_ctor_set(x_402, 1, x_401);
return x_402;
}
}
else
{
lean_object* x_403; 
x_403 = lean_ctor_get(x_393, 1);
lean_inc(x_403);
lean_dec(x_393);
x_12 = x_11;
x_13 = x_403;
goto block_392;
}
}
else
{
uint8_t x_404; 
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_404 = !lean_is_exclusive(x_393);
if (x_404 == 0)
{
return x_393;
}
else
{
lean_object* x_405; lean_object* x_406; lean_object* x_407; 
x_405 = lean_ctor_get(x_393, 0);
x_406 = lean_ctor_get(x_393, 1);
lean_inc(x_406);
lean_inc(x_405);
lean_dec(x_393);
x_407 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_407, 0, x_405);
lean_ctor_set(x_407, 1, x_406);
return x_407;
}
}
block_392:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; 
x_14 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4;
lean_inc(x_12);
x_15 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__1), 7, 2);
lean_closure_set(x_15, 0, x_14);
lean_closure_set(x_15, 1, x_12);
lean_inc(x_12);
x_16 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2), 7, 2);
lean_closure_set(x_16, 0, x_14);
lean_closure_set(x_16, 1, x_12);
lean_inc(x_12);
x_17 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3), 7, 2);
lean_closure_set(x_17, 0, x_14);
lean_closure_set(x_17, 1, x_12);
lean_inc(x_12);
x_18 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4), 7, 2);
lean_closure_set(x_18, 0, x_14);
lean_closure_set(x_18, 1, x_12);
lean_inc(x_12);
x_19 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__5), 7, 2);
lean_closure_set(x_19, 0, x_14);
lean_closure_set(x_19, 1, x_12);
lean_inc(x_12);
x_20 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__6), 7, 2);
lean_closure_set(x_20, 0, x_14);
lean_closure_set(x_20, 1, x_12);
x_21 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
lean_inc(x_12);
x_22 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7), 8, 3);
lean_closure_set(x_22, 0, x_14);
lean_closure_set(x_22, 1, x_21);
lean_closure_set(x_22, 2, x_12);
lean_inc(x_12);
x_23 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8), 7, 2);
lean_closure_set(x_23, 0, x_14);
lean_closure_set(x_23, 1, x_12);
lean_inc(x_12);
x_24 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9), 7, 2);
lean_closure_set(x_24, 0, x_14);
lean_closure_set(x_24, 1, x_12);
lean_inc(x_12);
x_25 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10), 8, 3);
lean_closure_set(x_25, 0, x_14);
lean_closure_set(x_25, 1, x_21);
lean_closure_set(x_25, 2, x_12);
x_26 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11), 8, 3);
lean_closure_set(x_26, 0, x_14);
lean_closure_set(x_26, 1, x_21);
lean_closure_set(x_26, 2, x_12);
x_27 = 0;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_28 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_26, x_27, x_3, x_4, x_5, x_6, x_13);
if (lean_obj_tag(x_28) == 0)
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_29, 1);
lean_inc(x_30);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
x_32 = lean_unbox(x_31);
lean_dec(x_31);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
lean_dec(x_30);
lean_dec(x_29);
x_33 = lean_ctor_get(x_28, 1);
lean_inc(x_33);
lean_dec(x_28);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_34 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_25, x_27, x_3, x_4, x_5, x_6, x_33);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_35, 1);
lean_inc(x_36);
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
x_38 = lean_unbox(x_37);
lean_dec(x_37);
if (x_38 == 0)
{
lean_object* x_39; lean_object* x_40; 
lean_dec(x_36);
lean_dec(x_35);
x_39 = lean_ctor_get(x_34, 1);
lean_inc(x_39);
lean_dec(x_34);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_40 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_24, x_27, x_3, x_4, x_5, x_6, x_39);
if (lean_obj_tag(x_40) == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
x_42 = lean_ctor_get(x_41, 1);
lean_inc(x_42);
x_43 = lean_ctor_get(x_42, 1);
lean_inc(x_43);
x_44 = lean_unbox(x_43);
lean_dec(x_43);
if (x_44 == 0)
{
lean_object* x_45; lean_object* x_46; 
lean_dec(x_42);
lean_dec(x_41);
x_45 = lean_ctor_get(x_40, 1);
lean_inc(x_45);
lean_dec(x_40);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_46 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_23, x_27, x_3, x_4, x_5, x_6, x_45);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_47, 1);
lean_inc(x_48);
x_49 = lean_ctor_get(x_48, 1);
lean_inc(x_49);
x_50 = lean_unbox(x_49);
lean_dec(x_49);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
lean_dec(x_48);
lean_dec(x_47);
x_51 = lean_ctor_get(x_46, 1);
lean_inc(x_51);
lean_dec(x_46);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_52 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_22, x_27, x_3, x_4, x_5, x_6, x_51);
if (lean_obj_tag(x_52) == 0)
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; uint8_t x_56; 
x_53 = lean_ctor_get(x_52, 0);
lean_inc(x_53);
x_54 = lean_ctor_get(x_53, 1);
lean_inc(x_54);
x_55 = lean_ctor_get(x_54, 1);
lean_inc(x_55);
x_56 = lean_unbox(x_55);
lean_dec(x_55);
if (x_56 == 0)
{
lean_object* x_57; lean_object* x_58; 
lean_dec(x_54);
lean_dec(x_53);
x_57 = lean_ctor_get(x_52, 1);
lean_inc(x_57);
lean_dec(x_52);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_58 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_20, x_27, x_3, x_4, x_5, x_6, x_57);
if (lean_obj_tag(x_58) == 0)
{
lean_object* x_59; lean_object* x_60; uint8_t x_61; 
x_59 = lean_ctor_get(x_58, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
x_61 = lean_unbox(x_60);
lean_dec(x_60);
if (x_61 == 0)
{
lean_object* x_62; lean_object* x_63; 
lean_dec(x_59);
x_62 = lean_ctor_get(x_58, 1);
lean_inc(x_62);
lean_dec(x_58);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_63 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_19, x_27, x_3, x_4, x_5, x_6, x_62);
if (lean_obj_tag(x_63) == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; uint8_t x_67; 
x_64 = lean_ctor_get(x_63, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_64, 1);
lean_inc(x_65);
x_66 = lean_ctor_get(x_65, 1);
lean_inc(x_66);
x_67 = lean_unbox(x_66);
lean_dec(x_66);
if (x_67 == 0)
{
lean_object* x_68; lean_object* x_69; 
lean_dec(x_65);
lean_dec(x_64);
x_68 = lean_ctor_get(x_63, 1);
lean_inc(x_68);
lean_dec(x_63);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_69 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_18, x_27, x_3, x_4, x_5, x_6, x_68);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; uint8_t x_73; 
x_70 = lean_ctor_get(x_69, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_70, 1);
lean_inc(x_71);
x_72 = lean_ctor_get(x_71, 1);
lean_inc(x_72);
x_73 = lean_unbox(x_72);
lean_dec(x_72);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; 
lean_dec(x_71);
lean_dec(x_70);
x_74 = lean_ctor_get(x_69, 1);
lean_inc(x_74);
lean_dec(x_69);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_75 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_17, x_27, x_3, x_4, x_5, x_6, x_74);
if (lean_obj_tag(x_75) == 0)
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; uint8_t x_79; 
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_76, 1);
lean_inc(x_77);
x_78 = lean_ctor_get(x_77, 1);
lean_inc(x_78);
x_79 = lean_unbox(x_78);
lean_dec(x_78);
if (x_79 == 0)
{
lean_object* x_80; lean_object* x_81; 
lean_dec(x_77);
lean_dec(x_76);
x_80 = lean_ctor_get(x_75, 1);
lean_inc(x_80);
lean_dec(x_75);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_81 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_16, x_27, x_3, x_4, x_5, x_6, x_80);
if (lean_obj_tag(x_81) == 0)
{
lean_object* x_82; lean_object* x_83; uint8_t x_84; 
x_82 = lean_ctor_get(x_81, 0);
lean_inc(x_82);
x_83 = lean_ctor_get(x_82, 1);
lean_inc(x_83);
lean_dec(x_82);
x_84 = lean_unbox(x_83);
lean_dec(x_83);
if (x_84 == 0)
{
lean_object* x_85; lean_object* x_86; 
x_85 = lean_ctor_get(x_81, 1);
lean_inc(x_85);
lean_dec(x_81);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_86 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_15, x_27, x_3, x_4, x_5, x_6, x_85);
if (lean_obj_tag(x_86) == 0)
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; uint8_t x_90; 
x_87 = lean_ctor_get(x_86, 0);
lean_inc(x_87);
x_88 = lean_ctor_get(x_87, 1);
lean_inc(x_88);
x_89 = lean_ctor_get(x_88, 1);
lean_inc(x_89);
x_90 = lean_unbox(x_89);
lean_dec(x_89);
if (x_90 == 0)
{
lean_object* x_91; lean_object* x_92; lean_object* x_93; 
lean_dec(x_88);
lean_dec(x_87);
lean_dec(x_9);
lean_dec(x_2);
lean_dec(x_1);
x_91 = lean_ctor_get(x_86, 1);
lean_inc(x_91);
lean_dec(x_86);
x_92 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__2;
x_93 = l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1(x_92, x_3, x_4, x_5, x_6, x_91);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_93;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_94 = lean_ctor_get(x_86, 1);
lean_inc(x_94);
lean_dec(x_86);
x_95 = lean_ctor_get(x_87, 0);
lean_inc(x_95);
lean_dec(x_87);
x_96 = lean_ctor_get(x_88, 0);
lean_inc(x_96);
lean_dec(x_88);
x_97 = l_Lean_LocalDecl_toExpr(x_9);
x_98 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_95);
x_99 = l_Lean_Expr_app___override(x_98, x_95);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_100 = l_Qq_synthInstanceQ___rarg(x_99, x_3, x_4, x_5, x_6, x_94);
if (lean_obj_tag(x_100) == 0)
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; 
x_101 = lean_ctor_get(x_100, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_100, 1);
lean_inc(x_102);
lean_dec(x_100);
x_103 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__10;
x_104 = l_Lean_Expr_app___override(x_103, x_95);
x_105 = l_Lean_Expr_app___override(x_104, x_96);
x_106 = l_Lean_Expr_app___override(x_105, x_101);
x_107 = l_Lean_Expr_app___override(x_106, x_97);
x_108 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_108, 0, x_107);
lean_closure_set(x_108, 1, x_9);
lean_closure_set(x_108, 2, x_2);
lean_closure_set(x_108, 3, x_1);
x_109 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_108, x_3, x_4, x_5, x_6, x_102);
return x_109;
}
else
{
uint8_t x_110; 
lean_dec(x_97);
lean_dec(x_96);
lean_dec(x_95);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_110 = !lean_is_exclusive(x_100);
if (x_110 == 0)
{
return x_100;
}
else
{
lean_object* x_111; lean_object* x_112; lean_object* x_113; 
x_111 = lean_ctor_get(x_100, 0);
x_112 = lean_ctor_get(x_100, 1);
lean_inc(x_112);
lean_inc(x_111);
lean_dec(x_100);
x_113 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_113, 0, x_111);
lean_ctor_set(x_113, 1, x_112);
return x_113;
}
}
}
}
else
{
uint8_t x_114; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_114 = !lean_is_exclusive(x_86);
if (x_114 == 0)
{
return x_86;
}
else
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; 
x_115 = lean_ctor_get(x_86, 0);
x_116 = lean_ctor_get(x_86, 1);
lean_inc(x_116);
lean_inc(x_115);
lean_dec(x_86);
x_117 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_117, 0, x_115);
lean_ctor_set(x_117, 1, x_116);
return x_117;
}
}
}
else
{
lean_object* x_118; lean_object* x_119; lean_object* x_120; 
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_2);
lean_dec(x_1);
x_118 = lean_ctor_get(x_81, 1);
lean_inc(x_118);
lean_dec(x_81);
x_119 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__12;
x_120 = l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1(x_119, x_3, x_4, x_5, x_6, x_118);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_120;
}
}
else
{
uint8_t x_121; 
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_121 = !lean_is_exclusive(x_81);
if (x_121 == 0)
{
return x_81;
}
else
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; 
x_122 = lean_ctor_get(x_81, 0);
x_123 = lean_ctor_get(x_81, 1);
lean_inc(x_123);
lean_inc(x_122);
lean_dec(x_81);
x_124 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_124, 0, x_122);
lean_ctor_set(x_124, 1, x_123);
return x_124;
}
}
}
else
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
lean_dec(x_16);
lean_dec(x_15);
x_125 = lean_ctor_get(x_75, 1);
lean_inc(x_125);
lean_dec(x_75);
x_126 = lean_ctor_get(x_76, 0);
lean_inc(x_126);
lean_dec(x_76);
x_127 = lean_ctor_get(x_77, 0);
lean_inc(x_127);
lean_dec(x_77);
x_128 = l_Lean_LocalDecl_toExpr(x_9);
x_129 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_127);
x_130 = l_Lean_Expr_app___override(x_129, x_127);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_131 = l_Qq_synthInstanceQ___rarg(x_130, x_3, x_4, x_5, x_6, x_125);
if (lean_obj_tag(x_131) == 0)
{
lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; 
x_132 = lean_ctor_get(x_131, 0);
lean_inc(x_132);
x_133 = lean_ctor_get(x_131, 1);
lean_inc(x_133);
lean_dec(x_131);
x_134 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
lean_inc(x_126);
x_135 = l_Lean_Expr_app___override(x_134, x_126);
lean_inc(x_127);
x_136 = l_Lean_Expr_app___override(x_135, x_127);
x_137 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
x_138 = l_Lean_Expr_app___override(x_137, x_136);
x_139 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13;
lean_inc(x_126);
x_140 = l_Lean_Expr_app___override(x_139, x_126);
x_141 = l_Lean_Expr_app___override(x_134, x_140);
lean_inc(x_127);
x_142 = l_Lean_Expr_app___override(x_139, x_127);
x_143 = l_Lean_Expr_app___override(x_141, x_142);
x_144 = l_Lean_Expr_app___override(x_138, x_143);
x_145 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
lean_inc(x_126);
x_146 = l_Lean_Expr_app___override(x_145, x_126);
lean_inc(x_127);
x_147 = l_Lean_Expr_app___override(x_146, x_127);
x_148 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16;
x_149 = l_Lean_Expr_app___override(x_148, x_147);
x_150 = l_Lean_Expr_app___override(x_149, x_144);
x_151 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__19;
x_152 = l_Lean_Expr_app___override(x_151, x_126);
x_153 = l_Lean_Expr_app___override(x_152, x_127);
x_154 = l_Lean_Expr_app___override(x_153, x_132);
x_155 = l_Lean_Expr_app___override(x_150, x_154);
x_156 = l_Lean_Expr_app___override(x_155, x_128);
x_157 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_157, 0, x_156);
lean_closure_set(x_157, 1, x_9);
lean_closure_set(x_157, 2, x_2);
lean_closure_set(x_157, 3, x_1);
x_158 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_157, x_3, x_4, x_5, x_6, x_133);
return x_158;
}
else
{
uint8_t x_159; 
lean_dec(x_128);
lean_dec(x_127);
lean_dec(x_126);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_159 = !lean_is_exclusive(x_131);
if (x_159 == 0)
{
return x_131;
}
else
{
lean_object* x_160; lean_object* x_161; lean_object* x_162; 
x_160 = lean_ctor_get(x_131, 0);
x_161 = lean_ctor_get(x_131, 1);
lean_inc(x_161);
lean_inc(x_160);
lean_dec(x_131);
x_162 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_162, 0, x_160);
lean_ctor_set(x_162, 1, x_161);
return x_162;
}
}
}
}
else
{
uint8_t x_163; 
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_163 = !lean_is_exclusive(x_75);
if (x_163 == 0)
{
return x_75;
}
else
{
lean_object* x_164; lean_object* x_165; lean_object* x_166; 
x_164 = lean_ctor_get(x_75, 0);
x_165 = lean_ctor_get(x_75, 1);
lean_inc(x_165);
lean_inc(x_164);
lean_dec(x_75);
x_166 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_166, 0, x_164);
lean_ctor_set(x_166, 1, x_165);
return x_166;
}
}
}
else
{
lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; 
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_167 = lean_ctor_get(x_69, 1);
lean_inc(x_167);
lean_dec(x_69);
x_168 = lean_ctor_get(x_70, 0);
lean_inc(x_168);
lean_dec(x_70);
x_169 = lean_ctor_get(x_71, 0);
lean_inc(x_169);
lean_dec(x_71);
x_170 = l_Lean_LocalDecl_toExpr(x_9);
x_171 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_169);
x_172 = l_Lean_Expr_app___override(x_171, x_169);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_173 = l_Qq_synthInstanceQ___rarg(x_172, x_3, x_4, x_5, x_6, x_167);
if (lean_obj_tag(x_173) == 0)
{
lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; 
x_174 = lean_ctor_get(x_173, 0);
lean_inc(x_174);
x_175 = lean_ctor_get(x_173, 1);
lean_inc(x_175);
lean_dec(x_173);
x_176 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13;
lean_inc(x_168);
x_177 = l_Lean_Expr_app___override(x_176, x_168);
x_178 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
x_179 = l_Lean_Expr_app___override(x_178, x_177);
lean_inc(x_169);
x_180 = l_Lean_Expr_app___override(x_179, x_169);
lean_inc(x_168);
x_181 = l_Lean_Expr_app___override(x_178, x_168);
lean_inc(x_169);
x_182 = l_Lean_Expr_app___override(x_181, x_169);
x_183 = l_Lean_Expr_app___override(x_176, x_182);
x_184 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16;
x_185 = l_Lean_Expr_app___override(x_184, x_183);
x_186 = l_Lean_Expr_app___override(x_185, x_180);
x_187 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__22;
x_188 = l_Lean_Expr_app___override(x_187, x_169);
x_189 = l_Lean_Expr_app___override(x_188, x_168);
x_190 = l_Lean_Expr_app___override(x_189, x_174);
x_191 = l_Lean_Expr_app___override(x_186, x_190);
x_192 = l_Lean_Expr_app___override(x_191, x_170);
x_193 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_193, 0, x_192);
lean_closure_set(x_193, 1, x_9);
lean_closure_set(x_193, 2, x_2);
lean_closure_set(x_193, 3, x_1);
x_194 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_193, x_3, x_4, x_5, x_6, x_175);
return x_194;
}
else
{
uint8_t x_195; 
lean_dec(x_170);
lean_dec(x_169);
lean_dec(x_168);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_195 = !lean_is_exclusive(x_173);
if (x_195 == 0)
{
return x_173;
}
else
{
lean_object* x_196; lean_object* x_197; lean_object* x_198; 
x_196 = lean_ctor_get(x_173, 0);
x_197 = lean_ctor_get(x_173, 1);
lean_inc(x_197);
lean_inc(x_196);
lean_dec(x_173);
x_198 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_198, 0, x_196);
lean_ctor_set(x_198, 1, x_197);
return x_198;
}
}
}
}
else
{
uint8_t x_199; 
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_199 = !lean_is_exclusive(x_69);
if (x_199 == 0)
{
return x_69;
}
else
{
lean_object* x_200; lean_object* x_201; lean_object* x_202; 
x_200 = lean_ctor_get(x_69, 0);
x_201 = lean_ctor_get(x_69, 1);
lean_inc(x_201);
lean_inc(x_200);
lean_dec(x_69);
x_202 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_202, 0, x_200);
lean_ctor_set(x_202, 1, x_201);
return x_202;
}
}
}
else
{
lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; 
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_203 = lean_ctor_get(x_63, 1);
lean_inc(x_203);
lean_dec(x_63);
x_204 = lean_ctor_get(x_64, 0);
lean_inc(x_204);
lean_dec(x_64);
x_205 = lean_ctor_get(x_65, 0);
lean_inc(x_205);
lean_dec(x_65);
x_206 = l_Lean_LocalDecl_toExpr(x_9);
x_207 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_204);
x_208 = l_Lean_Expr_app___override(x_207, x_204);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_209 = l_Qq_synthInstanceQ___rarg(x_208, x_3, x_4, x_5, x_6, x_203);
if (lean_obj_tag(x_209) == 0)
{
lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; uint8_t x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; lean_object* x_224; lean_object* x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; lean_object* x_231; 
x_210 = lean_ctor_get(x_209, 0);
lean_inc(x_210);
x_211 = lean_ctor_get(x_209, 1);
lean_inc(x_211);
lean_dec(x_209);
x_212 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
lean_inc(x_204);
x_213 = l_Lean_Expr_app___override(x_212, x_204);
x_214 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13;
lean_inc(x_205);
x_215 = l_Lean_Expr_app___override(x_214, x_205);
x_216 = l_Lean_Expr_app___override(x_213, x_215);
x_217 = lean_box(0);
x_218 = 0;
lean_inc(x_205);
lean_inc(x_204);
x_219 = l_Lean_Expr_forallE___override(x_217, x_204, x_205, x_218);
x_220 = l_Lean_Expr_app___override(x_214, x_219);
x_221 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16;
x_222 = l_Lean_Expr_app___override(x_221, x_220);
x_223 = l_Lean_Expr_app___override(x_222, x_216);
x_224 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__25;
x_225 = l_Lean_Expr_app___override(x_224, x_204);
x_226 = l_Lean_Expr_app___override(x_225, x_205);
x_227 = l_Lean_Expr_app___override(x_226, x_210);
x_228 = l_Lean_Expr_app___override(x_223, x_227);
x_229 = l_Lean_Expr_app___override(x_228, x_206);
x_230 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_230, 0, x_229);
lean_closure_set(x_230, 1, x_9);
lean_closure_set(x_230, 2, x_2);
lean_closure_set(x_230, 3, x_1);
x_231 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_230, x_3, x_4, x_5, x_6, x_211);
return x_231;
}
else
{
uint8_t x_232; 
lean_dec(x_206);
lean_dec(x_205);
lean_dec(x_204);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_232 = !lean_is_exclusive(x_209);
if (x_232 == 0)
{
return x_209;
}
else
{
lean_object* x_233; lean_object* x_234; lean_object* x_235; 
x_233 = lean_ctor_get(x_209, 0);
x_234 = lean_ctor_get(x_209, 1);
lean_inc(x_234);
lean_inc(x_233);
lean_dec(x_209);
x_235 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_235, 0, x_233);
lean_ctor_set(x_235, 1, x_234);
return x_235;
}
}
}
}
else
{
uint8_t x_236; 
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_236 = !lean_is_exclusive(x_63);
if (x_236 == 0)
{
return x_63;
}
else
{
lean_object* x_237; lean_object* x_238; lean_object* x_239; 
x_237 = lean_ctor_get(x_63, 0);
x_238 = lean_ctor_get(x_63, 1);
lean_inc(x_238);
lean_inc(x_237);
lean_dec(x_63);
x_239 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_239, 0, x_237);
lean_ctor_set(x_239, 1, x_238);
return x_239;
}
}
}
else
{
lean_object* x_240; lean_object* x_241; lean_object* x_242; lean_object* x_243; lean_object* x_244; lean_object* x_245; 
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_240 = lean_ctor_get(x_58, 1);
lean_inc(x_240);
lean_dec(x_58);
x_241 = lean_ctor_get(x_59, 0);
lean_inc(x_241);
lean_dec(x_59);
x_242 = l_Lean_LocalDecl_toExpr(x_9);
x_243 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_241);
x_244 = l_Lean_Expr_app___override(x_243, x_241);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_245 = l_Qq_synthInstanceQ___rarg(x_244, x_3, x_4, x_5, x_6, x_240);
if (lean_obj_tag(x_245) == 0)
{
lean_object* x_246; lean_object* x_247; lean_object* x_248; lean_object* x_249; lean_object* x_250; lean_object* x_251; lean_object* x_252; lean_object* x_253; 
x_246 = lean_ctor_get(x_245, 0);
lean_inc(x_246);
x_247 = lean_ctor_get(x_245, 1);
lean_inc(x_247);
lean_dec(x_245);
x_248 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28;
x_249 = l_Lean_Expr_app___override(x_248, x_241);
x_250 = l_Lean_Expr_app___override(x_249, x_246);
x_251 = l_Lean_Expr_app___override(x_250, x_242);
x_252 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_252, 0, x_251);
lean_closure_set(x_252, 1, x_9);
lean_closure_set(x_252, 2, x_2);
lean_closure_set(x_252, 3, x_1);
x_253 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_252, x_3, x_4, x_5, x_6, x_247);
return x_253;
}
else
{
uint8_t x_254; 
lean_dec(x_242);
lean_dec(x_241);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_254 = !lean_is_exclusive(x_245);
if (x_254 == 0)
{
return x_245;
}
else
{
lean_object* x_255; lean_object* x_256; lean_object* x_257; 
x_255 = lean_ctor_get(x_245, 0);
x_256 = lean_ctor_get(x_245, 1);
lean_inc(x_256);
lean_inc(x_255);
lean_dec(x_245);
x_257 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_257, 0, x_255);
lean_ctor_set(x_257, 1, x_256);
return x_257;
}
}
}
}
else
{
uint8_t x_258; 
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_258 = !lean_is_exclusive(x_58);
if (x_258 == 0)
{
return x_58;
}
else
{
lean_object* x_259; lean_object* x_260; lean_object* x_261; 
x_259 = lean_ctor_get(x_58, 0);
x_260 = lean_ctor_get(x_58, 1);
lean_inc(x_260);
lean_inc(x_259);
lean_dec(x_58);
x_261 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_261, 0, x_259);
lean_ctor_set(x_261, 1, x_260);
return x_261;
}
}
}
else
{
lean_object* x_262; lean_object* x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; lean_object* x_267; lean_object* x_268; lean_object* x_269; lean_object* x_270; lean_object* x_271; 
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_262 = lean_ctor_get(x_52, 1);
lean_inc(x_262);
lean_dec(x_52);
x_263 = lean_ctor_get(x_53, 0);
lean_inc(x_263);
lean_dec(x_53);
x_264 = lean_ctor_get(x_54, 0);
lean_inc(x_264);
lean_dec(x_54);
x_265 = l_Lean_LocalDecl_toExpr(x_9);
x_266 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__29;
x_267 = l_Lean_Expr_app___override(x_266, x_263);
x_268 = l_Lean_Expr_app___override(x_267, x_264);
x_269 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_268);
x_270 = l_Lean_Expr_app___override(x_269, x_268);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_271 = l_Qq_synthInstanceQ___rarg(x_270, x_3, x_4, x_5, x_6, x_262);
if (lean_obj_tag(x_271) == 0)
{
lean_object* x_272; lean_object* x_273; lean_object* x_274; lean_object* x_275; lean_object* x_276; lean_object* x_277; lean_object* x_278; lean_object* x_279; 
x_272 = lean_ctor_get(x_271, 0);
lean_inc(x_272);
x_273 = lean_ctor_get(x_271, 1);
lean_inc(x_273);
lean_dec(x_271);
x_274 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28;
x_275 = l_Lean_Expr_app___override(x_274, x_268);
x_276 = l_Lean_Expr_app___override(x_275, x_272);
x_277 = l_Lean_Expr_app___override(x_276, x_265);
x_278 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_278, 0, x_277);
lean_closure_set(x_278, 1, x_9);
lean_closure_set(x_278, 2, x_2);
lean_closure_set(x_278, 3, x_1);
x_279 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_278, x_3, x_4, x_5, x_6, x_273);
return x_279;
}
else
{
uint8_t x_280; 
lean_dec(x_268);
lean_dec(x_265);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_280 = !lean_is_exclusive(x_271);
if (x_280 == 0)
{
return x_271;
}
else
{
lean_object* x_281; lean_object* x_282; lean_object* x_283; 
x_281 = lean_ctor_get(x_271, 0);
x_282 = lean_ctor_get(x_271, 1);
lean_inc(x_282);
lean_inc(x_281);
lean_dec(x_271);
x_283 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_283, 0, x_281);
lean_ctor_set(x_283, 1, x_282);
return x_283;
}
}
}
}
else
{
uint8_t x_284; 
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_284 = !lean_is_exclusive(x_52);
if (x_284 == 0)
{
return x_52;
}
else
{
lean_object* x_285; lean_object* x_286; lean_object* x_287; 
x_285 = lean_ctor_get(x_52, 0);
x_286 = lean_ctor_get(x_52, 1);
lean_inc(x_286);
lean_inc(x_285);
lean_dec(x_52);
x_287 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_287, 0, x_285);
lean_ctor_set(x_287, 1, x_286);
return x_287;
}
}
}
else
{
lean_object* x_288; lean_object* x_289; lean_object* x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; lean_object* x_296; lean_object* x_297; lean_object* x_298; lean_object* x_299; lean_object* x_300; lean_object* x_301; lean_object* x_302; lean_object* x_303; lean_object* x_304; lean_object* x_305; lean_object* x_306; lean_object* x_307; lean_object* x_308; lean_object* x_309; lean_object* x_310; lean_object* x_311; 
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_288 = lean_ctor_get(x_46, 1);
lean_inc(x_288);
lean_dec(x_46);
x_289 = lean_ctor_get(x_47, 0);
lean_inc(x_289);
lean_dec(x_47);
x_290 = lean_ctor_get(x_48, 0);
lean_inc(x_290);
lean_dec(x_48);
x_291 = l_Lean_LocalDecl_toExpr(x_9);
x_292 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13;
lean_inc(x_289);
x_293 = l_Lean_Expr_app___override(x_292, x_289);
x_294 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__30;
x_295 = l_Lean_Expr_app___override(x_294, x_293);
lean_inc(x_290);
x_296 = l_Lean_Expr_app___override(x_292, x_290);
x_297 = l_Lean_Expr_app___override(x_295, x_296);
x_298 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
lean_inc(x_289);
x_299 = l_Lean_Expr_app___override(x_298, x_289);
lean_inc(x_290);
x_300 = l_Lean_Expr_app___override(x_299, x_290);
x_301 = l_Lean_Expr_app___override(x_292, x_300);
x_302 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16;
x_303 = l_Lean_Expr_app___override(x_302, x_301);
x_304 = l_Lean_Expr_app___override(x_303, x_297);
x_305 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__33;
x_306 = l_Lean_Expr_app___override(x_305, x_289);
x_307 = l_Lean_Expr_app___override(x_306, x_290);
x_308 = l_Lean_Expr_app___override(x_304, x_307);
x_309 = l_Lean_Expr_app___override(x_308, x_291);
x_310 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_310, 0, x_309);
lean_closure_set(x_310, 1, x_9);
lean_closure_set(x_310, 2, x_2);
lean_closure_set(x_310, 3, x_1);
x_311 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_310, x_3, x_4, x_5, x_6, x_288);
return x_311;
}
}
else
{
uint8_t x_312; 
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_312 = !lean_is_exclusive(x_46);
if (x_312 == 0)
{
return x_46;
}
else
{
lean_object* x_313; lean_object* x_314; lean_object* x_315; 
x_313 = lean_ctor_get(x_46, 0);
x_314 = lean_ctor_get(x_46, 1);
lean_inc(x_314);
lean_inc(x_313);
lean_dec(x_46);
x_315 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_315, 0, x_313);
lean_ctor_set(x_315, 1, x_314);
return x_315;
}
}
}
else
{
lean_object* x_316; lean_object* x_317; lean_object* x_318; lean_object* x_319; lean_object* x_320; lean_object* x_321; lean_object* x_322; 
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_316 = lean_ctor_get(x_40, 1);
lean_inc(x_316);
lean_dec(x_40);
x_317 = lean_ctor_get(x_41, 0);
lean_inc(x_317);
lean_dec(x_41);
x_318 = lean_ctor_get(x_42, 0);
lean_inc(x_318);
lean_dec(x_42);
x_319 = l_Lean_LocalDecl_toExpr(x_9);
x_320 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7;
lean_inc(x_318);
x_321 = l_Lean_Expr_app___override(x_320, x_318);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_322 = l_Qq_synthInstanceQ___rarg(x_321, x_3, x_4, x_5, x_6, x_316);
if (lean_obj_tag(x_322) == 0)
{
lean_object* x_323; lean_object* x_324; lean_object* x_325; lean_object* x_326; lean_object* x_327; lean_object* x_328; lean_object* x_329; lean_object* x_330; lean_object* x_331; lean_object* x_332; lean_object* x_333; lean_object* x_334; lean_object* x_335; lean_object* x_336; lean_object* x_337; lean_object* x_338; lean_object* x_339; lean_object* x_340; lean_object* x_341; lean_object* x_342; lean_object* x_343; lean_object* x_344; lean_object* x_345; 
x_323 = lean_ctor_get(x_322, 0);
lean_inc(x_323);
x_324 = lean_ctor_get(x_322, 1);
lean_inc(x_324);
lean_dec(x_322);
x_325 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13;
lean_inc(x_317);
x_326 = l_Lean_Expr_app___override(x_325, x_317);
x_327 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3;
x_328 = l_Lean_Expr_app___override(x_327, x_326);
lean_inc(x_318);
x_329 = l_Lean_Expr_app___override(x_325, x_318);
x_330 = l_Lean_Expr_app___override(x_328, x_329);
x_331 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3;
lean_inc(x_317);
x_332 = l_Lean_Expr_app___override(x_331, x_317);
lean_inc(x_318);
x_333 = l_Lean_Expr_app___override(x_332, x_318);
x_334 = l_Lean_Expr_app___override(x_325, x_333);
x_335 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16;
x_336 = l_Lean_Expr_app___override(x_335, x_334);
x_337 = l_Lean_Expr_app___override(x_336, x_330);
x_338 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__36;
x_339 = l_Lean_Expr_app___override(x_338, x_318);
x_340 = l_Lean_Expr_app___override(x_339, x_317);
x_341 = l_Lean_Expr_app___override(x_340, x_323);
x_342 = l_Lean_Expr_app___override(x_337, x_341);
x_343 = l_Lean_Expr_app___override(x_342, x_319);
x_344 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_344, 0, x_343);
lean_closure_set(x_344, 1, x_9);
lean_closure_set(x_344, 2, x_2);
lean_closure_set(x_344, 3, x_1);
x_345 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_344, x_3, x_4, x_5, x_6, x_324);
return x_345;
}
else
{
uint8_t x_346; 
lean_dec(x_319);
lean_dec(x_318);
lean_dec(x_317);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_346 = !lean_is_exclusive(x_322);
if (x_346 == 0)
{
return x_322;
}
else
{
lean_object* x_347; lean_object* x_348; lean_object* x_349; 
x_347 = lean_ctor_get(x_322, 0);
x_348 = lean_ctor_get(x_322, 1);
lean_inc(x_348);
lean_inc(x_347);
lean_dec(x_322);
x_349 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_349, 0, x_347);
lean_ctor_set(x_349, 1, x_348);
return x_349;
}
}
}
}
else
{
uint8_t x_350; 
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_350 = !lean_is_exclusive(x_40);
if (x_350 == 0)
{
return x_40;
}
else
{
lean_object* x_351; lean_object* x_352; lean_object* x_353; 
x_351 = lean_ctor_get(x_40, 0);
x_352 = lean_ctor_get(x_40, 1);
lean_inc(x_352);
lean_inc(x_351);
lean_dec(x_40);
x_353 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_353, 0, x_351);
lean_ctor_set(x_353, 1, x_352);
return x_353;
}
}
}
else
{
lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; lean_object* x_358; lean_object* x_359; lean_object* x_360; lean_object* x_361; lean_object* x_362; lean_object* x_363; 
lean_dec(x_24);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_354 = lean_ctor_get(x_34, 1);
lean_inc(x_354);
lean_dec(x_34);
x_355 = lean_ctor_get(x_35, 0);
lean_inc(x_355);
lean_dec(x_35);
x_356 = lean_ctor_get(x_36, 0);
lean_inc(x_356);
lean_dec(x_36);
x_357 = l_Lean_LocalDecl_toExpr(x_9);
x_358 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__39;
x_359 = l_Lean_Expr_app___override(x_358, x_355);
x_360 = l_Lean_Expr_app___override(x_359, x_356);
x_361 = l_Lean_Expr_app___override(x_360, x_357);
x_362 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_362, 0, x_361);
lean_closure_set(x_362, 1, x_9);
lean_closure_set(x_362, 2, x_2);
lean_closure_set(x_362, 3, x_1);
x_363 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_362, x_3, x_4, x_5, x_6, x_354);
return x_363;
}
}
else
{
uint8_t x_364; 
lean_dec(x_24);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_364 = !lean_is_exclusive(x_34);
if (x_364 == 0)
{
return x_34;
}
else
{
lean_object* x_365; lean_object* x_366; lean_object* x_367; 
x_365 = lean_ctor_get(x_34, 0);
x_366 = lean_ctor_get(x_34, 1);
lean_inc(x_366);
lean_inc(x_365);
lean_dec(x_34);
x_367 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_367, 0, x_365);
lean_ctor_set(x_367, 1, x_366);
return x_367;
}
}
}
else
{
lean_object* x_368; lean_object* x_369; lean_object* x_370; lean_object* x_371; lean_object* x_372; lean_object* x_373; lean_object* x_374; lean_object* x_375; lean_object* x_376; lean_object* x_377; lean_object* x_378; lean_object* x_379; lean_object* x_380; lean_object* x_381; lean_object* x_382; lean_object* x_383; lean_object* x_384; lean_object* x_385; lean_object* x_386; lean_object* x_387; 
lean_dec(x_25);
lean_dec(x_24);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
x_368 = lean_ctor_get(x_28, 1);
lean_inc(x_368);
lean_dec(x_28);
x_369 = lean_ctor_get(x_29, 0);
lean_inc(x_369);
lean_dec(x_29);
x_370 = lean_ctor_get(x_30, 0);
lean_inc(x_370);
lean_dec(x_30);
x_371 = l_Lean_LocalDecl_toExpr(x_9);
x_372 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4;
lean_inc(x_369);
x_373 = l_Lean_Expr_app___override(x_372, x_369);
lean_inc(x_370);
x_374 = l_Lean_Expr_app___override(x_373, x_370);
x_375 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__42;
x_376 = l_Lean_Expr_app___override(x_375, x_374);
x_377 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__43;
lean_inc(x_369);
x_378 = l_Lean_Expr_app___override(x_377, x_369);
lean_inc(x_370);
x_379 = l_Lean_Expr_app___override(x_378, x_370);
x_380 = l_Lean_Expr_app___override(x_376, x_379);
x_381 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__46;
x_382 = l_Lean_Expr_app___override(x_381, x_369);
x_383 = l_Lean_Expr_app___override(x_382, x_370);
x_384 = l_Lean_Expr_app___override(x_380, x_383);
x_385 = l_Lean_Expr_app___override(x_384, x_371);
x_386 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed), 9, 4);
lean_closure_set(x_386, 0, x_385);
lean_closure_set(x_386, 1, x_9);
lean_closure_set(x_386, 2, x_2);
lean_closure_set(x_386, 3, x_1);
x_387 = l_Lean_commitIfNoEx___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__2(x_386, x_3, x_4, x_5, x_6, x_368);
return x_387;
}
}
else
{
uint8_t x_388; 
lean_dec(x_25);
lean_dec(x_24);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_388 = !lean_is_exclusive(x_28);
if (x_388 == 0)
{
return x_28;
}
else
{
lean_object* x_389; lean_object* x_390; lean_object* x_391; 
x_389 = lean_ctor_get(x_28, 0);
x_390 = lean_ctor_get(x_28, 1);
lean_inc(x_390);
lean_inc(x_389);
lean_dec(x_28);
x_391 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_391, 0, x_389);
lean_ctor_set(x_391, 1, x_390);
return x_391;
}
}
}
}
else
{
uint8_t x_408; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_408 = !lean_is_exclusive(x_8);
if (x_408 == 0)
{
return x_8;
}
else
{
lean_object* x_409; lean_object* x_410; lean_object* x_411; 
x_409 = lean_ctor_get(x_8, 0);
x_410 = lean_ctor_get(x_8, 1);
lean_inc(x_410);
lean_inc(x_409);
lean_dec(x_8);
x_411 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_411, 0, x_409);
lean_ctor_set(x_411, 1, x_410);
return x_411;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not fvar ", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 1)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
lean_inc(x_2);
x_9 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13), 7, 2);
lean_closure_set(x_9, 0, x_8);
lean_closure_set(x_9, 1, x_2);
x_10 = l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(x_2, x_9, x_3, x_4, x_5, x_6, x_7);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_11 = l_Lean_MessageData_ofExpr(x_1);
x_12 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__2;
x_13 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
x_14 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__4;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
x_16 = lean_alloc_closure((void*)(l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1___boxed), 6, 1);
lean_closure_set(x_16, 0, x_15);
x_17 = l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(x_2, x_16, x_3, x_4, x_5, x_6, x_7);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Mathlib_Tactic_Tauto_distribNotOnceAt___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__12(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Mathlib_Tactic_Tauto_distribNotAt___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_1, 2);
lean_inc(x_8);
x_9 = l_Lean_Meta_FVarSubst_apply(x_8, x_6);
lean_dec(x_6);
lean_ctor_set(x_2, 1, x_3);
lean_ctor_set(x_2, 0, x_9);
{
lean_object* _tmp_1 = x_7;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_2);
x_13 = lean_ctor_get(x_1, 2);
lean_inc(x_13);
x_14 = l_Lean_Meta_FVarSubst_apply(x_13, x_11);
lean_dec(x_11);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_3);
x_2 = x_12;
x_3 = x_15;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotAt(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_eq(x_1, x_8);
if (x_9 == 0)
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_2);
lean_ctor_set(x_11, 1, x_7);
return x_11;
}
else
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_13 = lean_ctor_get(x_10, 0);
x_14 = lean_ctor_get(x_10, 1);
x_15 = lean_unsigned_to_nat(1u);
x_16 = lean_nat_sub(x_1, x_15);
x_17 = lean_ctor_get(x_2, 1);
lean_inc(x_17);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_18 = l_Mathlib_Tactic_Tauto_distribNotOnceAt(x_13, x_17, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_ctor_get(x_19, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
x_23 = l_Lean_Expr_fvar___override(x_21);
x_24 = lean_box(0);
x_25 = l_List_mapTR_loop___at_Mathlib_Tactic_Tauto_distribNotAt___spec__1(x_19, x_14, x_24);
lean_ctor_set(x_10, 1, x_25);
lean_ctor_set(x_10, 0, x_23);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_10);
lean_ctor_set(x_26, 1, x_22);
x_27 = l_Mathlib_Tactic_Tauto_distribNotAt(x_16, x_26, x_3, x_4, x_5, x_6, x_20);
lean_dec(x_16);
if (lean_obj_tag(x_27) == 0)
{
lean_dec(x_2);
return x_27;
}
else
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; uint8_t x_30; 
x_29 = lean_ctor_get(x_27, 0);
x_30 = l_Lean_Exception_isInterrupt(x_29);
if (x_30 == 0)
{
uint8_t x_31; 
x_31 = l_Lean_Exception_isRuntime(x_29);
if (x_31 == 0)
{
lean_dec(x_29);
lean_ctor_set_tag(x_27, 0);
lean_ctor_set(x_27, 0, x_2);
return x_27;
}
else
{
lean_dec(x_2);
return x_27;
}
}
else
{
lean_dec(x_2);
return x_27;
}
}
else
{
lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_32 = lean_ctor_get(x_27, 0);
x_33 = lean_ctor_get(x_27, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_27);
x_34 = l_Lean_Exception_isInterrupt(x_32);
if (x_34 == 0)
{
uint8_t x_35; 
x_35 = l_Lean_Exception_isRuntime(x_32);
if (x_35 == 0)
{
lean_object* x_36; 
lean_dec(x_32);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_2);
lean_ctor_set(x_36, 1, x_33);
return x_36;
}
else
{
lean_object* x_37; 
lean_dec(x_2);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_32);
lean_ctor_set(x_37, 1, x_33);
return x_37;
}
}
else
{
lean_object* x_38; 
lean_dec(x_2);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_32);
lean_ctor_set(x_38, 1, x_33);
return x_38;
}
}
}
}
else
{
uint8_t x_39; 
lean_dec(x_16);
lean_free_object(x_10);
lean_dec(x_14);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_39 = !lean_is_exclusive(x_18);
if (x_39 == 0)
{
lean_object* x_40; uint8_t x_41; 
x_40 = lean_ctor_get(x_18, 0);
x_41 = l_Lean_Exception_isInterrupt(x_40);
if (x_41 == 0)
{
uint8_t x_42; 
x_42 = l_Lean_Exception_isRuntime(x_40);
if (x_42 == 0)
{
lean_dec(x_40);
lean_ctor_set_tag(x_18, 0);
lean_ctor_set(x_18, 0, x_2);
return x_18;
}
else
{
lean_dec(x_2);
return x_18;
}
}
else
{
lean_dec(x_2);
return x_18;
}
}
else
{
lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_43 = lean_ctor_get(x_18, 0);
x_44 = lean_ctor_get(x_18, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_18);
x_45 = l_Lean_Exception_isInterrupt(x_43);
if (x_45 == 0)
{
uint8_t x_46; 
x_46 = l_Lean_Exception_isRuntime(x_43);
if (x_46 == 0)
{
lean_object* x_47; 
lean_dec(x_43);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_2);
lean_ctor_set(x_47, 1, x_44);
return x_47;
}
else
{
lean_object* x_48; 
lean_dec(x_2);
x_48 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_48, 0, x_43);
lean_ctor_set(x_48, 1, x_44);
return x_48;
}
}
else
{
lean_object* x_49; 
lean_dec(x_2);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_43);
lean_ctor_set(x_49, 1, x_44);
return x_49;
}
}
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_50 = lean_ctor_get(x_10, 0);
x_51 = lean_ctor_get(x_10, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_10);
x_52 = lean_unsigned_to_nat(1u);
x_53 = lean_nat_sub(x_1, x_52);
x_54 = lean_ctor_get(x_2, 1);
lean_inc(x_54);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_55 = l_Mathlib_Tactic_Tauto_distribNotOnceAt(x_50, x_54, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_55) == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_56 = lean_ctor_get(x_55, 0);
lean_inc(x_56);
x_57 = lean_ctor_get(x_55, 1);
lean_inc(x_57);
lean_dec(x_55);
x_58 = lean_ctor_get(x_56, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_56, 1);
lean_inc(x_59);
x_60 = l_Lean_Expr_fvar___override(x_58);
x_61 = lean_box(0);
x_62 = l_List_mapTR_loop___at_Mathlib_Tactic_Tauto_distribNotAt___spec__1(x_56, x_51, x_61);
x_63 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_63, 0, x_60);
lean_ctor_set(x_63, 1, x_62);
x_64 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_59);
x_65 = l_Mathlib_Tactic_Tauto_distribNotAt(x_53, x_64, x_3, x_4, x_5, x_6, x_57);
lean_dec(x_53);
if (lean_obj_tag(x_65) == 0)
{
lean_dec(x_2);
return x_65;
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; uint8_t x_69; 
x_66 = lean_ctor_get(x_65, 0);
lean_inc(x_66);
x_67 = lean_ctor_get(x_65, 1);
lean_inc(x_67);
if (lean_is_exclusive(x_65)) {
 lean_ctor_release(x_65, 0);
 lean_ctor_release(x_65, 1);
 x_68 = x_65;
} else {
 lean_dec_ref(x_65);
 x_68 = lean_box(0);
}
x_69 = l_Lean_Exception_isInterrupt(x_66);
if (x_69 == 0)
{
uint8_t x_70; 
x_70 = l_Lean_Exception_isRuntime(x_66);
if (x_70 == 0)
{
lean_object* x_71; 
lean_dec(x_66);
if (lean_is_scalar(x_68)) {
 x_71 = lean_alloc_ctor(0, 2, 0);
} else {
 x_71 = x_68;
 lean_ctor_set_tag(x_71, 0);
}
lean_ctor_set(x_71, 0, x_2);
lean_ctor_set(x_71, 1, x_67);
return x_71;
}
else
{
lean_object* x_72; 
lean_dec(x_2);
if (lean_is_scalar(x_68)) {
 x_72 = lean_alloc_ctor(1, 2, 0);
} else {
 x_72 = x_68;
}
lean_ctor_set(x_72, 0, x_66);
lean_ctor_set(x_72, 1, x_67);
return x_72;
}
}
else
{
lean_object* x_73; 
lean_dec(x_2);
if (lean_is_scalar(x_68)) {
 x_73 = lean_alloc_ctor(1, 2, 0);
} else {
 x_73 = x_68;
}
lean_ctor_set(x_73, 0, x_66);
lean_ctor_set(x_73, 1, x_67);
return x_73;
}
}
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
lean_dec(x_53);
lean_dec(x_51);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_74 = lean_ctor_get(x_55, 0);
lean_inc(x_74);
x_75 = lean_ctor_get(x_55, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_76 = x_55;
} else {
 lean_dec_ref(x_55);
 x_76 = lean_box(0);
}
x_77 = l_Lean_Exception_isInterrupt(x_74);
if (x_77 == 0)
{
uint8_t x_78; 
x_78 = l_Lean_Exception_isRuntime(x_74);
if (x_78 == 0)
{
lean_object* x_79; 
lean_dec(x_74);
if (lean_is_scalar(x_76)) {
 x_79 = lean_alloc_ctor(0, 2, 0);
} else {
 x_79 = x_76;
 lean_ctor_set_tag(x_79, 0);
}
lean_ctor_set(x_79, 0, x_2);
lean_ctor_set(x_79, 1, x_75);
return x_79;
}
else
{
lean_object* x_80; 
lean_dec(x_2);
if (lean_is_scalar(x_76)) {
 x_80 = lean_alloc_ctor(1, 2, 0);
} else {
 x_80 = x_76;
}
lean_ctor_set(x_80, 0, x_74);
lean_ctor_set(x_80, 1, x_75);
return x_80;
}
}
else
{
lean_object* x_81; 
lean_dec(x_2);
if (lean_is_scalar(x_76)) {
 x_81 = lean_alloc_ctor(1, 2, 0);
} else {
 x_81 = x_76;
}
lean_ctor_set(x_81, 0, x_74);
lean_ctor_set(x_81, 1, x_75);
return x_81;
}
}
}
}
}
else
{
lean_object* x_82; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_82 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_82, 0, x_2);
lean_ctor_set(x_82, 1, x_7);
return x_82;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotAt___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Mathlib_Tactic_Tauto_distribNotAt(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNotAux(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_2);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_2);
x_10 = lean_unsigned_to_nat(3u);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_11 = l_Mathlib_Tactic_Tauto_distribNotAt(x_10, x_9, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_14);
x_15 = l_List_tail_x21___rarg(x_14);
lean_dec(x_14);
x_16 = lean_ctor_get(x_12, 1);
lean_inc(x_16);
lean_dec(x_12);
x_1 = x_15;
x_2 = x_16;
x_7 = x_13;
goto _start;
}
else
{
uint8_t x_18; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_18 = !lean_is_exclusive(x_11);
if (x_18 == 0)
{
return x_11;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_11, 0);
x_20 = lean_ctor_get(x_11, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_11);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
uint8_t x_16; 
x_16 = lean_usize_dec_lt(x_5, x_4);
if (x_16 == 0)
{
lean_object* x_17; 
lean_dec(x_2);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_6);
lean_ctor_set(x_17, 1, x_15);
return x_17;
}
else
{
lean_object* x_18; uint8_t x_19; 
x_18 = lean_array_uget(x_3, x_5);
x_19 = !lean_is_exclusive(x_6);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_20 = lean_ctor_get(x_6, 1);
x_21 = lean_ctor_get(x_6, 0);
lean_dec(x_21);
lean_inc(x_20);
x_22 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2(x_1, x_18, x_20, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_18);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_24; 
lean_dec(x_2);
x_24 = !lean_is_exclusive(x_22);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_22, 0);
lean_dec(x_25);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_23);
lean_ctor_set(x_6, 0, x_26);
lean_ctor_set(x_22, 0, x_6);
return x_22;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_22, 1);
lean_inc(x_27);
lean_dec(x_22);
x_28 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_28, 0, x_23);
lean_ctor_set(x_6, 0, x_28);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_6);
lean_ctor_set(x_29, 1, x_27);
return x_29;
}
}
else
{
lean_object* x_30; lean_object* x_31; size_t x_32; size_t x_33; 
lean_dec(x_20);
x_30 = lean_ctor_get(x_22, 1);
lean_inc(x_30);
lean_dec(x_22);
x_31 = lean_ctor_get(x_23, 0);
lean_inc(x_31);
lean_dec(x_23);
lean_inc(x_2);
lean_ctor_set(x_6, 1, x_31);
lean_ctor_set(x_6, 0, x_2);
x_32 = 1;
x_33 = lean_usize_add(x_5, x_32);
x_5 = x_33;
x_15 = x_30;
goto _start;
}
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_6, 1);
lean_inc(x_35);
lean_dec(x_6);
lean_inc(x_35);
x_36 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2(x_1, x_18, x_35, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_18);
x_37 = lean_ctor_get(x_36, 0);
lean_inc(x_37);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; 
lean_dec(x_2);
x_38 = lean_ctor_get(x_36, 1);
lean_inc(x_38);
if (lean_is_exclusive(x_36)) {
 lean_ctor_release(x_36, 0);
 lean_ctor_release(x_36, 1);
 x_39 = x_36;
} else {
 lean_dec_ref(x_36);
 x_39 = lean_box(0);
}
x_40 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_40, 0, x_37);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_35);
if (lean_is_scalar(x_39)) {
 x_42 = lean_alloc_ctor(0, 2, 0);
} else {
 x_42 = x_39;
}
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_38);
return x_42;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; size_t x_46; size_t x_47; 
lean_dec(x_35);
x_43 = lean_ctor_get(x_36, 1);
lean_inc(x_43);
lean_dec(x_36);
x_44 = lean_ctor_get(x_37, 0);
lean_inc(x_44);
lean_dec(x_37);
lean_inc(x_2);
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_2);
lean_ctor_set(x_45, 1, x_44);
x_46 = 1;
x_47 = lean_usize_add(x_5, x_46);
x_5 = x_47;
x_6 = x_45;
x_15 = x_43;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__4(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; 
x_15 = lean_usize_dec_lt(x_4, x_3);
if (x_15 == 0)
{
lean_object* x_16; 
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_5);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
else
{
lean_object* x_17; 
x_17 = lean_array_uget(x_2, x_4);
if (lean_obj_tag(x_17) == 0)
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_5);
if (x_18 == 0)
{
lean_object* x_19; size_t x_20; size_t x_21; 
x_19 = lean_ctor_get(x_5, 0);
lean_dec(x_19);
lean_inc(x_1);
lean_ctor_set(x_5, 0, x_1);
x_20 = 1;
x_21 = lean_usize_add(x_4, x_20);
x_4 = x_21;
goto _start;
}
else
{
lean_object* x_23; lean_object* x_24; size_t x_25; size_t x_26; 
x_23 = lean_ctor_get(x_5, 1);
lean_inc(x_23);
lean_dec(x_5);
lean_inc(x_1);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_1);
lean_ctor_set(x_24, 1, x_23);
x_25 = 1;
x_26 = lean_usize_add(x_4, x_25);
x_4 = x_26;
x_5 = x_24;
goto _start;
}
}
else
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_5);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_29 = lean_ctor_get(x_5, 1);
x_30 = lean_ctor_get(x_5, 0);
lean_dec(x_30);
x_31 = lean_ctor_get(x_17, 0);
lean_inc(x_31);
lean_dec(x_17);
x_32 = l_Lean_LocalDecl_isImplementationDetail(x_31);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; size_t x_36; size_t x_37; 
x_33 = l_Lean_LocalDecl_fvarId(x_31);
lean_dec(x_31);
x_34 = l_Lean_Expr_fvar___override(x_33);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_29);
lean_inc(x_1);
lean_ctor_set(x_5, 1, x_35);
lean_ctor_set(x_5, 0, x_1);
x_36 = 1;
x_37 = lean_usize_add(x_4, x_36);
x_4 = x_37;
goto _start;
}
else
{
size_t x_39; size_t x_40; 
lean_dec(x_31);
lean_inc(x_1);
lean_ctor_set(x_5, 0, x_1);
x_39 = 1;
x_40 = lean_usize_add(x_4, x_39);
x_4 = x_40;
goto _start;
}
}
else
{
lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_42 = lean_ctor_get(x_5, 1);
lean_inc(x_42);
lean_dec(x_5);
x_43 = lean_ctor_get(x_17, 0);
lean_inc(x_43);
lean_dec(x_17);
x_44 = l_Lean_LocalDecl_isImplementationDetail(x_43);
if (x_44 == 0)
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; size_t x_49; size_t x_50; 
x_45 = l_Lean_LocalDecl_fvarId(x_43);
lean_dec(x_43);
x_46 = l_Lean_Expr_fvar___override(x_45);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_42);
lean_inc(x_1);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_1);
lean_ctor_set(x_48, 1, x_47);
x_49 = 1;
x_50 = lean_usize_add(x_4, x_49);
x_4 = x_50;
x_5 = x_48;
goto _start;
}
else
{
lean_object* x_52; size_t x_53; size_t x_54; 
lean_dec(x_43);
lean_inc(x_1);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_1);
lean_ctor_set(x_52, 1, x_42);
x_53 = 1;
x_54 = lean_usize_add(x_4, x_53);
x_4 = x_54;
x_5 = x_52;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_1);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; size_t x_16; size_t x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_13 = lean_ctor_get(x_2, 0);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_3);
x_16 = lean_array_size(x_13);
x_17 = 0;
x_18 = l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__3(x_1, x_14, x_13, x_16, x_17, x_15, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_18, 1);
lean_inc(x_21);
lean_dec(x_18);
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_dec(x_19);
x_23 = lean_box(0);
x_24 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1(x_22, x_23, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_21);
return x_24;
}
else
{
uint8_t x_25; 
lean_dec(x_19);
x_25 = !lean_is_exclusive(x_18);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_18, 0);
lean_dec(x_26);
x_27 = lean_ctor_get(x_20, 0);
lean_inc(x_27);
lean_dec(x_20);
lean_ctor_set(x_18, 0, x_27);
return x_18;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_18, 1);
lean_inc(x_28);
lean_dec(x_18);
x_29 = lean_ctor_get(x_20, 0);
lean_inc(x_29);
lean_dec(x_20);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_28);
return x_30;
}
}
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; size_t x_34; size_t x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_31 = lean_ctor_get(x_2, 0);
x_32 = lean_box(0);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_3);
x_34 = lean_array_size(x_31);
x_35 = 0;
x_36 = l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__4(x_32, x_31, x_34, x_35, x_33, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_37 = lean_ctor_get(x_36, 0);
lean_inc(x_37);
x_38 = lean_ctor_get(x_37, 0);
lean_inc(x_38);
if (lean_obj_tag(x_38) == 0)
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_39 = lean_ctor_get(x_36, 1);
lean_inc(x_39);
lean_dec(x_36);
x_40 = lean_ctor_get(x_37, 1);
lean_inc(x_40);
lean_dec(x_37);
x_41 = lean_box(0);
x_42 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1(x_40, x_41, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_39);
return x_42;
}
else
{
uint8_t x_43; 
lean_dec(x_37);
x_43 = !lean_is_exclusive(x_36);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; 
x_44 = lean_ctor_get(x_36, 0);
lean_dec(x_44);
x_45 = lean_ctor_get(x_38, 0);
lean_inc(x_45);
lean_dec(x_38);
lean_ctor_set(x_36, 0, x_45);
return x_36;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_46 = lean_ctor_get(x_36, 1);
lean_inc(x_46);
lean_dec(x_36);
x_47 = lean_ctor_get(x_38, 0);
lean_inc(x_47);
lean_dec(x_38);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_46);
return x_48;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__5(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; 
x_15 = lean_usize_dec_lt(x_4, x_3);
if (x_15 == 0)
{
lean_object* x_16; 
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_5);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
else
{
lean_object* x_17; 
x_17 = lean_array_uget(x_2, x_4);
if (lean_obj_tag(x_17) == 0)
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_5);
if (x_18 == 0)
{
lean_object* x_19; size_t x_20; size_t x_21; 
x_19 = lean_ctor_get(x_5, 0);
lean_dec(x_19);
lean_inc(x_1);
lean_ctor_set(x_5, 0, x_1);
x_20 = 1;
x_21 = lean_usize_add(x_4, x_20);
x_4 = x_21;
goto _start;
}
else
{
lean_object* x_23; lean_object* x_24; size_t x_25; size_t x_26; 
x_23 = lean_ctor_get(x_5, 1);
lean_inc(x_23);
lean_dec(x_5);
lean_inc(x_1);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_1);
lean_ctor_set(x_24, 1, x_23);
x_25 = 1;
x_26 = lean_usize_add(x_4, x_25);
x_4 = x_26;
x_5 = x_24;
goto _start;
}
}
else
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_5);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_29 = lean_ctor_get(x_5, 1);
x_30 = lean_ctor_get(x_5, 0);
lean_dec(x_30);
x_31 = lean_ctor_get(x_17, 0);
lean_inc(x_31);
lean_dec(x_17);
x_32 = l_Lean_LocalDecl_isImplementationDetail(x_31);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; size_t x_36; size_t x_37; 
x_33 = l_Lean_LocalDecl_fvarId(x_31);
lean_dec(x_31);
x_34 = l_Lean_Expr_fvar___override(x_33);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_29);
lean_inc(x_1);
lean_ctor_set(x_5, 1, x_35);
lean_ctor_set(x_5, 0, x_1);
x_36 = 1;
x_37 = lean_usize_add(x_4, x_36);
x_4 = x_37;
goto _start;
}
else
{
size_t x_39; size_t x_40; 
lean_dec(x_31);
lean_inc(x_1);
lean_ctor_set(x_5, 0, x_1);
x_39 = 1;
x_40 = lean_usize_add(x_4, x_39);
x_4 = x_40;
goto _start;
}
}
else
{
lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_42 = lean_ctor_get(x_5, 1);
lean_inc(x_42);
lean_dec(x_5);
x_43 = lean_ctor_get(x_17, 0);
lean_inc(x_43);
lean_dec(x_17);
x_44 = l_Lean_LocalDecl_isImplementationDetail(x_43);
if (x_44 == 0)
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; size_t x_49; size_t x_50; 
x_45 = l_Lean_LocalDecl_fvarId(x_43);
lean_dec(x_43);
x_46 = l_Lean_Expr_fvar___override(x_45);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_42);
lean_inc(x_1);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_1);
lean_ctor_set(x_48, 1, x_47);
x_49 = 1;
x_50 = lean_usize_add(x_4, x_49);
x_4 = x_50;
x_5 = x_48;
goto _start;
}
else
{
lean_object* x_52; size_t x_53; size_t x_54; 
lean_dec(x_43);
lean_inc(x_1);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_1);
lean_ctor_set(x_52, 1, x_42);
x_53 = 1;
x_54 = lean_usize_add(x_4, x_53);
x_4 = x_54;
x_5 = x_52;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_1);
lean_ctor_set(x_12, 1, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_13 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2(x_2, x_12, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_2);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
if (lean_obj_tag(x_14) == 0)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_13);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_ctor_get(x_13, 0);
lean_dec(x_16);
x_17 = lean_ctor_get(x_14, 0);
lean_inc(x_17);
lean_dec(x_14);
lean_ctor_set(x_13, 0, x_17);
return x_13;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_13, 1);
lean_inc(x_18);
lean_dec(x_13);
x_19 = lean_ctor_get(x_14, 0);
lean_inc(x_19);
lean_dec(x_14);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; size_t x_26; size_t x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_21 = lean_ctor_get(x_13, 1);
lean_inc(x_21);
lean_dec(x_13);
x_22 = lean_ctor_get(x_14, 0);
lean_inc(x_22);
lean_dec(x_14);
x_23 = lean_ctor_get(x_1, 1);
x_24 = lean_box(0);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_22);
x_26 = lean_array_size(x_23);
x_27 = 0;
x_28 = l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__5(x_24, x_23, x_26, x_27, x_25, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_21);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
if (lean_obj_tag(x_30) == 0)
{
uint8_t x_31; 
x_31 = !lean_is_exclusive(x_28);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; 
x_32 = lean_ctor_get(x_28, 0);
lean_dec(x_32);
x_33 = lean_ctor_get(x_29, 1);
lean_inc(x_33);
lean_dec(x_29);
lean_ctor_set(x_28, 0, x_33);
return x_28;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_28, 1);
lean_inc(x_34);
lean_dec(x_28);
x_35 = lean_ctor_get(x_29, 1);
lean_inc(x_35);
lean_dec(x_29);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_34);
return x_36;
}
}
else
{
uint8_t x_37; 
lean_dec(x_29);
x_37 = !lean_is_exclusive(x_28);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_ctor_get(x_28, 0);
lean_dec(x_38);
x_39 = lean_ctor_get(x_30, 0);
lean_inc(x_39);
lean_dec(x_30);
lean_ctor_set(x_28, 0, x_39);
return x_28;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_28, 1);
lean_inc(x_40);
lean_dec(x_28);
x_41 = lean_ctor_get(x_30, 0);
lean_inc(x_41);
lean_dec(x_30);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_40);
return x_42;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNot___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_11 = lean_ctor_get(x_6, 1);
lean_inc(x_11);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1(x_12, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_12);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNotAux), 7, 1);
lean_closure_set(x_16, 0, x_14);
x_17 = l_Lean_Elab_Tactic_liftMetaTactic_x27(x_16, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_15);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_distribNot(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_box(0);
x_11 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNot___lambda__1), 10, 1);
lean_closure_set(x_11, 0, x_10);
x_12 = l_Lean_Elab_Tactic_withMainContext___rarg(x_11, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
size_t x_16; size_t x_17; lean_object* x_18; 
x_16 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_17 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_18 = l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__3(x_1, x_2, x_3, x_16, x_17, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_3);
lean_dec(x_1);
return x_18;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_16 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_17 = l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__4(x_1, x_2, x_15, x_16, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Lean_PersistentArray_forInAux___at_Mathlib_Tactic_Tauto_distribNot___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_16 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_17 = l_Array_forInUnsafe_loop___at_Mathlib_Tactic_Tauto_distribNot___spec__5(x_1, x_2, x_15, x_16, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Lean_PersistentArray_forIn___at_Mathlib_Tactic_Tauto_distribNot___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_toCtorIdx(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_toCtorIdx___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Mathlib_Tactic_Tauto_Config_toCtorIdx(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_Config_noConfusion___rarg___boxed), 1, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Mathlib_Tactic_Tauto_Config_noConfusion___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_Config_noConfusion___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Mathlib_Tactic_Tauto_Config_noConfusion(x_1, x_2, x_3, x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Config", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7;
x_4 = l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953_(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; lean_object* x_11; 
x_9 = l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2;
x_10 = 0;
x_11 = l_Lean_Meta_evalExpr_x27___rarg(x_9, x_1, x_10, x_4, x_5, x_6, x_7, x_8);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953_(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_elabConfig___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = 1;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_12 = l_Lean_Elab_Term_elabTermEnsuringType(x_1, x_2, x_11, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; uint8_t x_16; lean_object* x_17; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = 1;
x_16 = 0;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_17 = l_Lean_Elab_Term_synthesizeSyntheticMVars(x_15, x_16, x_4, x_5, x_6, x_7, x_8, x_9, x_14);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_19;
}
else
{
uint8_t x_20; 
lean_dec(x_13);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_20 = !lean_is_exclusive(x_17);
if (x_20 == 0)
{
return x_17;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_17, 0);
x_22 = lean_ctor_get(x_17, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_17);
x_23 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
}
else
{
uint8_t x_24; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_24 = !lean_is_exclusive(x_12);
if (x_24 == 0)
{
return x_12;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_12, 0);
x_26 = lean_ctor_get(x_12, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_12);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_elabConfig___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_elabConfig___closed__3;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__5() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l_Mathlib_Tactic_Tauto_elabConfig___closed__4;
x_3 = l_Mathlib_Tactic_Tauto_elabConfig___closed__3;
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
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_elabConfig___closed__2;
x_2 = l_Mathlib_Tactic_Tauto_elabConfig___closed__5;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_elabConfig___closed__8;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_elabConfig(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = l_Lean_Syntax_isNone(x_1);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_10 = lean_unsigned_to_nat(0u);
x_11 = l_Lean_Syntax_getArg(x_1, x_10);
x_12 = lean_unsigned_to_nat(3u);
x_13 = l_Lean_Syntax_getArg(x_11, x_12);
lean_dec(x_11);
x_14 = lean_box(0);
x_15 = l_Mathlib_Tactic_Tauto_elabConfig___closed__9;
x_16 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_elabConfig___lambda__1), 10, 3);
lean_closure_set(x_16, 0, x_13);
lean_closure_set(x_16, 1, x_15);
lean_closure_set(x_16, 2, x_14);
x_17 = 1;
x_18 = lean_box(x_17);
x_19 = lean_alloc_closure((void*)(l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_withSynthesizeImp___rarg___boxed), 9, 2);
lean_closure_set(x_19, 0, x_16);
lean_closure_set(x_19, 1, x_18);
x_20 = lean_alloc_closure((void*)(l_Lean_Elab_withSaveInfoContext___at_Lean_Elab_Tactic_SolveByElim_elabConfig___spec__1), 8, 1);
lean_closure_set(x_20, 0, x_19);
x_21 = l_Mathlib_Tactic_Tauto_elabConfig___closed__6;
x_22 = l_Mathlib_Tactic_Tauto_elabConfig___closed__7;
x_23 = lean_alloc_closure((void*)(l_Lean_Meta_withLCtx___at_Lean_Elab_Term_ToDepElimPattern_main___spec__9___rarg), 10, 3);
lean_closure_set(x_23, 0, x_21);
lean_closure_set(x_23, 1, x_22);
lean_closure_set(x_23, 2, x_20);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_24 = l_Lean_Elab_withoutModifyingStateWithInfoAndMessages___at_Lean_Elab_Tactic_SolveByElim_elabConfig___spec__13(x_23, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953_(x_25, x_2, x_3, x_4, x_5, x_6, x_7, x_26);
lean_dec(x_3);
lean_dec(x_2);
return x_27;
}
else
{
uint8_t x_28; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_28 = !lean_is_exclusive(x_24);
if (x_28 == 0)
{
return x_24;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_24, 0);
x_30 = lean_ctor_get(x_24, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_24);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
else
{
lean_object* x_32; lean_object* x_33; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_32 = lean_box(0);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_8);
return x_33;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_elabConfig___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Tactic_Tauto_elabConfig(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
uint8_t x_11; lean_object* x_12; 
x_11 = 2;
lean_ctor_set_uint8(x_9, 9, x_11);
x_12 = l_Lean_Meta_isExprDefEq(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_unbox(x_13);
lean_dec(x_13);
if (x_14 == 0)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_12);
if (x_15 == 0)
{
lean_object* x_16; uint8_t x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_12, 0);
lean_dec(x_16);
x_17 = 0;
x_18 = lean_box(x_17);
lean_ctor_set(x_12, 0, x_18);
return x_12;
}
else
{
lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; 
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_dec(x_12);
x_20 = 0;
x_21 = lean_box(x_20);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_19);
return x_22;
}
}
else
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_12);
if (x_23 == 0)
{
lean_object* x_24; uint8_t x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_12, 0);
lean_dec(x_24);
x_25 = 1;
x_26 = lean_box(x_25);
lean_ctor_set(x_12, 0, x_26);
return x_12;
}
else
{
lean_object* x_27; uint8_t x_28; lean_object* x_29; lean_object* x_30; 
x_27 = lean_ctor_get(x_12, 1);
lean_inc(x_27);
lean_dec(x_12);
x_28 = 1;
x_29 = lean_box(x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_27);
return x_30;
}
}
}
else
{
uint8_t x_31; 
x_31 = !lean_is_exclusive(x_12);
if (x_31 == 0)
{
return x_12;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_12, 0);
x_33 = lean_ctor_get(x_12, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_12);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
}
else
{
uint8_t x_35; uint8_t x_36; uint8_t x_37; uint8_t x_38; uint8_t x_39; uint8_t x_40; uint8_t x_41; uint8_t x_42; uint8_t x_43; uint8_t x_44; uint8_t x_45; uint8_t x_46; uint8_t x_47; lean_object* x_48; lean_object* x_49; 
x_35 = lean_ctor_get_uint8(x_9, 0);
x_36 = lean_ctor_get_uint8(x_9, 1);
x_37 = lean_ctor_get_uint8(x_9, 2);
x_38 = lean_ctor_get_uint8(x_9, 3);
x_39 = lean_ctor_get_uint8(x_9, 4);
x_40 = lean_ctor_get_uint8(x_9, 5);
x_41 = lean_ctor_get_uint8(x_9, 6);
x_42 = lean_ctor_get_uint8(x_9, 7);
x_43 = lean_ctor_get_uint8(x_9, 8);
x_44 = lean_ctor_get_uint8(x_9, 10);
x_45 = lean_ctor_get_uint8(x_9, 11);
x_46 = lean_ctor_get_uint8(x_9, 12);
lean_dec(x_9);
x_47 = 2;
x_48 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_48, 0, x_35);
lean_ctor_set_uint8(x_48, 1, x_36);
lean_ctor_set_uint8(x_48, 2, x_37);
lean_ctor_set_uint8(x_48, 3, x_38);
lean_ctor_set_uint8(x_48, 4, x_39);
lean_ctor_set_uint8(x_48, 5, x_40);
lean_ctor_set_uint8(x_48, 6, x_41);
lean_ctor_set_uint8(x_48, 7, x_42);
lean_ctor_set_uint8(x_48, 8, x_43);
lean_ctor_set_uint8(x_48, 9, x_47);
lean_ctor_set_uint8(x_48, 10, x_44);
lean_ctor_set_uint8(x_48, 11, x_45);
lean_ctor_set_uint8(x_48, 12, x_46);
lean_ctor_set(x_3, 0, x_48);
x_49 = l_Lean_Meta_isExprDefEq(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_49) == 0)
{
lean_object* x_50; uint8_t x_51; 
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = lean_unbox(x_50);
lean_dec(x_50);
if (x_51 == 0)
{
lean_object* x_52; lean_object* x_53; uint8_t x_54; lean_object* x_55; lean_object* x_56; 
x_52 = lean_ctor_get(x_49, 1);
lean_inc(x_52);
if (lean_is_exclusive(x_49)) {
 lean_ctor_release(x_49, 0);
 lean_ctor_release(x_49, 1);
 x_53 = x_49;
} else {
 lean_dec_ref(x_49);
 x_53 = lean_box(0);
}
x_54 = 0;
x_55 = lean_box(x_54);
if (lean_is_scalar(x_53)) {
 x_56 = lean_alloc_ctor(0, 2, 0);
} else {
 x_56 = x_53;
}
lean_ctor_set(x_56, 0, x_55);
lean_ctor_set(x_56, 1, x_52);
return x_56;
}
else
{
lean_object* x_57; lean_object* x_58; uint8_t x_59; lean_object* x_60; lean_object* x_61; 
x_57 = lean_ctor_get(x_49, 1);
lean_inc(x_57);
if (lean_is_exclusive(x_49)) {
 lean_ctor_release(x_49, 0);
 lean_ctor_release(x_49, 1);
 x_58 = x_49;
} else {
 lean_dec_ref(x_49);
 x_58 = lean_box(0);
}
x_59 = 1;
x_60 = lean_box(x_59);
if (lean_is_scalar(x_58)) {
 x_61 = lean_alloc_ctor(0, 2, 0);
} else {
 x_61 = x_58;
}
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_61, 1, x_57);
return x_61;
}
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_62 = lean_ctor_get(x_49, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_49, 1);
lean_inc(x_63);
if (lean_is_exclusive(x_49)) {
 lean_ctor_release(x_49, 0);
 lean_ctor_release(x_49, 1);
 x_64 = x_49;
} else {
 lean_dec_ref(x_49);
 x_64 = lean_box(0);
}
if (lean_is_scalar(x_64)) {
 x_65 = lean_alloc_ctor(1, 2, 0);
} else {
 x_65 = x_64;
}
lean_ctor_set(x_65, 0, x_62);
lean_ctor_set(x_65, 1, x_63);
return x_65;
}
}
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; uint8_t x_72; uint8_t x_73; uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; uint8_t x_85; lean_object* x_86; uint8_t x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_66 = lean_ctor_get(x_3, 0);
x_67 = lean_ctor_get(x_3, 1);
x_68 = lean_ctor_get(x_3, 2);
x_69 = lean_ctor_get(x_3, 3);
x_70 = lean_ctor_get(x_3, 4);
x_71 = lean_ctor_get(x_3, 5);
x_72 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_73 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
lean_inc(x_71);
lean_inc(x_70);
lean_inc(x_69);
lean_inc(x_68);
lean_inc(x_67);
lean_inc(x_66);
lean_dec(x_3);
x_74 = lean_ctor_get_uint8(x_66, 0);
x_75 = lean_ctor_get_uint8(x_66, 1);
x_76 = lean_ctor_get_uint8(x_66, 2);
x_77 = lean_ctor_get_uint8(x_66, 3);
x_78 = lean_ctor_get_uint8(x_66, 4);
x_79 = lean_ctor_get_uint8(x_66, 5);
x_80 = lean_ctor_get_uint8(x_66, 6);
x_81 = lean_ctor_get_uint8(x_66, 7);
x_82 = lean_ctor_get_uint8(x_66, 8);
x_83 = lean_ctor_get_uint8(x_66, 10);
x_84 = lean_ctor_get_uint8(x_66, 11);
x_85 = lean_ctor_get_uint8(x_66, 12);
if (lean_is_exclusive(x_66)) {
 x_86 = x_66;
} else {
 lean_dec_ref(x_66);
 x_86 = lean_box(0);
}
x_87 = 2;
if (lean_is_scalar(x_86)) {
 x_88 = lean_alloc_ctor(0, 0, 13);
} else {
 x_88 = x_86;
}
lean_ctor_set_uint8(x_88, 0, x_74);
lean_ctor_set_uint8(x_88, 1, x_75);
lean_ctor_set_uint8(x_88, 2, x_76);
lean_ctor_set_uint8(x_88, 3, x_77);
lean_ctor_set_uint8(x_88, 4, x_78);
lean_ctor_set_uint8(x_88, 5, x_79);
lean_ctor_set_uint8(x_88, 6, x_80);
lean_ctor_set_uint8(x_88, 7, x_81);
lean_ctor_set_uint8(x_88, 8, x_82);
lean_ctor_set_uint8(x_88, 9, x_87);
lean_ctor_set_uint8(x_88, 10, x_83);
lean_ctor_set_uint8(x_88, 11, x_84);
lean_ctor_set_uint8(x_88, 12, x_85);
x_89 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_89, 0, x_88);
lean_ctor_set(x_89, 1, x_67);
lean_ctor_set(x_89, 2, x_68);
lean_ctor_set(x_89, 3, x_69);
lean_ctor_set(x_89, 4, x_70);
lean_ctor_set(x_89, 5, x_71);
lean_ctor_set_uint8(x_89, sizeof(void*)*6, x_72);
lean_ctor_set_uint8(x_89, sizeof(void*)*6 + 1, x_73);
x_90 = l_Lean_Meta_isExprDefEq(x_1, x_2, x_89, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_90) == 0)
{
lean_object* x_91; uint8_t x_92; 
x_91 = lean_ctor_get(x_90, 0);
lean_inc(x_91);
x_92 = lean_unbox(x_91);
lean_dec(x_91);
if (x_92 == 0)
{
lean_object* x_93; lean_object* x_94; uint8_t x_95; lean_object* x_96; lean_object* x_97; 
x_93 = lean_ctor_get(x_90, 1);
lean_inc(x_93);
if (lean_is_exclusive(x_90)) {
 lean_ctor_release(x_90, 0);
 lean_ctor_release(x_90, 1);
 x_94 = x_90;
} else {
 lean_dec_ref(x_90);
 x_94 = lean_box(0);
}
x_95 = 0;
x_96 = lean_box(x_95);
if (lean_is_scalar(x_94)) {
 x_97 = lean_alloc_ctor(0, 2, 0);
} else {
 x_97 = x_94;
}
lean_ctor_set(x_97, 0, x_96);
lean_ctor_set(x_97, 1, x_93);
return x_97;
}
else
{
lean_object* x_98; lean_object* x_99; uint8_t x_100; lean_object* x_101; lean_object* x_102; 
x_98 = lean_ctor_get(x_90, 1);
lean_inc(x_98);
if (lean_is_exclusive(x_90)) {
 lean_ctor_release(x_90, 0);
 lean_ctor_release(x_90, 1);
 x_99 = x_90;
} else {
 lean_dec_ref(x_90);
 x_99 = lean_box(0);
}
x_100 = 1;
x_101 = lean_box(x_100);
if (lean_is_scalar(x_99)) {
 x_102 = lean_alloc_ctor(0, 2, 0);
} else {
 x_102 = x_99;
}
lean_ctor_set(x_102, 0, x_101);
lean_ctor_set(x_102, 1, x_98);
return x_102;
}
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; 
x_103 = lean_ctor_get(x_90, 0);
lean_inc(x_103);
x_104 = lean_ctor_get(x_90, 1);
lean_inc(x_104);
if (lean_is_exclusive(x_90)) {
 lean_ctor_release(x_90, 0);
 lean_ctor_release(x_90, 1);
 x_105 = x_90;
} else {
 lean_dec_ref(x_90);
 x_105 = lean_box(0);
}
if (lean_is_scalar(x_105)) {
 x_106 = lean_alloc_ctor(1, 2, 0);
} else {
 x_106 = x_105;
}
lean_ctor_set(x_106, 0, x_103);
lean_ctor_set(x_106, 1, x_104);
return x_106;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = 0;
x_10 = lean_box(0);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_4);
x_15 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2;
x_20 = l_Lean_Expr_const___override(x_19, x_2);
lean_inc(x_13);
x_21 = l_Lean_Expr_app___override(x_20, x_13);
lean_inc(x_17);
x_22 = l_Lean_Expr_app___override(x_21, x_17);
x_23 = lean_ctor_get(x_4, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_4, 1);
lean_inc(x_24);
x_25 = lean_ctor_get(x_4, 2);
lean_inc(x_25);
x_26 = lean_ctor_get(x_4, 3);
lean_inc(x_26);
x_27 = lean_ctor_get(x_4, 4);
lean_inc(x_27);
x_28 = lean_ctor_get(x_4, 5);
lean_inc(x_28);
x_29 = !lean_is_exclusive(x_23);
if (x_29 == 0)
{
uint8_t x_30; uint8_t x_31; uint8_t x_32; lean_object* x_33; lean_object* x_34; 
x_30 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_31 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_32 = 2;
lean_ctor_set_uint8(x_23, 9, x_32);
x_33 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_33, 0, x_23);
lean_ctor_set(x_33, 1, x_24);
lean_ctor_set(x_33, 2, x_25);
lean_ctor_set(x_33, 3, x_26);
lean_ctor_set(x_33, 4, x_27);
lean_ctor_set(x_33, 5, x_28);
lean_ctor_set_uint8(x_33, sizeof(void*)*6, x_30);
lean_ctor_set_uint8(x_33, sizeof(void*)*6 + 1, x_31);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_34 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_33, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_unbox(x_35);
lean_dec(x_35);
if (x_36 == 0)
{
uint8_t x_37; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_37 = !lean_is_exclusive(x_34);
if (x_37 == 0)
{
lean_object* x_38; uint8_t x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_34, 0);
lean_dec(x_38);
x_39 = 0;
x_40 = lean_box(x_39);
lean_ctor_set(x_15, 1, x_40);
lean_ctor_set(x_11, 1, x_15);
lean_ctor_set(x_34, 0, x_11);
return x_34;
}
else
{
lean_object* x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; 
x_41 = lean_ctor_get(x_34, 1);
lean_inc(x_41);
lean_dec(x_34);
x_42 = 0;
x_43 = lean_box(x_42);
lean_ctor_set(x_15, 1, x_43);
lean_ctor_set(x_11, 1, x_15);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_11);
lean_ctor_set(x_44, 1, x_41);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; uint8_t x_47; 
lean_free_object(x_11);
x_45 = lean_ctor_get(x_34, 1);
lean_inc(x_45);
lean_dec(x_34);
x_46 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_45);
x_47 = !lean_is_exclusive(x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
x_48 = lean_ctor_get(x_46, 0);
x_49 = lean_ctor_get(x_46, 1);
x_50 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_49);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_51 = !lean_is_exclusive(x_50);
if (x_51 == 0)
{
lean_object* x_52; uint8_t x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_50, 0);
x_53 = 1;
x_54 = lean_box(x_53);
lean_ctor_set(x_46, 1, x_54);
lean_ctor_set(x_46, 0, x_52);
lean_ctor_set(x_15, 1, x_46);
lean_ctor_set(x_15, 0, x_48);
lean_ctor_set(x_50, 0, x_15);
return x_50;
}
else
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; lean_object* x_58; lean_object* x_59; 
x_55 = lean_ctor_get(x_50, 0);
x_56 = lean_ctor_get(x_50, 1);
lean_inc(x_56);
lean_inc(x_55);
lean_dec(x_50);
x_57 = 1;
x_58 = lean_box(x_57);
lean_ctor_set(x_46, 1, x_58);
lean_ctor_set(x_46, 0, x_55);
lean_ctor_set(x_15, 1, x_46);
lean_ctor_set(x_15, 0, x_48);
x_59 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_59, 0, x_15);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; uint8_t x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_60 = lean_ctor_get(x_46, 0);
x_61 = lean_ctor_get(x_46, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_46);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_61);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 x_65 = x_62;
} else {
 lean_dec_ref(x_62);
 x_65 = lean_box(0);
}
x_66 = 1;
x_67 = lean_box(x_66);
x_68 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_68, 0, x_63);
lean_ctor_set(x_68, 1, x_67);
lean_ctor_set(x_15, 1, x_68);
lean_ctor_set(x_15, 0, x_60);
if (lean_is_scalar(x_65)) {
 x_69 = lean_alloc_ctor(0, 2, 0);
} else {
 x_69 = x_65;
}
lean_ctor_set(x_69, 0, x_15);
lean_ctor_set(x_69, 1, x_64);
return x_69;
}
}
}
else
{
uint8_t x_70; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_70 = !lean_is_exclusive(x_34);
if (x_70 == 0)
{
return x_34;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_34, 0);
x_72 = lean_ctor_get(x_34, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_34);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
else
{
uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; uint8_t x_85; uint8_t x_86; uint8_t x_87; uint8_t x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; 
x_74 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_75 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_76 = lean_ctor_get_uint8(x_23, 0);
x_77 = lean_ctor_get_uint8(x_23, 1);
x_78 = lean_ctor_get_uint8(x_23, 2);
x_79 = lean_ctor_get_uint8(x_23, 3);
x_80 = lean_ctor_get_uint8(x_23, 4);
x_81 = lean_ctor_get_uint8(x_23, 5);
x_82 = lean_ctor_get_uint8(x_23, 6);
x_83 = lean_ctor_get_uint8(x_23, 7);
x_84 = lean_ctor_get_uint8(x_23, 8);
x_85 = lean_ctor_get_uint8(x_23, 10);
x_86 = lean_ctor_get_uint8(x_23, 11);
x_87 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_88 = 2;
x_89 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_89, 0, x_76);
lean_ctor_set_uint8(x_89, 1, x_77);
lean_ctor_set_uint8(x_89, 2, x_78);
lean_ctor_set_uint8(x_89, 3, x_79);
lean_ctor_set_uint8(x_89, 4, x_80);
lean_ctor_set_uint8(x_89, 5, x_81);
lean_ctor_set_uint8(x_89, 6, x_82);
lean_ctor_set_uint8(x_89, 7, x_83);
lean_ctor_set_uint8(x_89, 8, x_84);
lean_ctor_set_uint8(x_89, 9, x_88);
lean_ctor_set_uint8(x_89, 10, x_85);
lean_ctor_set_uint8(x_89, 11, x_86);
lean_ctor_set_uint8(x_89, 12, x_87);
x_90 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_24);
lean_ctor_set(x_90, 2, x_25);
lean_ctor_set(x_90, 3, x_26);
lean_ctor_set(x_90, 4, x_27);
lean_ctor_set(x_90, 5, x_28);
lean_ctor_set_uint8(x_90, sizeof(void*)*6, x_74);
lean_ctor_set_uint8(x_90, sizeof(void*)*6 + 1, x_75);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_91 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_90, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_91) == 0)
{
lean_object* x_92; uint8_t x_93; 
x_92 = lean_ctor_get(x_91, 0);
lean_inc(x_92);
x_93 = lean_unbox(x_92);
lean_dec(x_92);
if (x_93 == 0)
{
lean_object* x_94; lean_object* x_95; uint8_t x_96; lean_object* x_97; lean_object* x_98; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_94 = lean_ctor_get(x_91, 1);
lean_inc(x_94);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_95 = x_91;
} else {
 lean_dec_ref(x_91);
 x_95 = lean_box(0);
}
x_96 = 0;
x_97 = lean_box(x_96);
lean_ctor_set(x_15, 1, x_97);
lean_ctor_set(x_11, 1, x_15);
if (lean_is_scalar(x_95)) {
 x_98 = lean_alloc_ctor(0, 2, 0);
} else {
 x_98 = x_95;
}
lean_ctor_set(x_98, 0, x_11);
lean_ctor_set(x_98, 1, x_94);
return x_98;
}
else
{
lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; uint8_t x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
lean_free_object(x_11);
x_99 = lean_ctor_get(x_91, 1);
lean_inc(x_99);
lean_dec(x_91);
x_100 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_99);
x_101 = lean_ctor_get(x_100, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_100, 1);
lean_inc(x_102);
if (lean_is_exclusive(x_100)) {
 lean_ctor_release(x_100, 0);
 lean_ctor_release(x_100, 1);
 x_103 = x_100;
} else {
 lean_dec_ref(x_100);
 x_103 = lean_box(0);
}
x_104 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_102);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_105 = lean_ctor_get(x_104, 0);
lean_inc(x_105);
x_106 = lean_ctor_get(x_104, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_107 = x_104;
} else {
 lean_dec_ref(x_104);
 x_107 = lean_box(0);
}
x_108 = 1;
x_109 = lean_box(x_108);
if (lean_is_scalar(x_103)) {
 x_110 = lean_alloc_ctor(0, 2, 0);
} else {
 x_110 = x_103;
}
lean_ctor_set(x_110, 0, x_105);
lean_ctor_set(x_110, 1, x_109);
lean_ctor_set(x_15, 1, x_110);
lean_ctor_set(x_15, 0, x_101);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_15);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_112 = lean_ctor_get(x_91, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_91, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_114 = x_91;
} else {
 lean_dec_ref(x_91);
 x_114 = lean_box(0);
}
if (lean_is_scalar(x_114)) {
 x_115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_115 = x_114;
}
lean_ctor_set(x_115, 0, x_112);
lean_ctor_set(x_115, 1, x_113);
return x_115;
}
}
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; uint8_t x_128; uint8_t x_129; uint8_t x_130; uint8_t x_131; uint8_t x_132; uint8_t x_133; uint8_t x_134; uint8_t x_135; uint8_t x_136; uint8_t x_137; uint8_t x_138; uint8_t x_139; uint8_t x_140; uint8_t x_141; lean_object* x_142; uint8_t x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; 
x_116 = lean_ctor_get(x_15, 0);
x_117 = lean_ctor_get(x_15, 1);
lean_inc(x_117);
lean_inc(x_116);
lean_dec(x_15);
x_118 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2;
x_119 = l_Lean_Expr_const___override(x_118, x_2);
lean_inc(x_13);
x_120 = l_Lean_Expr_app___override(x_119, x_13);
lean_inc(x_116);
x_121 = l_Lean_Expr_app___override(x_120, x_116);
x_122 = lean_ctor_get(x_4, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_4, 1);
lean_inc(x_123);
x_124 = lean_ctor_get(x_4, 2);
lean_inc(x_124);
x_125 = lean_ctor_get(x_4, 3);
lean_inc(x_125);
x_126 = lean_ctor_get(x_4, 4);
lean_inc(x_126);
x_127 = lean_ctor_get(x_4, 5);
lean_inc(x_127);
x_128 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_129 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_130 = lean_ctor_get_uint8(x_122, 0);
x_131 = lean_ctor_get_uint8(x_122, 1);
x_132 = lean_ctor_get_uint8(x_122, 2);
x_133 = lean_ctor_get_uint8(x_122, 3);
x_134 = lean_ctor_get_uint8(x_122, 4);
x_135 = lean_ctor_get_uint8(x_122, 5);
x_136 = lean_ctor_get_uint8(x_122, 6);
x_137 = lean_ctor_get_uint8(x_122, 7);
x_138 = lean_ctor_get_uint8(x_122, 8);
x_139 = lean_ctor_get_uint8(x_122, 10);
x_140 = lean_ctor_get_uint8(x_122, 11);
x_141 = lean_ctor_get_uint8(x_122, 12);
if (lean_is_exclusive(x_122)) {
 x_142 = x_122;
} else {
 lean_dec_ref(x_122);
 x_142 = lean_box(0);
}
x_143 = 2;
if (lean_is_scalar(x_142)) {
 x_144 = lean_alloc_ctor(0, 0, 13);
} else {
 x_144 = x_142;
}
lean_ctor_set_uint8(x_144, 0, x_130);
lean_ctor_set_uint8(x_144, 1, x_131);
lean_ctor_set_uint8(x_144, 2, x_132);
lean_ctor_set_uint8(x_144, 3, x_133);
lean_ctor_set_uint8(x_144, 4, x_134);
lean_ctor_set_uint8(x_144, 5, x_135);
lean_ctor_set_uint8(x_144, 6, x_136);
lean_ctor_set_uint8(x_144, 7, x_137);
lean_ctor_set_uint8(x_144, 8, x_138);
lean_ctor_set_uint8(x_144, 9, x_143);
lean_ctor_set_uint8(x_144, 10, x_139);
lean_ctor_set_uint8(x_144, 11, x_140);
lean_ctor_set_uint8(x_144, 12, x_141);
x_145 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_145, 0, x_144);
lean_ctor_set(x_145, 1, x_123);
lean_ctor_set(x_145, 2, x_124);
lean_ctor_set(x_145, 3, x_125);
lean_ctor_set(x_145, 4, x_126);
lean_ctor_set(x_145, 5, x_127);
lean_ctor_set_uint8(x_145, sizeof(void*)*6, x_128);
lean_ctor_set_uint8(x_145, sizeof(void*)*6 + 1, x_129);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_146 = l_Lean_Meta_isExprDefEq(x_121, x_3, x_145, x_5, x_6, x_7, x_117);
if (lean_obj_tag(x_146) == 0)
{
lean_object* x_147; uint8_t x_148; 
x_147 = lean_ctor_get(x_146, 0);
lean_inc(x_147);
x_148 = lean_unbox(x_147);
lean_dec(x_147);
if (x_148 == 0)
{
lean_object* x_149; lean_object* x_150; uint8_t x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_149 = lean_ctor_get(x_146, 1);
lean_inc(x_149);
if (lean_is_exclusive(x_146)) {
 lean_ctor_release(x_146, 0);
 lean_ctor_release(x_146, 1);
 x_150 = x_146;
} else {
 lean_dec_ref(x_146);
 x_150 = lean_box(0);
}
x_151 = 0;
x_152 = lean_box(x_151);
x_153 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_153, 0, x_116);
lean_ctor_set(x_153, 1, x_152);
lean_ctor_set(x_11, 1, x_153);
if (lean_is_scalar(x_150)) {
 x_154 = lean_alloc_ctor(0, 2, 0);
} else {
 x_154 = x_150;
}
lean_ctor_set(x_154, 0, x_11);
lean_ctor_set(x_154, 1, x_149);
return x_154;
}
else
{
lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; 
lean_free_object(x_11);
x_155 = lean_ctor_get(x_146, 1);
lean_inc(x_155);
lean_dec(x_146);
x_156 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_155);
x_157 = lean_ctor_get(x_156, 0);
lean_inc(x_157);
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
x_160 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_116, x_4, x_5, x_6, x_7, x_158);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_161 = lean_ctor_get(x_160, 0);
lean_inc(x_161);
x_162 = lean_ctor_get(x_160, 1);
lean_inc(x_162);
if (lean_is_exclusive(x_160)) {
 lean_ctor_release(x_160, 0);
 lean_ctor_release(x_160, 1);
 x_163 = x_160;
} else {
 lean_dec_ref(x_160);
 x_163 = lean_box(0);
}
x_164 = 1;
x_165 = lean_box(x_164);
if (lean_is_scalar(x_159)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_159;
}
lean_ctor_set(x_166, 0, x_161);
lean_ctor_set(x_166, 1, x_165);
x_167 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_167, 0, x_157);
lean_ctor_set(x_167, 1, x_166);
if (lean_is_scalar(x_163)) {
 x_168 = lean_alloc_ctor(0, 2, 0);
} else {
 x_168 = x_163;
}
lean_ctor_set(x_168, 0, x_167);
lean_ctor_set(x_168, 1, x_162);
return x_168;
}
}
else
{
lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; 
lean_dec(x_116);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_169 = lean_ctor_get(x_146, 0);
lean_inc(x_169);
x_170 = lean_ctor_get(x_146, 1);
lean_inc(x_170);
if (lean_is_exclusive(x_146)) {
 lean_ctor_release(x_146, 0);
 lean_ctor_release(x_146, 1);
 x_171 = x_146;
} else {
 lean_dec_ref(x_146);
 x_171 = lean_box(0);
}
if (lean_is_scalar(x_171)) {
 x_172 = lean_alloc_ctor(1, 2, 0);
} else {
 x_172 = x_171;
}
lean_ctor_set(x_172, 0, x_169);
lean_ctor_set(x_172, 1, x_170);
return x_172;
}
}
}
else
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; uint8_t x_189; uint8_t x_190; uint8_t x_191; uint8_t x_192; uint8_t x_193; uint8_t x_194; uint8_t x_195; uint8_t x_196; uint8_t x_197; uint8_t x_198; uint8_t x_199; uint8_t x_200; uint8_t x_201; uint8_t x_202; lean_object* x_203; uint8_t x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; 
x_173 = lean_ctor_get(x_11, 0);
x_174 = lean_ctor_get(x_11, 1);
lean_inc(x_174);
lean_inc(x_173);
lean_dec(x_11);
lean_inc(x_4);
x_175 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_174);
x_176 = lean_ctor_get(x_175, 0);
lean_inc(x_176);
x_177 = lean_ctor_get(x_175, 1);
lean_inc(x_177);
if (lean_is_exclusive(x_175)) {
 lean_ctor_release(x_175, 0);
 lean_ctor_release(x_175, 1);
 x_178 = x_175;
} else {
 lean_dec_ref(x_175);
 x_178 = lean_box(0);
}
x_179 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2;
x_180 = l_Lean_Expr_const___override(x_179, x_2);
lean_inc(x_173);
x_181 = l_Lean_Expr_app___override(x_180, x_173);
lean_inc(x_176);
x_182 = l_Lean_Expr_app___override(x_181, x_176);
x_183 = lean_ctor_get(x_4, 0);
lean_inc(x_183);
x_184 = lean_ctor_get(x_4, 1);
lean_inc(x_184);
x_185 = lean_ctor_get(x_4, 2);
lean_inc(x_185);
x_186 = lean_ctor_get(x_4, 3);
lean_inc(x_186);
x_187 = lean_ctor_get(x_4, 4);
lean_inc(x_187);
x_188 = lean_ctor_get(x_4, 5);
lean_inc(x_188);
x_189 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_190 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_191 = lean_ctor_get_uint8(x_183, 0);
x_192 = lean_ctor_get_uint8(x_183, 1);
x_193 = lean_ctor_get_uint8(x_183, 2);
x_194 = lean_ctor_get_uint8(x_183, 3);
x_195 = lean_ctor_get_uint8(x_183, 4);
x_196 = lean_ctor_get_uint8(x_183, 5);
x_197 = lean_ctor_get_uint8(x_183, 6);
x_198 = lean_ctor_get_uint8(x_183, 7);
x_199 = lean_ctor_get_uint8(x_183, 8);
x_200 = lean_ctor_get_uint8(x_183, 10);
x_201 = lean_ctor_get_uint8(x_183, 11);
x_202 = lean_ctor_get_uint8(x_183, 12);
if (lean_is_exclusive(x_183)) {
 x_203 = x_183;
} else {
 lean_dec_ref(x_183);
 x_203 = lean_box(0);
}
x_204 = 2;
if (lean_is_scalar(x_203)) {
 x_205 = lean_alloc_ctor(0, 0, 13);
} else {
 x_205 = x_203;
}
lean_ctor_set_uint8(x_205, 0, x_191);
lean_ctor_set_uint8(x_205, 1, x_192);
lean_ctor_set_uint8(x_205, 2, x_193);
lean_ctor_set_uint8(x_205, 3, x_194);
lean_ctor_set_uint8(x_205, 4, x_195);
lean_ctor_set_uint8(x_205, 5, x_196);
lean_ctor_set_uint8(x_205, 6, x_197);
lean_ctor_set_uint8(x_205, 7, x_198);
lean_ctor_set_uint8(x_205, 8, x_199);
lean_ctor_set_uint8(x_205, 9, x_204);
lean_ctor_set_uint8(x_205, 10, x_200);
lean_ctor_set_uint8(x_205, 11, x_201);
lean_ctor_set_uint8(x_205, 12, x_202);
x_206 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_206, 0, x_205);
lean_ctor_set(x_206, 1, x_184);
lean_ctor_set(x_206, 2, x_185);
lean_ctor_set(x_206, 3, x_186);
lean_ctor_set(x_206, 4, x_187);
lean_ctor_set(x_206, 5, x_188);
lean_ctor_set_uint8(x_206, sizeof(void*)*6, x_189);
lean_ctor_set_uint8(x_206, sizeof(void*)*6 + 1, x_190);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_207 = l_Lean_Meta_isExprDefEq(x_182, x_3, x_206, x_5, x_6, x_7, x_177);
if (lean_obj_tag(x_207) == 0)
{
lean_object* x_208; uint8_t x_209; 
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_unbox(x_208);
lean_dec(x_208);
if (x_209 == 0)
{
lean_object* x_210; lean_object* x_211; uint8_t x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_210 = lean_ctor_get(x_207, 1);
lean_inc(x_210);
if (lean_is_exclusive(x_207)) {
 lean_ctor_release(x_207, 0);
 lean_ctor_release(x_207, 1);
 x_211 = x_207;
} else {
 lean_dec_ref(x_207);
 x_211 = lean_box(0);
}
x_212 = 0;
x_213 = lean_box(x_212);
if (lean_is_scalar(x_178)) {
 x_214 = lean_alloc_ctor(0, 2, 0);
} else {
 x_214 = x_178;
}
lean_ctor_set(x_214, 0, x_176);
lean_ctor_set(x_214, 1, x_213);
x_215 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_215, 0, x_173);
lean_ctor_set(x_215, 1, x_214);
if (lean_is_scalar(x_211)) {
 x_216 = lean_alloc_ctor(0, 2, 0);
} else {
 x_216 = x_211;
}
lean_ctor_set(x_216, 0, x_215);
lean_ctor_set(x_216, 1, x_210);
return x_216;
}
else
{
lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; lean_object* x_224; lean_object* x_225; uint8_t x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; 
x_217 = lean_ctor_get(x_207, 1);
lean_inc(x_217);
lean_dec(x_207);
x_218 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_173, x_4, x_5, x_6, x_7, x_217);
x_219 = lean_ctor_get(x_218, 0);
lean_inc(x_219);
x_220 = lean_ctor_get(x_218, 1);
lean_inc(x_220);
if (lean_is_exclusive(x_218)) {
 lean_ctor_release(x_218, 0);
 lean_ctor_release(x_218, 1);
 x_221 = x_218;
} else {
 lean_dec_ref(x_218);
 x_221 = lean_box(0);
}
x_222 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_176, x_4, x_5, x_6, x_7, x_220);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_223 = lean_ctor_get(x_222, 0);
lean_inc(x_223);
x_224 = lean_ctor_get(x_222, 1);
lean_inc(x_224);
if (lean_is_exclusive(x_222)) {
 lean_ctor_release(x_222, 0);
 lean_ctor_release(x_222, 1);
 x_225 = x_222;
} else {
 lean_dec_ref(x_222);
 x_225 = lean_box(0);
}
x_226 = 1;
x_227 = lean_box(x_226);
if (lean_is_scalar(x_221)) {
 x_228 = lean_alloc_ctor(0, 2, 0);
} else {
 x_228 = x_221;
}
lean_ctor_set(x_228, 0, x_223);
lean_ctor_set(x_228, 1, x_227);
if (lean_is_scalar(x_178)) {
 x_229 = lean_alloc_ctor(0, 2, 0);
} else {
 x_229 = x_178;
}
lean_ctor_set(x_229, 0, x_219);
lean_ctor_set(x_229, 1, x_228);
if (lean_is_scalar(x_225)) {
 x_230 = lean_alloc_ctor(0, 2, 0);
} else {
 x_230 = x_225;
}
lean_ctor_set(x_230, 0, x_229);
lean_ctor_set(x_230, 1, x_224);
return x_230;
}
}
else
{
lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; 
lean_dec(x_178);
lean_dec(x_176);
lean_dec(x_173);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_231 = lean_ctor_get(x_207, 0);
lean_inc(x_231);
x_232 = lean_ctor_get(x_207, 1);
lean_inc(x_232);
if (lean_is_exclusive(x_207)) {
 lean_ctor_release(x_207, 0);
 lean_ctor_release(x_207, 1);
 x_233 = x_207;
} else {
 lean_dec_ref(x_207);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = 0;
x_10 = lean_box(0);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_4);
x_15 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2;
x_20 = l_Lean_Expr_const___override(x_19, x_2);
lean_inc(x_13);
x_21 = l_Lean_Expr_app___override(x_20, x_13);
lean_inc(x_17);
x_22 = l_Lean_Expr_app___override(x_21, x_17);
x_23 = lean_ctor_get(x_4, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_4, 1);
lean_inc(x_24);
x_25 = lean_ctor_get(x_4, 2);
lean_inc(x_25);
x_26 = lean_ctor_get(x_4, 3);
lean_inc(x_26);
x_27 = lean_ctor_get(x_4, 4);
lean_inc(x_27);
x_28 = lean_ctor_get(x_4, 5);
lean_inc(x_28);
x_29 = !lean_is_exclusive(x_23);
if (x_29 == 0)
{
uint8_t x_30; uint8_t x_31; uint8_t x_32; lean_object* x_33; lean_object* x_34; 
x_30 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_31 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_32 = 2;
lean_ctor_set_uint8(x_23, 9, x_32);
x_33 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_33, 0, x_23);
lean_ctor_set(x_33, 1, x_24);
lean_ctor_set(x_33, 2, x_25);
lean_ctor_set(x_33, 3, x_26);
lean_ctor_set(x_33, 4, x_27);
lean_ctor_set(x_33, 5, x_28);
lean_ctor_set_uint8(x_33, sizeof(void*)*6, x_30);
lean_ctor_set_uint8(x_33, sizeof(void*)*6 + 1, x_31);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_34 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_33, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_unbox(x_35);
lean_dec(x_35);
if (x_36 == 0)
{
uint8_t x_37; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_37 = !lean_is_exclusive(x_34);
if (x_37 == 0)
{
lean_object* x_38; uint8_t x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_34, 0);
lean_dec(x_38);
x_39 = 0;
x_40 = lean_box(x_39);
lean_ctor_set(x_15, 1, x_40);
lean_ctor_set(x_11, 1, x_15);
lean_ctor_set(x_34, 0, x_11);
return x_34;
}
else
{
lean_object* x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; 
x_41 = lean_ctor_get(x_34, 1);
lean_inc(x_41);
lean_dec(x_34);
x_42 = 0;
x_43 = lean_box(x_42);
lean_ctor_set(x_15, 1, x_43);
lean_ctor_set(x_11, 1, x_15);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_11);
lean_ctor_set(x_44, 1, x_41);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; uint8_t x_47; 
lean_free_object(x_11);
x_45 = lean_ctor_get(x_34, 1);
lean_inc(x_45);
lean_dec(x_34);
x_46 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_45);
x_47 = !lean_is_exclusive(x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
x_48 = lean_ctor_get(x_46, 0);
x_49 = lean_ctor_get(x_46, 1);
x_50 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_49);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_51 = !lean_is_exclusive(x_50);
if (x_51 == 0)
{
lean_object* x_52; uint8_t x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_50, 0);
x_53 = 1;
x_54 = lean_box(x_53);
lean_ctor_set(x_46, 1, x_54);
lean_ctor_set(x_46, 0, x_52);
lean_ctor_set(x_15, 1, x_46);
lean_ctor_set(x_15, 0, x_48);
lean_ctor_set(x_50, 0, x_15);
return x_50;
}
else
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; lean_object* x_58; lean_object* x_59; 
x_55 = lean_ctor_get(x_50, 0);
x_56 = lean_ctor_get(x_50, 1);
lean_inc(x_56);
lean_inc(x_55);
lean_dec(x_50);
x_57 = 1;
x_58 = lean_box(x_57);
lean_ctor_set(x_46, 1, x_58);
lean_ctor_set(x_46, 0, x_55);
lean_ctor_set(x_15, 1, x_46);
lean_ctor_set(x_15, 0, x_48);
x_59 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_59, 0, x_15);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; uint8_t x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_60 = lean_ctor_get(x_46, 0);
x_61 = lean_ctor_get(x_46, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_46);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_61);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 x_65 = x_62;
} else {
 lean_dec_ref(x_62);
 x_65 = lean_box(0);
}
x_66 = 1;
x_67 = lean_box(x_66);
x_68 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_68, 0, x_63);
lean_ctor_set(x_68, 1, x_67);
lean_ctor_set(x_15, 1, x_68);
lean_ctor_set(x_15, 0, x_60);
if (lean_is_scalar(x_65)) {
 x_69 = lean_alloc_ctor(0, 2, 0);
} else {
 x_69 = x_65;
}
lean_ctor_set(x_69, 0, x_15);
lean_ctor_set(x_69, 1, x_64);
return x_69;
}
}
}
else
{
uint8_t x_70; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_70 = !lean_is_exclusive(x_34);
if (x_70 == 0)
{
return x_34;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_34, 0);
x_72 = lean_ctor_get(x_34, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_34);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
else
{
uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; uint8_t x_85; uint8_t x_86; uint8_t x_87; uint8_t x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; 
x_74 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_75 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_76 = lean_ctor_get_uint8(x_23, 0);
x_77 = lean_ctor_get_uint8(x_23, 1);
x_78 = lean_ctor_get_uint8(x_23, 2);
x_79 = lean_ctor_get_uint8(x_23, 3);
x_80 = lean_ctor_get_uint8(x_23, 4);
x_81 = lean_ctor_get_uint8(x_23, 5);
x_82 = lean_ctor_get_uint8(x_23, 6);
x_83 = lean_ctor_get_uint8(x_23, 7);
x_84 = lean_ctor_get_uint8(x_23, 8);
x_85 = lean_ctor_get_uint8(x_23, 10);
x_86 = lean_ctor_get_uint8(x_23, 11);
x_87 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_88 = 2;
x_89 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_89, 0, x_76);
lean_ctor_set_uint8(x_89, 1, x_77);
lean_ctor_set_uint8(x_89, 2, x_78);
lean_ctor_set_uint8(x_89, 3, x_79);
lean_ctor_set_uint8(x_89, 4, x_80);
lean_ctor_set_uint8(x_89, 5, x_81);
lean_ctor_set_uint8(x_89, 6, x_82);
lean_ctor_set_uint8(x_89, 7, x_83);
lean_ctor_set_uint8(x_89, 8, x_84);
lean_ctor_set_uint8(x_89, 9, x_88);
lean_ctor_set_uint8(x_89, 10, x_85);
lean_ctor_set_uint8(x_89, 11, x_86);
lean_ctor_set_uint8(x_89, 12, x_87);
x_90 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_24);
lean_ctor_set(x_90, 2, x_25);
lean_ctor_set(x_90, 3, x_26);
lean_ctor_set(x_90, 4, x_27);
lean_ctor_set(x_90, 5, x_28);
lean_ctor_set_uint8(x_90, sizeof(void*)*6, x_74);
lean_ctor_set_uint8(x_90, sizeof(void*)*6 + 1, x_75);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_91 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_90, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_91) == 0)
{
lean_object* x_92; uint8_t x_93; 
x_92 = lean_ctor_get(x_91, 0);
lean_inc(x_92);
x_93 = lean_unbox(x_92);
lean_dec(x_92);
if (x_93 == 0)
{
lean_object* x_94; lean_object* x_95; uint8_t x_96; lean_object* x_97; lean_object* x_98; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_94 = lean_ctor_get(x_91, 1);
lean_inc(x_94);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_95 = x_91;
} else {
 lean_dec_ref(x_91);
 x_95 = lean_box(0);
}
x_96 = 0;
x_97 = lean_box(x_96);
lean_ctor_set(x_15, 1, x_97);
lean_ctor_set(x_11, 1, x_15);
if (lean_is_scalar(x_95)) {
 x_98 = lean_alloc_ctor(0, 2, 0);
} else {
 x_98 = x_95;
}
lean_ctor_set(x_98, 0, x_11);
lean_ctor_set(x_98, 1, x_94);
return x_98;
}
else
{
lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; uint8_t x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
lean_free_object(x_11);
x_99 = lean_ctor_get(x_91, 1);
lean_inc(x_99);
lean_dec(x_91);
x_100 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_99);
x_101 = lean_ctor_get(x_100, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_100, 1);
lean_inc(x_102);
if (lean_is_exclusive(x_100)) {
 lean_ctor_release(x_100, 0);
 lean_ctor_release(x_100, 1);
 x_103 = x_100;
} else {
 lean_dec_ref(x_100);
 x_103 = lean_box(0);
}
x_104 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_102);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_105 = lean_ctor_get(x_104, 0);
lean_inc(x_105);
x_106 = lean_ctor_get(x_104, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_107 = x_104;
} else {
 lean_dec_ref(x_104);
 x_107 = lean_box(0);
}
x_108 = 1;
x_109 = lean_box(x_108);
if (lean_is_scalar(x_103)) {
 x_110 = lean_alloc_ctor(0, 2, 0);
} else {
 x_110 = x_103;
}
lean_ctor_set(x_110, 0, x_105);
lean_ctor_set(x_110, 1, x_109);
lean_ctor_set(x_15, 1, x_110);
lean_ctor_set(x_15, 0, x_101);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_15);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_112 = lean_ctor_get(x_91, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_91, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_114 = x_91;
} else {
 lean_dec_ref(x_91);
 x_114 = lean_box(0);
}
if (lean_is_scalar(x_114)) {
 x_115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_115 = x_114;
}
lean_ctor_set(x_115, 0, x_112);
lean_ctor_set(x_115, 1, x_113);
return x_115;
}
}
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; uint8_t x_128; uint8_t x_129; uint8_t x_130; uint8_t x_131; uint8_t x_132; uint8_t x_133; uint8_t x_134; uint8_t x_135; uint8_t x_136; uint8_t x_137; uint8_t x_138; uint8_t x_139; uint8_t x_140; uint8_t x_141; lean_object* x_142; uint8_t x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; 
x_116 = lean_ctor_get(x_15, 0);
x_117 = lean_ctor_get(x_15, 1);
lean_inc(x_117);
lean_inc(x_116);
lean_dec(x_15);
x_118 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2;
x_119 = l_Lean_Expr_const___override(x_118, x_2);
lean_inc(x_13);
x_120 = l_Lean_Expr_app___override(x_119, x_13);
lean_inc(x_116);
x_121 = l_Lean_Expr_app___override(x_120, x_116);
x_122 = lean_ctor_get(x_4, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_4, 1);
lean_inc(x_123);
x_124 = lean_ctor_get(x_4, 2);
lean_inc(x_124);
x_125 = lean_ctor_get(x_4, 3);
lean_inc(x_125);
x_126 = lean_ctor_get(x_4, 4);
lean_inc(x_126);
x_127 = lean_ctor_get(x_4, 5);
lean_inc(x_127);
x_128 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_129 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_130 = lean_ctor_get_uint8(x_122, 0);
x_131 = lean_ctor_get_uint8(x_122, 1);
x_132 = lean_ctor_get_uint8(x_122, 2);
x_133 = lean_ctor_get_uint8(x_122, 3);
x_134 = lean_ctor_get_uint8(x_122, 4);
x_135 = lean_ctor_get_uint8(x_122, 5);
x_136 = lean_ctor_get_uint8(x_122, 6);
x_137 = lean_ctor_get_uint8(x_122, 7);
x_138 = lean_ctor_get_uint8(x_122, 8);
x_139 = lean_ctor_get_uint8(x_122, 10);
x_140 = lean_ctor_get_uint8(x_122, 11);
x_141 = lean_ctor_get_uint8(x_122, 12);
if (lean_is_exclusive(x_122)) {
 x_142 = x_122;
} else {
 lean_dec_ref(x_122);
 x_142 = lean_box(0);
}
x_143 = 2;
if (lean_is_scalar(x_142)) {
 x_144 = lean_alloc_ctor(0, 0, 13);
} else {
 x_144 = x_142;
}
lean_ctor_set_uint8(x_144, 0, x_130);
lean_ctor_set_uint8(x_144, 1, x_131);
lean_ctor_set_uint8(x_144, 2, x_132);
lean_ctor_set_uint8(x_144, 3, x_133);
lean_ctor_set_uint8(x_144, 4, x_134);
lean_ctor_set_uint8(x_144, 5, x_135);
lean_ctor_set_uint8(x_144, 6, x_136);
lean_ctor_set_uint8(x_144, 7, x_137);
lean_ctor_set_uint8(x_144, 8, x_138);
lean_ctor_set_uint8(x_144, 9, x_143);
lean_ctor_set_uint8(x_144, 10, x_139);
lean_ctor_set_uint8(x_144, 11, x_140);
lean_ctor_set_uint8(x_144, 12, x_141);
x_145 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_145, 0, x_144);
lean_ctor_set(x_145, 1, x_123);
lean_ctor_set(x_145, 2, x_124);
lean_ctor_set(x_145, 3, x_125);
lean_ctor_set(x_145, 4, x_126);
lean_ctor_set(x_145, 5, x_127);
lean_ctor_set_uint8(x_145, sizeof(void*)*6, x_128);
lean_ctor_set_uint8(x_145, sizeof(void*)*6 + 1, x_129);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_146 = l_Lean_Meta_isExprDefEq(x_121, x_3, x_145, x_5, x_6, x_7, x_117);
if (lean_obj_tag(x_146) == 0)
{
lean_object* x_147; uint8_t x_148; 
x_147 = lean_ctor_get(x_146, 0);
lean_inc(x_147);
x_148 = lean_unbox(x_147);
lean_dec(x_147);
if (x_148 == 0)
{
lean_object* x_149; lean_object* x_150; uint8_t x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_149 = lean_ctor_get(x_146, 1);
lean_inc(x_149);
if (lean_is_exclusive(x_146)) {
 lean_ctor_release(x_146, 0);
 lean_ctor_release(x_146, 1);
 x_150 = x_146;
} else {
 lean_dec_ref(x_146);
 x_150 = lean_box(0);
}
x_151 = 0;
x_152 = lean_box(x_151);
x_153 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_153, 0, x_116);
lean_ctor_set(x_153, 1, x_152);
lean_ctor_set(x_11, 1, x_153);
if (lean_is_scalar(x_150)) {
 x_154 = lean_alloc_ctor(0, 2, 0);
} else {
 x_154 = x_150;
}
lean_ctor_set(x_154, 0, x_11);
lean_ctor_set(x_154, 1, x_149);
return x_154;
}
else
{
lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; 
lean_free_object(x_11);
x_155 = lean_ctor_get(x_146, 1);
lean_inc(x_155);
lean_dec(x_146);
x_156 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_155);
x_157 = lean_ctor_get(x_156, 0);
lean_inc(x_157);
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
x_160 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_116, x_4, x_5, x_6, x_7, x_158);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_161 = lean_ctor_get(x_160, 0);
lean_inc(x_161);
x_162 = lean_ctor_get(x_160, 1);
lean_inc(x_162);
if (lean_is_exclusive(x_160)) {
 lean_ctor_release(x_160, 0);
 lean_ctor_release(x_160, 1);
 x_163 = x_160;
} else {
 lean_dec_ref(x_160);
 x_163 = lean_box(0);
}
x_164 = 1;
x_165 = lean_box(x_164);
if (lean_is_scalar(x_159)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_159;
}
lean_ctor_set(x_166, 0, x_161);
lean_ctor_set(x_166, 1, x_165);
x_167 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_167, 0, x_157);
lean_ctor_set(x_167, 1, x_166);
if (lean_is_scalar(x_163)) {
 x_168 = lean_alloc_ctor(0, 2, 0);
} else {
 x_168 = x_163;
}
lean_ctor_set(x_168, 0, x_167);
lean_ctor_set(x_168, 1, x_162);
return x_168;
}
}
else
{
lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; 
lean_dec(x_116);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_169 = lean_ctor_get(x_146, 0);
lean_inc(x_169);
x_170 = lean_ctor_get(x_146, 1);
lean_inc(x_170);
if (lean_is_exclusive(x_146)) {
 lean_ctor_release(x_146, 0);
 lean_ctor_release(x_146, 1);
 x_171 = x_146;
} else {
 lean_dec_ref(x_146);
 x_171 = lean_box(0);
}
if (lean_is_scalar(x_171)) {
 x_172 = lean_alloc_ctor(1, 2, 0);
} else {
 x_172 = x_171;
}
lean_ctor_set(x_172, 0, x_169);
lean_ctor_set(x_172, 1, x_170);
return x_172;
}
}
}
else
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; uint8_t x_189; uint8_t x_190; uint8_t x_191; uint8_t x_192; uint8_t x_193; uint8_t x_194; uint8_t x_195; uint8_t x_196; uint8_t x_197; uint8_t x_198; uint8_t x_199; uint8_t x_200; uint8_t x_201; uint8_t x_202; lean_object* x_203; uint8_t x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; 
x_173 = lean_ctor_get(x_11, 0);
x_174 = lean_ctor_get(x_11, 1);
lean_inc(x_174);
lean_inc(x_173);
lean_dec(x_11);
lean_inc(x_4);
x_175 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_174);
x_176 = lean_ctor_get(x_175, 0);
lean_inc(x_176);
x_177 = lean_ctor_get(x_175, 1);
lean_inc(x_177);
if (lean_is_exclusive(x_175)) {
 lean_ctor_release(x_175, 0);
 lean_ctor_release(x_175, 1);
 x_178 = x_175;
} else {
 lean_dec_ref(x_175);
 x_178 = lean_box(0);
}
x_179 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2;
x_180 = l_Lean_Expr_const___override(x_179, x_2);
lean_inc(x_173);
x_181 = l_Lean_Expr_app___override(x_180, x_173);
lean_inc(x_176);
x_182 = l_Lean_Expr_app___override(x_181, x_176);
x_183 = lean_ctor_get(x_4, 0);
lean_inc(x_183);
x_184 = lean_ctor_get(x_4, 1);
lean_inc(x_184);
x_185 = lean_ctor_get(x_4, 2);
lean_inc(x_185);
x_186 = lean_ctor_get(x_4, 3);
lean_inc(x_186);
x_187 = lean_ctor_get(x_4, 4);
lean_inc(x_187);
x_188 = lean_ctor_get(x_4, 5);
lean_inc(x_188);
x_189 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_190 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_191 = lean_ctor_get_uint8(x_183, 0);
x_192 = lean_ctor_get_uint8(x_183, 1);
x_193 = lean_ctor_get_uint8(x_183, 2);
x_194 = lean_ctor_get_uint8(x_183, 3);
x_195 = lean_ctor_get_uint8(x_183, 4);
x_196 = lean_ctor_get_uint8(x_183, 5);
x_197 = lean_ctor_get_uint8(x_183, 6);
x_198 = lean_ctor_get_uint8(x_183, 7);
x_199 = lean_ctor_get_uint8(x_183, 8);
x_200 = lean_ctor_get_uint8(x_183, 10);
x_201 = lean_ctor_get_uint8(x_183, 11);
x_202 = lean_ctor_get_uint8(x_183, 12);
if (lean_is_exclusive(x_183)) {
 x_203 = x_183;
} else {
 lean_dec_ref(x_183);
 x_203 = lean_box(0);
}
x_204 = 2;
if (lean_is_scalar(x_203)) {
 x_205 = lean_alloc_ctor(0, 0, 13);
} else {
 x_205 = x_203;
}
lean_ctor_set_uint8(x_205, 0, x_191);
lean_ctor_set_uint8(x_205, 1, x_192);
lean_ctor_set_uint8(x_205, 2, x_193);
lean_ctor_set_uint8(x_205, 3, x_194);
lean_ctor_set_uint8(x_205, 4, x_195);
lean_ctor_set_uint8(x_205, 5, x_196);
lean_ctor_set_uint8(x_205, 6, x_197);
lean_ctor_set_uint8(x_205, 7, x_198);
lean_ctor_set_uint8(x_205, 8, x_199);
lean_ctor_set_uint8(x_205, 9, x_204);
lean_ctor_set_uint8(x_205, 10, x_200);
lean_ctor_set_uint8(x_205, 11, x_201);
lean_ctor_set_uint8(x_205, 12, x_202);
x_206 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_206, 0, x_205);
lean_ctor_set(x_206, 1, x_184);
lean_ctor_set(x_206, 2, x_185);
lean_ctor_set(x_206, 3, x_186);
lean_ctor_set(x_206, 4, x_187);
lean_ctor_set(x_206, 5, x_188);
lean_ctor_set_uint8(x_206, sizeof(void*)*6, x_189);
lean_ctor_set_uint8(x_206, sizeof(void*)*6 + 1, x_190);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_207 = l_Lean_Meta_isExprDefEq(x_182, x_3, x_206, x_5, x_6, x_7, x_177);
if (lean_obj_tag(x_207) == 0)
{
lean_object* x_208; uint8_t x_209; 
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_unbox(x_208);
lean_dec(x_208);
if (x_209 == 0)
{
lean_object* x_210; lean_object* x_211; uint8_t x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_210 = lean_ctor_get(x_207, 1);
lean_inc(x_210);
if (lean_is_exclusive(x_207)) {
 lean_ctor_release(x_207, 0);
 lean_ctor_release(x_207, 1);
 x_211 = x_207;
} else {
 lean_dec_ref(x_207);
 x_211 = lean_box(0);
}
x_212 = 0;
x_213 = lean_box(x_212);
if (lean_is_scalar(x_178)) {
 x_214 = lean_alloc_ctor(0, 2, 0);
} else {
 x_214 = x_178;
}
lean_ctor_set(x_214, 0, x_176);
lean_ctor_set(x_214, 1, x_213);
x_215 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_215, 0, x_173);
lean_ctor_set(x_215, 1, x_214);
if (lean_is_scalar(x_211)) {
 x_216 = lean_alloc_ctor(0, 2, 0);
} else {
 x_216 = x_211;
}
lean_ctor_set(x_216, 0, x_215);
lean_ctor_set(x_216, 1, x_210);
return x_216;
}
else
{
lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; lean_object* x_224; lean_object* x_225; uint8_t x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; 
x_217 = lean_ctor_get(x_207, 1);
lean_inc(x_217);
lean_dec(x_207);
x_218 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_173, x_4, x_5, x_6, x_7, x_217);
x_219 = lean_ctor_get(x_218, 0);
lean_inc(x_219);
x_220 = lean_ctor_get(x_218, 1);
lean_inc(x_220);
if (lean_is_exclusive(x_218)) {
 lean_ctor_release(x_218, 0);
 lean_ctor_release(x_218, 1);
 x_221 = x_218;
} else {
 lean_dec_ref(x_218);
 x_221 = lean_box(0);
}
x_222 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_176, x_4, x_5, x_6, x_7, x_220);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_223 = lean_ctor_get(x_222, 0);
lean_inc(x_223);
x_224 = lean_ctor_get(x_222, 1);
lean_inc(x_224);
if (lean_is_exclusive(x_222)) {
 lean_ctor_release(x_222, 0);
 lean_ctor_release(x_222, 1);
 x_225 = x_222;
} else {
 lean_dec_ref(x_222);
 x_225 = lean_box(0);
}
x_226 = 1;
x_227 = lean_box(x_226);
if (lean_is_scalar(x_221)) {
 x_228 = lean_alloc_ctor(0, 2, 0);
} else {
 x_228 = x_221;
}
lean_ctor_set(x_228, 0, x_223);
lean_ctor_set(x_228, 1, x_227);
if (lean_is_scalar(x_178)) {
 x_229 = lean_alloc_ctor(0, 2, 0);
} else {
 x_229 = x_178;
}
lean_ctor_set(x_229, 0, x_219);
lean_ctor_set(x_229, 1, x_228);
if (lean_is_scalar(x_225)) {
 x_230 = lean_alloc_ctor(0, 2, 0);
} else {
 x_230 = x_225;
}
lean_ctor_set(x_230, 0, x_229);
lean_ctor_set(x_230, 1, x_224);
return x_230;
}
}
else
{
lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; 
lean_dec(x_178);
lean_dec(x_176);
lean_dec(x_173);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_231 = lean_ctor_get(x_207, 0);
lean_inc(x_231);
x_232 = lean_ctor_get(x_207, 1);
lean_inc(x_232);
if (lean_is_exclusive(x_207)) {
 lean_ctor_release(x_207, 0);
 lean_ctor_release(x_207, 1);
 x_233 = x_207;
} else {
 lean_dec_ref(x_207);
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
static lean_object* _init_l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("True", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__2;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_coreConstructorMatcher(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_7 = lean_box(0);
x_8 = l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3;
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__1), 7, 2);
lean_closure_set(x_9, 0, x_8);
lean_closure_set(x_9, 1, x_1);
x_10 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4;
lean_inc(x_1);
x_11 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__2), 8, 3);
lean_closure_set(x_11, 0, x_10);
lean_closure_set(x_11, 1, x_7);
lean_closure_set(x_11, 2, x_1);
x_12 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__3), 8, 3);
lean_closure_set(x_12, 0, x_10);
lean_closure_set(x_12, 1, x_7);
lean_closure_set(x_12, 2, x_1);
x_13 = 0;
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_14 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_12, x_13, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_unbox(x_17);
lean_dec(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_14, 1);
lean_inc(x_19);
lean_dec(x_14);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_20 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_11, x_13, x_2, x_3, x_4, x_5, x_19);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_unbox(x_23);
lean_dec(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_20, 1);
lean_inc(x_25);
lean_dec(x_20);
x_26 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_9, x_13, x_2, x_3, x_4, x_5, x_25);
if (lean_obj_tag(x_26) == 0)
{
lean_object* x_27; uint8_t x_28; 
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = lean_unbox(x_27);
lean_dec(x_27);
if (x_28 == 0)
{
uint8_t x_29; 
x_29 = !lean_is_exclusive(x_26);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_ctor_get(x_26, 0);
lean_dec(x_30);
x_31 = lean_box(x_13);
lean_ctor_set(x_26, 0, x_31);
return x_26;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_26, 1);
lean_inc(x_32);
lean_dec(x_26);
x_33 = lean_box(x_13);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_32);
return x_34;
}
}
else
{
uint8_t x_35; 
x_35 = !lean_is_exclusive(x_26);
if (x_35 == 0)
{
lean_object* x_36; uint8_t x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_26, 0);
lean_dec(x_36);
x_37 = 1;
x_38 = lean_box(x_37);
lean_ctor_set(x_26, 0, x_38);
return x_26;
}
else
{
lean_object* x_39; uint8_t x_40; lean_object* x_41; lean_object* x_42; 
x_39 = lean_ctor_get(x_26, 1);
lean_inc(x_39);
lean_dec(x_26);
x_40 = 1;
x_41 = lean_box(x_40);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_39);
return x_42;
}
}
}
else
{
uint8_t x_43; 
x_43 = !lean_is_exclusive(x_26);
if (x_43 == 0)
{
return x_26;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_26, 0);
x_45 = lean_ctor_get(x_26, 1);
lean_inc(x_45);
lean_inc(x_44);
lean_dec(x_26);
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
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_47 = !lean_is_exclusive(x_20);
if (x_47 == 0)
{
lean_object* x_48; uint8_t x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_20, 0);
lean_dec(x_48);
x_49 = 1;
x_50 = lean_box(x_49);
lean_ctor_set(x_20, 0, x_50);
return x_20;
}
else
{
lean_object* x_51; uint8_t x_52; lean_object* x_53; lean_object* x_54; 
x_51 = lean_ctor_get(x_20, 1);
lean_inc(x_51);
lean_dec(x_20);
x_52 = 1;
x_53 = lean_box(x_52);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_51);
return x_54;
}
}
}
else
{
uint8_t x_55; 
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_55 = !lean_is_exclusive(x_20);
if (x_55 == 0)
{
return x_20;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_20, 0);
x_57 = lean_ctor_get(x_20, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_20);
x_58 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
return x_58;
}
}
}
else
{
uint8_t x_59; 
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_59 = !lean_is_exclusive(x_14);
if (x_59 == 0)
{
lean_object* x_60; uint8_t x_61; lean_object* x_62; 
x_60 = lean_ctor_get(x_14, 0);
lean_dec(x_60);
x_61 = 1;
x_62 = lean_box(x_61);
lean_ctor_set(x_14, 0, x_62);
return x_14;
}
else
{
lean_object* x_63; uint8_t x_64; lean_object* x_65; lean_object* x_66; 
x_63 = lean_ctor_get(x_14, 1);
lean_inc(x_63);
lean_dec(x_14);
x_64 = 1;
x_65 = lean_box(x_64);
x_66 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_66, 0, x_65);
lean_ctor_set(x_66, 1, x_63);
return x_66;
}
}
}
else
{
uint8_t x_67; 
lean_dec(x_11);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_67 = !lean_is_exclusive(x_14);
if (x_67 == 0)
{
return x_14;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_14, 0);
x_69 = lean_ctor_get(x_14, 1);
lean_inc(x_69);
lean_inc(x_68);
lean_dec(x_14);
x_70 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_70, 0, x_68);
lean_ctor_set(x_70, 1, x_69);
return x_70;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Exists", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = l_Lean_Meta_mkFreshLevelMVar(x_3, x_4, x_5, x_6, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
x_12 = l_Lean_Expr_sort___override(x_10);
x_13 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_13, 0, x_12);
x_14 = 0;
x_15 = lean_box(0);
lean_inc(x_3);
x_16 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_13, x_14, x_15, x_3, x_4, x_5, x_6, x_11);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_16, 1);
x_20 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
x_21 = 0;
lean_inc(x_18);
x_22 = l_Lean_Expr_forallE___override(x_15, x_18, x_20, x_21);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_22);
lean_inc(x_3);
x_24 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_23, x_14, x_15, x_3, x_4, x_5, x_6, x_19);
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_26 = lean_ctor_get(x_24, 0);
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_10);
lean_ctor_set_tag(x_24, 1);
lean_ctor_set(x_24, 1, x_1);
lean_ctor_set(x_24, 0, x_10);
x_28 = l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2;
x_29 = l_Lean_Expr_const___override(x_28, x_24);
lean_inc(x_18);
x_30 = l_Lean_Expr_app___override(x_29, x_18);
lean_inc(x_26);
x_31 = l_Lean_Expr_app___override(x_30, x_26);
x_32 = lean_ctor_get(x_3, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_3, 1);
lean_inc(x_33);
x_34 = lean_ctor_get(x_3, 2);
lean_inc(x_34);
x_35 = lean_ctor_get(x_3, 3);
lean_inc(x_35);
x_36 = lean_ctor_get(x_3, 4);
lean_inc(x_36);
x_37 = lean_ctor_get(x_3, 5);
lean_inc(x_37);
x_38 = !lean_is_exclusive(x_32);
if (x_38 == 0)
{
uint8_t x_39; uint8_t x_40; uint8_t x_41; lean_object* x_42; lean_object* x_43; 
x_39 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_40 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_41 = 2;
lean_ctor_set_uint8(x_32, 9, x_41);
x_42 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_42, 0, x_32);
lean_ctor_set(x_42, 1, x_33);
lean_ctor_set(x_42, 2, x_34);
lean_ctor_set(x_42, 3, x_35);
lean_ctor_set(x_42, 4, x_36);
lean_ctor_set(x_42, 5, x_37);
lean_ctor_set_uint8(x_42, sizeof(void*)*6, x_39);
lean_ctor_set_uint8(x_42, sizeof(void*)*6 + 1, x_40);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_43 = l_Lean_Meta_isExprDefEq(x_31, x_2, x_42, x_4, x_5, x_6, x_27);
if (lean_obj_tag(x_43) == 0)
{
lean_object* x_44; uint8_t x_45; 
x_44 = lean_ctor_get(x_43, 0);
lean_inc(x_44);
x_45 = lean_unbox(x_44);
lean_dec(x_44);
if (x_45 == 0)
{
uint8_t x_46; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_46 = !lean_is_exclusive(x_43);
if (x_46 == 0)
{
lean_object* x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; 
x_47 = lean_ctor_get(x_43, 0);
lean_dec(x_47);
x_48 = 0;
x_49 = lean_box(x_48);
lean_ctor_set(x_16, 1, x_49);
lean_ctor_set(x_16, 0, x_26);
lean_ctor_set(x_8, 1, x_16);
lean_ctor_set(x_8, 0, x_18);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_10);
lean_ctor_set(x_50, 1, x_8);
lean_ctor_set(x_43, 0, x_50);
return x_43;
}
else
{
lean_object* x_51; uint8_t x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_51 = lean_ctor_get(x_43, 1);
lean_inc(x_51);
lean_dec(x_43);
x_52 = 0;
x_53 = lean_box(x_52);
lean_ctor_set(x_16, 1, x_53);
lean_ctor_set(x_16, 0, x_26);
lean_ctor_set(x_8, 1, x_16);
lean_ctor_set(x_8, 0, x_18);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_10);
lean_ctor_set(x_54, 1, x_8);
x_55 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_55, 0, x_54);
lean_ctor_set(x_55, 1, x_51);
return x_55;
}
}
else
{
lean_object* x_56; lean_object* x_57; uint8_t x_58; 
lean_free_object(x_8);
x_56 = lean_ctor_get(x_43, 1);
lean_inc(x_56);
lean_dec(x_43);
x_57 = l_Lean_instantiateLevelMVars___at_Lean_Meta_normalizeLevel___spec__1(x_10, x_3, x_4, x_5, x_6, x_56);
x_58 = !lean_is_exclusive(x_57);
if (x_58 == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; uint8_t x_62; 
x_59 = lean_ctor_get(x_57, 0);
x_60 = lean_ctor_get(x_57, 1);
x_61 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_18, x_3, x_4, x_5, x_6, x_60);
x_62 = !lean_is_exclusive(x_61);
if (x_62 == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; uint8_t x_66; 
x_63 = lean_ctor_get(x_61, 0);
x_64 = lean_ctor_get(x_61, 1);
x_65 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_26, x_3, x_4, x_5, x_6, x_64);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_66 = !lean_is_exclusive(x_65);
if (x_66 == 0)
{
lean_object* x_67; uint8_t x_68; lean_object* x_69; 
x_67 = lean_ctor_get(x_65, 0);
x_68 = 1;
x_69 = lean_box(x_68);
lean_ctor_set(x_61, 1, x_69);
lean_ctor_set(x_61, 0, x_67);
lean_ctor_set(x_57, 1, x_61);
lean_ctor_set(x_57, 0, x_63);
lean_ctor_set(x_16, 1, x_57);
lean_ctor_set(x_16, 0, x_59);
lean_ctor_set(x_65, 0, x_16);
return x_65;
}
else
{
lean_object* x_70; lean_object* x_71; uint8_t x_72; lean_object* x_73; lean_object* x_74; 
x_70 = lean_ctor_get(x_65, 0);
x_71 = lean_ctor_get(x_65, 1);
lean_inc(x_71);
lean_inc(x_70);
lean_dec(x_65);
x_72 = 1;
x_73 = lean_box(x_72);
lean_ctor_set(x_61, 1, x_73);
lean_ctor_set(x_61, 0, x_70);
lean_ctor_set(x_57, 1, x_61);
lean_ctor_set(x_57, 0, x_63);
lean_ctor_set(x_16, 1, x_57);
lean_ctor_set(x_16, 0, x_59);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_16);
lean_ctor_set(x_74, 1, x_71);
return x_74;
}
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; uint8_t x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_75 = lean_ctor_get(x_61, 0);
x_76 = lean_ctor_get(x_61, 1);
lean_inc(x_76);
lean_inc(x_75);
lean_dec(x_61);
x_77 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_26, x_3, x_4, x_5, x_6, x_76);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_78 = lean_ctor_get(x_77, 0);
lean_inc(x_78);
x_79 = lean_ctor_get(x_77, 1);
lean_inc(x_79);
if (lean_is_exclusive(x_77)) {
 lean_ctor_release(x_77, 0);
 lean_ctor_release(x_77, 1);
 x_80 = x_77;
} else {
 lean_dec_ref(x_77);
 x_80 = lean_box(0);
}
x_81 = 1;
x_82 = lean_box(x_81);
x_83 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_83, 0, x_78);
lean_ctor_set(x_83, 1, x_82);
lean_ctor_set(x_57, 1, x_83);
lean_ctor_set(x_57, 0, x_75);
lean_ctor_set(x_16, 1, x_57);
lean_ctor_set(x_16, 0, x_59);
if (lean_is_scalar(x_80)) {
 x_84 = lean_alloc_ctor(0, 2, 0);
} else {
 x_84 = x_80;
}
lean_ctor_set(x_84, 0, x_16);
lean_ctor_set(x_84, 1, x_79);
return x_84;
}
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; uint8_t x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_85 = lean_ctor_get(x_57, 0);
x_86 = lean_ctor_get(x_57, 1);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_57);
x_87 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_18, x_3, x_4, x_5, x_6, x_86);
x_88 = lean_ctor_get(x_87, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_87, 1);
lean_inc(x_89);
if (lean_is_exclusive(x_87)) {
 lean_ctor_release(x_87, 0);
 lean_ctor_release(x_87, 1);
 x_90 = x_87;
} else {
 lean_dec_ref(x_87);
 x_90 = lean_box(0);
}
x_91 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_26, x_3, x_4, x_5, x_6, x_89);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_92 = lean_ctor_get(x_91, 0);
lean_inc(x_92);
x_93 = lean_ctor_get(x_91, 1);
lean_inc(x_93);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_94 = x_91;
} else {
 lean_dec_ref(x_91);
 x_94 = lean_box(0);
}
x_95 = 1;
x_96 = lean_box(x_95);
if (lean_is_scalar(x_90)) {
 x_97 = lean_alloc_ctor(0, 2, 0);
} else {
 x_97 = x_90;
}
lean_ctor_set(x_97, 0, x_92);
lean_ctor_set(x_97, 1, x_96);
x_98 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_98, 0, x_88);
lean_ctor_set(x_98, 1, x_97);
lean_ctor_set(x_16, 1, x_98);
lean_ctor_set(x_16, 0, x_85);
if (lean_is_scalar(x_94)) {
 x_99 = lean_alloc_ctor(0, 2, 0);
} else {
 x_99 = x_94;
}
lean_ctor_set(x_99, 0, x_16);
lean_ctor_set(x_99, 1, x_93);
return x_99;
}
}
}
else
{
uint8_t x_100; 
lean_dec(x_26);
lean_free_object(x_16);
lean_dec(x_18);
lean_free_object(x_8);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_100 = !lean_is_exclusive(x_43);
if (x_100 == 0)
{
return x_43;
}
else
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; 
x_101 = lean_ctor_get(x_43, 0);
x_102 = lean_ctor_get(x_43, 1);
lean_inc(x_102);
lean_inc(x_101);
lean_dec(x_43);
x_103 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_103, 0, x_101);
lean_ctor_set(x_103, 1, x_102);
return x_103;
}
}
}
else
{
uint8_t x_104; uint8_t x_105; uint8_t x_106; uint8_t x_107; uint8_t x_108; uint8_t x_109; uint8_t x_110; uint8_t x_111; uint8_t x_112; uint8_t x_113; uint8_t x_114; uint8_t x_115; uint8_t x_116; uint8_t x_117; uint8_t x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; 
x_104 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_105 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_106 = lean_ctor_get_uint8(x_32, 0);
x_107 = lean_ctor_get_uint8(x_32, 1);
x_108 = lean_ctor_get_uint8(x_32, 2);
x_109 = lean_ctor_get_uint8(x_32, 3);
x_110 = lean_ctor_get_uint8(x_32, 4);
x_111 = lean_ctor_get_uint8(x_32, 5);
x_112 = lean_ctor_get_uint8(x_32, 6);
x_113 = lean_ctor_get_uint8(x_32, 7);
x_114 = lean_ctor_get_uint8(x_32, 8);
x_115 = lean_ctor_get_uint8(x_32, 10);
x_116 = lean_ctor_get_uint8(x_32, 11);
x_117 = lean_ctor_get_uint8(x_32, 12);
lean_dec(x_32);
x_118 = 2;
x_119 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_119, 0, x_106);
lean_ctor_set_uint8(x_119, 1, x_107);
lean_ctor_set_uint8(x_119, 2, x_108);
lean_ctor_set_uint8(x_119, 3, x_109);
lean_ctor_set_uint8(x_119, 4, x_110);
lean_ctor_set_uint8(x_119, 5, x_111);
lean_ctor_set_uint8(x_119, 6, x_112);
lean_ctor_set_uint8(x_119, 7, x_113);
lean_ctor_set_uint8(x_119, 8, x_114);
lean_ctor_set_uint8(x_119, 9, x_118);
lean_ctor_set_uint8(x_119, 10, x_115);
lean_ctor_set_uint8(x_119, 11, x_116);
lean_ctor_set_uint8(x_119, 12, x_117);
x_120 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_120, 0, x_119);
lean_ctor_set(x_120, 1, x_33);
lean_ctor_set(x_120, 2, x_34);
lean_ctor_set(x_120, 3, x_35);
lean_ctor_set(x_120, 4, x_36);
lean_ctor_set(x_120, 5, x_37);
lean_ctor_set_uint8(x_120, sizeof(void*)*6, x_104);
lean_ctor_set_uint8(x_120, sizeof(void*)*6 + 1, x_105);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_121 = l_Lean_Meta_isExprDefEq(x_31, x_2, x_120, x_4, x_5, x_6, x_27);
if (lean_obj_tag(x_121) == 0)
{
lean_object* x_122; uint8_t x_123; 
x_122 = lean_ctor_get(x_121, 0);
lean_inc(x_122);
x_123 = lean_unbox(x_122);
lean_dec(x_122);
if (x_123 == 0)
{
lean_object* x_124; lean_object* x_125; uint8_t x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_124 = lean_ctor_get(x_121, 1);
lean_inc(x_124);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_125 = x_121;
} else {
 lean_dec_ref(x_121);
 x_125 = lean_box(0);
}
x_126 = 0;
x_127 = lean_box(x_126);
lean_ctor_set(x_16, 1, x_127);
lean_ctor_set(x_16, 0, x_26);
lean_ctor_set(x_8, 1, x_16);
lean_ctor_set(x_8, 0, x_18);
x_128 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_128, 0, x_10);
lean_ctor_set(x_128, 1, x_8);
if (lean_is_scalar(x_125)) {
 x_129 = lean_alloc_ctor(0, 2, 0);
} else {
 x_129 = x_125;
}
lean_ctor_set(x_129, 0, x_128);
lean_ctor_set(x_129, 1, x_124);
return x_129;
}
else
{
lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; uint8_t x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; 
lean_free_object(x_8);
x_130 = lean_ctor_get(x_121, 1);
lean_inc(x_130);
lean_dec(x_121);
x_131 = l_Lean_instantiateLevelMVars___at_Lean_Meta_normalizeLevel___spec__1(x_10, x_3, x_4, x_5, x_6, x_130);
x_132 = lean_ctor_get(x_131, 0);
lean_inc(x_132);
x_133 = lean_ctor_get(x_131, 1);
lean_inc(x_133);
if (lean_is_exclusive(x_131)) {
 lean_ctor_release(x_131, 0);
 lean_ctor_release(x_131, 1);
 x_134 = x_131;
} else {
 lean_dec_ref(x_131);
 x_134 = lean_box(0);
}
x_135 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_18, x_3, x_4, x_5, x_6, x_133);
x_136 = lean_ctor_get(x_135, 0);
lean_inc(x_136);
x_137 = lean_ctor_get(x_135, 1);
lean_inc(x_137);
if (lean_is_exclusive(x_135)) {
 lean_ctor_release(x_135, 0);
 lean_ctor_release(x_135, 1);
 x_138 = x_135;
} else {
 lean_dec_ref(x_135);
 x_138 = lean_box(0);
}
x_139 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_26, x_3, x_4, x_5, x_6, x_137);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_140 = lean_ctor_get(x_139, 0);
lean_inc(x_140);
x_141 = lean_ctor_get(x_139, 1);
lean_inc(x_141);
if (lean_is_exclusive(x_139)) {
 lean_ctor_release(x_139, 0);
 lean_ctor_release(x_139, 1);
 x_142 = x_139;
} else {
 lean_dec_ref(x_139);
 x_142 = lean_box(0);
}
x_143 = 1;
x_144 = lean_box(x_143);
if (lean_is_scalar(x_138)) {
 x_145 = lean_alloc_ctor(0, 2, 0);
} else {
 x_145 = x_138;
}
lean_ctor_set(x_145, 0, x_140);
lean_ctor_set(x_145, 1, x_144);
if (lean_is_scalar(x_134)) {
 x_146 = lean_alloc_ctor(0, 2, 0);
} else {
 x_146 = x_134;
}
lean_ctor_set(x_146, 0, x_136);
lean_ctor_set(x_146, 1, x_145);
lean_ctor_set(x_16, 1, x_146);
lean_ctor_set(x_16, 0, x_132);
if (lean_is_scalar(x_142)) {
 x_147 = lean_alloc_ctor(0, 2, 0);
} else {
 x_147 = x_142;
}
lean_ctor_set(x_147, 0, x_16);
lean_ctor_set(x_147, 1, x_141);
return x_147;
}
}
else
{
lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; 
lean_dec(x_26);
lean_free_object(x_16);
lean_dec(x_18);
lean_free_object(x_8);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_148 = lean_ctor_get(x_121, 0);
lean_inc(x_148);
x_149 = lean_ctor_get(x_121, 1);
lean_inc(x_149);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_150 = x_121;
} else {
 lean_dec_ref(x_121);
 x_150 = lean_box(0);
}
if (lean_is_scalar(x_150)) {
 x_151 = lean_alloc_ctor(1, 2, 0);
} else {
 x_151 = x_150;
}
lean_ctor_set(x_151, 0, x_148);
lean_ctor_set(x_151, 1, x_149);
return x_151;
}
}
}
else
{
lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; uint8_t x_165; uint8_t x_166; uint8_t x_167; uint8_t x_168; uint8_t x_169; uint8_t x_170; uint8_t x_171; uint8_t x_172; uint8_t x_173; uint8_t x_174; uint8_t x_175; uint8_t x_176; uint8_t x_177; uint8_t x_178; lean_object* x_179; uint8_t x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
x_152 = lean_ctor_get(x_24, 0);
x_153 = lean_ctor_get(x_24, 1);
lean_inc(x_153);
lean_inc(x_152);
lean_dec(x_24);
lean_inc(x_10);
x_154 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_154, 0, x_10);
lean_ctor_set(x_154, 1, x_1);
x_155 = l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2;
x_156 = l_Lean_Expr_const___override(x_155, x_154);
lean_inc(x_18);
x_157 = l_Lean_Expr_app___override(x_156, x_18);
lean_inc(x_152);
x_158 = l_Lean_Expr_app___override(x_157, x_152);
x_159 = lean_ctor_get(x_3, 0);
lean_inc(x_159);
x_160 = lean_ctor_get(x_3, 1);
lean_inc(x_160);
x_161 = lean_ctor_get(x_3, 2);
lean_inc(x_161);
x_162 = lean_ctor_get(x_3, 3);
lean_inc(x_162);
x_163 = lean_ctor_get(x_3, 4);
lean_inc(x_163);
x_164 = lean_ctor_get(x_3, 5);
lean_inc(x_164);
x_165 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_166 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_167 = lean_ctor_get_uint8(x_159, 0);
x_168 = lean_ctor_get_uint8(x_159, 1);
x_169 = lean_ctor_get_uint8(x_159, 2);
x_170 = lean_ctor_get_uint8(x_159, 3);
x_171 = lean_ctor_get_uint8(x_159, 4);
x_172 = lean_ctor_get_uint8(x_159, 5);
x_173 = lean_ctor_get_uint8(x_159, 6);
x_174 = lean_ctor_get_uint8(x_159, 7);
x_175 = lean_ctor_get_uint8(x_159, 8);
x_176 = lean_ctor_get_uint8(x_159, 10);
x_177 = lean_ctor_get_uint8(x_159, 11);
x_178 = lean_ctor_get_uint8(x_159, 12);
if (lean_is_exclusive(x_159)) {
 x_179 = x_159;
} else {
 lean_dec_ref(x_159);
 x_179 = lean_box(0);
}
x_180 = 2;
if (lean_is_scalar(x_179)) {
 x_181 = lean_alloc_ctor(0, 0, 13);
} else {
 x_181 = x_179;
}
lean_ctor_set_uint8(x_181, 0, x_167);
lean_ctor_set_uint8(x_181, 1, x_168);
lean_ctor_set_uint8(x_181, 2, x_169);
lean_ctor_set_uint8(x_181, 3, x_170);
lean_ctor_set_uint8(x_181, 4, x_171);
lean_ctor_set_uint8(x_181, 5, x_172);
lean_ctor_set_uint8(x_181, 6, x_173);
lean_ctor_set_uint8(x_181, 7, x_174);
lean_ctor_set_uint8(x_181, 8, x_175);
lean_ctor_set_uint8(x_181, 9, x_180);
lean_ctor_set_uint8(x_181, 10, x_176);
lean_ctor_set_uint8(x_181, 11, x_177);
lean_ctor_set_uint8(x_181, 12, x_178);
x_182 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_182, 0, x_181);
lean_ctor_set(x_182, 1, x_160);
lean_ctor_set(x_182, 2, x_161);
lean_ctor_set(x_182, 3, x_162);
lean_ctor_set(x_182, 4, x_163);
lean_ctor_set(x_182, 5, x_164);
lean_ctor_set_uint8(x_182, sizeof(void*)*6, x_165);
lean_ctor_set_uint8(x_182, sizeof(void*)*6 + 1, x_166);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_183 = l_Lean_Meta_isExprDefEq(x_158, x_2, x_182, x_4, x_5, x_6, x_153);
if (lean_obj_tag(x_183) == 0)
{
lean_object* x_184; uint8_t x_185; 
x_184 = lean_ctor_get(x_183, 0);
lean_inc(x_184);
x_185 = lean_unbox(x_184);
lean_dec(x_184);
if (x_185 == 0)
{
lean_object* x_186; lean_object* x_187; uint8_t x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_186 = lean_ctor_get(x_183, 1);
lean_inc(x_186);
if (lean_is_exclusive(x_183)) {
 lean_ctor_release(x_183, 0);
 lean_ctor_release(x_183, 1);
 x_187 = x_183;
} else {
 lean_dec_ref(x_183);
 x_187 = lean_box(0);
}
x_188 = 0;
x_189 = lean_box(x_188);
lean_ctor_set(x_16, 1, x_189);
lean_ctor_set(x_16, 0, x_152);
lean_ctor_set(x_8, 1, x_16);
lean_ctor_set(x_8, 0, x_18);
x_190 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_190, 0, x_10);
lean_ctor_set(x_190, 1, x_8);
if (lean_is_scalar(x_187)) {
 x_191 = lean_alloc_ctor(0, 2, 0);
} else {
 x_191 = x_187;
}
lean_ctor_set(x_191, 0, x_190);
lean_ctor_set(x_191, 1, x_186);
return x_191;
}
else
{
lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; uint8_t x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; 
lean_free_object(x_8);
x_192 = lean_ctor_get(x_183, 1);
lean_inc(x_192);
lean_dec(x_183);
x_193 = l_Lean_instantiateLevelMVars___at_Lean_Meta_normalizeLevel___spec__1(x_10, x_3, x_4, x_5, x_6, x_192);
x_194 = lean_ctor_get(x_193, 0);
lean_inc(x_194);
x_195 = lean_ctor_get(x_193, 1);
lean_inc(x_195);
if (lean_is_exclusive(x_193)) {
 lean_ctor_release(x_193, 0);
 lean_ctor_release(x_193, 1);
 x_196 = x_193;
} else {
 lean_dec_ref(x_193);
 x_196 = lean_box(0);
}
x_197 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_18, x_3, x_4, x_5, x_6, x_195);
x_198 = lean_ctor_get(x_197, 0);
lean_inc(x_198);
x_199 = lean_ctor_get(x_197, 1);
lean_inc(x_199);
if (lean_is_exclusive(x_197)) {
 lean_ctor_release(x_197, 0);
 lean_ctor_release(x_197, 1);
 x_200 = x_197;
} else {
 lean_dec_ref(x_197);
 x_200 = lean_box(0);
}
x_201 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_152, x_3, x_4, x_5, x_6, x_199);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_202 = lean_ctor_get(x_201, 0);
lean_inc(x_202);
x_203 = lean_ctor_get(x_201, 1);
lean_inc(x_203);
if (lean_is_exclusive(x_201)) {
 lean_ctor_release(x_201, 0);
 lean_ctor_release(x_201, 1);
 x_204 = x_201;
} else {
 lean_dec_ref(x_201);
 x_204 = lean_box(0);
}
x_205 = 1;
x_206 = lean_box(x_205);
if (lean_is_scalar(x_200)) {
 x_207 = lean_alloc_ctor(0, 2, 0);
} else {
 x_207 = x_200;
}
lean_ctor_set(x_207, 0, x_202);
lean_ctor_set(x_207, 1, x_206);
if (lean_is_scalar(x_196)) {
 x_208 = lean_alloc_ctor(0, 2, 0);
} else {
 x_208 = x_196;
}
lean_ctor_set(x_208, 0, x_198);
lean_ctor_set(x_208, 1, x_207);
lean_ctor_set(x_16, 1, x_208);
lean_ctor_set(x_16, 0, x_194);
if (lean_is_scalar(x_204)) {
 x_209 = lean_alloc_ctor(0, 2, 0);
} else {
 x_209 = x_204;
}
lean_ctor_set(x_209, 0, x_16);
lean_ctor_set(x_209, 1, x_203);
return x_209;
}
}
else
{
lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; 
lean_dec(x_152);
lean_free_object(x_16);
lean_dec(x_18);
lean_free_object(x_8);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_210 = lean_ctor_get(x_183, 0);
lean_inc(x_210);
x_211 = lean_ctor_get(x_183, 1);
lean_inc(x_211);
if (lean_is_exclusive(x_183)) {
 lean_ctor_release(x_183, 0);
 lean_ctor_release(x_183, 1);
 x_212 = x_183;
} else {
 lean_dec_ref(x_183);
 x_212 = lean_box(0);
}
if (lean_is_scalar(x_212)) {
 x_213 = lean_alloc_ctor(1, 2, 0);
} else {
 x_213 = x_212;
}
lean_ctor_set(x_213, 0, x_210);
lean_ctor_set(x_213, 1, x_211);
return x_213;
}
}
}
else
{
lean_object* x_214; lean_object* x_215; lean_object* x_216; uint8_t x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; lean_object* x_224; lean_object* x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; uint8_t x_235; uint8_t x_236; uint8_t x_237; uint8_t x_238; uint8_t x_239; uint8_t x_240; uint8_t x_241; uint8_t x_242; uint8_t x_243; uint8_t x_244; uint8_t x_245; uint8_t x_246; uint8_t x_247; uint8_t x_248; lean_object* x_249; uint8_t x_250; lean_object* x_251; lean_object* x_252; lean_object* x_253; 
x_214 = lean_ctor_get(x_16, 0);
x_215 = lean_ctor_get(x_16, 1);
lean_inc(x_215);
lean_inc(x_214);
lean_dec(x_16);
x_216 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
x_217 = 0;
lean_inc(x_214);
x_218 = l_Lean_Expr_forallE___override(x_15, x_214, x_216, x_217);
x_219 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_219, 0, x_218);
lean_inc(x_3);
x_220 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_219, x_14, x_15, x_3, x_4, x_5, x_6, x_215);
x_221 = lean_ctor_get(x_220, 0);
lean_inc(x_221);
x_222 = lean_ctor_get(x_220, 1);
lean_inc(x_222);
if (lean_is_exclusive(x_220)) {
 lean_ctor_release(x_220, 0);
 lean_ctor_release(x_220, 1);
 x_223 = x_220;
} else {
 lean_dec_ref(x_220);
 x_223 = lean_box(0);
}
lean_inc(x_10);
if (lean_is_scalar(x_223)) {
 x_224 = lean_alloc_ctor(1, 2, 0);
} else {
 x_224 = x_223;
 lean_ctor_set_tag(x_224, 1);
}
lean_ctor_set(x_224, 0, x_10);
lean_ctor_set(x_224, 1, x_1);
x_225 = l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2;
x_226 = l_Lean_Expr_const___override(x_225, x_224);
lean_inc(x_214);
x_227 = l_Lean_Expr_app___override(x_226, x_214);
lean_inc(x_221);
x_228 = l_Lean_Expr_app___override(x_227, x_221);
x_229 = lean_ctor_get(x_3, 0);
lean_inc(x_229);
x_230 = lean_ctor_get(x_3, 1);
lean_inc(x_230);
x_231 = lean_ctor_get(x_3, 2);
lean_inc(x_231);
x_232 = lean_ctor_get(x_3, 3);
lean_inc(x_232);
x_233 = lean_ctor_get(x_3, 4);
lean_inc(x_233);
x_234 = lean_ctor_get(x_3, 5);
lean_inc(x_234);
x_235 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_236 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_237 = lean_ctor_get_uint8(x_229, 0);
x_238 = lean_ctor_get_uint8(x_229, 1);
x_239 = lean_ctor_get_uint8(x_229, 2);
x_240 = lean_ctor_get_uint8(x_229, 3);
x_241 = lean_ctor_get_uint8(x_229, 4);
x_242 = lean_ctor_get_uint8(x_229, 5);
x_243 = lean_ctor_get_uint8(x_229, 6);
x_244 = lean_ctor_get_uint8(x_229, 7);
x_245 = lean_ctor_get_uint8(x_229, 8);
x_246 = lean_ctor_get_uint8(x_229, 10);
x_247 = lean_ctor_get_uint8(x_229, 11);
x_248 = lean_ctor_get_uint8(x_229, 12);
if (lean_is_exclusive(x_229)) {
 x_249 = x_229;
} else {
 lean_dec_ref(x_229);
 x_249 = lean_box(0);
}
x_250 = 2;
if (lean_is_scalar(x_249)) {
 x_251 = lean_alloc_ctor(0, 0, 13);
} else {
 x_251 = x_249;
}
lean_ctor_set_uint8(x_251, 0, x_237);
lean_ctor_set_uint8(x_251, 1, x_238);
lean_ctor_set_uint8(x_251, 2, x_239);
lean_ctor_set_uint8(x_251, 3, x_240);
lean_ctor_set_uint8(x_251, 4, x_241);
lean_ctor_set_uint8(x_251, 5, x_242);
lean_ctor_set_uint8(x_251, 6, x_243);
lean_ctor_set_uint8(x_251, 7, x_244);
lean_ctor_set_uint8(x_251, 8, x_245);
lean_ctor_set_uint8(x_251, 9, x_250);
lean_ctor_set_uint8(x_251, 10, x_246);
lean_ctor_set_uint8(x_251, 11, x_247);
lean_ctor_set_uint8(x_251, 12, x_248);
x_252 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_252, 0, x_251);
lean_ctor_set(x_252, 1, x_230);
lean_ctor_set(x_252, 2, x_231);
lean_ctor_set(x_252, 3, x_232);
lean_ctor_set(x_252, 4, x_233);
lean_ctor_set(x_252, 5, x_234);
lean_ctor_set_uint8(x_252, sizeof(void*)*6, x_235);
lean_ctor_set_uint8(x_252, sizeof(void*)*6 + 1, x_236);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_253 = l_Lean_Meta_isExprDefEq(x_228, x_2, x_252, x_4, x_5, x_6, x_222);
if (lean_obj_tag(x_253) == 0)
{
lean_object* x_254; uint8_t x_255; 
x_254 = lean_ctor_get(x_253, 0);
lean_inc(x_254);
x_255 = lean_unbox(x_254);
lean_dec(x_254);
if (x_255 == 0)
{
lean_object* x_256; lean_object* x_257; uint8_t x_258; lean_object* x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_256 = lean_ctor_get(x_253, 1);
lean_inc(x_256);
if (lean_is_exclusive(x_253)) {
 lean_ctor_release(x_253, 0);
 lean_ctor_release(x_253, 1);
 x_257 = x_253;
} else {
 lean_dec_ref(x_253);
 x_257 = lean_box(0);
}
x_258 = 0;
x_259 = lean_box(x_258);
x_260 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_260, 0, x_221);
lean_ctor_set(x_260, 1, x_259);
lean_ctor_set(x_8, 1, x_260);
lean_ctor_set(x_8, 0, x_214);
x_261 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_261, 0, x_10);
lean_ctor_set(x_261, 1, x_8);
if (lean_is_scalar(x_257)) {
 x_262 = lean_alloc_ctor(0, 2, 0);
} else {
 x_262 = x_257;
}
lean_ctor_set(x_262, 0, x_261);
lean_ctor_set(x_262, 1, x_256);
return x_262;
}
else
{
lean_object* x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; lean_object* x_267; lean_object* x_268; lean_object* x_269; lean_object* x_270; lean_object* x_271; lean_object* x_272; lean_object* x_273; lean_object* x_274; lean_object* x_275; uint8_t x_276; lean_object* x_277; lean_object* x_278; lean_object* x_279; lean_object* x_280; lean_object* x_281; 
lean_free_object(x_8);
x_263 = lean_ctor_get(x_253, 1);
lean_inc(x_263);
lean_dec(x_253);
x_264 = l_Lean_instantiateLevelMVars___at_Lean_Meta_normalizeLevel___spec__1(x_10, x_3, x_4, x_5, x_6, x_263);
x_265 = lean_ctor_get(x_264, 0);
lean_inc(x_265);
x_266 = lean_ctor_get(x_264, 1);
lean_inc(x_266);
if (lean_is_exclusive(x_264)) {
 lean_ctor_release(x_264, 0);
 lean_ctor_release(x_264, 1);
 x_267 = x_264;
} else {
 lean_dec_ref(x_264);
 x_267 = lean_box(0);
}
x_268 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_214, x_3, x_4, x_5, x_6, x_266);
x_269 = lean_ctor_get(x_268, 0);
lean_inc(x_269);
x_270 = lean_ctor_get(x_268, 1);
lean_inc(x_270);
if (lean_is_exclusive(x_268)) {
 lean_ctor_release(x_268, 0);
 lean_ctor_release(x_268, 1);
 x_271 = x_268;
} else {
 lean_dec_ref(x_268);
 x_271 = lean_box(0);
}
x_272 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_221, x_3, x_4, x_5, x_6, x_270);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_273 = lean_ctor_get(x_272, 0);
lean_inc(x_273);
x_274 = lean_ctor_get(x_272, 1);
lean_inc(x_274);
if (lean_is_exclusive(x_272)) {
 lean_ctor_release(x_272, 0);
 lean_ctor_release(x_272, 1);
 x_275 = x_272;
} else {
 lean_dec_ref(x_272);
 x_275 = lean_box(0);
}
x_276 = 1;
x_277 = lean_box(x_276);
if (lean_is_scalar(x_271)) {
 x_278 = lean_alloc_ctor(0, 2, 0);
} else {
 x_278 = x_271;
}
lean_ctor_set(x_278, 0, x_273);
lean_ctor_set(x_278, 1, x_277);
if (lean_is_scalar(x_267)) {
 x_279 = lean_alloc_ctor(0, 2, 0);
} else {
 x_279 = x_267;
}
lean_ctor_set(x_279, 0, x_269);
lean_ctor_set(x_279, 1, x_278);
x_280 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_280, 0, x_265);
lean_ctor_set(x_280, 1, x_279);
if (lean_is_scalar(x_275)) {
 x_281 = lean_alloc_ctor(0, 2, 0);
} else {
 x_281 = x_275;
}
lean_ctor_set(x_281, 0, x_280);
lean_ctor_set(x_281, 1, x_274);
return x_281;
}
}
else
{
lean_object* x_282; lean_object* x_283; lean_object* x_284; lean_object* x_285; 
lean_dec(x_221);
lean_dec(x_214);
lean_free_object(x_8);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_282 = lean_ctor_get(x_253, 0);
lean_inc(x_282);
x_283 = lean_ctor_get(x_253, 1);
lean_inc(x_283);
if (lean_is_exclusive(x_253)) {
 lean_ctor_release(x_253, 0);
 lean_ctor_release(x_253, 1);
 x_284 = x_253;
} else {
 lean_dec_ref(x_253);
 x_284 = lean_box(0);
}
if (lean_is_scalar(x_284)) {
 x_285 = lean_alloc_ctor(1, 2, 0);
} else {
 x_285 = x_284;
}
lean_ctor_set(x_285, 0, x_282);
lean_ctor_set(x_285, 1, x_283);
return x_285;
}
}
}
else
{
lean_object* x_286; lean_object* x_287; lean_object* x_288; lean_object* x_289; uint8_t x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; lean_object* x_296; uint8_t x_297; lean_object* x_298; lean_object* x_299; lean_object* x_300; lean_object* x_301; lean_object* x_302; lean_object* x_303; lean_object* x_304; lean_object* x_305; lean_object* x_306; lean_object* x_307; lean_object* x_308; lean_object* x_309; lean_object* x_310; lean_object* x_311; lean_object* x_312; lean_object* x_313; lean_object* x_314; uint8_t x_315; uint8_t x_316; uint8_t x_317; uint8_t x_318; uint8_t x_319; uint8_t x_320; uint8_t x_321; uint8_t x_322; uint8_t x_323; uint8_t x_324; uint8_t x_325; uint8_t x_326; uint8_t x_327; uint8_t x_328; lean_object* x_329; uint8_t x_330; lean_object* x_331; lean_object* x_332; lean_object* x_333; 
x_286 = lean_ctor_get(x_8, 0);
x_287 = lean_ctor_get(x_8, 1);
lean_inc(x_287);
lean_inc(x_286);
lean_dec(x_8);
lean_inc(x_286);
x_288 = l_Lean_Expr_sort___override(x_286);
x_289 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_289, 0, x_288);
x_290 = 0;
x_291 = lean_box(0);
lean_inc(x_3);
x_292 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_289, x_290, x_291, x_3, x_4, x_5, x_6, x_287);
x_293 = lean_ctor_get(x_292, 0);
lean_inc(x_293);
x_294 = lean_ctor_get(x_292, 1);
lean_inc(x_294);
if (lean_is_exclusive(x_292)) {
 lean_ctor_release(x_292, 0);
 lean_ctor_release(x_292, 1);
 x_295 = x_292;
} else {
 lean_dec_ref(x_292);
 x_295 = lean_box(0);
}
x_296 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3;
x_297 = 0;
lean_inc(x_293);
x_298 = l_Lean_Expr_forallE___override(x_291, x_293, x_296, x_297);
x_299 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_299, 0, x_298);
lean_inc(x_3);
x_300 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_299, x_290, x_291, x_3, x_4, x_5, x_6, x_294);
x_301 = lean_ctor_get(x_300, 0);
lean_inc(x_301);
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
lean_inc(x_286);
if (lean_is_scalar(x_303)) {
 x_304 = lean_alloc_ctor(1, 2, 0);
} else {
 x_304 = x_303;
 lean_ctor_set_tag(x_304, 1);
}
lean_ctor_set(x_304, 0, x_286);
lean_ctor_set(x_304, 1, x_1);
x_305 = l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2;
x_306 = l_Lean_Expr_const___override(x_305, x_304);
lean_inc(x_293);
x_307 = l_Lean_Expr_app___override(x_306, x_293);
lean_inc(x_301);
x_308 = l_Lean_Expr_app___override(x_307, x_301);
x_309 = lean_ctor_get(x_3, 0);
lean_inc(x_309);
x_310 = lean_ctor_get(x_3, 1);
lean_inc(x_310);
x_311 = lean_ctor_get(x_3, 2);
lean_inc(x_311);
x_312 = lean_ctor_get(x_3, 3);
lean_inc(x_312);
x_313 = lean_ctor_get(x_3, 4);
lean_inc(x_313);
x_314 = lean_ctor_get(x_3, 5);
lean_inc(x_314);
x_315 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_316 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
x_317 = lean_ctor_get_uint8(x_309, 0);
x_318 = lean_ctor_get_uint8(x_309, 1);
x_319 = lean_ctor_get_uint8(x_309, 2);
x_320 = lean_ctor_get_uint8(x_309, 3);
x_321 = lean_ctor_get_uint8(x_309, 4);
x_322 = lean_ctor_get_uint8(x_309, 5);
x_323 = lean_ctor_get_uint8(x_309, 6);
x_324 = lean_ctor_get_uint8(x_309, 7);
x_325 = lean_ctor_get_uint8(x_309, 8);
x_326 = lean_ctor_get_uint8(x_309, 10);
x_327 = lean_ctor_get_uint8(x_309, 11);
x_328 = lean_ctor_get_uint8(x_309, 12);
if (lean_is_exclusive(x_309)) {
 x_329 = x_309;
} else {
 lean_dec_ref(x_309);
 x_329 = lean_box(0);
}
x_330 = 2;
if (lean_is_scalar(x_329)) {
 x_331 = lean_alloc_ctor(0, 0, 13);
} else {
 x_331 = x_329;
}
lean_ctor_set_uint8(x_331, 0, x_317);
lean_ctor_set_uint8(x_331, 1, x_318);
lean_ctor_set_uint8(x_331, 2, x_319);
lean_ctor_set_uint8(x_331, 3, x_320);
lean_ctor_set_uint8(x_331, 4, x_321);
lean_ctor_set_uint8(x_331, 5, x_322);
lean_ctor_set_uint8(x_331, 6, x_323);
lean_ctor_set_uint8(x_331, 7, x_324);
lean_ctor_set_uint8(x_331, 8, x_325);
lean_ctor_set_uint8(x_331, 9, x_330);
lean_ctor_set_uint8(x_331, 10, x_326);
lean_ctor_set_uint8(x_331, 11, x_327);
lean_ctor_set_uint8(x_331, 12, x_328);
x_332 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_332, 0, x_331);
lean_ctor_set(x_332, 1, x_310);
lean_ctor_set(x_332, 2, x_311);
lean_ctor_set(x_332, 3, x_312);
lean_ctor_set(x_332, 4, x_313);
lean_ctor_set(x_332, 5, x_314);
lean_ctor_set_uint8(x_332, sizeof(void*)*6, x_315);
lean_ctor_set_uint8(x_332, sizeof(void*)*6 + 1, x_316);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_333 = l_Lean_Meta_isExprDefEq(x_308, x_2, x_332, x_4, x_5, x_6, x_302);
if (lean_obj_tag(x_333) == 0)
{
lean_object* x_334; uint8_t x_335; 
x_334 = lean_ctor_get(x_333, 0);
lean_inc(x_334);
x_335 = lean_unbox(x_334);
lean_dec(x_334);
if (x_335 == 0)
{
lean_object* x_336; lean_object* x_337; uint8_t x_338; lean_object* x_339; lean_object* x_340; lean_object* x_341; lean_object* x_342; lean_object* x_343; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_336 = lean_ctor_get(x_333, 1);
lean_inc(x_336);
if (lean_is_exclusive(x_333)) {
 lean_ctor_release(x_333, 0);
 lean_ctor_release(x_333, 1);
 x_337 = x_333;
} else {
 lean_dec_ref(x_333);
 x_337 = lean_box(0);
}
x_338 = 0;
x_339 = lean_box(x_338);
if (lean_is_scalar(x_295)) {
 x_340 = lean_alloc_ctor(0, 2, 0);
} else {
 x_340 = x_295;
}
lean_ctor_set(x_340, 0, x_301);
lean_ctor_set(x_340, 1, x_339);
x_341 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_341, 0, x_293);
lean_ctor_set(x_341, 1, x_340);
x_342 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_342, 0, x_286);
lean_ctor_set(x_342, 1, x_341);
if (lean_is_scalar(x_337)) {
 x_343 = lean_alloc_ctor(0, 2, 0);
} else {
 x_343 = x_337;
}
lean_ctor_set(x_343, 0, x_342);
lean_ctor_set(x_343, 1, x_336);
return x_343;
}
else
{
lean_object* x_344; lean_object* x_345; lean_object* x_346; lean_object* x_347; lean_object* x_348; lean_object* x_349; lean_object* x_350; lean_object* x_351; lean_object* x_352; lean_object* x_353; lean_object* x_354; lean_object* x_355; lean_object* x_356; uint8_t x_357; lean_object* x_358; lean_object* x_359; lean_object* x_360; lean_object* x_361; lean_object* x_362; 
x_344 = lean_ctor_get(x_333, 1);
lean_inc(x_344);
lean_dec(x_333);
x_345 = l_Lean_instantiateLevelMVars___at_Lean_Meta_normalizeLevel___spec__1(x_286, x_3, x_4, x_5, x_6, x_344);
x_346 = lean_ctor_get(x_345, 0);
lean_inc(x_346);
x_347 = lean_ctor_get(x_345, 1);
lean_inc(x_347);
if (lean_is_exclusive(x_345)) {
 lean_ctor_release(x_345, 0);
 lean_ctor_release(x_345, 1);
 x_348 = x_345;
} else {
 lean_dec_ref(x_345);
 x_348 = lean_box(0);
}
x_349 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_293, x_3, x_4, x_5, x_6, x_347);
x_350 = lean_ctor_get(x_349, 0);
lean_inc(x_350);
x_351 = lean_ctor_get(x_349, 1);
lean_inc(x_351);
if (lean_is_exclusive(x_349)) {
 lean_ctor_release(x_349, 0);
 lean_ctor_release(x_349, 1);
 x_352 = x_349;
} else {
 lean_dec_ref(x_349);
 x_352 = lean_box(0);
}
x_353 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_301, x_3, x_4, x_5, x_6, x_351);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
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
x_357 = 1;
x_358 = lean_box(x_357);
if (lean_is_scalar(x_352)) {
 x_359 = lean_alloc_ctor(0, 2, 0);
} else {
 x_359 = x_352;
}
lean_ctor_set(x_359, 0, x_354);
lean_ctor_set(x_359, 1, x_358);
if (lean_is_scalar(x_348)) {
 x_360 = lean_alloc_ctor(0, 2, 0);
} else {
 x_360 = x_348;
}
lean_ctor_set(x_360, 0, x_350);
lean_ctor_set(x_360, 1, x_359);
if (lean_is_scalar(x_295)) {
 x_361 = lean_alloc_ctor(0, 2, 0);
} else {
 x_361 = x_295;
}
lean_ctor_set(x_361, 0, x_346);
lean_ctor_set(x_361, 1, x_360);
if (lean_is_scalar(x_356)) {
 x_362 = lean_alloc_ctor(0, 2, 0);
} else {
 x_362 = x_356;
}
lean_ctor_set(x_362, 0, x_361);
lean_ctor_set(x_362, 1, x_355);
return x_362;
}
}
else
{
lean_object* x_363; lean_object* x_364; lean_object* x_365; lean_object* x_366; 
lean_dec(x_301);
lean_dec(x_295);
lean_dec(x_293);
lean_dec(x_286);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_363 = lean_ctor_get(x_333, 0);
lean_inc(x_363);
x_364 = lean_ctor_get(x_333, 1);
lean_inc(x_364);
if (lean_is_exclusive(x_333)) {
 lean_ctor_release(x_333, 0);
 lean_ctor_release(x_333, 1);
 x_365 = x_333;
} else {
 lean_dec_ref(x_333);
 x_365 = lean_box(0);
}
if (lean_is_scalar(x_365)) {
 x_366 = lean_alloc_ctor(1, 2, 0);
} else {
 x_366 = x_365;
}
lean_ctor_set(x_366, 0, x_363);
lean_ctor_set(x_366, 1, x_364);
return x_366;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_casesMatcher___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = 0;
x_10 = lean_box(0);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_4);
x_15 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_14);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2;
x_20 = l_Lean_Expr_const___override(x_19, x_2);
lean_inc(x_13);
x_21 = l_Lean_Expr_app___override(x_20, x_13);
lean_inc(x_17);
x_22 = l_Lean_Expr_app___override(x_21, x_17);
x_23 = lean_ctor_get(x_4, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_4, 1);
lean_inc(x_24);
x_25 = lean_ctor_get(x_4, 2);
lean_inc(x_25);
x_26 = lean_ctor_get(x_4, 3);
lean_inc(x_26);
x_27 = lean_ctor_get(x_4, 4);
lean_inc(x_27);
x_28 = lean_ctor_get(x_4, 5);
lean_inc(x_28);
x_29 = !lean_is_exclusive(x_23);
if (x_29 == 0)
{
uint8_t x_30; uint8_t x_31; uint8_t x_32; lean_object* x_33; lean_object* x_34; 
x_30 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_31 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_32 = 2;
lean_ctor_set_uint8(x_23, 9, x_32);
x_33 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_33, 0, x_23);
lean_ctor_set(x_33, 1, x_24);
lean_ctor_set(x_33, 2, x_25);
lean_ctor_set(x_33, 3, x_26);
lean_ctor_set(x_33, 4, x_27);
lean_ctor_set(x_33, 5, x_28);
lean_ctor_set_uint8(x_33, sizeof(void*)*6, x_30);
lean_ctor_set_uint8(x_33, sizeof(void*)*6 + 1, x_31);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_34 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_33, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_unbox(x_35);
lean_dec(x_35);
if (x_36 == 0)
{
uint8_t x_37; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_37 = !lean_is_exclusive(x_34);
if (x_37 == 0)
{
lean_object* x_38; uint8_t x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_34, 0);
lean_dec(x_38);
x_39 = 0;
x_40 = lean_box(x_39);
lean_ctor_set(x_15, 1, x_40);
lean_ctor_set(x_11, 1, x_15);
lean_ctor_set(x_34, 0, x_11);
return x_34;
}
else
{
lean_object* x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; 
x_41 = lean_ctor_get(x_34, 1);
lean_inc(x_41);
lean_dec(x_34);
x_42 = 0;
x_43 = lean_box(x_42);
lean_ctor_set(x_15, 1, x_43);
lean_ctor_set(x_11, 1, x_15);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_11);
lean_ctor_set(x_44, 1, x_41);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; uint8_t x_47; 
lean_free_object(x_11);
x_45 = lean_ctor_get(x_34, 1);
lean_inc(x_45);
lean_dec(x_34);
x_46 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_45);
x_47 = !lean_is_exclusive(x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
x_48 = lean_ctor_get(x_46, 0);
x_49 = lean_ctor_get(x_46, 1);
x_50 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_49);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_51 = !lean_is_exclusive(x_50);
if (x_51 == 0)
{
lean_object* x_52; uint8_t x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_50, 0);
x_53 = 1;
x_54 = lean_box(x_53);
lean_ctor_set(x_46, 1, x_54);
lean_ctor_set(x_46, 0, x_52);
lean_ctor_set(x_15, 1, x_46);
lean_ctor_set(x_15, 0, x_48);
lean_ctor_set(x_50, 0, x_15);
return x_50;
}
else
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; lean_object* x_58; lean_object* x_59; 
x_55 = lean_ctor_get(x_50, 0);
x_56 = lean_ctor_get(x_50, 1);
lean_inc(x_56);
lean_inc(x_55);
lean_dec(x_50);
x_57 = 1;
x_58 = lean_box(x_57);
lean_ctor_set(x_46, 1, x_58);
lean_ctor_set(x_46, 0, x_55);
lean_ctor_set(x_15, 1, x_46);
lean_ctor_set(x_15, 0, x_48);
x_59 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_59, 0, x_15);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; uint8_t x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_60 = lean_ctor_get(x_46, 0);
x_61 = lean_ctor_get(x_46, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_46);
x_62 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_61);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 x_65 = x_62;
} else {
 lean_dec_ref(x_62);
 x_65 = lean_box(0);
}
x_66 = 1;
x_67 = lean_box(x_66);
x_68 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_68, 0, x_63);
lean_ctor_set(x_68, 1, x_67);
lean_ctor_set(x_15, 1, x_68);
lean_ctor_set(x_15, 0, x_60);
if (lean_is_scalar(x_65)) {
 x_69 = lean_alloc_ctor(0, 2, 0);
} else {
 x_69 = x_65;
}
lean_ctor_set(x_69, 0, x_15);
lean_ctor_set(x_69, 1, x_64);
return x_69;
}
}
}
else
{
uint8_t x_70; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_70 = !lean_is_exclusive(x_34);
if (x_70 == 0)
{
return x_34;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_34, 0);
x_72 = lean_ctor_get(x_34, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_34);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
else
{
uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; uint8_t x_85; uint8_t x_86; uint8_t x_87; uint8_t x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; 
x_74 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_75 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_76 = lean_ctor_get_uint8(x_23, 0);
x_77 = lean_ctor_get_uint8(x_23, 1);
x_78 = lean_ctor_get_uint8(x_23, 2);
x_79 = lean_ctor_get_uint8(x_23, 3);
x_80 = lean_ctor_get_uint8(x_23, 4);
x_81 = lean_ctor_get_uint8(x_23, 5);
x_82 = lean_ctor_get_uint8(x_23, 6);
x_83 = lean_ctor_get_uint8(x_23, 7);
x_84 = lean_ctor_get_uint8(x_23, 8);
x_85 = lean_ctor_get_uint8(x_23, 10);
x_86 = lean_ctor_get_uint8(x_23, 11);
x_87 = lean_ctor_get_uint8(x_23, 12);
lean_dec(x_23);
x_88 = 2;
x_89 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_89, 0, x_76);
lean_ctor_set_uint8(x_89, 1, x_77);
lean_ctor_set_uint8(x_89, 2, x_78);
lean_ctor_set_uint8(x_89, 3, x_79);
lean_ctor_set_uint8(x_89, 4, x_80);
lean_ctor_set_uint8(x_89, 5, x_81);
lean_ctor_set_uint8(x_89, 6, x_82);
lean_ctor_set_uint8(x_89, 7, x_83);
lean_ctor_set_uint8(x_89, 8, x_84);
lean_ctor_set_uint8(x_89, 9, x_88);
lean_ctor_set_uint8(x_89, 10, x_85);
lean_ctor_set_uint8(x_89, 11, x_86);
lean_ctor_set_uint8(x_89, 12, x_87);
x_90 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_24);
lean_ctor_set(x_90, 2, x_25);
lean_ctor_set(x_90, 3, x_26);
lean_ctor_set(x_90, 4, x_27);
lean_ctor_set(x_90, 5, x_28);
lean_ctor_set_uint8(x_90, sizeof(void*)*6, x_74);
lean_ctor_set_uint8(x_90, sizeof(void*)*6 + 1, x_75);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_91 = l_Lean_Meta_isExprDefEq(x_22, x_3, x_90, x_5, x_6, x_7, x_18);
if (lean_obj_tag(x_91) == 0)
{
lean_object* x_92; uint8_t x_93; 
x_92 = lean_ctor_get(x_91, 0);
lean_inc(x_92);
x_93 = lean_unbox(x_92);
lean_dec(x_92);
if (x_93 == 0)
{
lean_object* x_94; lean_object* x_95; uint8_t x_96; lean_object* x_97; lean_object* x_98; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_94 = lean_ctor_get(x_91, 1);
lean_inc(x_94);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_95 = x_91;
} else {
 lean_dec_ref(x_91);
 x_95 = lean_box(0);
}
x_96 = 0;
x_97 = lean_box(x_96);
lean_ctor_set(x_15, 1, x_97);
lean_ctor_set(x_11, 1, x_15);
if (lean_is_scalar(x_95)) {
 x_98 = lean_alloc_ctor(0, 2, 0);
} else {
 x_98 = x_95;
}
lean_ctor_set(x_98, 0, x_11);
lean_ctor_set(x_98, 1, x_94);
return x_98;
}
else
{
lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; uint8_t x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
lean_free_object(x_11);
x_99 = lean_ctor_get(x_91, 1);
lean_inc(x_99);
lean_dec(x_91);
x_100 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_99);
x_101 = lean_ctor_get(x_100, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_100, 1);
lean_inc(x_102);
if (lean_is_exclusive(x_100)) {
 lean_ctor_release(x_100, 0);
 lean_ctor_release(x_100, 1);
 x_103 = x_100;
} else {
 lean_dec_ref(x_100);
 x_103 = lean_box(0);
}
x_104 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_17, x_4, x_5, x_6, x_7, x_102);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_105 = lean_ctor_get(x_104, 0);
lean_inc(x_105);
x_106 = lean_ctor_get(x_104, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_104)) {
 lean_ctor_release(x_104, 0);
 lean_ctor_release(x_104, 1);
 x_107 = x_104;
} else {
 lean_dec_ref(x_104);
 x_107 = lean_box(0);
}
x_108 = 1;
x_109 = lean_box(x_108);
if (lean_is_scalar(x_103)) {
 x_110 = lean_alloc_ctor(0, 2, 0);
} else {
 x_110 = x_103;
}
lean_ctor_set(x_110, 0, x_105);
lean_ctor_set(x_110, 1, x_109);
lean_ctor_set(x_15, 1, x_110);
lean_ctor_set(x_15, 0, x_101);
if (lean_is_scalar(x_107)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_107;
}
lean_ctor_set(x_111, 0, x_15);
lean_ctor_set(x_111, 1, x_106);
return x_111;
}
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_free_object(x_15);
lean_dec(x_17);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_112 = lean_ctor_get(x_91, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_91, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_91)) {
 lean_ctor_release(x_91, 0);
 lean_ctor_release(x_91, 1);
 x_114 = x_91;
} else {
 lean_dec_ref(x_91);
 x_114 = lean_box(0);
}
if (lean_is_scalar(x_114)) {
 x_115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_115 = x_114;
}
lean_ctor_set(x_115, 0, x_112);
lean_ctor_set(x_115, 1, x_113);
return x_115;
}
}
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; uint8_t x_128; uint8_t x_129; uint8_t x_130; uint8_t x_131; uint8_t x_132; uint8_t x_133; uint8_t x_134; uint8_t x_135; uint8_t x_136; uint8_t x_137; uint8_t x_138; uint8_t x_139; uint8_t x_140; uint8_t x_141; lean_object* x_142; uint8_t x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; 
x_116 = lean_ctor_get(x_15, 0);
x_117 = lean_ctor_get(x_15, 1);
lean_inc(x_117);
lean_inc(x_116);
lean_dec(x_15);
x_118 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2;
x_119 = l_Lean_Expr_const___override(x_118, x_2);
lean_inc(x_13);
x_120 = l_Lean_Expr_app___override(x_119, x_13);
lean_inc(x_116);
x_121 = l_Lean_Expr_app___override(x_120, x_116);
x_122 = lean_ctor_get(x_4, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_4, 1);
lean_inc(x_123);
x_124 = lean_ctor_get(x_4, 2);
lean_inc(x_124);
x_125 = lean_ctor_get(x_4, 3);
lean_inc(x_125);
x_126 = lean_ctor_get(x_4, 4);
lean_inc(x_126);
x_127 = lean_ctor_get(x_4, 5);
lean_inc(x_127);
x_128 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_129 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_130 = lean_ctor_get_uint8(x_122, 0);
x_131 = lean_ctor_get_uint8(x_122, 1);
x_132 = lean_ctor_get_uint8(x_122, 2);
x_133 = lean_ctor_get_uint8(x_122, 3);
x_134 = lean_ctor_get_uint8(x_122, 4);
x_135 = lean_ctor_get_uint8(x_122, 5);
x_136 = lean_ctor_get_uint8(x_122, 6);
x_137 = lean_ctor_get_uint8(x_122, 7);
x_138 = lean_ctor_get_uint8(x_122, 8);
x_139 = lean_ctor_get_uint8(x_122, 10);
x_140 = lean_ctor_get_uint8(x_122, 11);
x_141 = lean_ctor_get_uint8(x_122, 12);
if (lean_is_exclusive(x_122)) {
 x_142 = x_122;
} else {
 lean_dec_ref(x_122);
 x_142 = lean_box(0);
}
x_143 = 2;
if (lean_is_scalar(x_142)) {
 x_144 = lean_alloc_ctor(0, 0, 13);
} else {
 x_144 = x_142;
}
lean_ctor_set_uint8(x_144, 0, x_130);
lean_ctor_set_uint8(x_144, 1, x_131);
lean_ctor_set_uint8(x_144, 2, x_132);
lean_ctor_set_uint8(x_144, 3, x_133);
lean_ctor_set_uint8(x_144, 4, x_134);
lean_ctor_set_uint8(x_144, 5, x_135);
lean_ctor_set_uint8(x_144, 6, x_136);
lean_ctor_set_uint8(x_144, 7, x_137);
lean_ctor_set_uint8(x_144, 8, x_138);
lean_ctor_set_uint8(x_144, 9, x_143);
lean_ctor_set_uint8(x_144, 10, x_139);
lean_ctor_set_uint8(x_144, 11, x_140);
lean_ctor_set_uint8(x_144, 12, x_141);
x_145 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_145, 0, x_144);
lean_ctor_set(x_145, 1, x_123);
lean_ctor_set(x_145, 2, x_124);
lean_ctor_set(x_145, 3, x_125);
lean_ctor_set(x_145, 4, x_126);
lean_ctor_set(x_145, 5, x_127);
lean_ctor_set_uint8(x_145, sizeof(void*)*6, x_128);
lean_ctor_set_uint8(x_145, sizeof(void*)*6 + 1, x_129);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_146 = l_Lean_Meta_isExprDefEq(x_121, x_3, x_145, x_5, x_6, x_7, x_117);
if (lean_obj_tag(x_146) == 0)
{
lean_object* x_147; uint8_t x_148; 
x_147 = lean_ctor_get(x_146, 0);
lean_inc(x_147);
x_148 = lean_unbox(x_147);
lean_dec(x_147);
if (x_148 == 0)
{
lean_object* x_149; lean_object* x_150; uint8_t x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_149 = lean_ctor_get(x_146, 1);
lean_inc(x_149);
if (lean_is_exclusive(x_146)) {
 lean_ctor_release(x_146, 0);
 lean_ctor_release(x_146, 1);
 x_150 = x_146;
} else {
 lean_dec_ref(x_146);
 x_150 = lean_box(0);
}
x_151 = 0;
x_152 = lean_box(x_151);
x_153 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_153, 0, x_116);
lean_ctor_set(x_153, 1, x_152);
lean_ctor_set(x_11, 1, x_153);
if (lean_is_scalar(x_150)) {
 x_154 = lean_alloc_ctor(0, 2, 0);
} else {
 x_154 = x_150;
}
lean_ctor_set(x_154, 0, x_11);
lean_ctor_set(x_154, 1, x_149);
return x_154;
}
else
{
lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; 
lean_free_object(x_11);
x_155 = lean_ctor_get(x_146, 1);
lean_inc(x_155);
lean_dec(x_146);
x_156 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_13, x_4, x_5, x_6, x_7, x_155);
x_157 = lean_ctor_get(x_156, 0);
lean_inc(x_157);
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
x_160 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_116, x_4, x_5, x_6, x_7, x_158);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_161 = lean_ctor_get(x_160, 0);
lean_inc(x_161);
x_162 = lean_ctor_get(x_160, 1);
lean_inc(x_162);
if (lean_is_exclusive(x_160)) {
 lean_ctor_release(x_160, 0);
 lean_ctor_release(x_160, 1);
 x_163 = x_160;
} else {
 lean_dec_ref(x_160);
 x_163 = lean_box(0);
}
x_164 = 1;
x_165 = lean_box(x_164);
if (lean_is_scalar(x_159)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_159;
}
lean_ctor_set(x_166, 0, x_161);
lean_ctor_set(x_166, 1, x_165);
x_167 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_167, 0, x_157);
lean_ctor_set(x_167, 1, x_166);
if (lean_is_scalar(x_163)) {
 x_168 = lean_alloc_ctor(0, 2, 0);
} else {
 x_168 = x_163;
}
lean_ctor_set(x_168, 0, x_167);
lean_ctor_set(x_168, 1, x_162);
return x_168;
}
}
else
{
lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; 
lean_dec(x_116);
lean_free_object(x_11);
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_169 = lean_ctor_get(x_146, 0);
lean_inc(x_169);
x_170 = lean_ctor_get(x_146, 1);
lean_inc(x_170);
if (lean_is_exclusive(x_146)) {
 lean_ctor_release(x_146, 0);
 lean_ctor_release(x_146, 1);
 x_171 = x_146;
} else {
 lean_dec_ref(x_146);
 x_171 = lean_box(0);
}
if (lean_is_scalar(x_171)) {
 x_172 = lean_alloc_ctor(1, 2, 0);
} else {
 x_172 = x_171;
}
lean_ctor_set(x_172, 0, x_169);
lean_ctor_set(x_172, 1, x_170);
return x_172;
}
}
}
else
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; uint8_t x_189; uint8_t x_190; uint8_t x_191; uint8_t x_192; uint8_t x_193; uint8_t x_194; uint8_t x_195; uint8_t x_196; uint8_t x_197; uint8_t x_198; uint8_t x_199; uint8_t x_200; uint8_t x_201; uint8_t x_202; lean_object* x_203; uint8_t x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; 
x_173 = lean_ctor_get(x_11, 0);
x_174 = lean_ctor_get(x_11, 1);
lean_inc(x_174);
lean_inc(x_173);
lean_dec(x_11);
lean_inc(x_4);
x_175 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_1, x_9, x_10, x_4, x_5, x_6, x_7, x_174);
x_176 = lean_ctor_get(x_175, 0);
lean_inc(x_176);
x_177 = lean_ctor_get(x_175, 1);
lean_inc(x_177);
if (lean_is_exclusive(x_175)) {
 lean_ctor_release(x_175, 0);
 lean_ctor_release(x_175, 1);
 x_178 = x_175;
} else {
 lean_dec_ref(x_175);
 x_178 = lean_box(0);
}
x_179 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2;
x_180 = l_Lean_Expr_const___override(x_179, x_2);
lean_inc(x_173);
x_181 = l_Lean_Expr_app___override(x_180, x_173);
lean_inc(x_176);
x_182 = l_Lean_Expr_app___override(x_181, x_176);
x_183 = lean_ctor_get(x_4, 0);
lean_inc(x_183);
x_184 = lean_ctor_get(x_4, 1);
lean_inc(x_184);
x_185 = lean_ctor_get(x_4, 2);
lean_inc(x_185);
x_186 = lean_ctor_get(x_4, 3);
lean_inc(x_186);
x_187 = lean_ctor_get(x_4, 4);
lean_inc(x_187);
x_188 = lean_ctor_get(x_4, 5);
lean_inc(x_188);
x_189 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_190 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_191 = lean_ctor_get_uint8(x_183, 0);
x_192 = lean_ctor_get_uint8(x_183, 1);
x_193 = lean_ctor_get_uint8(x_183, 2);
x_194 = lean_ctor_get_uint8(x_183, 3);
x_195 = lean_ctor_get_uint8(x_183, 4);
x_196 = lean_ctor_get_uint8(x_183, 5);
x_197 = lean_ctor_get_uint8(x_183, 6);
x_198 = lean_ctor_get_uint8(x_183, 7);
x_199 = lean_ctor_get_uint8(x_183, 8);
x_200 = lean_ctor_get_uint8(x_183, 10);
x_201 = lean_ctor_get_uint8(x_183, 11);
x_202 = lean_ctor_get_uint8(x_183, 12);
if (lean_is_exclusive(x_183)) {
 x_203 = x_183;
} else {
 lean_dec_ref(x_183);
 x_203 = lean_box(0);
}
x_204 = 2;
if (lean_is_scalar(x_203)) {
 x_205 = lean_alloc_ctor(0, 0, 13);
} else {
 x_205 = x_203;
}
lean_ctor_set_uint8(x_205, 0, x_191);
lean_ctor_set_uint8(x_205, 1, x_192);
lean_ctor_set_uint8(x_205, 2, x_193);
lean_ctor_set_uint8(x_205, 3, x_194);
lean_ctor_set_uint8(x_205, 4, x_195);
lean_ctor_set_uint8(x_205, 5, x_196);
lean_ctor_set_uint8(x_205, 6, x_197);
lean_ctor_set_uint8(x_205, 7, x_198);
lean_ctor_set_uint8(x_205, 8, x_199);
lean_ctor_set_uint8(x_205, 9, x_204);
lean_ctor_set_uint8(x_205, 10, x_200);
lean_ctor_set_uint8(x_205, 11, x_201);
lean_ctor_set_uint8(x_205, 12, x_202);
x_206 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_206, 0, x_205);
lean_ctor_set(x_206, 1, x_184);
lean_ctor_set(x_206, 2, x_185);
lean_ctor_set(x_206, 3, x_186);
lean_ctor_set(x_206, 4, x_187);
lean_ctor_set(x_206, 5, x_188);
lean_ctor_set_uint8(x_206, sizeof(void*)*6, x_189);
lean_ctor_set_uint8(x_206, sizeof(void*)*6 + 1, x_190);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_207 = l_Lean_Meta_isExprDefEq(x_182, x_3, x_206, x_5, x_6, x_7, x_177);
if (lean_obj_tag(x_207) == 0)
{
lean_object* x_208; uint8_t x_209; 
x_208 = lean_ctor_get(x_207, 0);
lean_inc(x_208);
x_209 = lean_unbox(x_208);
lean_dec(x_208);
if (x_209 == 0)
{
lean_object* x_210; lean_object* x_211; uint8_t x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_210 = lean_ctor_get(x_207, 1);
lean_inc(x_210);
if (lean_is_exclusive(x_207)) {
 lean_ctor_release(x_207, 0);
 lean_ctor_release(x_207, 1);
 x_211 = x_207;
} else {
 lean_dec_ref(x_207);
 x_211 = lean_box(0);
}
x_212 = 0;
x_213 = lean_box(x_212);
if (lean_is_scalar(x_178)) {
 x_214 = lean_alloc_ctor(0, 2, 0);
} else {
 x_214 = x_178;
}
lean_ctor_set(x_214, 0, x_176);
lean_ctor_set(x_214, 1, x_213);
x_215 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_215, 0, x_173);
lean_ctor_set(x_215, 1, x_214);
if (lean_is_scalar(x_211)) {
 x_216 = lean_alloc_ctor(0, 2, 0);
} else {
 x_216 = x_211;
}
lean_ctor_set(x_216, 0, x_215);
lean_ctor_set(x_216, 1, x_210);
return x_216;
}
else
{
lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; lean_object* x_224; lean_object* x_225; uint8_t x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; 
x_217 = lean_ctor_get(x_207, 1);
lean_inc(x_217);
lean_dec(x_207);
x_218 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_173, x_4, x_5, x_6, x_7, x_217);
x_219 = lean_ctor_get(x_218, 0);
lean_inc(x_219);
x_220 = lean_ctor_get(x_218, 1);
lean_inc(x_220);
if (lean_is_exclusive(x_218)) {
 lean_ctor_release(x_218, 0);
 lean_ctor_release(x_218, 1);
 x_221 = x_218;
} else {
 lean_dec_ref(x_218);
 x_221 = lean_box(0);
}
x_222 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_176, x_4, x_5, x_6, x_7, x_220);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_223 = lean_ctor_get(x_222, 0);
lean_inc(x_223);
x_224 = lean_ctor_get(x_222, 1);
lean_inc(x_224);
if (lean_is_exclusive(x_222)) {
 lean_ctor_release(x_222, 0);
 lean_ctor_release(x_222, 1);
 x_225 = x_222;
} else {
 lean_dec_ref(x_222);
 x_225 = lean_box(0);
}
x_226 = 1;
x_227 = lean_box(x_226);
if (lean_is_scalar(x_221)) {
 x_228 = lean_alloc_ctor(0, 2, 0);
} else {
 x_228 = x_221;
}
lean_ctor_set(x_228, 0, x_223);
lean_ctor_set(x_228, 1, x_227);
if (lean_is_scalar(x_178)) {
 x_229 = lean_alloc_ctor(0, 2, 0);
} else {
 x_229 = x_178;
}
lean_ctor_set(x_229, 0, x_219);
lean_ctor_set(x_229, 1, x_228);
if (lean_is_scalar(x_225)) {
 x_230 = lean_alloc_ctor(0, 2, 0);
} else {
 x_230 = x_225;
}
lean_ctor_set(x_230, 0, x_229);
lean_ctor_set(x_230, 1, x_224);
return x_230;
}
}
else
{
lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; 
lean_dec(x_178);
lean_dec(x_176);
lean_dec(x_173);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_231 = lean_ctor_get(x_207, 0);
lean_inc(x_231);
x_232 = lean_ctor_get(x_207, 1);
lean_inc(x_232);
if (lean_is_exclusive(x_207)) {
 lean_ctor_release(x_207, 0);
 lean_ctor_release(x_207, 1);
 x_233 = x_207;
} else {
 lean_dec_ref(x_207);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_casesMatcher(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; 
x_7 = lean_box(0);
x_8 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3;
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__1), 7, 2);
lean_closure_set(x_9, 0, x_8);
lean_closure_set(x_9, 1, x_1);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1), 7, 2);
lean_closure_set(x_10, 0, x_7);
lean_closure_set(x_10, 1, x_1);
x_11 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4;
lean_inc(x_1);
x_12 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_casesMatcher___lambda__2), 8, 3);
lean_closure_set(x_12, 0, x_11);
lean_closure_set(x_12, 1, x_7);
lean_closure_set(x_12, 2, x_1);
x_13 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__3), 8, 3);
lean_closure_set(x_13, 0, x_11);
lean_closure_set(x_13, 1, x_7);
lean_closure_set(x_13, 2, x_1);
x_14 = 0;
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_15 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_13, x_14, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_dec(x_15);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_21 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_12, x_14, x_2, x_3, x_4, x_5, x_20);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_ctor_get(x_23, 1);
lean_inc(x_24);
lean_dec(x_23);
x_25 = lean_unbox(x_24);
lean_dec(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_21, 1);
lean_inc(x_26);
lean_dec(x_21);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_27 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_10, x_14, x_2, x_3, x_4, x_5, x_26);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_28, 1);
lean_inc(x_29);
lean_dec(x_28);
x_30 = lean_ctor_get(x_29, 1);
lean_inc(x_30);
lean_dec(x_29);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
lean_dec(x_30);
x_32 = lean_unbox(x_31);
lean_dec(x_31);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_27, 1);
lean_inc(x_33);
lean_dec(x_27);
x_34 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_9, x_14, x_2, x_3, x_4, x_5, x_33);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_unbox(x_35);
lean_dec(x_35);
if (x_36 == 0)
{
uint8_t x_37; 
x_37 = !lean_is_exclusive(x_34);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_ctor_get(x_34, 0);
lean_dec(x_38);
x_39 = lean_box(x_14);
lean_ctor_set(x_34, 0, x_39);
return x_34;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_34, 1);
lean_inc(x_40);
lean_dec(x_34);
x_41 = lean_box(x_14);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_40);
return x_42;
}
}
else
{
uint8_t x_43; 
x_43 = !lean_is_exclusive(x_34);
if (x_43 == 0)
{
lean_object* x_44; uint8_t x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_34, 0);
lean_dec(x_44);
x_45 = 1;
x_46 = lean_box(x_45);
lean_ctor_set(x_34, 0, x_46);
return x_34;
}
else
{
lean_object* x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; 
x_47 = lean_ctor_get(x_34, 1);
lean_inc(x_47);
lean_dec(x_34);
x_48 = 1;
x_49 = lean_box(x_48);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_47);
return x_50;
}
}
}
else
{
uint8_t x_51; 
x_51 = !lean_is_exclusive(x_34);
if (x_51 == 0)
{
return x_34;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_34, 0);
x_53 = lean_ctor_get(x_34, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_34);
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
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_55 = !lean_is_exclusive(x_27);
if (x_55 == 0)
{
lean_object* x_56; uint8_t x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_27, 0);
lean_dec(x_56);
x_57 = 1;
x_58 = lean_box(x_57);
lean_ctor_set(x_27, 0, x_58);
return x_27;
}
else
{
lean_object* x_59; uint8_t x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_27, 1);
lean_inc(x_59);
lean_dec(x_27);
x_60 = 1;
x_61 = lean_box(x_60);
x_62 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_59);
return x_62;
}
}
}
else
{
uint8_t x_63; 
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_63 = !lean_is_exclusive(x_27);
if (x_63 == 0)
{
return x_27;
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_27, 0);
x_65 = lean_ctor_get(x_27, 1);
lean_inc(x_65);
lean_inc(x_64);
lean_dec(x_27);
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
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_67 = !lean_is_exclusive(x_21);
if (x_67 == 0)
{
lean_object* x_68; uint8_t x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_21, 0);
lean_dec(x_68);
x_69 = 1;
x_70 = lean_box(x_69);
lean_ctor_set(x_21, 0, x_70);
return x_21;
}
else
{
lean_object* x_71; uint8_t x_72; lean_object* x_73; lean_object* x_74; 
x_71 = lean_ctor_get(x_21, 1);
lean_inc(x_71);
lean_dec(x_21);
x_72 = 1;
x_73 = lean_box(x_72);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_71);
return x_74;
}
}
}
else
{
uint8_t x_75; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_75 = !lean_is_exclusive(x_21);
if (x_75 == 0)
{
return x_21;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_76 = lean_ctor_get(x_21, 0);
x_77 = lean_ctor_get(x_21, 1);
lean_inc(x_77);
lean_inc(x_76);
lean_dec(x_21);
x_78 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_78, 0, x_76);
lean_ctor_set(x_78, 1, x_77);
return x_78;
}
}
}
else
{
uint8_t x_79; 
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_79 = !lean_is_exclusive(x_15);
if (x_79 == 0)
{
lean_object* x_80; uint8_t x_81; lean_object* x_82; 
x_80 = lean_ctor_get(x_15, 0);
lean_dec(x_80);
x_81 = 1;
x_82 = lean_box(x_81);
lean_ctor_set(x_15, 0, x_82);
return x_15;
}
else
{
lean_object* x_83; uint8_t x_84; lean_object* x_85; lean_object* x_86; 
x_83 = lean_ctor_get(x_15, 1);
lean_inc(x_83);
lean_dec(x_15);
x_84 = 1;
x_85 = lean_box(x_84);
x_86 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_86, 0, x_85);
lean_ctor_set(x_86, 1, x_83);
return x_86;
}
}
}
else
{
uint8_t x_87; 
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_87 = !lean_is_exclusive(x_15);
if (x_87 == 0)
{
return x_15;
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_88 = lean_ctor_get(x_15, 0);
x_89 = lean_ctor_get(x_15, 1);
lean_inc(x_89);
lean_inc(x_88);
lean_dec(x_15);
x_90 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_90, 0, x_88);
lean_ctor_set(x_90, 1, x_89);
return x_90;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term_<;>_", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8;
x_2 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__2;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__3;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__4;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__5;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__6;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__7;
x_2 = lean_unsigned_to_nat(2694u);
x_3 = l_Lean_Name_num___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" <;> ", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__13;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__14;
x_2 = lean_unsigned_to_nat(51u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10;
x_2 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__12;
x_3 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__15;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8;
x_2 = lean_unsigned_to_nat(50u);
x_3 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__16;
x_4 = lean_alloc_ctor(4, 4, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_2);
lean_ctor_set(x_4, 3, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694_() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__17;
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("app", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3;
x_4 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andThenOnSubgoals", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6;
x_2 = l_String_toSubstring_x27(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Elab", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__9;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__12;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__11;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__13;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("null", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__15;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_box(1);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = lean_unsigned_to_nat(2u);
x_11 = l_Lean_Syntax_getArg(x_1, x_10);
lean_dec(x_1);
x_12 = lean_ctor_get(x_2, 5);
lean_inc(x_12);
x_13 = 0;
x_14 = l_Lean_SourceInfo_fromRef(x_12, x_13);
lean_dec(x_12);
x_15 = lean_ctor_get(x_2, 2);
lean_inc(x_15);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__8;
x_18 = l_Lean_addMacroScope(x_16, x_17, x_15);
x_19 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__7;
x_20 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__14;
lean_inc(x_14);
x_21 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_21, 0, x_14);
lean_ctor_set(x_21, 1, x_19);
lean_ctor_set(x_21, 2, x_18);
lean_ctor_set(x_21, 3, x_20);
x_22 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
lean_inc(x_14);
x_23 = l_Lean_Syntax_node2(x_14, x_22, x_9, x_11);
x_24 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5;
x_25 = l_Lean_Syntax_node2(x_14, x_24, x_21, x_23);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_3);
return x_26;
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_1);
x_6 = lean_box(0);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__2;
lean_inc(x_9);
x_11 = l_Lean_Syntax_isOfKind(x_9, x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_1);
x_12 = lean_box(0);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_3);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
lean_dec(x_1);
x_16 = lean_unsigned_to_nat(2u);
lean_inc(x_15);
x_17 = l_Lean_Syntax_matchesNull(x_15, x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
lean_dec(x_15);
lean_dec(x_9);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_3);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_20 = l_Lean_Syntax_getArg(x_15, x_8);
x_21 = l_Lean_Syntax_getArg(x_15, x_14);
lean_dec(x_15);
x_22 = l_Lean_replaceRef(x_9, x_2);
lean_dec(x_9);
x_23 = 0;
x_24 = l_Lean_SourceInfo_fromRef(x_22, x_23);
lean_dec(x_22);
x_25 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11;
lean_inc(x_24);
x_26 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
x_27 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8;
x_28 = l_Lean_Syntax_node3(x_24, x_27, x_20, x_26, x_21);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_3);
return x_29;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = l_Lean_Elab_Tactic_saveState___rarg(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
lean_inc(x_1);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_14 = lean_apply_9(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_16 = l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_16;
}
else
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_16, 1);
x_20 = l_Lean_Exception_isInterrupt(x_18);
if (x_20 == 0)
{
uint8_t x_21; 
x_21 = l_Lean_Exception_isRuntime(x_18);
if (x_21 == 0)
{
uint8_t x_22; lean_object* x_23; uint8_t x_24; 
lean_free_object(x_16);
lean_dec(x_18);
x_22 = 0;
x_23 = l_Lean_Elab_Tactic_SavedState_restore(x_12, x_22, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_19);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
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
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_16;
}
}
else
{
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_16;
}
}
else
{
lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_30 = lean_ctor_get(x_16, 0);
x_31 = lean_ctor_get(x_16, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_16);
x_32 = l_Lean_Exception_isInterrupt(x_30);
if (x_32 == 0)
{
uint8_t x_33; 
x_33 = l_Lean_Exception_isRuntime(x_30);
if (x_33 == 0)
{
uint8_t x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
lean_dec(x_30);
x_34 = 0;
x_35 = l_Lean_Elab_Tactic_SavedState_restore(x_12, x_34, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_31);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
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
x_38 = lean_box(0);
if (lean_is_scalar(x_37)) {
 x_39 = lean_alloc_ctor(0, 2, 0);
} else {
 x_39 = x_37;
}
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_36);
return x_39;
}
else
{
lean_object* x_40; 
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_30);
lean_ctor_set(x_40, 1, x_31);
return x_40;
}
}
else
{
lean_object* x_41; 
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_30);
lean_ctor_set(x_41, 1, x_31);
return x_41;
}
}
}
}
else
{
uint8_t x_42; 
lean_dec(x_1);
x_42 = !lean_is_exclusive(x_14);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_43 = lean_ctor_get(x_14, 0);
x_44 = lean_ctor_get(x_14, 1);
x_45 = l_Lean_Exception_isInterrupt(x_43);
if (x_45 == 0)
{
uint8_t x_46; 
x_46 = l_Lean_Exception_isRuntime(x_43);
if (x_46 == 0)
{
uint8_t x_47; lean_object* x_48; uint8_t x_49; 
lean_free_object(x_14);
lean_dec(x_43);
x_47 = 0;
x_48 = l_Lean_Elab_Tactic_SavedState_restore(x_12, x_47, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_44);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_49 = !lean_is_exclusive(x_48);
if (x_49 == 0)
{
lean_object* x_50; lean_object* x_51; 
x_50 = lean_ctor_get(x_48, 0);
lean_dec(x_50);
x_51 = lean_box(0);
lean_ctor_set(x_48, 0, x_51);
return x_48;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_48, 1);
lean_inc(x_52);
lean_dec(x_48);
x_53 = lean_box(0);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_52);
return x_54;
}
}
else
{
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_14;
}
}
else
{
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_14;
}
}
else
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; 
x_55 = lean_ctor_get(x_14, 0);
x_56 = lean_ctor_get(x_14, 1);
lean_inc(x_56);
lean_inc(x_55);
lean_dec(x_14);
x_57 = l_Lean_Exception_isInterrupt(x_55);
if (x_57 == 0)
{
uint8_t x_58; 
x_58 = l_Lean_Exception_isRuntime(x_55);
if (x_58 == 0)
{
uint8_t x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
lean_dec(x_55);
x_59 = 0;
x_60 = l_Lean_Elab_Tactic_SavedState_restore(x_12, x_59, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_56);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_61 = lean_ctor_get(x_60, 1);
lean_inc(x_61);
if (lean_is_exclusive(x_60)) {
 lean_ctor_release(x_60, 0);
 lean_ctor_release(x_60, 1);
 x_62 = x_60;
} else {
 lean_dec_ref(x_60);
 x_62 = lean_box(0);
}
x_63 = lean_box(0);
if (lean_is_scalar(x_62)) {
 x_64 = lean_alloc_ctor(0, 2, 0);
} else {
 x_64 = x_62;
}
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_61);
return x_64;
}
else
{
lean_object* x_65; 
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_55);
lean_ctor_set(x_65, 1, x_56);
return x_65;
}
}
else
{
lean_object* x_66; 
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_66 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_66, 0, x_55);
lean_ctor_set(x_66, 1, x_56);
return x_66;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_MVarId_intros_x21(x_1, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_7, 0);
x_10 = lean_ctor_get(x_9, 1);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_box(0);
x_12 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
lean_ctor_set(x_7, 0, x_12);
return x_7;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_13 = lean_ctor_get(x_7, 0);
x_14 = lean_ctor_get(x_7, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_7);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_box(0);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_14);
return x_18;
}
}
else
{
uint8_t x_19; 
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("contradiction", 13, 13);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_11 = lean_ctor_get(x_8, 5);
lean_inc(x_11);
x_12 = 0;
x_13 = l_Lean_SourceInfo_fromRef(x_11, x_12);
lean_dec(x_11);
x_14 = lean_st_ref_get(x_9, x_10);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_14, 1);
x_17 = lean_ctor_get(x_14, 0);
lean_dec(x_17);
x_18 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1;
lean_inc(x_13);
lean_ctor_set_tag(x_14, 2);
lean_ctor_set(x_14, 1, x_18);
lean_ctor_set(x_14, 0, x_13);
x_19 = l_Lean_Syntax_node1(x_13, x_1, x_14);
x_20 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_20, 0, x_19);
x_21 = l_Lean_Elab_Tactic_tryTactic___rarg(x_20, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_16);
if (lean_obj_tag(x_21) == 0)
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_ctor_get(x_21, 0);
lean_dec(x_23);
x_24 = lean_box(0);
lean_ctor_set(x_21, 0, x_24);
return x_21;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_21, 1);
lean_inc(x_25);
lean_dec(x_21);
x_26 = lean_box(0);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
return x_27;
}
}
else
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_21);
if (x_28 == 0)
{
return x_21;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_21, 0);
x_30 = lean_ctor_get(x_21, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_21);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_32 = lean_ctor_get(x_14, 1);
lean_inc(x_32);
lean_dec(x_14);
x_33 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1;
lean_inc(x_13);
x_34 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_34, 0, x_13);
lean_ctor_set(x_34, 1, x_33);
x_35 = l_Lean_Syntax_node1(x_13, x_1, x_34);
x_36 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_36, 0, x_35);
x_37 = l_Lean_Elab_Tactic_tryTactic___rarg(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_32);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_38 = lean_ctor_get(x_37, 1);
lean_inc(x_38);
if (lean_is_exclusive(x_37)) {
 lean_ctor_release(x_37, 0);
 lean_ctor_release(x_37, 1);
 x_39 = x_37;
} else {
 lean_dec_ref(x_37);
 x_39 = lean_box(0);
}
x_40 = lean_box(0);
if (lean_is_scalar(x_39)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_39;
}
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_38);
return x_41;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_42 = lean_ctor_get(x_37, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_37, 1);
lean_inc(x_43);
if (lean_is_exclusive(x_37)) {
 lean_ctor_release(x_37, 0);
 lean_ctor_release(x_37, 1);
 x_44 = x_37;
} else {
 lean_dec_ref(x_37);
 x_44 = lean_box(0);
}
if (lean_is_scalar(x_44)) {
 x_45 = lean_alloc_ctor(1, 2, 0);
} else {
 x_45 = x_44;
}
lean_ctor_set(x_45, 0, x_42);
lean_ctor_set(x_45, 1, x_43);
return x_45;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("refine", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("or_iff_not_imp_left.mpr", 23, 23);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__3;
x_2 = l_String_toSubstring_x27(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("or_iff_not_imp_left", 19, 19);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("mpr", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5;
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Classical", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__8;
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__9;
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__10;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__11;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("syntheticHole", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3;
x_4 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__13;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\?", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("_", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_10 = lean_ctor_get(x_7, 5);
lean_inc(x_10);
x_11 = 0;
x_12 = l_Lean_SourceInfo_fromRef(x_10, x_11);
lean_dec(x_10);
x_13 = lean_ctor_get(x_7, 10);
lean_inc(x_13);
x_14 = lean_st_ref_get(x_8, x_9);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
x_18 = lean_ctor_get(x_16, 0);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_environment_main_module(x_18);
x_20 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1;
lean_inc(x_12);
lean_ctor_set_tag(x_14, 2);
lean_ctor_set(x_14, 1, x_20);
lean_ctor_set(x_14, 0, x_12);
x_21 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7;
x_22 = l_Lean_addMacroScope(x_19, x_21, x_13);
x_23 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4;
x_24 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12;
lean_inc(x_12);
x_25 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_25, 0, x_12);
lean_ctor_set(x_25, 1, x_23);
lean_ctor_set(x_25, 2, x_22);
lean_ctor_set(x_25, 3, x_24);
x_26 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15;
lean_inc(x_12);
x_27 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_27, 0, x_12);
lean_ctor_set(x_27, 1, x_26);
x_28 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16;
lean_inc(x_12);
x_29 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_29, 0, x_12);
lean_ctor_set(x_29, 1, x_28);
x_30 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14;
lean_inc(x_12);
x_31 = l_Lean_Syntax_node2(x_12, x_30, x_27, x_29);
x_32 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
lean_inc(x_12);
x_33 = l_Lean_Syntax_node1(x_12, x_32, x_31);
x_34 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5;
lean_inc(x_12);
x_35 = l_Lean_Syntax_node2(x_12, x_34, x_25, x_33);
x_36 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2;
x_37 = l_Lean_Syntax_node2(x_12, x_36, x_14, x_35);
x_38 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_38, 0, x_37);
x_39 = l_Lean_Elab_Tactic_tryTactic___rarg(x_38, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_17);
if (lean_obj_tag(x_39) == 0)
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_39);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; 
x_41 = lean_ctor_get(x_39, 0);
lean_dec(x_41);
x_42 = lean_box(0);
lean_ctor_set(x_39, 0, x_42);
return x_39;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_39, 1);
lean_inc(x_43);
lean_dec(x_39);
x_44 = lean_box(0);
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_44);
lean_ctor_set(x_45, 1, x_43);
return x_45;
}
}
else
{
uint8_t x_46; 
x_46 = !lean_is_exclusive(x_39);
if (x_46 == 0)
{
return x_39;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_39, 0);
x_48 = lean_ctor_get(x_39, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_39);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; 
x_50 = lean_ctor_get(x_14, 0);
x_51 = lean_ctor_get(x_14, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_14);
x_52 = lean_ctor_get(x_50, 0);
lean_inc(x_52);
lean_dec(x_50);
x_53 = lean_environment_main_module(x_52);
x_54 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1;
lean_inc(x_12);
x_55 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_55, 0, x_12);
lean_ctor_set(x_55, 1, x_54);
x_56 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7;
x_57 = l_Lean_addMacroScope(x_53, x_56, x_13);
x_58 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4;
x_59 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12;
lean_inc(x_12);
x_60 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_60, 0, x_12);
lean_ctor_set(x_60, 1, x_58);
lean_ctor_set(x_60, 2, x_57);
lean_ctor_set(x_60, 3, x_59);
x_61 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15;
lean_inc(x_12);
x_62 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_62, 0, x_12);
lean_ctor_set(x_62, 1, x_61);
x_63 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16;
lean_inc(x_12);
x_64 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_64, 0, x_12);
lean_ctor_set(x_64, 1, x_63);
x_65 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14;
lean_inc(x_12);
x_66 = l_Lean_Syntax_node2(x_12, x_65, x_62, x_64);
x_67 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
lean_inc(x_12);
x_68 = l_Lean_Syntax_node1(x_12, x_67, x_66);
x_69 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5;
lean_inc(x_12);
x_70 = l_Lean_Syntax_node2(x_12, x_69, x_60, x_68);
x_71 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2;
x_72 = l_Lean_Syntax_node2(x_12, x_71, x_55, x_70);
x_73 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_73, 0, x_72);
x_74 = l_Lean_Elab_Tactic_tryTactic___rarg(x_73, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_51);
if (lean_obj_tag(x_74) == 0)
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
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
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_79 = lean_ctor_get(x_74, 0);
lean_inc(x_79);
x_80 = lean_ctor_get(x_74, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_81 = x_74;
} else {
 lean_dec_ref(x_74);
 x_81 = lean_box(0);
}
if (lean_is_scalar(x_81)) {
 x_82 = lean_alloc_ctor(1, 2, 0);
} else {
 x_82 = x_81;
}
lean_ctor_set(x_82, 0, x_79);
lean_ctor_set(x_82, 1, x_80);
return x_82;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; uint8_t x_9; lean_object* x_10; 
x_7 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__4___closed__1;
x_8 = 1;
x_9 = 0;
x_10 = l_Mathlib_Tactic_constructorMatching(x_1, x_7, x_8, x_9, x_2, x_3, x_4, x_5, x_6);
return x_10;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("assumption", 10, 10);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_11 = lean_ctor_get(x_8, 5);
lean_inc(x_11);
x_12 = 0;
x_13 = l_Lean_SourceInfo_fromRef(x_11, x_12);
lean_dec(x_11);
x_14 = lean_st_ref_get(x_9, x_10);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_14, 1);
x_17 = lean_ctor_get(x_14, 0);
lean_dec(x_17);
x_18 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
lean_inc(x_13);
lean_ctor_set_tag(x_14, 2);
lean_ctor_set(x_14, 1, x_18);
lean_ctor_set(x_14, 0, x_13);
x_19 = l_Lean_Syntax_node1(x_13, x_1, x_14);
x_20 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_20, 0, x_19);
x_21 = l_Lean_Elab_Tactic_tryTactic___rarg(x_20, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_16);
if (lean_obj_tag(x_21) == 0)
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_21);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_ctor_get(x_21, 0);
lean_dec(x_23);
x_24 = lean_box(0);
lean_ctor_set(x_21, 0, x_24);
return x_21;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_21, 1);
lean_inc(x_25);
lean_dec(x_21);
x_26 = lean_box(0);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
return x_27;
}
}
else
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_21);
if (x_28 == 0)
{
return x_21;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_21, 0);
x_30 = lean_ctor_get(x_21, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_21);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_32 = lean_ctor_get(x_14, 1);
lean_inc(x_32);
lean_dec(x_14);
x_33 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
lean_inc(x_13);
x_34 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_34, 0, x_13);
lean_ctor_set(x_34, 1, x_33);
x_35 = l_Lean_Syntax_node1(x_13, x_1, x_34);
x_36 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_36, 0, x_35);
x_37 = l_Lean_Elab_Tactic_tryTactic___rarg(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_32);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_38 = lean_ctor_get(x_37, 1);
lean_inc(x_38);
if (lean_is_exclusive(x_37)) {
 lean_ctor_release(x_37, 0);
 lean_ctor_release(x_37, 1);
 x_39 = x_37;
} else {
 lean_dec_ref(x_37);
 x_39 = lean_box(0);
}
x_40 = lean_box(0);
if (lean_is_scalar(x_39)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_39;
}
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_38);
return x_41;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_42 = lean_ctor_get(x_37, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_37, 1);
lean_inc(x_43);
if (lean_is_exclusive(x_37)) {
 lean_ctor_release(x_37, 0);
 lean_ctor_release(x_37, 1);
 x_44 = x_37;
} else {
 lean_dec_ref(x_37);
 x_44 = lean_box(0);
}
if (lean_is_scalar(x_44)) {
 x_45 = lean_alloc_ctor(1, 2, 0);
} else {
 x_45 = x_44;
}
lean_ctor_set(x_45, 0, x_42);
lean_ctor_set(x_45, 1, x_43);
return x_45;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_box(0);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__1;
x_2 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_liftMetaTactic), 10, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_distribNot), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2;
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__3;
x_3 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_casesMatcher), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__6() {
_start:
{
lean_object* x_1; uint8_t x_2; uint8_t x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__5;
x_2 = 1;
x_3 = 0;
x_4 = lean_box(x_2);
x_5 = lean_box(x_2);
x_6 = lean_box(x_3);
x_7 = lean_alloc_closure((void*)(l_Lean_MVarId_casesMatching___boxed), 10, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_4);
lean_closure_set(x_7, 2, x_5);
lean_closure_set(x_7, 3, x_6);
return x_7;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__6;
x_2 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_liftMetaTactic), 10, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__4;
x_2 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__7;
x_3 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__4), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__10;
x_2 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_liftMetaTactic), 10, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__6___boxed), 10, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_12 = l_Lean_Elab_Tactic_getUnsolvedGoals(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__2), 10, 1);
lean_closure_set(x_15, 0, x_1);
x_16 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__8;
x_17 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_17, 0, x_16);
lean_closure_set(x_17, 1, x_15);
x_18 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__9;
x_19 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_19, 0, x_17);
lean_closure_set(x_19, 1, x_18);
x_20 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2;
x_21 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_21, 0, x_19);
lean_closure_set(x_21, 1, x_20);
x_22 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__11;
x_23 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_23, 0, x_21);
lean_closure_set(x_23, 1, x_22);
x_24 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__5), 10, 1);
lean_closure_set(x_24, 0, x_2);
x_25 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_andThenOnSubgoals), 11, 2);
lean_closure_set(x_25, 0, x_23);
lean_closure_set(x_25, 1, x_24);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_26 = l_Lean_Elab_Tactic_allGoals(x_25, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_14);
if (lean_obj_tag(x_26) == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
x_28 = l_Lean_Elab_Tactic_getUnsolvedGoals(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_27);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__12;
x_32 = l_List_beq___at_Mathlib_Linter_UnusedTactic_eraseUsedTactics___spec__1(x_13, x_29);
lean_dec(x_29);
lean_dec(x_13);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_box(0);
x_34 = lean_apply_10(x_31, x_33, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_30);
return x_34;
}
else
{
lean_object* x_35; lean_object* x_36; uint8_t x_37; 
x_35 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48;
x_36 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic___spec__2(x_35, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_30);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_37 = !lean_is_exclusive(x_36);
if (x_37 == 0)
{
return x_36;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_36, 0);
x_39 = lean_ctor_get(x_36, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_36);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
else
{
uint8_t x_41; 
lean_dec(x_13);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_41 = !lean_is_exclusive(x_26);
if (x_41 == 0)
{
return x_26;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_26, 0);
x_43 = lean_ctor_get(x_26, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_26);
x_44 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautoCore___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_10 = lean_ctor_get(x_7, 5);
lean_inc(x_10);
x_11 = 0;
x_12 = l_Lean_SourceInfo_fromRef(x_10, x_11);
lean_dec(x_10);
x_13 = lean_st_ref_get(x_8, x_9);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_15 = lean_ctor_get(x_13, 1);
x_16 = lean_ctor_get(x_13, 0);
lean_dec(x_16);
x_17 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1;
lean_inc(x_12);
lean_ctor_set_tag(x_13, 2);
lean_ctor_set(x_13, 1, x_17);
lean_ctor_set(x_13, 0, x_12);
x_18 = l_Mathlib_Tactic_Tauto_tautoCore___closed__1;
lean_inc(x_12);
x_19 = l_Lean_Syntax_node1(x_12, x_18, x_13);
x_20 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_20, 0, x_19);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_21 = l_Lean_Elab_Tactic_tryTactic___rarg(x_20, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_15);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = lean_st_ref_get(x_8, x_22);
x_24 = !lean_is_exclusive(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_23, 1);
x_26 = lean_ctor_get(x_23, 0);
lean_dec(x_26);
x_27 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
lean_inc(x_12);
lean_ctor_set_tag(x_23, 2);
lean_ctor_set(x_23, 1, x_27);
lean_ctor_set(x_23, 0, x_12);
x_28 = l_Mathlib_Tactic_Tauto_tautoCore___closed__2;
x_29 = l_Lean_Syntax_node1(x_12, x_28, x_23);
x_30 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_30, 0, x_29);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_31 = l_Lean_Elab_Tactic_tryTactic___rarg(x_30, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_25);
if (lean_obj_tag(x_31) == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7), 11, 2);
lean_closure_set(x_33, 0, x_18);
lean_closure_set(x_33, 1, x_28);
x_34 = l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1(x_33, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_32);
return x_34;
}
else
{
uint8_t x_35; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_35 = !lean_is_exclusive(x_31);
if (x_35 == 0)
{
return x_31;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_31, 0);
x_37 = lean_ctor_get(x_31, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_31);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
return x_38;
}
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_39 = lean_ctor_get(x_23, 1);
lean_inc(x_39);
lean_dec(x_23);
x_40 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
lean_inc(x_12);
x_41 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_41, 0, x_12);
lean_ctor_set(x_41, 1, x_40);
x_42 = l_Mathlib_Tactic_Tauto_tautoCore___closed__2;
x_43 = l_Lean_Syntax_node1(x_12, x_42, x_41);
x_44 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_44, 0, x_43);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_45 = l_Lean_Elab_Tactic_tryTactic___rarg(x_44, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_39);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_46 = lean_ctor_get(x_45, 1);
lean_inc(x_46);
lean_dec(x_45);
x_47 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7), 11, 2);
lean_closure_set(x_47, 0, x_18);
lean_closure_set(x_47, 1, x_42);
x_48 = l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1(x_47, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_46);
return x_48;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_49 = lean_ctor_get(x_45, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_45, 1);
lean_inc(x_50);
if (lean_is_exclusive(x_45)) {
 lean_ctor_release(x_45, 0);
 lean_ctor_release(x_45, 1);
 x_51 = x_45;
} else {
 lean_dec_ref(x_45);
 x_51 = lean_box(0);
}
if (lean_is_scalar(x_51)) {
 x_52 = lean_alloc_ctor(1, 2, 0);
} else {
 x_52 = x_51;
}
lean_ctor_set(x_52, 0, x_49);
lean_ctor_set(x_52, 1, x_50);
return x_52;
}
}
}
else
{
uint8_t x_53; 
lean_dec(x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_53 = !lean_is_exclusive(x_21);
if (x_53 == 0)
{
return x_21;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_21, 0);
x_55 = lean_ctor_get(x_21, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_21);
x_56 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
return x_56;
}
}
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_57 = lean_ctor_get(x_13, 1);
lean_inc(x_57);
lean_dec(x_13);
x_58 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1;
lean_inc(x_12);
x_59 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_59, 0, x_12);
lean_ctor_set(x_59, 1, x_58);
x_60 = l_Mathlib_Tactic_Tauto_tautoCore___closed__1;
lean_inc(x_12);
x_61 = l_Lean_Syntax_node1(x_12, x_60, x_59);
x_62 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_62, 0, x_61);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_63 = l_Lean_Elab_Tactic_tryTactic___rarg(x_62, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_57);
if (lean_obj_tag(x_63) == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_64 = lean_ctor_get(x_63, 1);
lean_inc(x_64);
lean_dec(x_63);
x_65 = lean_st_ref_get(x_8, x_64);
x_66 = lean_ctor_get(x_65, 1);
lean_inc(x_66);
if (lean_is_exclusive(x_65)) {
 lean_ctor_release(x_65, 0);
 lean_ctor_release(x_65, 1);
 x_67 = x_65;
} else {
 lean_dec_ref(x_65);
 x_67 = lean_box(0);
}
x_68 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1;
lean_inc(x_12);
if (lean_is_scalar(x_67)) {
 x_69 = lean_alloc_ctor(2, 2, 0);
} else {
 x_69 = x_67;
 lean_ctor_set_tag(x_69, 2);
}
lean_ctor_set(x_69, 0, x_12);
lean_ctor_set(x_69, 1, x_68);
x_70 = l_Mathlib_Tactic_Tauto_tautoCore___closed__2;
x_71 = l_Lean_Syntax_node1(x_12, x_70, x_69);
x_72 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_72, 0, x_71);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_73 = l_Lean_Elab_Tactic_tryTactic___rarg(x_72, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_66);
if (lean_obj_tag(x_73) == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; 
x_74 = lean_ctor_get(x_73, 1);
lean_inc(x_74);
lean_dec(x_73);
x_75 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7), 11, 2);
lean_closure_set(x_75, 0, x_60);
lean_closure_set(x_75, 1, x_70);
x_76 = l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1(x_75, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_74);
return x_76;
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_77 = lean_ctor_get(x_73, 0);
lean_inc(x_77);
x_78 = lean_ctor_get(x_73, 1);
lean_inc(x_78);
if (lean_is_exclusive(x_73)) {
 lean_ctor_release(x_73, 0);
 lean_ctor_release(x_73, 1);
 x_79 = x_73;
} else {
 lean_dec_ref(x_73);
 x_79 = lean_box(0);
}
if (lean_is_scalar(x_79)) {
 x_80 = lean_alloc_ctor(1, 2, 0);
} else {
 x_80 = x_79;
}
lean_ctor_set(x_80, 0, x_77);
lean_ctor_set(x_80, 1, x_78);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; 
lean_dec(x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_81 = lean_ctor_get(x_63, 0);
lean_inc(x_81);
x_82 = lean_ctor_get(x_63, 1);
lean_inc(x_82);
if (lean_is_exclusive(x_63)) {
 lean_ctor_release(x_63, 0);
 lean_ctor_release(x_63, 1);
 x_83 = x_63;
} else {
 lean_dec_ref(x_63);
 x_83 = lean_box(0);
}
if (lean_is_scalar(x_83)) {
 x_84 = lean_alloc_ctor(1, 2, 0);
} else {
 x_84 = x_83;
}
lean_ctor_set(x_84, 0, x_81);
lean_ctor_set(x_84, 1, x_82);
return x_84;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautoCore___lambda__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic_Tauto_tautoCore___lambda__6(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_finishingConstructorMatcher(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; 
x_7 = lean_box(0);
x_8 = l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3;
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__1), 7, 2);
lean_closure_set(x_9, 0, x_8);
lean_closure_set(x_9, 1, x_1);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1), 7, 2);
lean_closure_set(x_10, 0, x_7);
lean_closure_set(x_10, 1, x_1);
x_11 = l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4;
lean_inc(x_1);
x_12 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__2), 8, 3);
lean_closure_set(x_12, 0, x_11);
lean_closure_set(x_12, 1, x_7);
lean_closure_set(x_12, 2, x_1);
x_13 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___lambda__3), 8, 3);
lean_closure_set(x_13, 0, x_11);
lean_closure_set(x_13, 1, x_7);
lean_closure_set(x_13, 2, x_1);
x_14 = 0;
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_15 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_13, x_14, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_dec(x_15);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_21 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_12, x_14, x_2, x_3, x_4, x_5, x_20);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_ctor_get(x_23, 1);
lean_inc(x_24);
lean_dec(x_23);
x_25 = lean_unbox(x_24);
lean_dec(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_21, 1);
lean_inc(x_26);
lean_dec(x_21);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_27 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_10, x_14, x_2, x_3, x_4, x_5, x_26);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_28, 1);
lean_inc(x_29);
lean_dec(x_28);
x_30 = lean_ctor_get(x_29, 1);
lean_inc(x_30);
lean_dec(x_29);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
lean_dec(x_30);
x_32 = lean_unbox(x_31);
lean_dec(x_31);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_27, 1);
lean_inc(x_33);
lean_dec(x_27);
x_34 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_9, x_14, x_2, x_3, x_4, x_5, x_33);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_unbox(x_35);
lean_dec(x_35);
if (x_36 == 0)
{
uint8_t x_37; 
x_37 = !lean_is_exclusive(x_34);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_ctor_get(x_34, 0);
lean_dec(x_38);
x_39 = lean_box(x_14);
lean_ctor_set(x_34, 0, x_39);
return x_34;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_34, 1);
lean_inc(x_40);
lean_dec(x_34);
x_41 = lean_box(x_14);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_40);
return x_42;
}
}
else
{
uint8_t x_43; 
x_43 = !lean_is_exclusive(x_34);
if (x_43 == 0)
{
lean_object* x_44; uint8_t x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_34, 0);
lean_dec(x_44);
x_45 = 1;
x_46 = lean_box(x_45);
lean_ctor_set(x_34, 0, x_46);
return x_34;
}
else
{
lean_object* x_47; uint8_t x_48; lean_object* x_49; lean_object* x_50; 
x_47 = lean_ctor_get(x_34, 1);
lean_inc(x_47);
lean_dec(x_34);
x_48 = 1;
x_49 = lean_box(x_48);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_47);
return x_50;
}
}
}
else
{
uint8_t x_51; 
x_51 = !lean_is_exclusive(x_34);
if (x_51 == 0)
{
return x_34;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_34, 0);
x_53 = lean_ctor_get(x_34, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_34);
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
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_55 = !lean_is_exclusive(x_27);
if (x_55 == 0)
{
lean_object* x_56; uint8_t x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_27, 0);
lean_dec(x_56);
x_57 = 1;
x_58 = lean_box(x_57);
lean_ctor_set(x_27, 0, x_58);
return x_27;
}
else
{
lean_object* x_59; uint8_t x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_27, 1);
lean_inc(x_59);
lean_dec(x_27);
x_60 = 1;
x_61 = lean_box(x_60);
x_62 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_59);
return x_62;
}
}
}
else
{
uint8_t x_63; 
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_63 = !lean_is_exclusive(x_27);
if (x_63 == 0)
{
return x_27;
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_64 = lean_ctor_get(x_27, 0);
x_65 = lean_ctor_get(x_27, 1);
lean_inc(x_65);
lean_inc(x_64);
lean_dec(x_27);
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
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_67 = !lean_is_exclusive(x_21);
if (x_67 == 0)
{
lean_object* x_68; uint8_t x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_21, 0);
lean_dec(x_68);
x_69 = 1;
x_70 = lean_box(x_69);
lean_ctor_set(x_21, 0, x_70);
return x_21;
}
else
{
lean_object* x_71; uint8_t x_72; lean_object* x_73; lean_object* x_74; 
x_71 = lean_ctor_get(x_21, 1);
lean_inc(x_71);
lean_dec(x_21);
x_72 = 1;
x_73 = lean_box(x_72);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_71);
return x_74;
}
}
}
else
{
uint8_t x_75; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_75 = !lean_is_exclusive(x_21);
if (x_75 == 0)
{
return x_21;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_76 = lean_ctor_get(x_21, 0);
x_77 = lean_ctor_get(x_21, 1);
lean_inc(x_77);
lean_inc(x_76);
lean_dec(x_21);
x_78 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_78, 0, x_76);
lean_ctor_set(x_78, 1, x_77);
return x_78;
}
}
}
else
{
uint8_t x_79; 
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_79 = !lean_is_exclusive(x_15);
if (x_79 == 0)
{
lean_object* x_80; uint8_t x_81; lean_object* x_82; 
x_80 = lean_ctor_get(x_15, 0);
lean_dec(x_80);
x_81 = 1;
x_82 = lean_box(x_81);
lean_ctor_set(x_15, 0, x_82);
return x_15;
}
else
{
lean_object* x_83; uint8_t x_84; lean_object* x_85; lean_object* x_86; 
x_83 = lean_ctor_get(x_15, 1);
lean_inc(x_83);
lean_dec(x_15);
x_84 = 1;
x_85 = lean_box(x_84);
x_86 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_86, 0, x_85);
lean_ctor_set(x_86, 1, x_83);
return x_86;
}
}
}
else
{
uint8_t x_87; 
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_87 = !lean_is_exclusive(x_15);
if (x_87 == 0)
{
return x_15;
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_88 = lean_ctor_get(x_15, 0);
x_89 = lean_ctor_get(x_15, 1);
lean_inc(x_89);
lean_inc(x_88);
lean_dec(x_15);
x_90 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_90, 0, x_88);
lean_ctor_set(x_90, 1, x_89);
return x_90;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_finishingConstructorMatcher), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_Elab_Tactic_getMainGoal(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; uint8_t x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Mathlib_Tactic_Tauto_tautology___lambda__1___closed__1;
x_14 = 0;
x_15 = 1;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_16 = l_Mathlib_Tactic_constructorMatching(x_11, x_13, x_14, x_15, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = l_Lean_Elab_Tactic_replaceMainGoal(x_17, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_18);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
if (lean_obj_tag(x_19) == 0)
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_ctor_get(x_19, 0);
lean_dec(x_21);
x_22 = lean_box(0);
lean_ctor_set(x_19, 0, x_22);
return x_19;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_23);
lean_dec(x_19);
x_24 = lean_box(0);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_23);
return x_25;
}
}
else
{
uint8_t x_26; 
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
uint8_t x_30; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_30 = !lean_is_exclusive(x_16);
if (x_30 == 0)
{
return x_16;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_16, 0);
x_32 = lean_ctor_get(x_16, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_16);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_34 = !lean_is_exclusive(x_10);
if (x_34 == 0)
{
return x_10;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_10, 0);
x_36 = lean_ctor_get(x_10, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_10);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautology___lambda__1___boxed), 9, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_12 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_12, 0, x_1);
x_13 = l_Lean_Elab_Tactic_saveState___rarg(x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_16 = l_Lean_Elab_Tactic_withoutRecover___rarg(x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_dec(x_14);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_16;
}
else
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_16, 1);
x_20 = l_Lean_Exception_isInterrupt(x_18);
if (x_20 == 0)
{
uint8_t x_21; 
x_21 = l_Lean_Exception_isRuntime(x_18);
if (x_21 == 0)
{
uint8_t x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
lean_free_object(x_16);
lean_dec(x_18);
x_22 = 0;
x_23 = l_Lean_Elab_Tactic_SavedState_restore(x_14, x_22, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_19);
x_24 = lean_ctor_get(x_23, 1);
lean_inc(x_24);
lean_dec(x_23);
x_25 = l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1;
x_26 = l_Lean_Elab_Tactic_withMainContext___rarg(x_25, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_24);
return x_26;
}
else
{
lean_dec(x_14);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_16;
}
}
else
{
lean_dec(x_14);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_16;
}
}
else
{
lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_27 = lean_ctor_get(x_16, 0);
x_28 = lean_ctor_get(x_16, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_16);
x_29 = l_Lean_Exception_isInterrupt(x_27);
if (x_29 == 0)
{
uint8_t x_30; 
x_30 = l_Lean_Exception_isRuntime(x_27);
if (x_30 == 0)
{
uint8_t x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
lean_dec(x_27);
x_31 = 0;
x_32 = l_Lean_Elab_Tactic_SavedState_restore(x_14, x_31, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_28);
x_33 = lean_ctor_get(x_32, 1);
lean_inc(x_33);
lean_dec(x_32);
x_34 = l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1;
x_35 = l_Lean_Elab_Tactic_withMainContext___rarg(x_34, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_33);
return x_35;
}
else
{
lean_object* x_36; 
lean_dec(x_14);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_27);
lean_ctor_set(x_36, 1, x_28);
return x_36;
}
}
else
{
lean_object* x_37; 
lean_dec(x_14);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_27);
lean_ctor_set(x_37, 1, x_28);
return x_37;
}
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tacticRfl", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rfl", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("solveByElim", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("solve_by_elim", 13, 13);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
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
x_10 = l_Mathlib_Tactic_Tauto_tautoCore(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_ctor_get(x_7, 5);
lean_inc(x_12);
x_13 = 0;
x_14 = l_Lean_SourceInfo_fromRef(x_12, x_13);
lean_dec(x_12);
x_15 = lean_st_ref_get(x_8, x_11);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_17 = lean_ctor_get(x_15, 1);
x_18 = lean_ctor_get(x_15, 0);
lean_dec(x_18);
x_19 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3;
lean_inc(x_14);
lean_ctor_set_tag(x_15, 2);
lean_ctor_set(x_15, 1, x_19);
lean_ctor_set(x_15, 0, x_14);
x_20 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2;
lean_inc(x_14);
x_21 = l_Lean_Syntax_node1(x_14, x_20, x_15);
x_22 = lean_st_ref_get(x_8, x_17);
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_24 = lean_ctor_get(x_22, 1);
x_25 = lean_ctor_get(x_22, 0);
lean_dec(x_25);
x_26 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6;
lean_inc(x_14);
lean_ctor_set_tag(x_22, 2);
lean_ctor_set(x_22, 1, x_26);
lean_ctor_set(x_22, 0, x_14);
x_27 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
x_28 = l_Mathlib_Tactic_Tauto_elabConfig___closed__7;
lean_inc(x_14);
x_29 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_29, 0, x_14);
lean_ctor_set(x_29, 1, x_27);
lean_ctor_set(x_29, 2, x_28);
x_30 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5;
lean_inc_n(x_29, 4);
x_31 = l_Lean_Syntax_node6(x_14, x_30, x_22, x_29, x_29, x_29, x_29, x_29);
x_32 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_32, 0, x_21);
x_33 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautology___lambda__2___boxed), 11, 1);
lean_closure_set(x_33, 0, x_31);
x_34 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_orElse___rarg), 11, 2);
lean_closure_set(x_34, 0, x_32);
lean_closure_set(x_34, 1, x_33);
x_35 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1), 10, 1);
lean_closure_set(x_35, 0, x_34);
x_36 = l_Lean_Elab_Tactic_allGoals(x_35, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_24);
return x_36;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_37 = lean_ctor_get(x_22, 1);
lean_inc(x_37);
lean_dec(x_22);
x_38 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6;
lean_inc(x_14);
x_39 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_39, 0, x_14);
lean_ctor_set(x_39, 1, x_38);
x_40 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
x_41 = l_Mathlib_Tactic_Tauto_elabConfig___closed__7;
lean_inc(x_14);
x_42 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_42, 0, x_14);
lean_ctor_set(x_42, 1, x_40);
lean_ctor_set(x_42, 2, x_41);
x_43 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5;
lean_inc_n(x_42, 4);
x_44 = l_Lean_Syntax_node6(x_14, x_43, x_39, x_42, x_42, x_42, x_42, x_42);
x_45 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_45, 0, x_21);
x_46 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautology___lambda__2___boxed), 11, 1);
lean_closure_set(x_46, 0, x_44);
x_47 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_orElse___rarg), 11, 2);
lean_closure_set(x_47, 0, x_45);
lean_closure_set(x_47, 1, x_46);
x_48 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1), 10, 1);
lean_closure_set(x_48, 0, x_47);
x_49 = l_Lean_Elab_Tactic_allGoals(x_48, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_37);
return x_49;
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_50 = lean_ctor_get(x_15, 1);
lean_inc(x_50);
lean_dec(x_15);
x_51 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3;
lean_inc(x_14);
x_52 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_52, 0, x_14);
lean_ctor_set(x_52, 1, x_51);
x_53 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2;
lean_inc(x_14);
x_54 = l_Lean_Syntax_node1(x_14, x_53, x_52);
x_55 = lean_st_ref_get(x_8, x_50);
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
x_58 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6;
lean_inc(x_14);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(2, 2, 0);
} else {
 x_59 = x_57;
 lean_ctor_set_tag(x_59, 2);
}
lean_ctor_set(x_59, 0, x_14);
lean_ctor_set(x_59, 1, x_58);
x_60 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16;
x_61 = l_Mathlib_Tactic_Tauto_elabConfig___closed__7;
lean_inc(x_14);
x_62 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_62, 0, x_14);
lean_ctor_set(x_62, 1, x_60);
lean_ctor_set(x_62, 2, x_61);
x_63 = l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5;
lean_inc_n(x_62, 4);
x_64 = l_Lean_Syntax_node6(x_14, x_63, x_59, x_62, x_62, x_62, x_62, x_62);
x_65 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_evalTactic), 10, 1);
lean_closure_set(x_65, 0, x_54);
x_66 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautology___lambda__2___boxed), 11, 1);
lean_closure_set(x_66, 0, x_64);
x_67 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_orElse___rarg), 11, 2);
lean_closure_set(x_67, 0, x_65);
lean_closure_set(x_67, 1, x_66);
x_68 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_iterateUntilFailure___at_Mathlib_Tactic_Tauto_tautoCore___spec__1), 10, 1);
lean_closure_set(x_68, 0, x_67);
x_69 = l_Lean_Elab_Tactic_allGoals(x_68, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_56);
return x_69;
}
}
else
{
uint8_t x_70; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_70 = !lean_is_exclusive(x_10);
if (x_70 == 0)
{
return x_10;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_10, 0);
x_72 = lean_ctor_get(x_10, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_10);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_tautology___closed__1;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto_tautology___lambda__3), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tautology___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_Tauto_tautology___closed__3;
x_2 = lean_alloc_closure((void*)(l_Batteries_Tactic_classical___at_Batteries_Tactic___aux__Batteries__Tactic__Classical______elabRules__Batteries__Tactic__tacticClassical____1___spec__1), 10, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = l_Mathlib_Tactic_Tauto_tautology___closed__2;
x_11 = l_Mathlib_Tactic_Tauto_tautology___closed__4;
x_12 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg(x_10, x_11, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Tactic_Tauto_tautology___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto_tautology___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Mathlib_Tactic_Tauto_tautology___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_2);
return x_12;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3;
x_2 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7;
x_4 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__2() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("optional", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_Tauto_tauto___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_Tauto_tauto___closed__4;
x_2 = l_Lean_Parser_Tactic_config;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10;
x_2 = l_Mathlib_Tactic_Tauto_tauto___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_tauto___closed__5;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_Tauto_tauto___closed__1;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Mathlib_Tactic_Tauto_tauto___closed__6;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto_tauto() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_Tauto_tauto___closed__7;
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = l_Lean_mkOptionalNode(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_12; lean_object* x_13; 
x_12 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___closed__1;
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_13 = l_Mathlib_Tactic_Tauto_elabConfig(x_12, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_15 = l_Mathlib_Tactic_Tauto_tautology(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_14);
return x_15;
}
else
{
uint8_t x_16; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_16 = !lean_is_exclusive(x_13);
if (x_16 == 0)
{
return x_13;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_13, 0);
x_18 = lean_ctor_get(x_13, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_13);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
else
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_2);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
x_21 = l_Lean_mkOptionalNode(x_2);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_22 = l_Mathlib_Tactic_Tauto_elabConfig(x_21, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_21);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = l_Mathlib_Tactic_Tauto_tautology(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_23);
return x_24;
}
else
{
uint8_t x_25; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_25 = !lean_is_exclusive(x_22);
if (x_25 == 0)
{
return x_22;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_22, 0);
x_27 = lean_ctor_get(x_22, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_22);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_29 = lean_ctor_get(x_2, 0);
lean_inc(x_29);
lean_dec(x_2);
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_29);
x_31 = l_Lean_mkOptionalNode(x_30);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_32 = l_Mathlib_Tactic_Tauto_elabConfig(x_31, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_31);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_32, 1);
lean_inc(x_33);
lean_dec(x_32);
x_34 = l_Mathlib_Tactic_Tauto_tautology(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_33);
return x_34;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_35 = lean_ctor_get(x_32, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
if (lean_is_exclusive(x_32)) {
 lean_ctor_release(x_32, 0);
 lean_ctor_release(x_32, 1);
 x_37 = x_32;
} else {
 lean_dec_ref(x_32);
 x_37 = lean_box(0);
}
if (lean_is_scalar(x_37)) {
 x_38 = lean_alloc_ctor(1, 2, 0);
} else {
 x_38 = x_37;
}
lean_ctor_set(x_38, 0, x_35);
lean_ctor_set(x_38, 1, x_36);
return x_38;
}
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___boxed), 11, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("config", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1;
x_2 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2;
x_3 = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5;
x_4 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__2;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Mathlib_Tactic_Tauto_tauto___closed__1;
lean_inc(x_1);
x_12 = l_Lean_Syntax_isOfKind(x_1, x_11);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Classical______elabRules__Batteries__Tactic__tacticClassical_x21__1___spec__1___rarg(x_10);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
lean_dec(x_1);
x_16 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__1;
x_17 = l_Lean_Syntax_isNone(x_15);
if (x_17 == 0)
{
uint8_t x_18; 
lean_inc(x_15);
x_18 = l_Lean_Syntax_matchesNull(x_15, x_14);
if (x_18 == 0)
{
lean_object* x_19; 
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_19 = l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Classical______elabRules__Batteries__Tactic__tacticClassical_x21__1___spec__1___rarg(x_10);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_20 = lean_unsigned_to_nat(0u);
x_21 = l_Lean_Syntax_getArg(x_15, x_20);
lean_dec(x_15);
x_22 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__3;
lean_inc(x_21);
x_23 = l_Lean_Syntax_isOfKind(x_21, x_22);
if (x_23 == 0)
{
lean_object* x_24; 
lean_dec(x_21);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_24 = l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Classical______elabRules__Batteries__Tactic__tacticClassical_x21__1___spec__1___rarg(x_10);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_25, 0, x_21);
x_26 = lean_box(0);
x_27 = lean_apply_11(x_16, x_26, x_25, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_27;
}
}
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_15);
x_28 = lean_box(0);
x_29 = lean_box(0);
x_30 = lean_apply_11(x_16, x_29, x_28, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_30;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_1);
return x_12;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_CasesM(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Core(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Lean_Elab_Tactic_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Qq(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Classical(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_Tauto(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_CasesM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Core(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Lean_Elab_Tactic_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Qq(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Classical(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__1);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__2 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__2);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__3);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__4 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__4);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__5);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__6 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__6);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__7);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__8);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__9 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__9);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__10 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__10();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__10);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__11);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__12 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__12();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__12);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__13 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__13();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__13);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__14 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__14();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__14);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__15 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__15();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__15);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__16);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__17 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__17();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__17);
l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__18 = _init_l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__18();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7____closed__18);
res = l_Mathlib_Tactic_Tauto_initFn____x40_Mathlib_Tactic_Tauto___hyg_7_(lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__2___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__3___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__4___closed__4);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__4);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__7___closed__5);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__8___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__9___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__10___closed__4);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__11___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__4);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__5);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__6 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__6);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__7);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__8 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__8);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__9 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__9);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__10 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__10);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__11 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__11);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__12 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__12();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__12);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__13);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__14 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__14();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__14);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__15 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__15();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__15);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__16);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__17 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__17();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__17);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__18 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__18();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__18);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__19 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__19();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__19);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__20 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__20();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__20);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__21 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__21();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__21);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__22 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__22();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__22);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__23 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__23();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__23);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__24 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__24();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__24);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__25 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__25();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__25);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__26 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__26();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__26);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__27 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__27();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__27);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__28);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__29 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__29();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__29);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__30 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__30();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__30);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__31 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__31();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__31);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__32 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__32();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__32);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__33 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__33();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__33);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__34 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__34();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__34);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__35 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__35();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__35);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__36 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__36();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__36);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__37 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__37();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__37);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__38 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__38();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__38);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__39 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__39();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__39);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__40 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__40();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__40);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__41 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__41();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__41);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__42 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__42();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__42);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__43 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__43();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__43);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__44 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__44();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__44);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__45 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__45();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__45);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__46 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__46();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__46);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__47 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__47();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__47);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___lambda__13___closed__48);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__1 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__1);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__2 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__2);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__3 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__3);
l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__4 = _init_l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_distribNotOnceAt___closed__4);
l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__1 = _init_l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__1);
l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2 = _init_l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_evalUnsafe____x40_Mathlib_Tactic_Tauto___hyg_1953____closed__2);
l_Mathlib_Tactic_Tauto_elabConfig___closed__1 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__1);
l_Mathlib_Tactic_Tauto_elabConfig___closed__2 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__2);
l_Mathlib_Tactic_Tauto_elabConfig___closed__3 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__3);
l_Mathlib_Tactic_Tauto_elabConfig___closed__4 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__4);
l_Mathlib_Tactic_Tauto_elabConfig___closed__5 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__5);
l_Mathlib_Tactic_Tauto_elabConfig___closed__6 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__6);
l_Mathlib_Tactic_Tauto_elabConfig___closed__7 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__7);
l_Mathlib_Tactic_Tauto_elabConfig___closed__8 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__8);
l_Mathlib_Tactic_Tauto_elabConfig___closed__9 = _init_l_Mathlib_Tactic_Tauto_elabConfig___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_elabConfig___closed__9);
l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__1 = _init_l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__1);
l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__2 = _init_l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__2);
l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3 = _init_l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_coreConstructorMatcher___closed__3);
l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__1 = _init_l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__1);
l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2 = _init_l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_casesMatcher___lambda__1___closed__2);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__1 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__1);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__2 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__2);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__3 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__3);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__4 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__4);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__5 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__5);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__6 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__6);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__7 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__7);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__8);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__9 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__9);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__10);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__11);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__12 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__12();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__12);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__13 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__13();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__13);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__14 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__14();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__14);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__15 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__15();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__15);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__16 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__16();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__16);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__17 = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__17();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694____closed__17);
l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694_ = _init_l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694_();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_term___x3c_x3b_x3e______x40_Mathlib_Tactic_Tauto___hyg_2694_);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__1);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__2);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__3);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__4 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__4);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__5);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__6);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__7 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__7);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__8 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__8);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__9 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__9);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__10);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__11 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__11);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__12 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__12();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__12);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__13 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__13();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__13);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__14 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__14();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__14);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__15 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__15();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__15);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______macroRules__Mathlib__Tactic__Tauto__term___x3c_x3b_x3e____1___closed__16);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__1 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__1);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__2 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______unexpand__Lean__Elab__Tactic__andThenOnSubgoals__1___closed__2);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__2___closed__1);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__1);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__2);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__3 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__3);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__4);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__5);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__6);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__7);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__8 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__8);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__9 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__9);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__10 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__10);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__11 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__11);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__12);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__13 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__13();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__13);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__14);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__15);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__3___closed__16);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__4___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__4___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__4___closed__1);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__5___closed__1);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__1);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__2);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__3 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__3);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__4 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__4);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__5 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__5);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__6 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__6);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__7 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__7);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__8 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__8);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__9 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__9);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__10 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__10);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__11 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__11);
l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__12 = _init_l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__12();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___lambda__7___closed__12);
l_Mathlib_Tactic_Tauto_tautoCore___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautoCore___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___closed__1);
l_Mathlib_Tactic_Tauto_tautoCore___closed__2 = _init_l_Mathlib_Tactic_Tauto_tautoCore___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautoCore___closed__2);
l_Mathlib_Tactic_Tauto_tautology___lambda__1___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__1___closed__1);
l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__2___closed__1);
l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__1);
l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__2);
l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__3);
l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__4 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__4);
l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__5);
l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6 = _init_l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___lambda__3___closed__6);
l_Mathlib_Tactic_Tauto_tautology___closed__1 = _init_l_Mathlib_Tactic_Tauto_tautology___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___closed__1);
l_Mathlib_Tactic_Tauto_tautology___closed__2 = _init_l_Mathlib_Tactic_Tauto_tautology___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___closed__2);
l_Mathlib_Tactic_Tauto_tautology___closed__3 = _init_l_Mathlib_Tactic_Tauto_tautology___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___closed__3);
l_Mathlib_Tactic_Tauto_tautology___closed__4 = _init_l_Mathlib_Tactic_Tauto_tautology___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tautology___closed__4);
l_Mathlib_Tactic_Tauto_tauto___closed__1 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__1);
l_Mathlib_Tactic_Tauto_tauto___closed__2 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__2);
l_Mathlib_Tactic_Tauto_tauto___closed__3 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__3);
l_Mathlib_Tactic_Tauto_tauto___closed__4 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__4);
l_Mathlib_Tactic_Tauto_tauto___closed__5 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__5);
l_Mathlib_Tactic_Tauto_tauto___closed__6 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__6);
l_Mathlib_Tactic_Tauto_tauto___closed__7 = _init_l_Mathlib_Tactic_Tauto_tauto___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto___closed__7);
l_Mathlib_Tactic_Tauto_tauto = _init_l_Mathlib_Tactic_Tauto_tauto();
lean_mark_persistent(l_Mathlib_Tactic_Tauto_tauto);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___closed__1 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___lambda__1___closed__1);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__1 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__1);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__2 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__2);
l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__3 = _init_l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_Tauto___aux__Mathlib__Tactic__Tauto______elabRules__Mathlib__Tactic__Tauto__tauto__1___closed__3);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
