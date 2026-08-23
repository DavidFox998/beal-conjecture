// Lean compiler output
// Module: Mathlib.Tactic.PushNeg
// Imports: Init Lean.Elab.Tactic.Location Mathlib.Data.Set.Defs Mathlib.Logic.Basic Mathlib.Order.Defs Mathlib.Tactic.Conv
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
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__4;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__4;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2;
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg__;
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__SeqFocus______elabRules__Batteries__Tactic__tacticMap__tacs_x5b___x3b_x5d__1___spec__1___rarg(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__8;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__6;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__12;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint32_t l_UInt32_ofNatTruncate(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__7;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_isProp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4;
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
extern lean_object* l_Lean_Parser_Tactic_location;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_isExprDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Expr_isAppOfArity(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_expandLocation(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42;
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__6;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36;
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2;
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* l_Lean_Meta_Simp_main(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
lean_object* l_Lean_instantiateMVars___at_Lean_Meta_Simp_synthesizeArgs___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_getMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_cleanupAnnotations(lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_string_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNeg;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__25;
lean_object* l_Lean_Meta_getSimpCongrTheorems___rarg(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__4;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_appArg_x21(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__7;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__29;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__40;
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__7;
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__6;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__11;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__15;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37;
lean_object* l_Lean_Elab_Tactic_withLocation(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegConv___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegation(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_SourceInfo_fromRef(lean_object*, uint8_t);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55;
lean_object* l_Lean_MVarId_getType(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__10;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_Conv_getLhs(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__3;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22;
lean_object* l_Lean_FVarId_getDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_forallE___override(lean_object*, lean_object*, lean_object*, uint8_t);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35;
lean_object* l_Lean_Elab_Tactic_withMainContext___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___boxed(lean_object*);
lean_object* l_Lean_Meta_mkAppM(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_log___at_Lean_Elab_Tactic_closeUsingOrAdmit___spec__3(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7;
lean_object* l_Lean_Syntax_getOptional_x3f(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__48;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegConv;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__3;
uint8_t l_Lean_Expr_hasLooseBVars(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__2;
lean_object* l_Lean_instantiateMVars___at_Lean_Elab_Tactic_getMainTarget___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__43;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__11;
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
uint8_t lean_name_eq(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__31;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__9;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1;
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
lean_object* l_Lean_mkNot(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18;
LEAN_EXPORT lean_object* l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_appFn_x21(lean_object*);
uint8_t l_Lean_LocalDecl_isAuxDecl(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__23;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Option_register___at_Lean_Compiler_LCNF_initFn____x40_Lean_Compiler_LCNF_ConfigOptions___hyg_185____spec__1(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_push__neg_use__distrib;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__17;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_mkOr(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28;
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__4;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__21;
lean_object* l_Lean_Syntax_node4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718_(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__10;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13;
extern uint8_t l_instDecidableFalse;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
lean_object* l_Lean_Meta_applySimpResultToLocalDecl(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47;
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__4;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__10;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_object* l_Lean_mkAnd(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__11;
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__6;
lean_object* l_Lean_Syntax_node1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__54;
uint8_t l_Lean_KVMap_getBool(lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_type(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__13;
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52;
extern lean_object* l_Lean_Meta_Simp_defaultMaxSteps;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_Simp_Result_mkEqTrans(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__1;
lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__3;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__9;
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__1;
static uint32_t l_Mathlib_Tactic_PushNeg_pushNegCore___closed__2;
lean_object* l_Lean_Expr_getAppFnArgs(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__3;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegConv___closed__4;
static lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__1;
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__5;
static lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___closed__1;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34;
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_applySimpResultToTarget(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_Conv_applySimpResult(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Exception_isRuntime(lean_object*);
lean_object* l_Lean_Expr_lam___override(lean_object*, lean_object*, lean_object*, uint8_t);
static lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__27;
static lean_object* l_Mathlib_Tactic_PushNeg_pushNeg___closed__8;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19;
lean_object* l_Lean_Elab_Tactic_replaceMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__51;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__45;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
lean_object* l_Lean_Meta_whnfR(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7;
static lean_object* l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__4;
static lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__33;
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("push_neg", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("use_distrib", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Make `push_neg` use `not_and_or` rather than the default `not_and`.", 67, 67);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__6() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 0;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__4;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__5;
x_4 = lean_box(x_1);
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Mathlib", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("PushNeg", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1;
x_5 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2;
x_6 = l_Lean_Name_mkStr5(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718_(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__6;
x_4 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__10;
x_5 = l_Lean_Option_register___at_Lean_Compiler_LCNF_initFn____x40_Lean_Compiler_LCNF_ConfigOptions___hyg_185____spec__1(x_2, x_3, x_4, x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_8, 2);
x_12 = l_Lean_KVMap_getBool(x_11, x_1, x_2);
x_13 = lean_box(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_10);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
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
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Ne", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_12 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_13 = lean_array_push(x_12, x_1);
x_14 = lean_array_push(x_13, x_2);
x_15 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__2;
x_16 = l_Lean_Meta_mkAppM(x_15, x_14, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_16) == 0)
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_box(0);
x_20 = 1;
x_21 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_21, 0, x_18);
lean_ctor_set(x_21, 1, x_19);
lean_ctor_set_uint8(x_21, sizeof(void*)*2, x_20);
x_22 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_22, 0, x_21);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_16, 0, x_23);
return x_16;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_24 = lean_ctor_get(x_16, 0);
x_25 = lean_ctor_get(x_16, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_16);
x_26 = lean_box(0);
x_27 = 1;
x_28 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_28, 0, x_24);
lean_ctor_set(x_28, 1, x_26);
lean_ctor_set_uint8(x_28, sizeof(void*)*2, x_27);
x_29 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_29, 0, x_28);
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_29);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_25);
return x_31;
}
}
else
{
uint8_t x_32; 
x_32 = !lean_is_exclusive(x_16);
if (x_32 == 0)
{
return x_16;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_16, 0);
x_34 = lean_ctor_get(x_16, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_16);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("EmptyCollection", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("emptyCollection", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__1;
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("empty_ne_eq_nonempty", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Eq", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3;
x_14 = lean_unsigned_to_nat(2u);
x_15 = l_Lean_Expr_isAppOfArity(x_1, x_13, x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
lean_dec(x_3);
x_16 = lean_box(0);
x_17 = lean_apply_9(x_2, x_16, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
return x_17;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_18 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_19 = lean_array_push(x_18, x_3);
x_20 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__5;
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_21 = l_Lean_Meta_mkAppM(x_20, x_19, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_21, 1);
lean_inc(x_23);
lean_dec(x_21);
lean_inc(x_22);
x_24 = lean_infer_type(x_22, x_8, x_9, x_10, x_11, x_23);
if (lean_obj_tag(x_24) == 0)
{
uint8_t x_25; 
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_26 = lean_ctor_get(x_24, 0);
x_27 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_28 = lean_unsigned_to_nat(3u);
x_29 = l_Lean_Expr_isAppOfArity(x_26, x_27, x_28);
if (x_29 == 0)
{
lean_object* x_30; 
lean_dec(x_26);
lean_dec(x_22);
x_30 = lean_box(0);
lean_ctor_set(x_24, 0, x_30);
return x_24;
}
else
{
lean_object* x_31; lean_object* x_32; uint8_t x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_31 = l_Lean_Expr_appArg_x21(x_26);
lean_dec(x_26);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_22);
x_33 = 1;
x_34 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_34, 0, x_31);
lean_ctor_set(x_34, 1, x_32);
lean_ctor_set_uint8(x_34, sizeof(void*)*2, x_33);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_24, 0, x_36);
return x_24;
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_37 = lean_ctor_get(x_24, 0);
x_38 = lean_ctor_get(x_24, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_24);
x_39 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_40 = lean_unsigned_to_nat(3u);
x_41 = l_Lean_Expr_isAppOfArity(x_37, x_39, x_40);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; 
lean_dec(x_37);
lean_dec(x_22);
x_42 = lean_box(0);
x_43 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_43, 0, x_42);
lean_ctor_set(x_43, 1, x_38);
return x_43;
}
else
{
lean_object* x_44; lean_object* x_45; uint8_t x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_44 = l_Lean_Expr_appArg_x21(x_37);
lean_dec(x_37);
x_45 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_45, 0, x_22);
x_46 = 1;
x_47 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_47, 0, x_44);
lean_ctor_set(x_47, 1, x_45);
lean_ctor_set_uint8(x_47, sizeof(void*)*2, x_46);
x_48 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_48, 0, x_47);
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_48);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_38);
return x_50;
}
}
}
else
{
uint8_t x_51; 
lean_dec(x_22);
x_51 = !lean_is_exclusive(x_24);
if (x_51 == 0)
{
return x_24;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_24, 0);
x_53 = lean_ctor_get(x_24, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_24);
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
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_55 = !lean_is_exclusive(x_21);
if (x_55 == 0)
{
return x_21;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_21, 0);
x_57 = lean_ctor_get(x_21, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_21);
x_58 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
return x_58;
}
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Not", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Exists", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_forall_eq", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__7;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("And", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_implies_eq", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__11;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Or", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Iff", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_exists_eq", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__15;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_ne_eq", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__17;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Set", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__21() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ne_empty_eq_nonempty", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__21;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__23() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_iff", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__23;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__25() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_or_eq", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__25;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__27() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_and_eq", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__27;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__29() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("_", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__29;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__31() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_and_or_eq", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__31;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__33() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_not_eq", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__33;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("LE", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("LT", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("GE", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("GT", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Nonempty", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__40() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_nonempty_eq", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__40;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("gt", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__43() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_gt_eq", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__43;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__45() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__45;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ge", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__48() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_ge_eq", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__48;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("lt", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__51() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_lt_eq", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__51;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("le", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__54() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not_le_eq", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__54;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_19; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1);
x_19 = l_Lean_Meta_whnfR(x_1, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_19) == 0)
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_19, 1);
x_23 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2;
x_24 = lean_unsigned_to_nat(1u);
x_25 = l_Lean_Expr_isAppOfArity(x_21, x_23, x_24);
if (x_25 == 0)
{
lean_object* x_26; 
lean_dec(x_21);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_26 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4;
lean_ctor_set(x_19, 0, x_26);
return x_19;
}
else
{
lean_object* x_27; lean_object* x_28; uint8_t x_29; 
lean_free_object(x_19);
x_27 = l_Lean_Expr_appArg_x21(x_21);
lean_dec(x_21);
x_28 = l_Lean_instantiateMVars___at_Lean_Meta_Simp_synthesizeArgs___spec__1(x_27, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_22);
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_30 = lean_ctor_get(x_28, 0);
x_31 = lean_ctor_get(x_28, 1);
x_32 = l_Lean_Expr_cleanupAnnotations(x_30);
lean_inc(x_32);
x_33 = l_Lean_Expr_getAppFnArgs(x_32);
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
switch (lean_obj_tag(x_34)) {
case 0:
{
lean_dec(x_33);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; lean_object* x_39; 
lean_free_object(x_28);
x_35 = lean_ctor_get(x_32, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_32, 1);
lean_inc(x_36);
x_37 = lean_ctor_get(x_32, 2);
lean_inc(x_37);
x_38 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_36);
x_39 = l_Lean_Meta_isProp(x_36, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_39) == 0)
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_79; 
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_ctor_get(x_39, 1);
lean_inc(x_41);
lean_dec(x_39);
x_79 = lean_unbox(x_40);
lean_dec(x_40);
if (x_79 == 0)
{
lean_object* x_80; 
x_80 = lean_box(0);
x_42 = x_80;
goto block_78;
}
else
{
uint8_t x_81; 
x_81 = l_Lean_Expr_hasLooseBVars(x_37);
if (x_81 == 0)
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; 
lean_dec(x_35);
lean_inc(x_37);
x_82 = l_Lean_mkNot(x_37);
x_83 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_84 = lean_array_push(x_83, x_36);
lean_inc(x_84);
x_85 = lean_array_push(x_84, x_82);
x_86 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_87 = l_Lean_Meta_mkAppM(x_86, x_85, x_5, x_6, x_7, x_8, x_41);
if (lean_obj_tag(x_87) == 0)
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; 
x_88 = lean_ctor_get(x_87, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_87, 1);
lean_inc(x_89);
lean_dec(x_87);
x_90 = lean_array_push(x_84, x_37);
x_91 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_92 = l_Lean_Meta_mkAppM(x_91, x_90, x_5, x_6, x_7, x_8, x_89);
if (lean_obj_tag(x_92) == 0)
{
uint8_t x_93; 
x_93 = !lean_is_exclusive(x_92);
if (x_93 == 0)
{
lean_object* x_94; lean_object* x_95; uint8_t x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_94 = lean_ctor_get(x_92, 0);
x_95 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_95, 0, x_94);
x_96 = 1;
x_97 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_97, 0, x_88);
lean_ctor_set(x_97, 1, x_95);
lean_ctor_set_uint8(x_97, sizeof(void*)*2, x_96);
x_98 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_98, 0, x_97);
x_99 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_99, 0, x_98);
lean_ctor_set(x_92, 0, x_99);
return x_92;
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; uint8_t x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; 
x_100 = lean_ctor_get(x_92, 0);
x_101 = lean_ctor_get(x_92, 1);
lean_inc(x_101);
lean_inc(x_100);
lean_dec(x_92);
x_102 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_102, 0, x_100);
x_103 = 1;
x_104 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_104, 0, x_88);
lean_ctor_set(x_104, 1, x_102);
lean_ctor_set_uint8(x_104, sizeof(void*)*2, x_103);
x_105 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_105, 0, x_104);
x_106 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_106, 0, x_105);
x_107 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_107, 0, x_106);
lean_ctor_set(x_107, 1, x_101);
return x_107;
}
}
else
{
uint8_t x_108; 
lean_dec(x_88);
x_108 = !lean_is_exclusive(x_92);
if (x_108 == 0)
{
return x_92;
}
else
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; 
x_109 = lean_ctor_get(x_92, 0);
x_110 = lean_ctor_get(x_92, 1);
lean_inc(x_110);
lean_inc(x_109);
lean_dec(x_92);
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
lean_dec(x_84);
lean_dec(x_37);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_112 = !lean_is_exclusive(x_87);
if (x_112 == 0)
{
return x_87;
}
else
{
lean_object* x_113; lean_object* x_114; lean_object* x_115; 
x_113 = lean_ctor_get(x_87, 0);
x_114 = lean_ctor_get(x_87, 1);
lean_inc(x_114);
lean_inc(x_113);
lean_dec(x_87);
x_115 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_115, 0, x_113);
lean_ctor_set(x_115, 1, x_114);
return x_115;
}
}
}
else
{
lean_object* x_116; 
x_116 = lean_box(0);
x_42 = x_116;
goto block_78;
}
}
block_78:
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
lean_dec(x_42);
lean_inc(x_37);
x_43 = l_Lean_mkNot(x_37);
lean_inc(x_36);
lean_inc(x_35);
x_44 = l_Lean_Expr_lam___override(x_35, x_36, x_43, x_38);
x_45 = l_Lean_Expr_lam___override(x_35, x_36, x_37, x_38);
x_46 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_47 = lean_array_push(x_46, x_44);
x_48 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_49 = l_Lean_Meta_mkAppM(x_48, x_47, x_5, x_6, x_7, x_8, x_41);
if (lean_obj_tag(x_49) == 0)
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = lean_ctor_get(x_49, 1);
lean_inc(x_51);
lean_dec(x_49);
x_52 = lean_array_push(x_46, x_45);
x_53 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_54 = l_Lean_Meta_mkAppM(x_53, x_52, x_5, x_6, x_7, x_8, x_51);
if (lean_obj_tag(x_54) == 0)
{
uint8_t x_55; 
x_55 = !lean_is_exclusive(x_54);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; uint8_t x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_56 = lean_ctor_get(x_54, 0);
x_57 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_57, 0, x_56);
x_58 = 1;
x_59 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_59, 0, x_50);
lean_ctor_set(x_59, 1, x_57);
lean_ctor_set_uint8(x_59, sizeof(void*)*2, x_58);
x_60 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_60, 0, x_59);
x_61 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_54, 0, x_61);
return x_54;
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; uint8_t x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_62 = lean_ctor_get(x_54, 0);
x_63 = lean_ctor_get(x_54, 1);
lean_inc(x_63);
lean_inc(x_62);
lean_dec(x_54);
x_64 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_64, 0, x_62);
x_65 = 1;
x_66 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_66, 0, x_50);
lean_ctor_set(x_66, 1, x_64);
lean_ctor_set_uint8(x_66, sizeof(void*)*2, x_65);
x_67 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_67, 0, x_66);
x_68 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_68, 0, x_67);
x_69 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_69, 0, x_68);
lean_ctor_set(x_69, 1, x_63);
return x_69;
}
}
else
{
uint8_t x_70; 
lean_dec(x_50);
x_70 = !lean_is_exclusive(x_54);
if (x_70 == 0)
{
return x_54;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_54, 0);
x_72 = lean_ctor_get(x_54, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_54);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
else
{
uint8_t x_74; 
lean_dec(x_45);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_74 = !lean_is_exclusive(x_49);
if (x_74 == 0)
{
return x_49;
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_75 = lean_ctor_get(x_49, 0);
x_76 = lean_ctor_get(x_49, 1);
lean_inc(x_76);
lean_inc(x_75);
lean_dec(x_49);
x_77 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_77, 0, x_75);
lean_ctor_set(x_77, 1, x_76);
return x_77;
}
}
}
}
else
{
uint8_t x_117; 
lean_dec(x_37);
lean_dec(x_36);
lean_dec(x_35);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_117 = !lean_is_exclusive(x_39);
if (x_117 == 0)
{
return x_39;
}
else
{
lean_object* x_118; lean_object* x_119; lean_object* x_120; 
x_118 = lean_ctor_get(x_39, 0);
x_119 = lean_ctor_get(x_39, 1);
lean_inc(x_119);
lean_inc(x_118);
lean_dec(x_39);
x_120 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_120, 0, x_118);
lean_ctor_set(x_120, 1, x_119);
return x_120;
}
}
}
else
{
lean_object* x_121; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_121 = lean_box(0);
lean_ctor_set(x_28, 0, x_121);
return x_28;
}
}
case 1:
{
lean_object* x_122; 
x_122 = lean_ctor_get(x_34, 0);
lean_inc(x_122);
switch (lean_obj_tag(x_122)) {
case 0:
{
lean_object* x_123; lean_object* x_124; lean_object* x_125; uint8_t x_126; 
lean_dec(x_1);
x_123 = lean_ctor_get(x_33, 1);
lean_inc(x_123);
lean_dec(x_33);
x_124 = lean_ctor_get(x_34, 1);
lean_inc(x_124);
lean_dec(x_34);
x_125 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1;
x_126 = lean_string_dec_eq(x_124, x_125);
if (x_126 == 0)
{
lean_object* x_127; uint8_t x_128; 
x_127 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9;
x_128 = lean_string_dec_eq(x_124, x_127);
if (x_128 == 0)
{
lean_object* x_129; uint8_t x_130; 
x_129 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13;
x_130 = lean_string_dec_eq(x_124, x_129);
if (x_130 == 0)
{
lean_object* x_131; uint8_t x_132; 
x_131 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14;
x_132 = lean_string_dec_eq(x_124, x_131);
if (x_132 == 0)
{
lean_object* x_133; uint8_t x_134; 
x_133 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7;
x_134 = lean_string_dec_eq(x_124, x_133);
if (x_134 == 0)
{
lean_object* x_135; uint8_t x_136; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_135 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1;
x_136 = lean_string_dec_eq(x_124, x_135);
if (x_136 == 0)
{
lean_object* x_137; uint8_t x_138; 
x_137 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5;
x_138 = lean_string_dec_eq(x_124, x_137);
lean_dec(x_124);
if (x_138 == 0)
{
lean_dec(x_123);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_139; lean_object* x_140; lean_object* x_141; uint8_t x_142; lean_object* x_143; 
lean_free_object(x_28);
x_139 = lean_ctor_get(x_32, 0);
lean_inc(x_139);
x_140 = lean_ctor_get(x_32, 1);
lean_inc(x_140);
x_141 = lean_ctor_get(x_32, 2);
lean_inc(x_141);
x_142 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_140);
x_143 = l_Lean_Meta_isProp(x_140, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_143) == 0)
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; uint8_t x_183; 
x_144 = lean_ctor_get(x_143, 0);
lean_inc(x_144);
x_145 = lean_ctor_get(x_143, 1);
lean_inc(x_145);
lean_dec(x_143);
x_183 = lean_unbox(x_144);
lean_dec(x_144);
if (x_183 == 0)
{
lean_object* x_184; 
x_184 = lean_box(0);
x_146 = x_184;
goto block_182;
}
else
{
uint8_t x_185; 
x_185 = l_Lean_Expr_hasLooseBVars(x_141);
if (x_185 == 0)
{
lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; 
lean_dec(x_139);
lean_inc(x_141);
x_186 = l_Lean_mkNot(x_141);
x_187 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_188 = lean_array_push(x_187, x_140);
lean_inc(x_188);
x_189 = lean_array_push(x_188, x_186);
x_190 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_191 = l_Lean_Meta_mkAppM(x_190, x_189, x_5, x_6, x_7, x_8, x_145);
if (lean_obj_tag(x_191) == 0)
{
lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; 
x_192 = lean_ctor_get(x_191, 0);
lean_inc(x_192);
x_193 = lean_ctor_get(x_191, 1);
lean_inc(x_193);
lean_dec(x_191);
x_194 = lean_array_push(x_188, x_141);
x_195 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_196 = l_Lean_Meta_mkAppM(x_195, x_194, x_5, x_6, x_7, x_8, x_193);
if (lean_obj_tag(x_196) == 0)
{
uint8_t x_197; 
x_197 = !lean_is_exclusive(x_196);
if (x_197 == 0)
{
lean_object* x_198; lean_object* x_199; uint8_t x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; 
x_198 = lean_ctor_get(x_196, 0);
x_199 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_199, 0, x_198);
x_200 = 1;
x_201 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_201, 0, x_192);
lean_ctor_set(x_201, 1, x_199);
lean_ctor_set_uint8(x_201, sizeof(void*)*2, x_200);
x_202 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_202, 0, x_201);
x_203 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_203, 0, x_202);
lean_ctor_set(x_196, 0, x_203);
return x_196;
}
else
{
lean_object* x_204; lean_object* x_205; lean_object* x_206; uint8_t x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; 
x_204 = lean_ctor_get(x_196, 0);
x_205 = lean_ctor_get(x_196, 1);
lean_inc(x_205);
lean_inc(x_204);
lean_dec(x_196);
x_206 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_206, 0, x_204);
x_207 = 1;
x_208 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_208, 0, x_192);
lean_ctor_set(x_208, 1, x_206);
lean_ctor_set_uint8(x_208, sizeof(void*)*2, x_207);
x_209 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_209, 0, x_208);
x_210 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_210, 0, x_209);
x_211 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_211, 0, x_210);
lean_ctor_set(x_211, 1, x_205);
return x_211;
}
}
else
{
uint8_t x_212; 
lean_dec(x_192);
x_212 = !lean_is_exclusive(x_196);
if (x_212 == 0)
{
return x_196;
}
else
{
lean_object* x_213; lean_object* x_214; lean_object* x_215; 
x_213 = lean_ctor_get(x_196, 0);
x_214 = lean_ctor_get(x_196, 1);
lean_inc(x_214);
lean_inc(x_213);
lean_dec(x_196);
x_215 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_215, 0, x_213);
lean_ctor_set(x_215, 1, x_214);
return x_215;
}
}
}
else
{
uint8_t x_216; 
lean_dec(x_188);
lean_dec(x_141);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_216 = !lean_is_exclusive(x_191);
if (x_216 == 0)
{
return x_191;
}
else
{
lean_object* x_217; lean_object* x_218; lean_object* x_219; 
x_217 = lean_ctor_get(x_191, 0);
x_218 = lean_ctor_get(x_191, 1);
lean_inc(x_218);
lean_inc(x_217);
lean_dec(x_191);
x_219 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_219, 0, x_217);
lean_ctor_set(x_219, 1, x_218);
return x_219;
}
}
}
else
{
lean_object* x_220; 
x_220 = lean_box(0);
x_146 = x_220;
goto block_182;
}
}
block_182:
{
lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; 
lean_dec(x_146);
lean_inc(x_141);
x_147 = l_Lean_mkNot(x_141);
lean_inc(x_140);
lean_inc(x_139);
x_148 = l_Lean_Expr_lam___override(x_139, x_140, x_147, x_142);
x_149 = l_Lean_Expr_lam___override(x_139, x_140, x_141, x_142);
x_150 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_151 = lean_array_push(x_150, x_148);
x_152 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_153 = l_Lean_Meta_mkAppM(x_152, x_151, x_5, x_6, x_7, x_8, x_145);
if (lean_obj_tag(x_153) == 0)
{
lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; 
x_154 = lean_ctor_get(x_153, 0);
lean_inc(x_154);
x_155 = lean_ctor_get(x_153, 1);
lean_inc(x_155);
lean_dec(x_153);
x_156 = lean_array_push(x_150, x_149);
x_157 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_158 = l_Lean_Meta_mkAppM(x_157, x_156, x_5, x_6, x_7, x_8, x_155);
if (lean_obj_tag(x_158) == 0)
{
uint8_t x_159; 
x_159 = !lean_is_exclusive(x_158);
if (x_159 == 0)
{
lean_object* x_160; lean_object* x_161; uint8_t x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; 
x_160 = lean_ctor_get(x_158, 0);
x_161 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_161, 0, x_160);
x_162 = 1;
x_163 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_163, 0, x_154);
lean_ctor_set(x_163, 1, x_161);
lean_ctor_set_uint8(x_163, sizeof(void*)*2, x_162);
x_164 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_164, 0, x_163);
x_165 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_165, 0, x_164);
lean_ctor_set(x_158, 0, x_165);
return x_158;
}
else
{
lean_object* x_166; lean_object* x_167; lean_object* x_168; uint8_t x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; 
x_166 = lean_ctor_get(x_158, 0);
x_167 = lean_ctor_get(x_158, 1);
lean_inc(x_167);
lean_inc(x_166);
lean_dec(x_158);
x_168 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_168, 0, x_166);
x_169 = 1;
x_170 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_170, 0, x_154);
lean_ctor_set(x_170, 1, x_168);
lean_ctor_set_uint8(x_170, sizeof(void*)*2, x_169);
x_171 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_171, 0, x_170);
x_172 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_172, 0, x_171);
x_173 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_173, 0, x_172);
lean_ctor_set(x_173, 1, x_167);
return x_173;
}
}
else
{
uint8_t x_174; 
lean_dec(x_154);
x_174 = !lean_is_exclusive(x_158);
if (x_174 == 0)
{
return x_158;
}
else
{
lean_object* x_175; lean_object* x_176; lean_object* x_177; 
x_175 = lean_ctor_get(x_158, 0);
x_176 = lean_ctor_get(x_158, 1);
lean_inc(x_176);
lean_inc(x_175);
lean_dec(x_158);
x_177 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_177, 0, x_175);
lean_ctor_set(x_177, 1, x_176);
return x_177;
}
}
}
else
{
uint8_t x_178; 
lean_dec(x_149);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_178 = !lean_is_exclusive(x_153);
if (x_178 == 0)
{
return x_153;
}
else
{
lean_object* x_179; lean_object* x_180; lean_object* x_181; 
x_179 = lean_ctor_get(x_153, 0);
x_180 = lean_ctor_get(x_153, 1);
lean_inc(x_180);
lean_inc(x_179);
lean_dec(x_153);
x_181 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_181, 0, x_179);
lean_ctor_set(x_181, 1, x_180);
return x_181;
}
}
}
}
else
{
uint8_t x_221; 
lean_dec(x_141);
lean_dec(x_140);
lean_dec(x_139);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_221 = !lean_is_exclusive(x_143);
if (x_221 == 0)
{
return x_143;
}
else
{
lean_object* x_222; lean_object* x_223; lean_object* x_224; 
x_222 = lean_ctor_get(x_143, 0);
x_223 = lean_ctor_get(x_143, 1);
lean_inc(x_223);
lean_inc(x_222);
lean_dec(x_143);
x_224 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_224, 0, x_222);
lean_ctor_set(x_224, 1, x_223);
return x_224;
}
}
}
else
{
lean_object* x_225; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_225 = lean_box(0);
lean_ctor_set(x_28, 0, x_225);
return x_28;
}
}
else
{
lean_object* x_226; lean_object* x_227; uint8_t x_228; 
x_226 = lean_array_get_size(x_123);
x_227 = lean_unsigned_to_nat(2u);
x_228 = lean_nat_dec_eq(x_226, x_227);
lean_dec(x_226);
if (x_228 == 0)
{
lean_dec(x_123);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_229; lean_object* x_230; lean_object* x_231; uint8_t x_232; lean_object* x_233; 
lean_free_object(x_28);
x_229 = lean_ctor_get(x_32, 0);
lean_inc(x_229);
x_230 = lean_ctor_get(x_32, 1);
lean_inc(x_230);
x_231 = lean_ctor_get(x_32, 2);
lean_inc(x_231);
x_232 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_230);
x_233 = l_Lean_Meta_isProp(x_230, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_233) == 0)
{
lean_object* x_234; lean_object* x_235; lean_object* x_236; uint8_t x_273; 
x_234 = lean_ctor_get(x_233, 0);
lean_inc(x_234);
x_235 = lean_ctor_get(x_233, 1);
lean_inc(x_235);
lean_dec(x_233);
x_273 = lean_unbox(x_234);
lean_dec(x_234);
if (x_273 == 0)
{
lean_object* x_274; 
x_274 = lean_box(0);
x_236 = x_274;
goto block_272;
}
else
{
uint8_t x_275; 
x_275 = l_Lean_Expr_hasLooseBVars(x_231);
if (x_275 == 0)
{
lean_object* x_276; lean_object* x_277; lean_object* x_278; lean_object* x_279; lean_object* x_280; lean_object* x_281; 
lean_dec(x_229);
lean_inc(x_231);
x_276 = l_Lean_mkNot(x_231);
x_277 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_278 = lean_array_push(x_277, x_230);
lean_inc(x_278);
x_279 = lean_array_push(x_278, x_276);
x_280 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_281 = l_Lean_Meta_mkAppM(x_280, x_279, x_5, x_6, x_7, x_8, x_235);
if (lean_obj_tag(x_281) == 0)
{
lean_object* x_282; lean_object* x_283; lean_object* x_284; lean_object* x_285; lean_object* x_286; 
x_282 = lean_ctor_get(x_281, 0);
lean_inc(x_282);
x_283 = lean_ctor_get(x_281, 1);
lean_inc(x_283);
lean_dec(x_281);
x_284 = lean_array_push(x_278, x_231);
x_285 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_286 = l_Lean_Meta_mkAppM(x_285, x_284, x_5, x_6, x_7, x_8, x_283);
if (lean_obj_tag(x_286) == 0)
{
uint8_t x_287; 
x_287 = !lean_is_exclusive(x_286);
if (x_287 == 0)
{
lean_object* x_288; lean_object* x_289; uint8_t x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; 
x_288 = lean_ctor_get(x_286, 0);
x_289 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_289, 0, x_288);
x_290 = 1;
x_291 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_291, 0, x_282);
lean_ctor_set(x_291, 1, x_289);
lean_ctor_set_uint8(x_291, sizeof(void*)*2, x_290);
x_292 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_292, 0, x_291);
x_293 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_293, 0, x_292);
lean_ctor_set(x_286, 0, x_293);
return x_286;
}
else
{
lean_object* x_294; lean_object* x_295; lean_object* x_296; uint8_t x_297; lean_object* x_298; lean_object* x_299; lean_object* x_300; lean_object* x_301; 
x_294 = lean_ctor_get(x_286, 0);
x_295 = lean_ctor_get(x_286, 1);
lean_inc(x_295);
lean_inc(x_294);
lean_dec(x_286);
x_296 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_296, 0, x_294);
x_297 = 1;
x_298 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_298, 0, x_282);
lean_ctor_set(x_298, 1, x_296);
lean_ctor_set_uint8(x_298, sizeof(void*)*2, x_297);
x_299 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_299, 0, x_298);
x_300 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_300, 0, x_299);
x_301 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_301, 0, x_300);
lean_ctor_set(x_301, 1, x_295);
return x_301;
}
}
else
{
uint8_t x_302; 
lean_dec(x_282);
x_302 = !lean_is_exclusive(x_286);
if (x_302 == 0)
{
return x_286;
}
else
{
lean_object* x_303; lean_object* x_304; lean_object* x_305; 
x_303 = lean_ctor_get(x_286, 0);
x_304 = lean_ctor_get(x_286, 1);
lean_inc(x_304);
lean_inc(x_303);
lean_dec(x_286);
x_305 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_305, 0, x_303);
lean_ctor_set(x_305, 1, x_304);
return x_305;
}
}
}
else
{
uint8_t x_306; 
lean_dec(x_278);
lean_dec(x_231);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_306 = !lean_is_exclusive(x_281);
if (x_306 == 0)
{
return x_281;
}
else
{
lean_object* x_307; lean_object* x_308; lean_object* x_309; 
x_307 = lean_ctor_get(x_281, 0);
x_308 = lean_ctor_get(x_281, 1);
lean_inc(x_308);
lean_inc(x_307);
lean_dec(x_281);
x_309 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_309, 0, x_307);
lean_ctor_set(x_309, 1, x_308);
return x_309;
}
}
}
else
{
lean_object* x_310; 
x_310 = lean_box(0);
x_236 = x_310;
goto block_272;
}
}
block_272:
{
lean_object* x_237; lean_object* x_238; lean_object* x_239; lean_object* x_240; lean_object* x_241; lean_object* x_242; lean_object* x_243; 
lean_dec(x_236);
lean_inc(x_231);
x_237 = l_Lean_mkNot(x_231);
lean_inc(x_230);
lean_inc(x_229);
x_238 = l_Lean_Expr_lam___override(x_229, x_230, x_237, x_232);
x_239 = l_Lean_Expr_lam___override(x_229, x_230, x_231, x_232);
x_240 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_241 = lean_array_push(x_240, x_238);
x_242 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_243 = l_Lean_Meta_mkAppM(x_242, x_241, x_5, x_6, x_7, x_8, x_235);
if (lean_obj_tag(x_243) == 0)
{
lean_object* x_244; lean_object* x_245; lean_object* x_246; lean_object* x_247; lean_object* x_248; 
x_244 = lean_ctor_get(x_243, 0);
lean_inc(x_244);
x_245 = lean_ctor_get(x_243, 1);
lean_inc(x_245);
lean_dec(x_243);
x_246 = lean_array_push(x_240, x_239);
x_247 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_248 = l_Lean_Meta_mkAppM(x_247, x_246, x_5, x_6, x_7, x_8, x_245);
if (lean_obj_tag(x_248) == 0)
{
uint8_t x_249; 
x_249 = !lean_is_exclusive(x_248);
if (x_249 == 0)
{
lean_object* x_250; lean_object* x_251; uint8_t x_252; lean_object* x_253; lean_object* x_254; lean_object* x_255; 
x_250 = lean_ctor_get(x_248, 0);
x_251 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_251, 0, x_250);
x_252 = 1;
x_253 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_253, 0, x_244);
lean_ctor_set(x_253, 1, x_251);
lean_ctor_set_uint8(x_253, sizeof(void*)*2, x_252);
x_254 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_254, 0, x_253);
x_255 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_255, 0, x_254);
lean_ctor_set(x_248, 0, x_255);
return x_248;
}
else
{
lean_object* x_256; lean_object* x_257; lean_object* x_258; uint8_t x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; 
x_256 = lean_ctor_get(x_248, 0);
x_257 = lean_ctor_get(x_248, 1);
lean_inc(x_257);
lean_inc(x_256);
lean_dec(x_248);
x_258 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_258, 0, x_256);
x_259 = 1;
x_260 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_260, 0, x_244);
lean_ctor_set(x_260, 1, x_258);
lean_ctor_set_uint8(x_260, sizeof(void*)*2, x_259);
x_261 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_261, 0, x_260);
x_262 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_262, 0, x_261);
x_263 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_263, 0, x_262);
lean_ctor_set(x_263, 1, x_257);
return x_263;
}
}
else
{
uint8_t x_264; 
lean_dec(x_244);
x_264 = !lean_is_exclusive(x_248);
if (x_264 == 0)
{
return x_248;
}
else
{
lean_object* x_265; lean_object* x_266; lean_object* x_267; 
x_265 = lean_ctor_get(x_248, 0);
x_266 = lean_ctor_get(x_248, 1);
lean_inc(x_266);
lean_inc(x_265);
lean_dec(x_248);
x_267 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_267, 0, x_265);
lean_ctor_set(x_267, 1, x_266);
return x_267;
}
}
}
else
{
uint8_t x_268; 
lean_dec(x_239);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_268 = !lean_is_exclusive(x_243);
if (x_268 == 0)
{
return x_243;
}
else
{
lean_object* x_269; lean_object* x_270; lean_object* x_271; 
x_269 = lean_ctor_get(x_243, 0);
x_270 = lean_ctor_get(x_243, 1);
lean_inc(x_270);
lean_inc(x_269);
lean_dec(x_243);
x_271 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_271, 0, x_269);
lean_ctor_set(x_271, 1, x_270);
return x_271;
}
}
}
}
else
{
uint8_t x_311; 
lean_dec(x_231);
lean_dec(x_230);
lean_dec(x_229);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_311 = !lean_is_exclusive(x_233);
if (x_311 == 0)
{
return x_233;
}
else
{
lean_object* x_312; lean_object* x_313; lean_object* x_314; 
x_312 = lean_ctor_get(x_233, 0);
x_313 = lean_ctor_get(x_233, 1);
lean_inc(x_313);
lean_inc(x_312);
lean_dec(x_233);
x_314 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_314, 0, x_312);
lean_ctor_set(x_314, 1, x_313);
return x_314;
}
}
}
else
{
lean_object* x_315; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_315 = lean_box(0);
lean_ctor_set(x_28, 0, x_315);
return x_28;
}
}
else
{
lean_object* x_316; 
lean_dec(x_32);
x_316 = lean_array_fget(x_123, x_24);
lean_dec(x_123);
if (lean_obj_tag(x_316) == 6)
{
lean_object* x_317; lean_object* x_318; lean_object* x_319; uint8_t x_320; lean_object* x_321; lean_object* x_322; lean_object* x_323; lean_object* x_324; lean_object* x_325; 
lean_free_object(x_28);
x_317 = lean_ctor_get(x_316, 0);
lean_inc(x_317);
x_318 = lean_ctor_get(x_316, 1);
lean_inc(x_318);
x_319 = lean_ctor_get(x_316, 2);
lean_inc(x_319);
x_320 = lean_ctor_get_uint8(x_316, sizeof(void*)*3 + 8);
lean_dec(x_316);
lean_inc(x_319);
lean_inc(x_318);
lean_inc(x_317);
x_321 = l_Lean_Expr_lam___override(x_317, x_318, x_319, x_320);
x_322 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_323 = lean_array_push(x_322, x_321);
x_324 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16;
x_325 = l_Lean_Meta_mkAppM(x_324, x_323, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_325) == 0)
{
uint8_t x_326; 
x_326 = !lean_is_exclusive(x_325);
if (x_326 == 0)
{
lean_object* x_327; lean_object* x_328; lean_object* x_329; lean_object* x_330; uint8_t x_331; lean_object* x_332; lean_object* x_333; lean_object* x_334; 
x_327 = lean_ctor_get(x_325, 0);
x_328 = l_Lean_mkNot(x_319);
x_329 = l_Lean_Expr_forallE___override(x_317, x_318, x_328, x_320);
x_330 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_330, 0, x_327);
x_331 = 1;
x_332 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_332, 0, x_329);
lean_ctor_set(x_332, 1, x_330);
lean_ctor_set_uint8(x_332, sizeof(void*)*2, x_331);
x_333 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_333, 0, x_332);
x_334 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_334, 0, x_333);
lean_ctor_set(x_325, 0, x_334);
return x_325;
}
else
{
lean_object* x_335; lean_object* x_336; lean_object* x_337; lean_object* x_338; lean_object* x_339; uint8_t x_340; lean_object* x_341; lean_object* x_342; lean_object* x_343; lean_object* x_344; 
x_335 = lean_ctor_get(x_325, 0);
x_336 = lean_ctor_get(x_325, 1);
lean_inc(x_336);
lean_inc(x_335);
lean_dec(x_325);
x_337 = l_Lean_mkNot(x_319);
x_338 = l_Lean_Expr_forallE___override(x_317, x_318, x_337, x_320);
x_339 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_339, 0, x_335);
x_340 = 1;
x_341 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_341, 0, x_338);
lean_ctor_set(x_341, 1, x_339);
lean_ctor_set_uint8(x_341, sizeof(void*)*2, x_340);
x_342 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_342, 0, x_341);
x_343 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_343, 0, x_342);
x_344 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_344, 0, x_343);
lean_ctor_set(x_344, 1, x_336);
return x_344;
}
}
else
{
uint8_t x_345; 
lean_dec(x_319);
lean_dec(x_318);
lean_dec(x_317);
x_345 = !lean_is_exclusive(x_325);
if (x_345 == 0)
{
return x_325;
}
else
{
lean_object* x_346; lean_object* x_347; lean_object* x_348; 
x_346 = lean_ctor_get(x_325, 0);
x_347 = lean_ctor_get(x_325, 1);
lean_inc(x_347);
lean_inc(x_346);
lean_dec(x_325);
x_348 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_348, 0, x_346);
lean_ctor_set(x_348, 1, x_347);
return x_348;
}
}
}
else
{
lean_object* x_349; 
lean_dec(x_316);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_349 = lean_box(0);
lean_ctor_set(x_28, 0, x_349);
return x_28;
}
}
}
}
else
{
lean_object* x_350; lean_object* x_351; uint8_t x_352; 
lean_dec(x_124);
x_350 = lean_array_get_size(x_123);
x_351 = lean_unsigned_to_nat(3u);
x_352 = lean_nat_dec_eq(x_350, x_351);
lean_dec(x_350);
if (x_352 == 0)
{
lean_dec(x_123);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_353; lean_object* x_354; lean_object* x_355; uint8_t x_356; lean_object* x_357; 
lean_free_object(x_28);
x_353 = lean_ctor_get(x_32, 0);
lean_inc(x_353);
x_354 = lean_ctor_get(x_32, 1);
lean_inc(x_354);
x_355 = lean_ctor_get(x_32, 2);
lean_inc(x_355);
x_356 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_354);
x_357 = l_Lean_Meta_isProp(x_354, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_357) == 0)
{
lean_object* x_358; lean_object* x_359; lean_object* x_360; uint8_t x_397; 
x_358 = lean_ctor_get(x_357, 0);
lean_inc(x_358);
x_359 = lean_ctor_get(x_357, 1);
lean_inc(x_359);
lean_dec(x_357);
x_397 = lean_unbox(x_358);
lean_dec(x_358);
if (x_397 == 0)
{
lean_object* x_398; 
x_398 = lean_box(0);
x_360 = x_398;
goto block_396;
}
else
{
uint8_t x_399; 
x_399 = l_Lean_Expr_hasLooseBVars(x_355);
if (x_399 == 0)
{
lean_object* x_400; lean_object* x_401; lean_object* x_402; lean_object* x_403; lean_object* x_404; lean_object* x_405; 
lean_dec(x_353);
lean_inc(x_355);
x_400 = l_Lean_mkNot(x_355);
x_401 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_402 = lean_array_push(x_401, x_354);
lean_inc(x_402);
x_403 = lean_array_push(x_402, x_400);
x_404 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_405 = l_Lean_Meta_mkAppM(x_404, x_403, x_5, x_6, x_7, x_8, x_359);
if (lean_obj_tag(x_405) == 0)
{
lean_object* x_406; lean_object* x_407; lean_object* x_408; lean_object* x_409; lean_object* x_410; 
x_406 = lean_ctor_get(x_405, 0);
lean_inc(x_406);
x_407 = lean_ctor_get(x_405, 1);
lean_inc(x_407);
lean_dec(x_405);
x_408 = lean_array_push(x_402, x_355);
x_409 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_410 = l_Lean_Meta_mkAppM(x_409, x_408, x_5, x_6, x_7, x_8, x_407);
if (lean_obj_tag(x_410) == 0)
{
uint8_t x_411; 
x_411 = !lean_is_exclusive(x_410);
if (x_411 == 0)
{
lean_object* x_412; lean_object* x_413; uint8_t x_414; lean_object* x_415; lean_object* x_416; lean_object* x_417; 
x_412 = lean_ctor_get(x_410, 0);
x_413 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_413, 0, x_412);
x_414 = 1;
x_415 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_415, 0, x_406);
lean_ctor_set(x_415, 1, x_413);
lean_ctor_set_uint8(x_415, sizeof(void*)*2, x_414);
x_416 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_416, 0, x_415);
x_417 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_417, 0, x_416);
lean_ctor_set(x_410, 0, x_417);
return x_410;
}
else
{
lean_object* x_418; lean_object* x_419; lean_object* x_420; uint8_t x_421; lean_object* x_422; lean_object* x_423; lean_object* x_424; lean_object* x_425; 
x_418 = lean_ctor_get(x_410, 0);
x_419 = lean_ctor_get(x_410, 1);
lean_inc(x_419);
lean_inc(x_418);
lean_dec(x_410);
x_420 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_420, 0, x_418);
x_421 = 1;
x_422 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_422, 0, x_406);
lean_ctor_set(x_422, 1, x_420);
lean_ctor_set_uint8(x_422, sizeof(void*)*2, x_421);
x_423 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_423, 0, x_422);
x_424 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_424, 0, x_423);
x_425 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_425, 0, x_424);
lean_ctor_set(x_425, 1, x_419);
return x_425;
}
}
else
{
uint8_t x_426; 
lean_dec(x_406);
x_426 = !lean_is_exclusive(x_410);
if (x_426 == 0)
{
return x_410;
}
else
{
lean_object* x_427; lean_object* x_428; lean_object* x_429; 
x_427 = lean_ctor_get(x_410, 0);
x_428 = lean_ctor_get(x_410, 1);
lean_inc(x_428);
lean_inc(x_427);
lean_dec(x_410);
x_429 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_429, 0, x_427);
lean_ctor_set(x_429, 1, x_428);
return x_429;
}
}
}
else
{
uint8_t x_430; 
lean_dec(x_402);
lean_dec(x_355);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_430 = !lean_is_exclusive(x_405);
if (x_430 == 0)
{
return x_405;
}
else
{
lean_object* x_431; lean_object* x_432; lean_object* x_433; 
x_431 = lean_ctor_get(x_405, 0);
x_432 = lean_ctor_get(x_405, 1);
lean_inc(x_432);
lean_inc(x_431);
lean_dec(x_405);
x_433 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_433, 0, x_431);
lean_ctor_set(x_433, 1, x_432);
return x_433;
}
}
}
else
{
lean_object* x_434; 
x_434 = lean_box(0);
x_360 = x_434;
goto block_396;
}
}
block_396:
{
lean_object* x_361; lean_object* x_362; lean_object* x_363; lean_object* x_364; lean_object* x_365; lean_object* x_366; lean_object* x_367; 
lean_dec(x_360);
lean_inc(x_355);
x_361 = l_Lean_mkNot(x_355);
lean_inc(x_354);
lean_inc(x_353);
x_362 = l_Lean_Expr_lam___override(x_353, x_354, x_361, x_356);
x_363 = l_Lean_Expr_lam___override(x_353, x_354, x_355, x_356);
x_364 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_365 = lean_array_push(x_364, x_362);
x_366 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_367 = l_Lean_Meta_mkAppM(x_366, x_365, x_5, x_6, x_7, x_8, x_359);
if (lean_obj_tag(x_367) == 0)
{
lean_object* x_368; lean_object* x_369; lean_object* x_370; lean_object* x_371; lean_object* x_372; 
x_368 = lean_ctor_get(x_367, 0);
lean_inc(x_368);
x_369 = lean_ctor_get(x_367, 1);
lean_inc(x_369);
lean_dec(x_367);
x_370 = lean_array_push(x_364, x_363);
x_371 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_372 = l_Lean_Meta_mkAppM(x_371, x_370, x_5, x_6, x_7, x_8, x_369);
if (lean_obj_tag(x_372) == 0)
{
uint8_t x_373; 
x_373 = !lean_is_exclusive(x_372);
if (x_373 == 0)
{
lean_object* x_374; lean_object* x_375; uint8_t x_376; lean_object* x_377; lean_object* x_378; lean_object* x_379; 
x_374 = lean_ctor_get(x_372, 0);
x_375 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_375, 0, x_374);
x_376 = 1;
x_377 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_377, 0, x_368);
lean_ctor_set(x_377, 1, x_375);
lean_ctor_set_uint8(x_377, sizeof(void*)*2, x_376);
x_378 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_378, 0, x_377);
x_379 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_379, 0, x_378);
lean_ctor_set(x_372, 0, x_379);
return x_372;
}
else
{
lean_object* x_380; lean_object* x_381; lean_object* x_382; uint8_t x_383; lean_object* x_384; lean_object* x_385; lean_object* x_386; lean_object* x_387; 
x_380 = lean_ctor_get(x_372, 0);
x_381 = lean_ctor_get(x_372, 1);
lean_inc(x_381);
lean_inc(x_380);
lean_dec(x_372);
x_382 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_382, 0, x_380);
x_383 = 1;
x_384 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_384, 0, x_368);
lean_ctor_set(x_384, 1, x_382);
lean_ctor_set_uint8(x_384, sizeof(void*)*2, x_383);
x_385 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_385, 0, x_384);
x_386 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_386, 0, x_385);
x_387 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_387, 0, x_386);
lean_ctor_set(x_387, 1, x_381);
return x_387;
}
}
else
{
uint8_t x_388; 
lean_dec(x_368);
x_388 = !lean_is_exclusive(x_372);
if (x_388 == 0)
{
return x_372;
}
else
{
lean_object* x_389; lean_object* x_390; lean_object* x_391; 
x_389 = lean_ctor_get(x_372, 0);
x_390 = lean_ctor_get(x_372, 1);
lean_inc(x_390);
lean_inc(x_389);
lean_dec(x_372);
x_391 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_391, 0, x_389);
lean_ctor_set(x_391, 1, x_390);
return x_391;
}
}
}
else
{
uint8_t x_392; 
lean_dec(x_363);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_392 = !lean_is_exclusive(x_367);
if (x_392 == 0)
{
return x_367;
}
else
{
lean_object* x_393; lean_object* x_394; lean_object* x_395; 
x_393 = lean_ctor_get(x_367, 0);
x_394 = lean_ctor_get(x_367, 1);
lean_inc(x_394);
lean_inc(x_393);
lean_dec(x_367);
x_395 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_395, 0, x_393);
lean_ctor_set(x_395, 1, x_394);
return x_395;
}
}
}
}
else
{
uint8_t x_435; 
lean_dec(x_355);
lean_dec(x_354);
lean_dec(x_353);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_435 = !lean_is_exclusive(x_357);
if (x_435 == 0)
{
return x_357;
}
else
{
lean_object* x_436; lean_object* x_437; lean_object* x_438; 
x_436 = lean_ctor_get(x_357, 0);
x_437 = lean_ctor_get(x_357, 1);
lean_inc(x_437);
lean_inc(x_436);
lean_dec(x_357);
x_438 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_438, 0, x_436);
lean_ctor_set(x_438, 1, x_437);
return x_438;
}
}
}
else
{
lean_object* x_439; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_439 = lean_box(0);
lean_ctor_set(x_28, 0, x_439);
return x_28;
}
}
else
{
lean_object* x_440; lean_object* x_441; lean_object* x_442; lean_object* x_443; lean_object* x_444; lean_object* x_445; lean_object* x_446; lean_object* x_447; 
lean_dec(x_32);
lean_free_object(x_28);
x_440 = lean_array_fget(x_123, x_24);
x_441 = lean_unsigned_to_nat(2u);
x_442 = lean_array_fget(x_123, x_441);
lean_dec(x_123);
x_443 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_444 = lean_array_push(x_443, x_440);
x_445 = lean_array_push(x_444, x_442);
x_446 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_445);
x_447 = l_Lean_Meta_mkAppM(x_446, x_445, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_447) == 0)
{
lean_object* x_448; lean_object* x_449; lean_object* x_450; lean_object* x_451; 
x_448 = lean_ctor_get(x_447, 0);
lean_inc(x_448);
x_449 = lean_ctor_get(x_447, 1);
lean_inc(x_449);
lean_dec(x_447);
x_450 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18;
x_451 = l_Lean_Meta_mkAppM(x_450, x_445, x_5, x_6, x_7, x_8, x_449);
if (lean_obj_tag(x_451) == 0)
{
uint8_t x_452; 
x_452 = !lean_is_exclusive(x_451);
if (x_452 == 0)
{
lean_object* x_453; lean_object* x_454; uint8_t x_455; lean_object* x_456; lean_object* x_457; lean_object* x_458; 
x_453 = lean_ctor_get(x_451, 0);
x_454 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_454, 0, x_453);
x_455 = 1;
x_456 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_456, 0, x_448);
lean_ctor_set(x_456, 1, x_454);
lean_ctor_set_uint8(x_456, sizeof(void*)*2, x_455);
x_457 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_457, 0, x_456);
x_458 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_458, 0, x_457);
lean_ctor_set(x_451, 0, x_458);
return x_451;
}
else
{
lean_object* x_459; lean_object* x_460; lean_object* x_461; uint8_t x_462; lean_object* x_463; lean_object* x_464; lean_object* x_465; lean_object* x_466; 
x_459 = lean_ctor_get(x_451, 0);
x_460 = lean_ctor_get(x_451, 1);
lean_inc(x_460);
lean_inc(x_459);
lean_dec(x_451);
x_461 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_461, 0, x_459);
x_462 = 1;
x_463 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_463, 0, x_448);
lean_ctor_set(x_463, 1, x_461);
lean_ctor_set_uint8(x_463, sizeof(void*)*2, x_462);
x_464 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_464, 0, x_463);
x_465 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_465, 0, x_464);
x_466 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_466, 0, x_465);
lean_ctor_set(x_466, 1, x_460);
return x_466;
}
}
else
{
uint8_t x_467; 
lean_dec(x_448);
x_467 = !lean_is_exclusive(x_451);
if (x_467 == 0)
{
return x_451;
}
else
{
lean_object* x_468; lean_object* x_469; lean_object* x_470; 
x_468 = lean_ctor_get(x_451, 0);
x_469 = lean_ctor_get(x_451, 1);
lean_inc(x_469);
lean_inc(x_468);
lean_dec(x_451);
x_470 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_470, 0, x_468);
lean_ctor_set(x_470, 1, x_469);
return x_470;
}
}
}
else
{
uint8_t x_471; 
lean_dec(x_445);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_471 = !lean_is_exclusive(x_447);
if (x_471 == 0)
{
return x_447;
}
else
{
lean_object* x_472; lean_object* x_473; lean_object* x_474; 
x_472 = lean_ctor_get(x_447, 0);
x_473 = lean_ctor_get(x_447, 1);
lean_inc(x_473);
lean_inc(x_472);
lean_dec(x_447);
x_474 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_474, 0, x_472);
lean_ctor_set(x_474, 1, x_473);
return x_474;
}
}
}
}
}
else
{
lean_object* x_475; lean_object* x_476; uint8_t x_477; 
lean_dec(x_124);
x_475 = lean_array_get_size(x_123);
x_476 = lean_unsigned_to_nat(3u);
x_477 = lean_nat_dec_eq(x_475, x_476);
lean_dec(x_475);
if (x_477 == 0)
{
lean_dec(x_123);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_478; lean_object* x_479; lean_object* x_480; uint8_t x_481; lean_object* x_482; 
lean_free_object(x_28);
x_478 = lean_ctor_get(x_32, 0);
lean_inc(x_478);
x_479 = lean_ctor_get(x_32, 1);
lean_inc(x_479);
x_480 = lean_ctor_get(x_32, 2);
lean_inc(x_480);
x_481 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_479);
x_482 = l_Lean_Meta_isProp(x_479, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_482) == 0)
{
lean_object* x_483; lean_object* x_484; lean_object* x_485; uint8_t x_522; 
x_483 = lean_ctor_get(x_482, 0);
lean_inc(x_483);
x_484 = lean_ctor_get(x_482, 1);
lean_inc(x_484);
lean_dec(x_482);
x_522 = lean_unbox(x_483);
lean_dec(x_483);
if (x_522 == 0)
{
lean_object* x_523; 
x_523 = lean_box(0);
x_485 = x_523;
goto block_521;
}
else
{
uint8_t x_524; 
x_524 = l_Lean_Expr_hasLooseBVars(x_480);
if (x_524 == 0)
{
lean_object* x_525; lean_object* x_526; lean_object* x_527; lean_object* x_528; lean_object* x_529; lean_object* x_530; 
lean_dec(x_478);
lean_inc(x_480);
x_525 = l_Lean_mkNot(x_480);
x_526 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_527 = lean_array_push(x_526, x_479);
lean_inc(x_527);
x_528 = lean_array_push(x_527, x_525);
x_529 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_530 = l_Lean_Meta_mkAppM(x_529, x_528, x_5, x_6, x_7, x_8, x_484);
if (lean_obj_tag(x_530) == 0)
{
lean_object* x_531; lean_object* x_532; lean_object* x_533; lean_object* x_534; lean_object* x_535; 
x_531 = lean_ctor_get(x_530, 0);
lean_inc(x_531);
x_532 = lean_ctor_get(x_530, 1);
lean_inc(x_532);
lean_dec(x_530);
x_533 = lean_array_push(x_527, x_480);
x_534 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_535 = l_Lean_Meta_mkAppM(x_534, x_533, x_5, x_6, x_7, x_8, x_532);
if (lean_obj_tag(x_535) == 0)
{
uint8_t x_536; 
x_536 = !lean_is_exclusive(x_535);
if (x_536 == 0)
{
lean_object* x_537; lean_object* x_538; uint8_t x_539; lean_object* x_540; lean_object* x_541; lean_object* x_542; 
x_537 = lean_ctor_get(x_535, 0);
x_538 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_538, 0, x_537);
x_539 = 1;
x_540 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_540, 0, x_531);
lean_ctor_set(x_540, 1, x_538);
lean_ctor_set_uint8(x_540, sizeof(void*)*2, x_539);
x_541 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_541, 0, x_540);
x_542 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_542, 0, x_541);
lean_ctor_set(x_535, 0, x_542);
return x_535;
}
else
{
lean_object* x_543; lean_object* x_544; lean_object* x_545; uint8_t x_546; lean_object* x_547; lean_object* x_548; lean_object* x_549; lean_object* x_550; 
x_543 = lean_ctor_get(x_535, 0);
x_544 = lean_ctor_get(x_535, 1);
lean_inc(x_544);
lean_inc(x_543);
lean_dec(x_535);
x_545 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_545, 0, x_543);
x_546 = 1;
x_547 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_547, 0, x_531);
lean_ctor_set(x_547, 1, x_545);
lean_ctor_set_uint8(x_547, sizeof(void*)*2, x_546);
x_548 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_548, 0, x_547);
x_549 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_549, 0, x_548);
x_550 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_550, 0, x_549);
lean_ctor_set(x_550, 1, x_544);
return x_550;
}
}
else
{
uint8_t x_551; 
lean_dec(x_531);
x_551 = !lean_is_exclusive(x_535);
if (x_551 == 0)
{
return x_535;
}
else
{
lean_object* x_552; lean_object* x_553; lean_object* x_554; 
x_552 = lean_ctor_get(x_535, 0);
x_553 = lean_ctor_get(x_535, 1);
lean_inc(x_553);
lean_inc(x_552);
lean_dec(x_535);
x_554 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_554, 0, x_552);
lean_ctor_set(x_554, 1, x_553);
return x_554;
}
}
}
else
{
uint8_t x_555; 
lean_dec(x_527);
lean_dec(x_480);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_555 = !lean_is_exclusive(x_530);
if (x_555 == 0)
{
return x_530;
}
else
{
lean_object* x_556; lean_object* x_557; lean_object* x_558; 
x_556 = lean_ctor_get(x_530, 0);
x_557 = lean_ctor_get(x_530, 1);
lean_inc(x_557);
lean_inc(x_556);
lean_dec(x_530);
x_558 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_558, 0, x_556);
lean_ctor_set(x_558, 1, x_557);
return x_558;
}
}
}
else
{
lean_object* x_559; 
x_559 = lean_box(0);
x_485 = x_559;
goto block_521;
}
}
block_521:
{
lean_object* x_486; lean_object* x_487; lean_object* x_488; lean_object* x_489; lean_object* x_490; lean_object* x_491; lean_object* x_492; 
lean_dec(x_485);
lean_inc(x_480);
x_486 = l_Lean_mkNot(x_480);
lean_inc(x_479);
lean_inc(x_478);
x_487 = l_Lean_Expr_lam___override(x_478, x_479, x_486, x_481);
x_488 = l_Lean_Expr_lam___override(x_478, x_479, x_480, x_481);
x_489 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_490 = lean_array_push(x_489, x_487);
x_491 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_492 = l_Lean_Meta_mkAppM(x_491, x_490, x_5, x_6, x_7, x_8, x_484);
if (lean_obj_tag(x_492) == 0)
{
lean_object* x_493; lean_object* x_494; lean_object* x_495; lean_object* x_496; lean_object* x_497; 
x_493 = lean_ctor_get(x_492, 0);
lean_inc(x_493);
x_494 = lean_ctor_get(x_492, 1);
lean_inc(x_494);
lean_dec(x_492);
x_495 = lean_array_push(x_489, x_488);
x_496 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_497 = l_Lean_Meta_mkAppM(x_496, x_495, x_5, x_6, x_7, x_8, x_494);
if (lean_obj_tag(x_497) == 0)
{
uint8_t x_498; 
x_498 = !lean_is_exclusive(x_497);
if (x_498 == 0)
{
lean_object* x_499; lean_object* x_500; uint8_t x_501; lean_object* x_502; lean_object* x_503; lean_object* x_504; 
x_499 = lean_ctor_get(x_497, 0);
x_500 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_500, 0, x_499);
x_501 = 1;
x_502 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_502, 0, x_493);
lean_ctor_set(x_502, 1, x_500);
lean_ctor_set_uint8(x_502, sizeof(void*)*2, x_501);
x_503 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_503, 0, x_502);
x_504 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_504, 0, x_503);
lean_ctor_set(x_497, 0, x_504);
return x_497;
}
else
{
lean_object* x_505; lean_object* x_506; lean_object* x_507; uint8_t x_508; lean_object* x_509; lean_object* x_510; lean_object* x_511; lean_object* x_512; 
x_505 = lean_ctor_get(x_497, 0);
x_506 = lean_ctor_get(x_497, 1);
lean_inc(x_506);
lean_inc(x_505);
lean_dec(x_497);
x_507 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_507, 0, x_505);
x_508 = 1;
x_509 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_509, 0, x_493);
lean_ctor_set(x_509, 1, x_507);
lean_ctor_set_uint8(x_509, sizeof(void*)*2, x_508);
x_510 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_510, 0, x_509);
x_511 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_511, 0, x_510);
x_512 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_512, 0, x_511);
lean_ctor_set(x_512, 1, x_506);
return x_512;
}
}
else
{
uint8_t x_513; 
lean_dec(x_493);
x_513 = !lean_is_exclusive(x_497);
if (x_513 == 0)
{
return x_497;
}
else
{
lean_object* x_514; lean_object* x_515; lean_object* x_516; 
x_514 = lean_ctor_get(x_497, 0);
x_515 = lean_ctor_get(x_497, 1);
lean_inc(x_515);
lean_inc(x_514);
lean_dec(x_497);
x_516 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_516, 0, x_514);
lean_ctor_set(x_516, 1, x_515);
return x_516;
}
}
}
else
{
uint8_t x_517; 
lean_dec(x_488);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_517 = !lean_is_exclusive(x_492);
if (x_517 == 0)
{
return x_492;
}
else
{
lean_object* x_518; lean_object* x_519; lean_object* x_520; 
x_518 = lean_ctor_get(x_492, 0);
x_519 = lean_ctor_get(x_492, 1);
lean_inc(x_519);
lean_inc(x_518);
lean_dec(x_492);
x_520 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_520, 0, x_518);
lean_ctor_set(x_520, 1, x_519);
return x_520;
}
}
}
}
else
{
uint8_t x_560; 
lean_dec(x_480);
lean_dec(x_479);
lean_dec(x_478);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_560 = !lean_is_exclusive(x_482);
if (x_560 == 0)
{
return x_482;
}
else
{
lean_object* x_561; lean_object* x_562; lean_object* x_563; 
x_561 = lean_ctor_get(x_482, 0);
x_562 = lean_ctor_get(x_482, 1);
lean_inc(x_562);
lean_inc(x_561);
lean_dec(x_482);
x_563 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_563, 0, x_561);
lean_ctor_set(x_563, 1, x_562);
return x_563;
}
}
}
else
{
lean_object* x_564; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_564 = lean_box(0);
lean_ctor_set(x_28, 0, x_564);
return x_28;
}
}
else
{
lean_object* x_565; lean_object* x_566; lean_object* x_567; lean_object* x_568; lean_object* x_569; lean_object* x_570; lean_object* x_571; uint8_t x_572; 
lean_dec(x_32);
lean_free_object(x_28);
x_565 = lean_unsigned_to_nat(0u);
x_566 = lean_array_fget(x_123, x_565);
x_567 = lean_array_fget(x_123, x_24);
x_568 = lean_unsigned_to_nat(2u);
x_569 = lean_array_fget(x_123, x_568);
lean_dec(x_123);
lean_inc(x_569);
lean_inc(x_567);
x_570 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___boxed), 11, 2);
lean_closure_set(x_570, 0, x_567);
lean_closure_set(x_570, 1, x_569);
x_571 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20;
x_572 = l_Lean_Expr_isAppOfArity(x_566, x_571, x_24);
lean_dec(x_566);
if (x_572 == 0)
{
lean_object* x_573; lean_object* x_574; 
lean_dec(x_570);
x_573 = lean_box(0);
x_574 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1(x_567, x_569, x_573, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_31);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_574;
}
else
{
lean_object* x_575; uint8_t x_576; 
x_575 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3;
x_576 = l_Lean_Expr_isAppOfArity(x_569, x_575, x_568);
if (x_576 == 0)
{
lean_object* x_577; lean_object* x_578; 
x_577 = lean_box(0);
x_578 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2(x_567, x_570, x_569, x_577, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_31);
lean_dec(x_567);
return x_578;
}
else
{
lean_object* x_579; lean_object* x_580; lean_object* x_581; lean_object* x_582; 
lean_dec(x_570);
lean_dec(x_569);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_579 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_580 = lean_array_push(x_579, x_567);
x_581 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_582 = l_Lean_Meta_mkAppM(x_581, x_580, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_582) == 0)
{
lean_object* x_583; lean_object* x_584; lean_object* x_585; 
x_583 = lean_ctor_get(x_582, 0);
lean_inc(x_583);
x_584 = lean_ctor_get(x_582, 1);
lean_inc(x_584);
lean_dec(x_582);
lean_inc(x_583);
x_585 = lean_infer_type(x_583, x_5, x_6, x_7, x_8, x_584);
if (lean_obj_tag(x_585) == 0)
{
uint8_t x_586; 
x_586 = !lean_is_exclusive(x_585);
if (x_586 == 0)
{
lean_object* x_587; lean_object* x_588; uint8_t x_589; 
x_587 = lean_ctor_get(x_585, 0);
x_588 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_589 = l_Lean_Expr_isAppOfArity(x_587, x_588, x_476);
if (x_589 == 0)
{
lean_object* x_590; 
lean_dec(x_587);
lean_dec(x_583);
x_590 = lean_box(0);
lean_ctor_set(x_585, 0, x_590);
return x_585;
}
else
{
lean_object* x_591; lean_object* x_592; uint8_t x_593; lean_object* x_594; lean_object* x_595; lean_object* x_596; 
x_591 = l_Lean_Expr_appArg_x21(x_587);
lean_dec(x_587);
x_592 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_592, 0, x_583);
x_593 = 1;
x_594 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_594, 0, x_591);
lean_ctor_set(x_594, 1, x_592);
lean_ctor_set_uint8(x_594, sizeof(void*)*2, x_593);
x_595 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_595, 0, x_594);
x_596 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_596, 0, x_595);
lean_ctor_set(x_585, 0, x_596);
return x_585;
}
}
else
{
lean_object* x_597; lean_object* x_598; lean_object* x_599; uint8_t x_600; 
x_597 = lean_ctor_get(x_585, 0);
x_598 = lean_ctor_get(x_585, 1);
lean_inc(x_598);
lean_inc(x_597);
lean_dec(x_585);
x_599 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_600 = l_Lean_Expr_isAppOfArity(x_597, x_599, x_476);
if (x_600 == 0)
{
lean_object* x_601; lean_object* x_602; 
lean_dec(x_597);
lean_dec(x_583);
x_601 = lean_box(0);
x_602 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_602, 0, x_601);
lean_ctor_set(x_602, 1, x_598);
return x_602;
}
else
{
lean_object* x_603; lean_object* x_604; uint8_t x_605; lean_object* x_606; lean_object* x_607; lean_object* x_608; lean_object* x_609; 
x_603 = l_Lean_Expr_appArg_x21(x_597);
lean_dec(x_597);
x_604 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_604, 0, x_583);
x_605 = 1;
x_606 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_606, 0, x_603);
lean_ctor_set(x_606, 1, x_604);
lean_ctor_set_uint8(x_606, sizeof(void*)*2, x_605);
x_607 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_607, 0, x_606);
x_608 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_608, 0, x_607);
x_609 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_609, 0, x_608);
lean_ctor_set(x_609, 1, x_598);
return x_609;
}
}
}
else
{
uint8_t x_610; 
lean_dec(x_583);
x_610 = !lean_is_exclusive(x_585);
if (x_610 == 0)
{
return x_585;
}
else
{
lean_object* x_611; lean_object* x_612; lean_object* x_613; 
x_611 = lean_ctor_get(x_585, 0);
x_612 = lean_ctor_get(x_585, 1);
lean_inc(x_612);
lean_inc(x_611);
lean_dec(x_585);
x_613 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_613, 0, x_611);
lean_ctor_set(x_613, 1, x_612);
return x_613;
}
}
}
else
{
uint8_t x_614; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_614 = !lean_is_exclusive(x_582);
if (x_614 == 0)
{
return x_582;
}
else
{
lean_object* x_615; lean_object* x_616; lean_object* x_617; 
x_615 = lean_ctor_get(x_582, 0);
x_616 = lean_ctor_get(x_582, 1);
lean_inc(x_616);
lean_inc(x_615);
lean_dec(x_582);
x_617 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_617, 0, x_615);
lean_ctor_set(x_617, 1, x_616);
return x_617;
}
}
}
}
}
}
}
else
{
lean_object* x_618; lean_object* x_619; uint8_t x_620; 
lean_dec(x_124);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_618 = lean_array_get_size(x_123);
x_619 = lean_unsigned_to_nat(2u);
x_620 = lean_nat_dec_eq(x_618, x_619);
lean_dec(x_618);
if (x_620 == 0)
{
lean_dec(x_123);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_621; lean_object* x_622; lean_object* x_623; uint8_t x_624; lean_object* x_625; 
lean_free_object(x_28);
x_621 = lean_ctor_get(x_32, 0);
lean_inc(x_621);
x_622 = lean_ctor_get(x_32, 1);
lean_inc(x_622);
x_623 = lean_ctor_get(x_32, 2);
lean_inc(x_623);
x_624 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_622);
x_625 = l_Lean_Meta_isProp(x_622, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_625) == 0)
{
lean_object* x_626; lean_object* x_627; lean_object* x_628; uint8_t x_665; 
x_626 = lean_ctor_get(x_625, 0);
lean_inc(x_626);
x_627 = lean_ctor_get(x_625, 1);
lean_inc(x_627);
lean_dec(x_625);
x_665 = lean_unbox(x_626);
lean_dec(x_626);
if (x_665 == 0)
{
lean_object* x_666; 
x_666 = lean_box(0);
x_628 = x_666;
goto block_664;
}
else
{
uint8_t x_667; 
x_667 = l_Lean_Expr_hasLooseBVars(x_623);
if (x_667 == 0)
{
lean_object* x_668; lean_object* x_669; lean_object* x_670; lean_object* x_671; lean_object* x_672; lean_object* x_673; 
lean_dec(x_621);
lean_inc(x_623);
x_668 = l_Lean_mkNot(x_623);
x_669 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_670 = lean_array_push(x_669, x_622);
lean_inc(x_670);
x_671 = lean_array_push(x_670, x_668);
x_672 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_673 = l_Lean_Meta_mkAppM(x_672, x_671, x_5, x_6, x_7, x_8, x_627);
if (lean_obj_tag(x_673) == 0)
{
lean_object* x_674; lean_object* x_675; lean_object* x_676; lean_object* x_677; lean_object* x_678; 
x_674 = lean_ctor_get(x_673, 0);
lean_inc(x_674);
x_675 = lean_ctor_get(x_673, 1);
lean_inc(x_675);
lean_dec(x_673);
x_676 = lean_array_push(x_670, x_623);
x_677 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_678 = l_Lean_Meta_mkAppM(x_677, x_676, x_5, x_6, x_7, x_8, x_675);
if (lean_obj_tag(x_678) == 0)
{
uint8_t x_679; 
x_679 = !lean_is_exclusive(x_678);
if (x_679 == 0)
{
lean_object* x_680; lean_object* x_681; uint8_t x_682; lean_object* x_683; lean_object* x_684; lean_object* x_685; 
x_680 = lean_ctor_get(x_678, 0);
x_681 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_681, 0, x_680);
x_682 = 1;
x_683 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_683, 0, x_674);
lean_ctor_set(x_683, 1, x_681);
lean_ctor_set_uint8(x_683, sizeof(void*)*2, x_682);
x_684 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_684, 0, x_683);
x_685 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_685, 0, x_684);
lean_ctor_set(x_678, 0, x_685);
return x_678;
}
else
{
lean_object* x_686; lean_object* x_687; lean_object* x_688; uint8_t x_689; lean_object* x_690; lean_object* x_691; lean_object* x_692; lean_object* x_693; 
x_686 = lean_ctor_get(x_678, 0);
x_687 = lean_ctor_get(x_678, 1);
lean_inc(x_687);
lean_inc(x_686);
lean_dec(x_678);
x_688 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_688, 0, x_686);
x_689 = 1;
x_690 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_690, 0, x_674);
lean_ctor_set(x_690, 1, x_688);
lean_ctor_set_uint8(x_690, sizeof(void*)*2, x_689);
x_691 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_691, 0, x_690);
x_692 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_692, 0, x_691);
x_693 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_693, 0, x_692);
lean_ctor_set(x_693, 1, x_687);
return x_693;
}
}
else
{
uint8_t x_694; 
lean_dec(x_674);
x_694 = !lean_is_exclusive(x_678);
if (x_694 == 0)
{
return x_678;
}
else
{
lean_object* x_695; lean_object* x_696; lean_object* x_697; 
x_695 = lean_ctor_get(x_678, 0);
x_696 = lean_ctor_get(x_678, 1);
lean_inc(x_696);
lean_inc(x_695);
lean_dec(x_678);
x_697 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_697, 0, x_695);
lean_ctor_set(x_697, 1, x_696);
return x_697;
}
}
}
else
{
uint8_t x_698; 
lean_dec(x_670);
lean_dec(x_623);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_698 = !lean_is_exclusive(x_673);
if (x_698 == 0)
{
return x_673;
}
else
{
lean_object* x_699; lean_object* x_700; lean_object* x_701; 
x_699 = lean_ctor_get(x_673, 0);
x_700 = lean_ctor_get(x_673, 1);
lean_inc(x_700);
lean_inc(x_699);
lean_dec(x_673);
x_701 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_701, 0, x_699);
lean_ctor_set(x_701, 1, x_700);
return x_701;
}
}
}
else
{
lean_object* x_702; 
x_702 = lean_box(0);
x_628 = x_702;
goto block_664;
}
}
block_664:
{
lean_object* x_629; lean_object* x_630; lean_object* x_631; lean_object* x_632; lean_object* x_633; lean_object* x_634; lean_object* x_635; 
lean_dec(x_628);
lean_inc(x_623);
x_629 = l_Lean_mkNot(x_623);
lean_inc(x_622);
lean_inc(x_621);
x_630 = l_Lean_Expr_lam___override(x_621, x_622, x_629, x_624);
x_631 = l_Lean_Expr_lam___override(x_621, x_622, x_623, x_624);
x_632 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_633 = lean_array_push(x_632, x_630);
x_634 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_635 = l_Lean_Meta_mkAppM(x_634, x_633, x_5, x_6, x_7, x_8, x_627);
if (lean_obj_tag(x_635) == 0)
{
lean_object* x_636; lean_object* x_637; lean_object* x_638; lean_object* x_639; lean_object* x_640; 
x_636 = lean_ctor_get(x_635, 0);
lean_inc(x_636);
x_637 = lean_ctor_get(x_635, 1);
lean_inc(x_637);
lean_dec(x_635);
x_638 = lean_array_push(x_632, x_631);
x_639 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_640 = l_Lean_Meta_mkAppM(x_639, x_638, x_5, x_6, x_7, x_8, x_637);
if (lean_obj_tag(x_640) == 0)
{
uint8_t x_641; 
x_641 = !lean_is_exclusive(x_640);
if (x_641 == 0)
{
lean_object* x_642; lean_object* x_643; uint8_t x_644; lean_object* x_645; lean_object* x_646; lean_object* x_647; 
x_642 = lean_ctor_get(x_640, 0);
x_643 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_643, 0, x_642);
x_644 = 1;
x_645 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_645, 0, x_636);
lean_ctor_set(x_645, 1, x_643);
lean_ctor_set_uint8(x_645, sizeof(void*)*2, x_644);
x_646 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_646, 0, x_645);
x_647 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_647, 0, x_646);
lean_ctor_set(x_640, 0, x_647);
return x_640;
}
else
{
lean_object* x_648; lean_object* x_649; lean_object* x_650; uint8_t x_651; lean_object* x_652; lean_object* x_653; lean_object* x_654; lean_object* x_655; 
x_648 = lean_ctor_get(x_640, 0);
x_649 = lean_ctor_get(x_640, 1);
lean_inc(x_649);
lean_inc(x_648);
lean_dec(x_640);
x_650 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_650, 0, x_648);
x_651 = 1;
x_652 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_652, 0, x_636);
lean_ctor_set(x_652, 1, x_650);
lean_ctor_set_uint8(x_652, sizeof(void*)*2, x_651);
x_653 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_653, 0, x_652);
x_654 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_654, 0, x_653);
x_655 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_655, 0, x_654);
lean_ctor_set(x_655, 1, x_649);
return x_655;
}
}
else
{
uint8_t x_656; 
lean_dec(x_636);
x_656 = !lean_is_exclusive(x_640);
if (x_656 == 0)
{
return x_640;
}
else
{
lean_object* x_657; lean_object* x_658; lean_object* x_659; 
x_657 = lean_ctor_get(x_640, 0);
x_658 = lean_ctor_get(x_640, 1);
lean_inc(x_658);
lean_inc(x_657);
lean_dec(x_640);
x_659 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_659, 0, x_657);
lean_ctor_set(x_659, 1, x_658);
return x_659;
}
}
}
else
{
uint8_t x_660; 
lean_dec(x_631);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_660 = !lean_is_exclusive(x_635);
if (x_660 == 0)
{
return x_635;
}
else
{
lean_object* x_661; lean_object* x_662; lean_object* x_663; 
x_661 = lean_ctor_get(x_635, 0);
x_662 = lean_ctor_get(x_635, 1);
lean_inc(x_662);
lean_inc(x_661);
lean_dec(x_635);
x_663 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_663, 0, x_661);
lean_ctor_set(x_663, 1, x_662);
return x_663;
}
}
}
}
else
{
uint8_t x_703; 
lean_dec(x_623);
lean_dec(x_622);
lean_dec(x_621);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_703 = !lean_is_exclusive(x_625);
if (x_703 == 0)
{
return x_625;
}
else
{
lean_object* x_704; lean_object* x_705; lean_object* x_706; 
x_704 = lean_ctor_get(x_625, 0);
x_705 = lean_ctor_get(x_625, 1);
lean_inc(x_705);
lean_inc(x_704);
lean_dec(x_625);
x_706 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_706, 0, x_704);
lean_ctor_set(x_706, 1, x_705);
return x_706;
}
}
}
else
{
lean_object* x_707; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_707 = lean_box(0);
lean_ctor_set(x_28, 0, x_707);
return x_28;
}
}
else
{
lean_object* x_708; lean_object* x_709; lean_object* x_710; lean_object* x_711; lean_object* x_712; lean_object* x_713; lean_object* x_714; lean_object* x_715; 
lean_dec(x_32);
lean_free_object(x_28);
x_708 = lean_unsigned_to_nat(0u);
x_709 = lean_array_fget(x_123, x_708);
x_710 = lean_array_fget(x_123, x_24);
lean_dec(x_123);
x_711 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_709);
x_712 = lean_array_push(x_711, x_709);
lean_inc(x_710);
x_713 = lean_array_push(x_712, x_710);
x_714 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24;
x_715 = l_Lean_Meta_mkAppM(x_714, x_713, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_715) == 0)
{
uint8_t x_716; 
x_716 = !lean_is_exclusive(x_715);
if (x_716 == 0)
{
lean_object* x_717; lean_object* x_718; lean_object* x_719; lean_object* x_720; lean_object* x_721; lean_object* x_722; lean_object* x_723; uint8_t x_724; lean_object* x_725; lean_object* x_726; lean_object* x_727; 
x_717 = lean_ctor_get(x_715, 0);
lean_inc(x_710);
x_718 = l_Lean_mkNot(x_710);
lean_inc(x_709);
x_719 = l_Lean_mkAnd(x_709, x_718);
x_720 = l_Lean_mkNot(x_709);
x_721 = l_Lean_mkAnd(x_720, x_710);
x_722 = l_Lean_mkOr(x_719, x_721);
x_723 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_723, 0, x_717);
x_724 = 1;
x_725 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_725, 0, x_722);
lean_ctor_set(x_725, 1, x_723);
lean_ctor_set_uint8(x_725, sizeof(void*)*2, x_724);
x_726 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_726, 0, x_725);
x_727 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_727, 0, x_726);
lean_ctor_set(x_715, 0, x_727);
return x_715;
}
else
{
lean_object* x_728; lean_object* x_729; lean_object* x_730; lean_object* x_731; lean_object* x_732; lean_object* x_733; lean_object* x_734; lean_object* x_735; uint8_t x_736; lean_object* x_737; lean_object* x_738; lean_object* x_739; lean_object* x_740; 
x_728 = lean_ctor_get(x_715, 0);
x_729 = lean_ctor_get(x_715, 1);
lean_inc(x_729);
lean_inc(x_728);
lean_dec(x_715);
lean_inc(x_710);
x_730 = l_Lean_mkNot(x_710);
lean_inc(x_709);
x_731 = l_Lean_mkAnd(x_709, x_730);
x_732 = l_Lean_mkNot(x_709);
x_733 = l_Lean_mkAnd(x_732, x_710);
x_734 = l_Lean_mkOr(x_731, x_733);
x_735 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_735, 0, x_728);
x_736 = 1;
x_737 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_737, 0, x_734);
lean_ctor_set(x_737, 1, x_735);
lean_ctor_set_uint8(x_737, sizeof(void*)*2, x_736);
x_738 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_738, 0, x_737);
x_739 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_739, 0, x_738);
x_740 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_740, 0, x_739);
lean_ctor_set(x_740, 1, x_729);
return x_740;
}
}
else
{
uint8_t x_741; 
lean_dec(x_710);
lean_dec(x_709);
x_741 = !lean_is_exclusive(x_715);
if (x_741 == 0)
{
return x_715;
}
else
{
lean_object* x_742; lean_object* x_743; lean_object* x_744; 
x_742 = lean_ctor_get(x_715, 0);
x_743 = lean_ctor_get(x_715, 1);
lean_inc(x_743);
lean_inc(x_742);
lean_dec(x_715);
x_744 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_744, 0, x_742);
lean_ctor_set(x_744, 1, x_743);
return x_744;
}
}
}
}
}
else
{
lean_object* x_745; lean_object* x_746; uint8_t x_747; 
lean_dec(x_124);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_745 = lean_array_get_size(x_123);
x_746 = lean_unsigned_to_nat(2u);
x_747 = lean_nat_dec_eq(x_745, x_746);
lean_dec(x_745);
if (x_747 == 0)
{
lean_dec(x_123);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_748; lean_object* x_749; lean_object* x_750; uint8_t x_751; lean_object* x_752; 
lean_free_object(x_28);
x_748 = lean_ctor_get(x_32, 0);
lean_inc(x_748);
x_749 = lean_ctor_get(x_32, 1);
lean_inc(x_749);
x_750 = lean_ctor_get(x_32, 2);
lean_inc(x_750);
x_751 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_749);
x_752 = l_Lean_Meta_isProp(x_749, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_752) == 0)
{
lean_object* x_753; lean_object* x_754; lean_object* x_755; uint8_t x_792; 
x_753 = lean_ctor_get(x_752, 0);
lean_inc(x_753);
x_754 = lean_ctor_get(x_752, 1);
lean_inc(x_754);
lean_dec(x_752);
x_792 = lean_unbox(x_753);
lean_dec(x_753);
if (x_792 == 0)
{
lean_object* x_793; 
x_793 = lean_box(0);
x_755 = x_793;
goto block_791;
}
else
{
uint8_t x_794; 
x_794 = l_Lean_Expr_hasLooseBVars(x_750);
if (x_794 == 0)
{
lean_object* x_795; lean_object* x_796; lean_object* x_797; lean_object* x_798; lean_object* x_799; lean_object* x_800; 
lean_dec(x_748);
lean_inc(x_750);
x_795 = l_Lean_mkNot(x_750);
x_796 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_797 = lean_array_push(x_796, x_749);
lean_inc(x_797);
x_798 = lean_array_push(x_797, x_795);
x_799 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_800 = l_Lean_Meta_mkAppM(x_799, x_798, x_5, x_6, x_7, x_8, x_754);
if (lean_obj_tag(x_800) == 0)
{
lean_object* x_801; lean_object* x_802; lean_object* x_803; lean_object* x_804; lean_object* x_805; 
x_801 = lean_ctor_get(x_800, 0);
lean_inc(x_801);
x_802 = lean_ctor_get(x_800, 1);
lean_inc(x_802);
lean_dec(x_800);
x_803 = lean_array_push(x_797, x_750);
x_804 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_805 = l_Lean_Meta_mkAppM(x_804, x_803, x_5, x_6, x_7, x_8, x_802);
if (lean_obj_tag(x_805) == 0)
{
uint8_t x_806; 
x_806 = !lean_is_exclusive(x_805);
if (x_806 == 0)
{
lean_object* x_807; lean_object* x_808; uint8_t x_809; lean_object* x_810; lean_object* x_811; lean_object* x_812; 
x_807 = lean_ctor_get(x_805, 0);
x_808 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_808, 0, x_807);
x_809 = 1;
x_810 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_810, 0, x_801);
lean_ctor_set(x_810, 1, x_808);
lean_ctor_set_uint8(x_810, sizeof(void*)*2, x_809);
x_811 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_811, 0, x_810);
x_812 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_812, 0, x_811);
lean_ctor_set(x_805, 0, x_812);
return x_805;
}
else
{
lean_object* x_813; lean_object* x_814; lean_object* x_815; uint8_t x_816; lean_object* x_817; lean_object* x_818; lean_object* x_819; lean_object* x_820; 
x_813 = lean_ctor_get(x_805, 0);
x_814 = lean_ctor_get(x_805, 1);
lean_inc(x_814);
lean_inc(x_813);
lean_dec(x_805);
x_815 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_815, 0, x_813);
x_816 = 1;
x_817 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_817, 0, x_801);
lean_ctor_set(x_817, 1, x_815);
lean_ctor_set_uint8(x_817, sizeof(void*)*2, x_816);
x_818 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_818, 0, x_817);
x_819 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_819, 0, x_818);
x_820 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_820, 0, x_819);
lean_ctor_set(x_820, 1, x_814);
return x_820;
}
}
else
{
uint8_t x_821; 
lean_dec(x_801);
x_821 = !lean_is_exclusive(x_805);
if (x_821 == 0)
{
return x_805;
}
else
{
lean_object* x_822; lean_object* x_823; lean_object* x_824; 
x_822 = lean_ctor_get(x_805, 0);
x_823 = lean_ctor_get(x_805, 1);
lean_inc(x_823);
lean_inc(x_822);
lean_dec(x_805);
x_824 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_824, 0, x_822);
lean_ctor_set(x_824, 1, x_823);
return x_824;
}
}
}
else
{
uint8_t x_825; 
lean_dec(x_797);
lean_dec(x_750);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_825 = !lean_is_exclusive(x_800);
if (x_825 == 0)
{
return x_800;
}
else
{
lean_object* x_826; lean_object* x_827; lean_object* x_828; 
x_826 = lean_ctor_get(x_800, 0);
x_827 = lean_ctor_get(x_800, 1);
lean_inc(x_827);
lean_inc(x_826);
lean_dec(x_800);
x_828 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_828, 0, x_826);
lean_ctor_set(x_828, 1, x_827);
return x_828;
}
}
}
else
{
lean_object* x_829; 
x_829 = lean_box(0);
x_755 = x_829;
goto block_791;
}
}
block_791:
{
lean_object* x_756; lean_object* x_757; lean_object* x_758; lean_object* x_759; lean_object* x_760; lean_object* x_761; lean_object* x_762; 
lean_dec(x_755);
lean_inc(x_750);
x_756 = l_Lean_mkNot(x_750);
lean_inc(x_749);
lean_inc(x_748);
x_757 = l_Lean_Expr_lam___override(x_748, x_749, x_756, x_751);
x_758 = l_Lean_Expr_lam___override(x_748, x_749, x_750, x_751);
x_759 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_760 = lean_array_push(x_759, x_757);
x_761 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_762 = l_Lean_Meta_mkAppM(x_761, x_760, x_5, x_6, x_7, x_8, x_754);
if (lean_obj_tag(x_762) == 0)
{
lean_object* x_763; lean_object* x_764; lean_object* x_765; lean_object* x_766; lean_object* x_767; 
x_763 = lean_ctor_get(x_762, 0);
lean_inc(x_763);
x_764 = lean_ctor_get(x_762, 1);
lean_inc(x_764);
lean_dec(x_762);
x_765 = lean_array_push(x_759, x_758);
x_766 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_767 = l_Lean_Meta_mkAppM(x_766, x_765, x_5, x_6, x_7, x_8, x_764);
if (lean_obj_tag(x_767) == 0)
{
uint8_t x_768; 
x_768 = !lean_is_exclusive(x_767);
if (x_768 == 0)
{
lean_object* x_769; lean_object* x_770; uint8_t x_771; lean_object* x_772; lean_object* x_773; lean_object* x_774; 
x_769 = lean_ctor_get(x_767, 0);
x_770 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_770, 0, x_769);
x_771 = 1;
x_772 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_772, 0, x_763);
lean_ctor_set(x_772, 1, x_770);
lean_ctor_set_uint8(x_772, sizeof(void*)*2, x_771);
x_773 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_773, 0, x_772);
x_774 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_774, 0, x_773);
lean_ctor_set(x_767, 0, x_774);
return x_767;
}
else
{
lean_object* x_775; lean_object* x_776; lean_object* x_777; uint8_t x_778; lean_object* x_779; lean_object* x_780; lean_object* x_781; lean_object* x_782; 
x_775 = lean_ctor_get(x_767, 0);
x_776 = lean_ctor_get(x_767, 1);
lean_inc(x_776);
lean_inc(x_775);
lean_dec(x_767);
x_777 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_777, 0, x_775);
x_778 = 1;
x_779 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_779, 0, x_763);
lean_ctor_set(x_779, 1, x_777);
lean_ctor_set_uint8(x_779, sizeof(void*)*2, x_778);
x_780 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_780, 0, x_779);
x_781 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_781, 0, x_780);
x_782 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_782, 0, x_781);
lean_ctor_set(x_782, 1, x_776);
return x_782;
}
}
else
{
uint8_t x_783; 
lean_dec(x_763);
x_783 = !lean_is_exclusive(x_767);
if (x_783 == 0)
{
return x_767;
}
else
{
lean_object* x_784; lean_object* x_785; lean_object* x_786; 
x_784 = lean_ctor_get(x_767, 0);
x_785 = lean_ctor_get(x_767, 1);
lean_inc(x_785);
lean_inc(x_784);
lean_dec(x_767);
x_786 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_786, 0, x_784);
lean_ctor_set(x_786, 1, x_785);
return x_786;
}
}
}
else
{
uint8_t x_787; 
lean_dec(x_758);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_787 = !lean_is_exclusive(x_762);
if (x_787 == 0)
{
return x_762;
}
else
{
lean_object* x_788; lean_object* x_789; lean_object* x_790; 
x_788 = lean_ctor_get(x_762, 0);
x_789 = lean_ctor_get(x_762, 1);
lean_inc(x_789);
lean_inc(x_788);
lean_dec(x_762);
x_790 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_790, 0, x_788);
lean_ctor_set(x_790, 1, x_789);
return x_790;
}
}
}
}
else
{
uint8_t x_830; 
lean_dec(x_750);
lean_dec(x_749);
lean_dec(x_748);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_830 = !lean_is_exclusive(x_752);
if (x_830 == 0)
{
return x_752;
}
else
{
lean_object* x_831; lean_object* x_832; lean_object* x_833; 
x_831 = lean_ctor_get(x_752, 0);
x_832 = lean_ctor_get(x_752, 1);
lean_inc(x_832);
lean_inc(x_831);
lean_dec(x_752);
x_833 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_833, 0, x_831);
lean_ctor_set(x_833, 1, x_832);
return x_833;
}
}
}
else
{
lean_object* x_834; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_834 = lean_box(0);
lean_ctor_set(x_28, 0, x_834);
return x_28;
}
}
else
{
lean_object* x_835; lean_object* x_836; lean_object* x_837; lean_object* x_838; lean_object* x_839; lean_object* x_840; lean_object* x_841; lean_object* x_842; 
lean_dec(x_32);
lean_free_object(x_28);
x_835 = lean_unsigned_to_nat(0u);
x_836 = lean_array_fget(x_123, x_835);
x_837 = lean_array_fget(x_123, x_24);
lean_dec(x_123);
x_838 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_836);
x_839 = lean_array_push(x_838, x_836);
lean_inc(x_837);
x_840 = lean_array_push(x_839, x_837);
x_841 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26;
x_842 = l_Lean_Meta_mkAppM(x_841, x_840, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_842) == 0)
{
uint8_t x_843; 
x_843 = !lean_is_exclusive(x_842);
if (x_843 == 0)
{
lean_object* x_844; lean_object* x_845; lean_object* x_846; lean_object* x_847; lean_object* x_848; uint8_t x_849; lean_object* x_850; lean_object* x_851; lean_object* x_852; 
x_844 = lean_ctor_get(x_842, 0);
x_845 = l_Lean_mkNot(x_836);
x_846 = l_Lean_mkNot(x_837);
x_847 = l_Lean_mkAnd(x_845, x_846);
x_848 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_848, 0, x_844);
x_849 = 1;
x_850 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_850, 0, x_847);
lean_ctor_set(x_850, 1, x_848);
lean_ctor_set_uint8(x_850, sizeof(void*)*2, x_849);
x_851 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_851, 0, x_850);
x_852 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_852, 0, x_851);
lean_ctor_set(x_842, 0, x_852);
return x_842;
}
else
{
lean_object* x_853; lean_object* x_854; lean_object* x_855; lean_object* x_856; lean_object* x_857; lean_object* x_858; uint8_t x_859; lean_object* x_860; lean_object* x_861; lean_object* x_862; lean_object* x_863; 
x_853 = lean_ctor_get(x_842, 0);
x_854 = lean_ctor_get(x_842, 1);
lean_inc(x_854);
lean_inc(x_853);
lean_dec(x_842);
x_855 = l_Lean_mkNot(x_836);
x_856 = l_Lean_mkNot(x_837);
x_857 = l_Lean_mkAnd(x_855, x_856);
x_858 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_858, 0, x_853);
x_859 = 1;
x_860 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_860, 0, x_857);
lean_ctor_set(x_860, 1, x_858);
lean_ctor_set_uint8(x_860, sizeof(void*)*2, x_859);
x_861 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_861, 0, x_860);
x_862 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_862, 0, x_861);
x_863 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_863, 0, x_862);
lean_ctor_set(x_863, 1, x_854);
return x_863;
}
}
else
{
uint8_t x_864; 
lean_dec(x_837);
lean_dec(x_836);
x_864 = !lean_is_exclusive(x_842);
if (x_864 == 0)
{
return x_842;
}
else
{
lean_object* x_865; lean_object* x_866; lean_object* x_867; 
x_865 = lean_ctor_get(x_842, 0);
x_866 = lean_ctor_get(x_842, 1);
lean_inc(x_866);
lean_inc(x_865);
lean_dec(x_842);
x_867 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_867, 0, x_865);
lean_ctor_set(x_867, 1, x_866);
return x_867;
}
}
}
}
}
else
{
lean_object* x_868; lean_object* x_869; uint8_t x_870; 
lean_dec(x_124);
x_868 = lean_array_get_size(x_123);
x_869 = lean_unsigned_to_nat(2u);
x_870 = lean_nat_dec_eq(x_868, x_869);
lean_dec(x_868);
if (x_870 == 0)
{
lean_dec(x_123);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_871; lean_object* x_872; lean_object* x_873; uint8_t x_874; lean_object* x_875; 
lean_free_object(x_28);
x_871 = lean_ctor_get(x_32, 0);
lean_inc(x_871);
x_872 = lean_ctor_get(x_32, 1);
lean_inc(x_872);
x_873 = lean_ctor_get(x_32, 2);
lean_inc(x_873);
x_874 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_872);
x_875 = l_Lean_Meta_isProp(x_872, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_875) == 0)
{
lean_object* x_876; lean_object* x_877; lean_object* x_878; uint8_t x_915; 
x_876 = lean_ctor_get(x_875, 0);
lean_inc(x_876);
x_877 = lean_ctor_get(x_875, 1);
lean_inc(x_877);
lean_dec(x_875);
x_915 = lean_unbox(x_876);
lean_dec(x_876);
if (x_915 == 0)
{
lean_object* x_916; 
x_916 = lean_box(0);
x_878 = x_916;
goto block_914;
}
else
{
uint8_t x_917; 
x_917 = l_Lean_Expr_hasLooseBVars(x_873);
if (x_917 == 0)
{
lean_object* x_918; lean_object* x_919; lean_object* x_920; lean_object* x_921; lean_object* x_922; lean_object* x_923; 
lean_dec(x_871);
lean_inc(x_873);
x_918 = l_Lean_mkNot(x_873);
x_919 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_920 = lean_array_push(x_919, x_872);
lean_inc(x_920);
x_921 = lean_array_push(x_920, x_918);
x_922 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_923 = l_Lean_Meta_mkAppM(x_922, x_921, x_5, x_6, x_7, x_8, x_877);
if (lean_obj_tag(x_923) == 0)
{
lean_object* x_924; lean_object* x_925; lean_object* x_926; lean_object* x_927; lean_object* x_928; 
x_924 = lean_ctor_get(x_923, 0);
lean_inc(x_924);
x_925 = lean_ctor_get(x_923, 1);
lean_inc(x_925);
lean_dec(x_923);
x_926 = lean_array_push(x_920, x_873);
x_927 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_928 = l_Lean_Meta_mkAppM(x_927, x_926, x_5, x_6, x_7, x_8, x_925);
if (lean_obj_tag(x_928) == 0)
{
uint8_t x_929; 
x_929 = !lean_is_exclusive(x_928);
if (x_929 == 0)
{
lean_object* x_930; lean_object* x_931; uint8_t x_932; lean_object* x_933; lean_object* x_934; lean_object* x_935; 
x_930 = lean_ctor_get(x_928, 0);
x_931 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_931, 0, x_930);
x_932 = 1;
x_933 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_933, 0, x_924);
lean_ctor_set(x_933, 1, x_931);
lean_ctor_set_uint8(x_933, sizeof(void*)*2, x_932);
x_934 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_934, 0, x_933);
x_935 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_935, 0, x_934);
lean_ctor_set(x_928, 0, x_935);
return x_928;
}
else
{
lean_object* x_936; lean_object* x_937; lean_object* x_938; uint8_t x_939; lean_object* x_940; lean_object* x_941; lean_object* x_942; lean_object* x_943; 
x_936 = lean_ctor_get(x_928, 0);
x_937 = lean_ctor_get(x_928, 1);
lean_inc(x_937);
lean_inc(x_936);
lean_dec(x_928);
x_938 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_938, 0, x_936);
x_939 = 1;
x_940 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_940, 0, x_924);
lean_ctor_set(x_940, 1, x_938);
lean_ctor_set_uint8(x_940, sizeof(void*)*2, x_939);
x_941 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_941, 0, x_940);
x_942 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_942, 0, x_941);
x_943 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_943, 0, x_942);
lean_ctor_set(x_943, 1, x_937);
return x_943;
}
}
else
{
uint8_t x_944; 
lean_dec(x_924);
x_944 = !lean_is_exclusive(x_928);
if (x_944 == 0)
{
return x_928;
}
else
{
lean_object* x_945; lean_object* x_946; lean_object* x_947; 
x_945 = lean_ctor_get(x_928, 0);
x_946 = lean_ctor_get(x_928, 1);
lean_inc(x_946);
lean_inc(x_945);
lean_dec(x_928);
x_947 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_947, 0, x_945);
lean_ctor_set(x_947, 1, x_946);
return x_947;
}
}
}
else
{
uint8_t x_948; 
lean_dec(x_920);
lean_dec(x_873);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_948 = !lean_is_exclusive(x_923);
if (x_948 == 0)
{
return x_923;
}
else
{
lean_object* x_949; lean_object* x_950; lean_object* x_951; 
x_949 = lean_ctor_get(x_923, 0);
x_950 = lean_ctor_get(x_923, 1);
lean_inc(x_950);
lean_inc(x_949);
lean_dec(x_923);
x_951 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_951, 0, x_949);
lean_ctor_set(x_951, 1, x_950);
return x_951;
}
}
}
else
{
lean_object* x_952; 
x_952 = lean_box(0);
x_878 = x_952;
goto block_914;
}
}
block_914:
{
lean_object* x_879; lean_object* x_880; lean_object* x_881; lean_object* x_882; lean_object* x_883; lean_object* x_884; lean_object* x_885; 
lean_dec(x_878);
lean_inc(x_873);
x_879 = l_Lean_mkNot(x_873);
lean_inc(x_872);
lean_inc(x_871);
x_880 = l_Lean_Expr_lam___override(x_871, x_872, x_879, x_874);
x_881 = l_Lean_Expr_lam___override(x_871, x_872, x_873, x_874);
x_882 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_883 = lean_array_push(x_882, x_880);
x_884 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_885 = l_Lean_Meta_mkAppM(x_884, x_883, x_5, x_6, x_7, x_8, x_877);
if (lean_obj_tag(x_885) == 0)
{
lean_object* x_886; lean_object* x_887; lean_object* x_888; lean_object* x_889; lean_object* x_890; 
x_886 = lean_ctor_get(x_885, 0);
lean_inc(x_886);
x_887 = lean_ctor_get(x_885, 1);
lean_inc(x_887);
lean_dec(x_885);
x_888 = lean_array_push(x_882, x_881);
x_889 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_890 = l_Lean_Meta_mkAppM(x_889, x_888, x_5, x_6, x_7, x_8, x_887);
if (lean_obj_tag(x_890) == 0)
{
uint8_t x_891; 
x_891 = !lean_is_exclusive(x_890);
if (x_891 == 0)
{
lean_object* x_892; lean_object* x_893; uint8_t x_894; lean_object* x_895; lean_object* x_896; lean_object* x_897; 
x_892 = lean_ctor_get(x_890, 0);
x_893 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_893, 0, x_892);
x_894 = 1;
x_895 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_895, 0, x_886);
lean_ctor_set(x_895, 1, x_893);
lean_ctor_set_uint8(x_895, sizeof(void*)*2, x_894);
x_896 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_896, 0, x_895);
x_897 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_897, 0, x_896);
lean_ctor_set(x_890, 0, x_897);
return x_890;
}
else
{
lean_object* x_898; lean_object* x_899; lean_object* x_900; uint8_t x_901; lean_object* x_902; lean_object* x_903; lean_object* x_904; lean_object* x_905; 
x_898 = lean_ctor_get(x_890, 0);
x_899 = lean_ctor_get(x_890, 1);
lean_inc(x_899);
lean_inc(x_898);
lean_dec(x_890);
x_900 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_900, 0, x_898);
x_901 = 1;
x_902 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_902, 0, x_886);
lean_ctor_set(x_902, 1, x_900);
lean_ctor_set_uint8(x_902, sizeof(void*)*2, x_901);
x_903 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_903, 0, x_902);
x_904 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_904, 0, x_903);
x_905 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_905, 0, x_904);
lean_ctor_set(x_905, 1, x_899);
return x_905;
}
}
else
{
uint8_t x_906; 
lean_dec(x_886);
x_906 = !lean_is_exclusive(x_890);
if (x_906 == 0)
{
return x_890;
}
else
{
lean_object* x_907; lean_object* x_908; lean_object* x_909; 
x_907 = lean_ctor_get(x_890, 0);
x_908 = lean_ctor_get(x_890, 1);
lean_inc(x_908);
lean_inc(x_907);
lean_dec(x_890);
x_909 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_909, 0, x_907);
lean_ctor_set(x_909, 1, x_908);
return x_909;
}
}
}
else
{
uint8_t x_910; 
lean_dec(x_881);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_910 = !lean_is_exclusive(x_885);
if (x_910 == 0)
{
return x_885;
}
else
{
lean_object* x_911; lean_object* x_912; lean_object* x_913; 
x_911 = lean_ctor_get(x_885, 0);
x_912 = lean_ctor_get(x_885, 1);
lean_inc(x_912);
lean_inc(x_911);
lean_dec(x_885);
x_913 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_913, 0, x_911);
lean_ctor_set(x_913, 1, x_912);
return x_913;
}
}
}
}
else
{
uint8_t x_953; 
lean_dec(x_873);
lean_dec(x_872);
lean_dec(x_871);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_953 = !lean_is_exclusive(x_875);
if (x_953 == 0)
{
return x_875;
}
else
{
lean_object* x_954; lean_object* x_955; lean_object* x_956; 
x_954 = lean_ctor_get(x_875, 0);
x_955 = lean_ctor_get(x_875, 1);
lean_inc(x_955);
lean_inc(x_954);
lean_dec(x_875);
x_956 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_956, 0, x_954);
lean_ctor_set(x_956, 1, x_955);
return x_956;
}
}
}
else
{
lean_object* x_957; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_957 = lean_box(0);
lean_ctor_set(x_28, 0, x_957);
return x_28;
}
}
else
{
lean_object* x_958; lean_object* x_959; lean_object* x_960; lean_object* x_961; uint8_t x_962; lean_object* x_963; lean_object* x_964; uint8_t x_965; 
lean_dec(x_32);
lean_free_object(x_28);
x_958 = lean_unsigned_to_nat(0u);
x_959 = lean_array_fget(x_123, x_958);
x_960 = lean_array_fget(x_123, x_24);
lean_dec(x_123);
x_961 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3;
x_962 = 0;
x_963 = l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1(x_961, x_962, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_31);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_964 = lean_ctor_get(x_963, 0);
lean_inc(x_964);
x_965 = lean_unbox(x_964);
lean_dec(x_964);
if (x_965 == 0)
{
lean_object* x_966; lean_object* x_967; lean_object* x_968; lean_object* x_969; lean_object* x_970; lean_object* x_971; 
x_966 = lean_ctor_get(x_963, 1);
lean_inc(x_966);
lean_dec(x_963);
x_967 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_959);
x_968 = lean_array_push(x_967, x_959);
lean_inc(x_960);
x_969 = lean_array_push(x_968, x_960);
x_970 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28;
x_971 = l_Lean_Meta_mkAppM(x_970, x_969, x_5, x_6, x_7, x_8, x_966);
if (lean_obj_tag(x_971) == 0)
{
uint8_t x_972; 
x_972 = !lean_is_exclusive(x_971);
if (x_972 == 0)
{
lean_object* x_973; lean_object* x_974; lean_object* x_975; uint8_t x_976; lean_object* x_977; lean_object* x_978; uint8_t x_979; lean_object* x_980; lean_object* x_981; lean_object* x_982; 
x_973 = lean_ctor_get(x_971, 0);
x_974 = l_Lean_mkNot(x_960);
x_975 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30;
x_976 = 0;
x_977 = l_Lean_Expr_forallE___override(x_975, x_959, x_974, x_976);
x_978 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_978, 0, x_973);
x_979 = 1;
x_980 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_980, 0, x_977);
lean_ctor_set(x_980, 1, x_978);
lean_ctor_set_uint8(x_980, sizeof(void*)*2, x_979);
x_981 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_981, 0, x_980);
x_982 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_982, 0, x_981);
lean_ctor_set(x_971, 0, x_982);
return x_971;
}
else
{
lean_object* x_983; lean_object* x_984; lean_object* x_985; lean_object* x_986; uint8_t x_987; lean_object* x_988; lean_object* x_989; uint8_t x_990; lean_object* x_991; lean_object* x_992; lean_object* x_993; lean_object* x_994; 
x_983 = lean_ctor_get(x_971, 0);
x_984 = lean_ctor_get(x_971, 1);
lean_inc(x_984);
lean_inc(x_983);
lean_dec(x_971);
x_985 = l_Lean_mkNot(x_960);
x_986 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30;
x_987 = 0;
x_988 = l_Lean_Expr_forallE___override(x_986, x_959, x_985, x_987);
x_989 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_989, 0, x_983);
x_990 = 1;
x_991 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_991, 0, x_988);
lean_ctor_set(x_991, 1, x_989);
lean_ctor_set_uint8(x_991, sizeof(void*)*2, x_990);
x_992 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_992, 0, x_991);
x_993 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_993, 0, x_992);
x_994 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_994, 0, x_993);
lean_ctor_set(x_994, 1, x_984);
return x_994;
}
}
else
{
uint8_t x_995; 
lean_dec(x_960);
lean_dec(x_959);
x_995 = !lean_is_exclusive(x_971);
if (x_995 == 0)
{
return x_971;
}
else
{
lean_object* x_996; lean_object* x_997; lean_object* x_998; 
x_996 = lean_ctor_get(x_971, 0);
x_997 = lean_ctor_get(x_971, 1);
lean_inc(x_997);
lean_inc(x_996);
lean_dec(x_971);
x_998 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_998, 0, x_996);
lean_ctor_set(x_998, 1, x_997);
return x_998;
}
}
}
else
{
lean_object* x_999; lean_object* x_1000; lean_object* x_1001; lean_object* x_1002; lean_object* x_1003; lean_object* x_1004; 
x_999 = lean_ctor_get(x_963, 1);
lean_inc(x_999);
lean_dec(x_963);
x_1000 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_959);
x_1001 = lean_array_push(x_1000, x_959);
lean_inc(x_960);
x_1002 = lean_array_push(x_1001, x_960);
x_1003 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32;
x_1004 = l_Lean_Meta_mkAppM(x_1003, x_1002, x_5, x_6, x_7, x_8, x_999);
if (lean_obj_tag(x_1004) == 0)
{
uint8_t x_1005; 
x_1005 = !lean_is_exclusive(x_1004);
if (x_1005 == 0)
{
lean_object* x_1006; lean_object* x_1007; lean_object* x_1008; lean_object* x_1009; lean_object* x_1010; uint8_t x_1011; lean_object* x_1012; lean_object* x_1013; lean_object* x_1014; 
x_1006 = lean_ctor_get(x_1004, 0);
x_1007 = l_Lean_mkNot(x_959);
x_1008 = l_Lean_mkNot(x_960);
x_1009 = l_Lean_mkOr(x_1007, x_1008);
x_1010 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1010, 0, x_1006);
x_1011 = 1;
x_1012 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1012, 0, x_1009);
lean_ctor_set(x_1012, 1, x_1010);
lean_ctor_set_uint8(x_1012, sizeof(void*)*2, x_1011);
x_1013 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1013, 0, x_1012);
x_1014 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1014, 0, x_1013);
lean_ctor_set(x_1004, 0, x_1014);
return x_1004;
}
else
{
lean_object* x_1015; lean_object* x_1016; lean_object* x_1017; lean_object* x_1018; lean_object* x_1019; lean_object* x_1020; uint8_t x_1021; lean_object* x_1022; lean_object* x_1023; lean_object* x_1024; lean_object* x_1025; 
x_1015 = lean_ctor_get(x_1004, 0);
x_1016 = lean_ctor_get(x_1004, 1);
lean_inc(x_1016);
lean_inc(x_1015);
lean_dec(x_1004);
x_1017 = l_Lean_mkNot(x_959);
x_1018 = l_Lean_mkNot(x_960);
x_1019 = l_Lean_mkOr(x_1017, x_1018);
x_1020 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1020, 0, x_1015);
x_1021 = 1;
x_1022 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1022, 0, x_1019);
lean_ctor_set(x_1022, 1, x_1020);
lean_ctor_set_uint8(x_1022, sizeof(void*)*2, x_1021);
x_1023 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1023, 0, x_1022);
x_1024 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1024, 0, x_1023);
x_1025 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1025, 0, x_1024);
lean_ctor_set(x_1025, 1, x_1016);
return x_1025;
}
}
else
{
uint8_t x_1026; 
lean_dec(x_960);
lean_dec(x_959);
x_1026 = !lean_is_exclusive(x_1004);
if (x_1026 == 0)
{
return x_1004;
}
else
{
lean_object* x_1027; lean_object* x_1028; lean_object* x_1029; 
x_1027 = lean_ctor_get(x_1004, 0);
x_1028 = lean_ctor_get(x_1004, 1);
lean_inc(x_1028);
lean_inc(x_1027);
lean_dec(x_1004);
x_1029 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1029, 0, x_1027);
lean_ctor_set(x_1029, 1, x_1028);
return x_1029;
}
}
}
}
}
}
else
{
lean_object* x_1030; uint8_t x_1031; 
lean_dec(x_124);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_1030 = lean_array_get_size(x_123);
x_1031 = lean_nat_dec_eq(x_1030, x_24);
lean_dec(x_1030);
if (x_1031 == 0)
{
lean_dec(x_123);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1032; lean_object* x_1033; lean_object* x_1034; uint8_t x_1035; lean_object* x_1036; 
lean_free_object(x_28);
x_1032 = lean_ctor_get(x_32, 0);
lean_inc(x_1032);
x_1033 = lean_ctor_get(x_32, 1);
lean_inc(x_1033);
x_1034 = lean_ctor_get(x_32, 2);
lean_inc(x_1034);
x_1035 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1033);
x_1036 = l_Lean_Meta_isProp(x_1033, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1036) == 0)
{
lean_object* x_1037; lean_object* x_1038; lean_object* x_1039; uint8_t x_1076; 
x_1037 = lean_ctor_get(x_1036, 0);
lean_inc(x_1037);
x_1038 = lean_ctor_get(x_1036, 1);
lean_inc(x_1038);
lean_dec(x_1036);
x_1076 = lean_unbox(x_1037);
lean_dec(x_1037);
if (x_1076 == 0)
{
lean_object* x_1077; 
x_1077 = lean_box(0);
x_1039 = x_1077;
goto block_1075;
}
else
{
uint8_t x_1078; 
x_1078 = l_Lean_Expr_hasLooseBVars(x_1034);
if (x_1078 == 0)
{
lean_object* x_1079; lean_object* x_1080; lean_object* x_1081; lean_object* x_1082; lean_object* x_1083; lean_object* x_1084; 
lean_dec(x_1032);
lean_inc(x_1034);
x_1079 = l_Lean_mkNot(x_1034);
x_1080 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1081 = lean_array_push(x_1080, x_1033);
lean_inc(x_1081);
x_1082 = lean_array_push(x_1081, x_1079);
x_1083 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1084 = l_Lean_Meta_mkAppM(x_1083, x_1082, x_5, x_6, x_7, x_8, x_1038);
if (lean_obj_tag(x_1084) == 0)
{
lean_object* x_1085; lean_object* x_1086; lean_object* x_1087; lean_object* x_1088; lean_object* x_1089; 
x_1085 = lean_ctor_get(x_1084, 0);
lean_inc(x_1085);
x_1086 = lean_ctor_get(x_1084, 1);
lean_inc(x_1086);
lean_dec(x_1084);
x_1087 = lean_array_push(x_1081, x_1034);
x_1088 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1089 = l_Lean_Meta_mkAppM(x_1088, x_1087, x_5, x_6, x_7, x_8, x_1086);
if (lean_obj_tag(x_1089) == 0)
{
uint8_t x_1090; 
x_1090 = !lean_is_exclusive(x_1089);
if (x_1090 == 0)
{
lean_object* x_1091; lean_object* x_1092; uint8_t x_1093; lean_object* x_1094; lean_object* x_1095; lean_object* x_1096; 
x_1091 = lean_ctor_get(x_1089, 0);
x_1092 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1092, 0, x_1091);
x_1093 = 1;
x_1094 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1094, 0, x_1085);
lean_ctor_set(x_1094, 1, x_1092);
lean_ctor_set_uint8(x_1094, sizeof(void*)*2, x_1093);
x_1095 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1095, 0, x_1094);
x_1096 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1096, 0, x_1095);
lean_ctor_set(x_1089, 0, x_1096);
return x_1089;
}
else
{
lean_object* x_1097; lean_object* x_1098; lean_object* x_1099; uint8_t x_1100; lean_object* x_1101; lean_object* x_1102; lean_object* x_1103; lean_object* x_1104; 
x_1097 = lean_ctor_get(x_1089, 0);
x_1098 = lean_ctor_get(x_1089, 1);
lean_inc(x_1098);
lean_inc(x_1097);
lean_dec(x_1089);
x_1099 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1099, 0, x_1097);
x_1100 = 1;
x_1101 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1101, 0, x_1085);
lean_ctor_set(x_1101, 1, x_1099);
lean_ctor_set_uint8(x_1101, sizeof(void*)*2, x_1100);
x_1102 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1102, 0, x_1101);
x_1103 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1103, 0, x_1102);
x_1104 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1104, 0, x_1103);
lean_ctor_set(x_1104, 1, x_1098);
return x_1104;
}
}
else
{
uint8_t x_1105; 
lean_dec(x_1085);
x_1105 = !lean_is_exclusive(x_1089);
if (x_1105 == 0)
{
return x_1089;
}
else
{
lean_object* x_1106; lean_object* x_1107; lean_object* x_1108; 
x_1106 = lean_ctor_get(x_1089, 0);
x_1107 = lean_ctor_get(x_1089, 1);
lean_inc(x_1107);
lean_inc(x_1106);
lean_dec(x_1089);
x_1108 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1108, 0, x_1106);
lean_ctor_set(x_1108, 1, x_1107);
return x_1108;
}
}
}
else
{
uint8_t x_1109; 
lean_dec(x_1081);
lean_dec(x_1034);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1109 = !lean_is_exclusive(x_1084);
if (x_1109 == 0)
{
return x_1084;
}
else
{
lean_object* x_1110; lean_object* x_1111; lean_object* x_1112; 
x_1110 = lean_ctor_get(x_1084, 0);
x_1111 = lean_ctor_get(x_1084, 1);
lean_inc(x_1111);
lean_inc(x_1110);
lean_dec(x_1084);
x_1112 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1112, 0, x_1110);
lean_ctor_set(x_1112, 1, x_1111);
return x_1112;
}
}
}
else
{
lean_object* x_1113; 
x_1113 = lean_box(0);
x_1039 = x_1113;
goto block_1075;
}
}
block_1075:
{
lean_object* x_1040; lean_object* x_1041; lean_object* x_1042; lean_object* x_1043; lean_object* x_1044; lean_object* x_1045; lean_object* x_1046; 
lean_dec(x_1039);
lean_inc(x_1034);
x_1040 = l_Lean_mkNot(x_1034);
lean_inc(x_1033);
lean_inc(x_1032);
x_1041 = l_Lean_Expr_lam___override(x_1032, x_1033, x_1040, x_1035);
x_1042 = l_Lean_Expr_lam___override(x_1032, x_1033, x_1034, x_1035);
x_1043 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1044 = lean_array_push(x_1043, x_1041);
x_1045 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1046 = l_Lean_Meta_mkAppM(x_1045, x_1044, x_5, x_6, x_7, x_8, x_1038);
if (lean_obj_tag(x_1046) == 0)
{
lean_object* x_1047; lean_object* x_1048; lean_object* x_1049; lean_object* x_1050; lean_object* x_1051; 
x_1047 = lean_ctor_get(x_1046, 0);
lean_inc(x_1047);
x_1048 = lean_ctor_get(x_1046, 1);
lean_inc(x_1048);
lean_dec(x_1046);
x_1049 = lean_array_push(x_1043, x_1042);
x_1050 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1051 = l_Lean_Meta_mkAppM(x_1050, x_1049, x_5, x_6, x_7, x_8, x_1048);
if (lean_obj_tag(x_1051) == 0)
{
uint8_t x_1052; 
x_1052 = !lean_is_exclusive(x_1051);
if (x_1052 == 0)
{
lean_object* x_1053; lean_object* x_1054; uint8_t x_1055; lean_object* x_1056; lean_object* x_1057; lean_object* x_1058; 
x_1053 = lean_ctor_get(x_1051, 0);
x_1054 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1054, 0, x_1053);
x_1055 = 1;
x_1056 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1056, 0, x_1047);
lean_ctor_set(x_1056, 1, x_1054);
lean_ctor_set_uint8(x_1056, sizeof(void*)*2, x_1055);
x_1057 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1057, 0, x_1056);
x_1058 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1058, 0, x_1057);
lean_ctor_set(x_1051, 0, x_1058);
return x_1051;
}
else
{
lean_object* x_1059; lean_object* x_1060; lean_object* x_1061; uint8_t x_1062; lean_object* x_1063; lean_object* x_1064; lean_object* x_1065; lean_object* x_1066; 
x_1059 = lean_ctor_get(x_1051, 0);
x_1060 = lean_ctor_get(x_1051, 1);
lean_inc(x_1060);
lean_inc(x_1059);
lean_dec(x_1051);
x_1061 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1061, 0, x_1059);
x_1062 = 1;
x_1063 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1063, 0, x_1047);
lean_ctor_set(x_1063, 1, x_1061);
lean_ctor_set_uint8(x_1063, sizeof(void*)*2, x_1062);
x_1064 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1064, 0, x_1063);
x_1065 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1065, 0, x_1064);
x_1066 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1066, 0, x_1065);
lean_ctor_set(x_1066, 1, x_1060);
return x_1066;
}
}
else
{
uint8_t x_1067; 
lean_dec(x_1047);
x_1067 = !lean_is_exclusive(x_1051);
if (x_1067 == 0)
{
return x_1051;
}
else
{
lean_object* x_1068; lean_object* x_1069; lean_object* x_1070; 
x_1068 = lean_ctor_get(x_1051, 0);
x_1069 = lean_ctor_get(x_1051, 1);
lean_inc(x_1069);
lean_inc(x_1068);
lean_dec(x_1051);
x_1070 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1070, 0, x_1068);
lean_ctor_set(x_1070, 1, x_1069);
return x_1070;
}
}
}
else
{
uint8_t x_1071; 
lean_dec(x_1042);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1071 = !lean_is_exclusive(x_1046);
if (x_1071 == 0)
{
return x_1046;
}
else
{
lean_object* x_1072; lean_object* x_1073; lean_object* x_1074; 
x_1072 = lean_ctor_get(x_1046, 0);
x_1073 = lean_ctor_get(x_1046, 1);
lean_inc(x_1073);
lean_inc(x_1072);
lean_dec(x_1046);
x_1074 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1074, 0, x_1072);
lean_ctor_set(x_1074, 1, x_1073);
return x_1074;
}
}
}
}
else
{
uint8_t x_1114; 
lean_dec(x_1034);
lean_dec(x_1033);
lean_dec(x_1032);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1114 = !lean_is_exclusive(x_1036);
if (x_1114 == 0)
{
return x_1036;
}
else
{
lean_object* x_1115; lean_object* x_1116; lean_object* x_1117; 
x_1115 = lean_ctor_get(x_1036, 0);
x_1116 = lean_ctor_get(x_1036, 1);
lean_inc(x_1116);
lean_inc(x_1115);
lean_dec(x_1036);
x_1117 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1117, 0, x_1115);
lean_ctor_set(x_1117, 1, x_1116);
return x_1117;
}
}
}
else
{
lean_object* x_1118; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1118 = lean_box(0);
lean_ctor_set(x_28, 0, x_1118);
return x_28;
}
}
else
{
lean_object* x_1119; lean_object* x_1120; lean_object* x_1121; lean_object* x_1122; lean_object* x_1123; lean_object* x_1124; 
lean_dec(x_32);
lean_free_object(x_28);
x_1119 = lean_unsigned_to_nat(0u);
x_1120 = lean_array_fget(x_123, x_1119);
lean_dec(x_123);
x_1121 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
lean_inc(x_1120);
x_1122 = lean_array_push(x_1121, x_1120);
x_1123 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34;
x_1124 = l_Lean_Meta_mkAppM(x_1123, x_1122, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1124) == 0)
{
uint8_t x_1125; 
x_1125 = !lean_is_exclusive(x_1124);
if (x_1125 == 0)
{
lean_object* x_1126; lean_object* x_1127; uint8_t x_1128; lean_object* x_1129; lean_object* x_1130; lean_object* x_1131; 
x_1126 = lean_ctor_get(x_1124, 0);
x_1127 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1127, 0, x_1126);
x_1128 = 1;
x_1129 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1129, 0, x_1120);
lean_ctor_set(x_1129, 1, x_1127);
lean_ctor_set_uint8(x_1129, sizeof(void*)*2, x_1128);
x_1130 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1130, 0, x_1129);
x_1131 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1131, 0, x_1130);
lean_ctor_set(x_1124, 0, x_1131);
return x_1124;
}
else
{
lean_object* x_1132; lean_object* x_1133; lean_object* x_1134; uint8_t x_1135; lean_object* x_1136; lean_object* x_1137; lean_object* x_1138; lean_object* x_1139; 
x_1132 = lean_ctor_get(x_1124, 0);
x_1133 = lean_ctor_get(x_1124, 1);
lean_inc(x_1133);
lean_inc(x_1132);
lean_dec(x_1124);
x_1134 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1134, 0, x_1132);
x_1135 = 1;
x_1136 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1136, 0, x_1120);
lean_ctor_set(x_1136, 1, x_1134);
lean_ctor_set_uint8(x_1136, sizeof(void*)*2, x_1135);
x_1137 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1137, 0, x_1136);
x_1138 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1138, 0, x_1137);
x_1139 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1139, 0, x_1138);
lean_ctor_set(x_1139, 1, x_1133);
return x_1139;
}
}
else
{
uint8_t x_1140; 
lean_dec(x_1120);
x_1140 = !lean_is_exclusive(x_1124);
if (x_1140 == 0)
{
return x_1124;
}
else
{
lean_object* x_1141; lean_object* x_1142; lean_object* x_1143; 
x_1141 = lean_ctor_get(x_1124, 0);
x_1142 = lean_ctor_get(x_1124, 1);
lean_inc(x_1142);
lean_inc(x_1141);
lean_dec(x_1124);
x_1143 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1143, 0, x_1141);
lean_ctor_set(x_1143, 1, x_1142);
return x_1143;
}
}
}
}
}
case 1:
{
lean_object* x_1144; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_1144 = lean_ctor_get(x_122, 0);
lean_inc(x_1144);
switch (lean_obj_tag(x_1144)) {
case 0:
{
lean_object* x_1145; lean_object* x_1146; lean_object* x_1147; lean_object* x_1148; uint8_t x_1149; 
x_1145 = lean_ctor_get(x_33, 1);
lean_inc(x_1145);
lean_dec(x_33);
x_1146 = lean_ctor_get(x_34, 1);
lean_inc(x_1146);
lean_dec(x_34);
x_1147 = lean_ctor_get(x_122, 1);
lean_inc(x_1147);
lean_dec(x_122);
x_1148 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35;
x_1149 = lean_string_dec_eq(x_1147, x_1148);
if (x_1149 == 0)
{
lean_object* x_1150; uint8_t x_1151; 
x_1150 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36;
x_1151 = lean_string_dec_eq(x_1147, x_1150);
if (x_1151 == 0)
{
lean_object* x_1152; uint8_t x_1153; 
x_1152 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37;
x_1153 = lean_string_dec_eq(x_1147, x_1152);
if (x_1153 == 0)
{
lean_object* x_1154; uint8_t x_1155; 
x_1154 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38;
x_1155 = lean_string_dec_eq(x_1147, x_1154);
if (x_1155 == 0)
{
lean_object* x_1156; uint8_t x_1157; 
lean_dec(x_1);
x_1156 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19;
x_1157 = lean_string_dec_eq(x_1147, x_1156);
lean_dec(x_1147);
if (x_1157 == 0)
{
lean_dec(x_1146);
lean_dec(x_1145);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1158; lean_object* x_1159; lean_object* x_1160; uint8_t x_1161; lean_object* x_1162; 
lean_free_object(x_28);
x_1158 = lean_ctor_get(x_32, 0);
lean_inc(x_1158);
x_1159 = lean_ctor_get(x_32, 1);
lean_inc(x_1159);
x_1160 = lean_ctor_get(x_32, 2);
lean_inc(x_1160);
x_1161 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1159);
x_1162 = l_Lean_Meta_isProp(x_1159, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1162) == 0)
{
lean_object* x_1163; lean_object* x_1164; lean_object* x_1165; uint8_t x_1202; 
x_1163 = lean_ctor_get(x_1162, 0);
lean_inc(x_1163);
x_1164 = lean_ctor_get(x_1162, 1);
lean_inc(x_1164);
lean_dec(x_1162);
x_1202 = lean_unbox(x_1163);
lean_dec(x_1163);
if (x_1202 == 0)
{
lean_object* x_1203; 
x_1203 = lean_box(0);
x_1165 = x_1203;
goto block_1201;
}
else
{
uint8_t x_1204; 
x_1204 = l_Lean_Expr_hasLooseBVars(x_1160);
if (x_1204 == 0)
{
lean_object* x_1205; lean_object* x_1206; lean_object* x_1207; lean_object* x_1208; lean_object* x_1209; lean_object* x_1210; 
lean_dec(x_1158);
lean_inc(x_1160);
x_1205 = l_Lean_mkNot(x_1160);
x_1206 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1207 = lean_array_push(x_1206, x_1159);
lean_inc(x_1207);
x_1208 = lean_array_push(x_1207, x_1205);
x_1209 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1210 = l_Lean_Meta_mkAppM(x_1209, x_1208, x_5, x_6, x_7, x_8, x_1164);
if (lean_obj_tag(x_1210) == 0)
{
lean_object* x_1211; lean_object* x_1212; lean_object* x_1213; lean_object* x_1214; lean_object* x_1215; 
x_1211 = lean_ctor_get(x_1210, 0);
lean_inc(x_1211);
x_1212 = lean_ctor_get(x_1210, 1);
lean_inc(x_1212);
lean_dec(x_1210);
x_1213 = lean_array_push(x_1207, x_1160);
x_1214 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1215 = l_Lean_Meta_mkAppM(x_1214, x_1213, x_5, x_6, x_7, x_8, x_1212);
if (lean_obj_tag(x_1215) == 0)
{
uint8_t x_1216; 
x_1216 = !lean_is_exclusive(x_1215);
if (x_1216 == 0)
{
lean_object* x_1217; lean_object* x_1218; uint8_t x_1219; lean_object* x_1220; lean_object* x_1221; lean_object* x_1222; 
x_1217 = lean_ctor_get(x_1215, 0);
x_1218 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1218, 0, x_1217);
x_1219 = 1;
x_1220 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1220, 0, x_1211);
lean_ctor_set(x_1220, 1, x_1218);
lean_ctor_set_uint8(x_1220, sizeof(void*)*2, x_1219);
x_1221 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1221, 0, x_1220);
x_1222 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1222, 0, x_1221);
lean_ctor_set(x_1215, 0, x_1222);
return x_1215;
}
else
{
lean_object* x_1223; lean_object* x_1224; lean_object* x_1225; uint8_t x_1226; lean_object* x_1227; lean_object* x_1228; lean_object* x_1229; lean_object* x_1230; 
x_1223 = lean_ctor_get(x_1215, 0);
x_1224 = lean_ctor_get(x_1215, 1);
lean_inc(x_1224);
lean_inc(x_1223);
lean_dec(x_1215);
x_1225 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1225, 0, x_1223);
x_1226 = 1;
x_1227 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1227, 0, x_1211);
lean_ctor_set(x_1227, 1, x_1225);
lean_ctor_set_uint8(x_1227, sizeof(void*)*2, x_1226);
x_1228 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1228, 0, x_1227);
x_1229 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1229, 0, x_1228);
x_1230 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1230, 0, x_1229);
lean_ctor_set(x_1230, 1, x_1224);
return x_1230;
}
}
else
{
uint8_t x_1231; 
lean_dec(x_1211);
x_1231 = !lean_is_exclusive(x_1215);
if (x_1231 == 0)
{
return x_1215;
}
else
{
lean_object* x_1232; lean_object* x_1233; lean_object* x_1234; 
x_1232 = lean_ctor_get(x_1215, 0);
x_1233 = lean_ctor_get(x_1215, 1);
lean_inc(x_1233);
lean_inc(x_1232);
lean_dec(x_1215);
x_1234 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1234, 0, x_1232);
lean_ctor_set(x_1234, 1, x_1233);
return x_1234;
}
}
}
else
{
uint8_t x_1235; 
lean_dec(x_1207);
lean_dec(x_1160);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1235 = !lean_is_exclusive(x_1210);
if (x_1235 == 0)
{
return x_1210;
}
else
{
lean_object* x_1236; lean_object* x_1237; lean_object* x_1238; 
x_1236 = lean_ctor_get(x_1210, 0);
x_1237 = lean_ctor_get(x_1210, 1);
lean_inc(x_1237);
lean_inc(x_1236);
lean_dec(x_1210);
x_1238 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1238, 0, x_1236);
lean_ctor_set(x_1238, 1, x_1237);
return x_1238;
}
}
}
else
{
lean_object* x_1239; 
x_1239 = lean_box(0);
x_1165 = x_1239;
goto block_1201;
}
}
block_1201:
{
lean_object* x_1166; lean_object* x_1167; lean_object* x_1168; lean_object* x_1169; lean_object* x_1170; lean_object* x_1171; lean_object* x_1172; 
lean_dec(x_1165);
lean_inc(x_1160);
x_1166 = l_Lean_mkNot(x_1160);
lean_inc(x_1159);
lean_inc(x_1158);
x_1167 = l_Lean_Expr_lam___override(x_1158, x_1159, x_1166, x_1161);
x_1168 = l_Lean_Expr_lam___override(x_1158, x_1159, x_1160, x_1161);
x_1169 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1170 = lean_array_push(x_1169, x_1167);
x_1171 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1172 = l_Lean_Meta_mkAppM(x_1171, x_1170, x_5, x_6, x_7, x_8, x_1164);
if (lean_obj_tag(x_1172) == 0)
{
lean_object* x_1173; lean_object* x_1174; lean_object* x_1175; lean_object* x_1176; lean_object* x_1177; 
x_1173 = lean_ctor_get(x_1172, 0);
lean_inc(x_1173);
x_1174 = lean_ctor_get(x_1172, 1);
lean_inc(x_1174);
lean_dec(x_1172);
x_1175 = lean_array_push(x_1169, x_1168);
x_1176 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1177 = l_Lean_Meta_mkAppM(x_1176, x_1175, x_5, x_6, x_7, x_8, x_1174);
if (lean_obj_tag(x_1177) == 0)
{
uint8_t x_1178; 
x_1178 = !lean_is_exclusive(x_1177);
if (x_1178 == 0)
{
lean_object* x_1179; lean_object* x_1180; uint8_t x_1181; lean_object* x_1182; lean_object* x_1183; lean_object* x_1184; 
x_1179 = lean_ctor_get(x_1177, 0);
x_1180 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1180, 0, x_1179);
x_1181 = 1;
x_1182 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1182, 0, x_1173);
lean_ctor_set(x_1182, 1, x_1180);
lean_ctor_set_uint8(x_1182, sizeof(void*)*2, x_1181);
x_1183 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1183, 0, x_1182);
x_1184 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1184, 0, x_1183);
lean_ctor_set(x_1177, 0, x_1184);
return x_1177;
}
else
{
lean_object* x_1185; lean_object* x_1186; lean_object* x_1187; uint8_t x_1188; lean_object* x_1189; lean_object* x_1190; lean_object* x_1191; lean_object* x_1192; 
x_1185 = lean_ctor_get(x_1177, 0);
x_1186 = lean_ctor_get(x_1177, 1);
lean_inc(x_1186);
lean_inc(x_1185);
lean_dec(x_1177);
x_1187 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1187, 0, x_1185);
x_1188 = 1;
x_1189 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1189, 0, x_1173);
lean_ctor_set(x_1189, 1, x_1187);
lean_ctor_set_uint8(x_1189, sizeof(void*)*2, x_1188);
x_1190 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1190, 0, x_1189);
x_1191 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1191, 0, x_1190);
x_1192 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1192, 0, x_1191);
lean_ctor_set(x_1192, 1, x_1186);
return x_1192;
}
}
else
{
uint8_t x_1193; 
lean_dec(x_1173);
x_1193 = !lean_is_exclusive(x_1177);
if (x_1193 == 0)
{
return x_1177;
}
else
{
lean_object* x_1194; lean_object* x_1195; lean_object* x_1196; 
x_1194 = lean_ctor_get(x_1177, 0);
x_1195 = lean_ctor_get(x_1177, 1);
lean_inc(x_1195);
lean_inc(x_1194);
lean_dec(x_1177);
x_1196 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1196, 0, x_1194);
lean_ctor_set(x_1196, 1, x_1195);
return x_1196;
}
}
}
else
{
uint8_t x_1197; 
lean_dec(x_1168);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1197 = !lean_is_exclusive(x_1172);
if (x_1197 == 0)
{
return x_1172;
}
else
{
lean_object* x_1198; lean_object* x_1199; lean_object* x_1200; 
x_1198 = lean_ctor_get(x_1172, 0);
x_1199 = lean_ctor_get(x_1172, 1);
lean_inc(x_1199);
lean_inc(x_1198);
lean_dec(x_1172);
x_1200 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1200, 0, x_1198);
lean_ctor_set(x_1200, 1, x_1199);
return x_1200;
}
}
}
}
else
{
uint8_t x_1240; 
lean_dec(x_1160);
lean_dec(x_1159);
lean_dec(x_1158);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1240 = !lean_is_exclusive(x_1162);
if (x_1240 == 0)
{
return x_1162;
}
else
{
lean_object* x_1241; lean_object* x_1242; lean_object* x_1243; 
x_1241 = lean_ctor_get(x_1162, 0);
x_1242 = lean_ctor_get(x_1162, 1);
lean_inc(x_1242);
lean_inc(x_1241);
lean_dec(x_1162);
x_1243 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1243, 0, x_1241);
lean_ctor_set(x_1243, 1, x_1242);
return x_1243;
}
}
}
else
{
lean_object* x_1244; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1244 = lean_box(0);
lean_ctor_set(x_28, 0, x_1244);
return x_28;
}
}
else
{
lean_object* x_1245; uint8_t x_1246; 
x_1245 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39;
x_1246 = lean_string_dec_eq(x_1146, x_1245);
lean_dec(x_1146);
if (x_1246 == 0)
{
lean_dec(x_1145);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1247; lean_object* x_1248; lean_object* x_1249; uint8_t x_1250; lean_object* x_1251; 
lean_free_object(x_28);
x_1247 = lean_ctor_get(x_32, 0);
lean_inc(x_1247);
x_1248 = lean_ctor_get(x_32, 1);
lean_inc(x_1248);
x_1249 = lean_ctor_get(x_32, 2);
lean_inc(x_1249);
x_1250 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1248);
x_1251 = l_Lean_Meta_isProp(x_1248, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1251) == 0)
{
lean_object* x_1252; lean_object* x_1253; lean_object* x_1254; uint8_t x_1291; 
x_1252 = lean_ctor_get(x_1251, 0);
lean_inc(x_1252);
x_1253 = lean_ctor_get(x_1251, 1);
lean_inc(x_1253);
lean_dec(x_1251);
x_1291 = lean_unbox(x_1252);
lean_dec(x_1252);
if (x_1291 == 0)
{
lean_object* x_1292; 
x_1292 = lean_box(0);
x_1254 = x_1292;
goto block_1290;
}
else
{
uint8_t x_1293; 
x_1293 = l_Lean_Expr_hasLooseBVars(x_1249);
if (x_1293 == 0)
{
lean_object* x_1294; lean_object* x_1295; lean_object* x_1296; lean_object* x_1297; lean_object* x_1298; lean_object* x_1299; 
lean_dec(x_1247);
lean_inc(x_1249);
x_1294 = l_Lean_mkNot(x_1249);
x_1295 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1296 = lean_array_push(x_1295, x_1248);
lean_inc(x_1296);
x_1297 = lean_array_push(x_1296, x_1294);
x_1298 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1299 = l_Lean_Meta_mkAppM(x_1298, x_1297, x_5, x_6, x_7, x_8, x_1253);
if (lean_obj_tag(x_1299) == 0)
{
lean_object* x_1300; lean_object* x_1301; lean_object* x_1302; lean_object* x_1303; lean_object* x_1304; 
x_1300 = lean_ctor_get(x_1299, 0);
lean_inc(x_1300);
x_1301 = lean_ctor_get(x_1299, 1);
lean_inc(x_1301);
lean_dec(x_1299);
x_1302 = lean_array_push(x_1296, x_1249);
x_1303 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1304 = l_Lean_Meta_mkAppM(x_1303, x_1302, x_5, x_6, x_7, x_8, x_1301);
if (lean_obj_tag(x_1304) == 0)
{
uint8_t x_1305; 
x_1305 = !lean_is_exclusive(x_1304);
if (x_1305 == 0)
{
lean_object* x_1306; lean_object* x_1307; uint8_t x_1308; lean_object* x_1309; lean_object* x_1310; lean_object* x_1311; 
x_1306 = lean_ctor_get(x_1304, 0);
x_1307 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1307, 0, x_1306);
x_1308 = 1;
x_1309 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1309, 0, x_1300);
lean_ctor_set(x_1309, 1, x_1307);
lean_ctor_set_uint8(x_1309, sizeof(void*)*2, x_1308);
x_1310 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1310, 0, x_1309);
x_1311 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1311, 0, x_1310);
lean_ctor_set(x_1304, 0, x_1311);
return x_1304;
}
else
{
lean_object* x_1312; lean_object* x_1313; lean_object* x_1314; uint8_t x_1315; lean_object* x_1316; lean_object* x_1317; lean_object* x_1318; lean_object* x_1319; 
x_1312 = lean_ctor_get(x_1304, 0);
x_1313 = lean_ctor_get(x_1304, 1);
lean_inc(x_1313);
lean_inc(x_1312);
lean_dec(x_1304);
x_1314 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1314, 0, x_1312);
x_1315 = 1;
x_1316 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1316, 0, x_1300);
lean_ctor_set(x_1316, 1, x_1314);
lean_ctor_set_uint8(x_1316, sizeof(void*)*2, x_1315);
x_1317 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1317, 0, x_1316);
x_1318 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1318, 0, x_1317);
x_1319 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1319, 0, x_1318);
lean_ctor_set(x_1319, 1, x_1313);
return x_1319;
}
}
else
{
uint8_t x_1320; 
lean_dec(x_1300);
x_1320 = !lean_is_exclusive(x_1304);
if (x_1320 == 0)
{
return x_1304;
}
else
{
lean_object* x_1321; lean_object* x_1322; lean_object* x_1323; 
x_1321 = lean_ctor_get(x_1304, 0);
x_1322 = lean_ctor_get(x_1304, 1);
lean_inc(x_1322);
lean_inc(x_1321);
lean_dec(x_1304);
x_1323 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1323, 0, x_1321);
lean_ctor_set(x_1323, 1, x_1322);
return x_1323;
}
}
}
else
{
uint8_t x_1324; 
lean_dec(x_1296);
lean_dec(x_1249);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1324 = !lean_is_exclusive(x_1299);
if (x_1324 == 0)
{
return x_1299;
}
else
{
lean_object* x_1325; lean_object* x_1326; lean_object* x_1327; 
x_1325 = lean_ctor_get(x_1299, 0);
x_1326 = lean_ctor_get(x_1299, 1);
lean_inc(x_1326);
lean_inc(x_1325);
lean_dec(x_1299);
x_1327 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1327, 0, x_1325);
lean_ctor_set(x_1327, 1, x_1326);
return x_1327;
}
}
}
else
{
lean_object* x_1328; 
x_1328 = lean_box(0);
x_1254 = x_1328;
goto block_1290;
}
}
block_1290:
{
lean_object* x_1255; lean_object* x_1256; lean_object* x_1257; lean_object* x_1258; lean_object* x_1259; lean_object* x_1260; lean_object* x_1261; 
lean_dec(x_1254);
lean_inc(x_1249);
x_1255 = l_Lean_mkNot(x_1249);
lean_inc(x_1248);
lean_inc(x_1247);
x_1256 = l_Lean_Expr_lam___override(x_1247, x_1248, x_1255, x_1250);
x_1257 = l_Lean_Expr_lam___override(x_1247, x_1248, x_1249, x_1250);
x_1258 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1259 = lean_array_push(x_1258, x_1256);
x_1260 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1261 = l_Lean_Meta_mkAppM(x_1260, x_1259, x_5, x_6, x_7, x_8, x_1253);
if (lean_obj_tag(x_1261) == 0)
{
lean_object* x_1262; lean_object* x_1263; lean_object* x_1264; lean_object* x_1265; lean_object* x_1266; 
x_1262 = lean_ctor_get(x_1261, 0);
lean_inc(x_1262);
x_1263 = lean_ctor_get(x_1261, 1);
lean_inc(x_1263);
lean_dec(x_1261);
x_1264 = lean_array_push(x_1258, x_1257);
x_1265 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1266 = l_Lean_Meta_mkAppM(x_1265, x_1264, x_5, x_6, x_7, x_8, x_1263);
if (lean_obj_tag(x_1266) == 0)
{
uint8_t x_1267; 
x_1267 = !lean_is_exclusive(x_1266);
if (x_1267 == 0)
{
lean_object* x_1268; lean_object* x_1269; uint8_t x_1270; lean_object* x_1271; lean_object* x_1272; lean_object* x_1273; 
x_1268 = lean_ctor_get(x_1266, 0);
x_1269 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1269, 0, x_1268);
x_1270 = 1;
x_1271 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1271, 0, x_1262);
lean_ctor_set(x_1271, 1, x_1269);
lean_ctor_set_uint8(x_1271, sizeof(void*)*2, x_1270);
x_1272 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1272, 0, x_1271);
x_1273 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1273, 0, x_1272);
lean_ctor_set(x_1266, 0, x_1273);
return x_1266;
}
else
{
lean_object* x_1274; lean_object* x_1275; lean_object* x_1276; uint8_t x_1277; lean_object* x_1278; lean_object* x_1279; lean_object* x_1280; lean_object* x_1281; 
x_1274 = lean_ctor_get(x_1266, 0);
x_1275 = lean_ctor_get(x_1266, 1);
lean_inc(x_1275);
lean_inc(x_1274);
lean_dec(x_1266);
x_1276 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1276, 0, x_1274);
x_1277 = 1;
x_1278 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1278, 0, x_1262);
lean_ctor_set(x_1278, 1, x_1276);
lean_ctor_set_uint8(x_1278, sizeof(void*)*2, x_1277);
x_1279 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1279, 0, x_1278);
x_1280 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1280, 0, x_1279);
x_1281 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1281, 0, x_1280);
lean_ctor_set(x_1281, 1, x_1275);
return x_1281;
}
}
else
{
uint8_t x_1282; 
lean_dec(x_1262);
x_1282 = !lean_is_exclusive(x_1266);
if (x_1282 == 0)
{
return x_1266;
}
else
{
lean_object* x_1283; lean_object* x_1284; lean_object* x_1285; 
x_1283 = lean_ctor_get(x_1266, 0);
x_1284 = lean_ctor_get(x_1266, 1);
lean_inc(x_1284);
lean_inc(x_1283);
lean_dec(x_1266);
x_1285 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1285, 0, x_1283);
lean_ctor_set(x_1285, 1, x_1284);
return x_1285;
}
}
}
else
{
uint8_t x_1286; 
lean_dec(x_1257);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1286 = !lean_is_exclusive(x_1261);
if (x_1286 == 0)
{
return x_1261;
}
else
{
lean_object* x_1287; lean_object* x_1288; lean_object* x_1289; 
x_1287 = lean_ctor_get(x_1261, 0);
x_1288 = lean_ctor_get(x_1261, 1);
lean_inc(x_1288);
lean_inc(x_1287);
lean_dec(x_1261);
x_1289 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1289, 0, x_1287);
lean_ctor_set(x_1289, 1, x_1288);
return x_1289;
}
}
}
}
else
{
uint8_t x_1329; 
lean_dec(x_1249);
lean_dec(x_1248);
lean_dec(x_1247);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1329 = !lean_is_exclusive(x_1251);
if (x_1329 == 0)
{
return x_1251;
}
else
{
lean_object* x_1330; lean_object* x_1331; lean_object* x_1332; 
x_1330 = lean_ctor_get(x_1251, 0);
x_1331 = lean_ctor_get(x_1251, 1);
lean_inc(x_1331);
lean_inc(x_1330);
lean_dec(x_1251);
x_1332 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1332, 0, x_1330);
lean_ctor_set(x_1332, 1, x_1331);
return x_1332;
}
}
}
else
{
lean_object* x_1333; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1333 = lean_box(0);
lean_ctor_set(x_28, 0, x_1333);
return x_28;
}
}
else
{
lean_object* x_1334; lean_object* x_1335; uint8_t x_1336; 
x_1334 = lean_array_get_size(x_1145);
x_1335 = lean_unsigned_to_nat(2u);
x_1336 = lean_nat_dec_eq(x_1334, x_1335);
lean_dec(x_1334);
if (x_1336 == 0)
{
lean_dec(x_1145);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1337; lean_object* x_1338; lean_object* x_1339; uint8_t x_1340; lean_object* x_1341; 
lean_free_object(x_28);
x_1337 = lean_ctor_get(x_32, 0);
lean_inc(x_1337);
x_1338 = lean_ctor_get(x_32, 1);
lean_inc(x_1338);
x_1339 = lean_ctor_get(x_32, 2);
lean_inc(x_1339);
x_1340 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1338);
x_1341 = l_Lean_Meta_isProp(x_1338, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1341) == 0)
{
lean_object* x_1342; lean_object* x_1343; lean_object* x_1344; uint8_t x_1381; 
x_1342 = lean_ctor_get(x_1341, 0);
lean_inc(x_1342);
x_1343 = lean_ctor_get(x_1341, 1);
lean_inc(x_1343);
lean_dec(x_1341);
x_1381 = lean_unbox(x_1342);
lean_dec(x_1342);
if (x_1381 == 0)
{
lean_object* x_1382; 
x_1382 = lean_box(0);
x_1344 = x_1382;
goto block_1380;
}
else
{
uint8_t x_1383; 
x_1383 = l_Lean_Expr_hasLooseBVars(x_1339);
if (x_1383 == 0)
{
lean_object* x_1384; lean_object* x_1385; lean_object* x_1386; lean_object* x_1387; lean_object* x_1388; lean_object* x_1389; 
lean_dec(x_1337);
lean_inc(x_1339);
x_1384 = l_Lean_mkNot(x_1339);
x_1385 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1386 = lean_array_push(x_1385, x_1338);
lean_inc(x_1386);
x_1387 = lean_array_push(x_1386, x_1384);
x_1388 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1389 = l_Lean_Meta_mkAppM(x_1388, x_1387, x_5, x_6, x_7, x_8, x_1343);
if (lean_obj_tag(x_1389) == 0)
{
lean_object* x_1390; lean_object* x_1391; lean_object* x_1392; lean_object* x_1393; lean_object* x_1394; 
x_1390 = lean_ctor_get(x_1389, 0);
lean_inc(x_1390);
x_1391 = lean_ctor_get(x_1389, 1);
lean_inc(x_1391);
lean_dec(x_1389);
x_1392 = lean_array_push(x_1386, x_1339);
x_1393 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1394 = l_Lean_Meta_mkAppM(x_1393, x_1392, x_5, x_6, x_7, x_8, x_1391);
if (lean_obj_tag(x_1394) == 0)
{
uint8_t x_1395; 
x_1395 = !lean_is_exclusive(x_1394);
if (x_1395 == 0)
{
lean_object* x_1396; lean_object* x_1397; uint8_t x_1398; lean_object* x_1399; lean_object* x_1400; lean_object* x_1401; 
x_1396 = lean_ctor_get(x_1394, 0);
x_1397 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1397, 0, x_1396);
x_1398 = 1;
x_1399 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1399, 0, x_1390);
lean_ctor_set(x_1399, 1, x_1397);
lean_ctor_set_uint8(x_1399, sizeof(void*)*2, x_1398);
x_1400 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1400, 0, x_1399);
x_1401 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1401, 0, x_1400);
lean_ctor_set(x_1394, 0, x_1401);
return x_1394;
}
else
{
lean_object* x_1402; lean_object* x_1403; lean_object* x_1404; uint8_t x_1405; lean_object* x_1406; lean_object* x_1407; lean_object* x_1408; lean_object* x_1409; 
x_1402 = lean_ctor_get(x_1394, 0);
x_1403 = lean_ctor_get(x_1394, 1);
lean_inc(x_1403);
lean_inc(x_1402);
lean_dec(x_1394);
x_1404 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1404, 0, x_1402);
x_1405 = 1;
x_1406 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1406, 0, x_1390);
lean_ctor_set(x_1406, 1, x_1404);
lean_ctor_set_uint8(x_1406, sizeof(void*)*2, x_1405);
x_1407 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1407, 0, x_1406);
x_1408 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1408, 0, x_1407);
x_1409 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1409, 0, x_1408);
lean_ctor_set(x_1409, 1, x_1403);
return x_1409;
}
}
else
{
uint8_t x_1410; 
lean_dec(x_1390);
x_1410 = !lean_is_exclusive(x_1394);
if (x_1410 == 0)
{
return x_1394;
}
else
{
lean_object* x_1411; lean_object* x_1412; lean_object* x_1413; 
x_1411 = lean_ctor_get(x_1394, 0);
x_1412 = lean_ctor_get(x_1394, 1);
lean_inc(x_1412);
lean_inc(x_1411);
lean_dec(x_1394);
x_1413 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1413, 0, x_1411);
lean_ctor_set(x_1413, 1, x_1412);
return x_1413;
}
}
}
else
{
uint8_t x_1414; 
lean_dec(x_1386);
lean_dec(x_1339);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1414 = !lean_is_exclusive(x_1389);
if (x_1414 == 0)
{
return x_1389;
}
else
{
lean_object* x_1415; lean_object* x_1416; lean_object* x_1417; 
x_1415 = lean_ctor_get(x_1389, 0);
x_1416 = lean_ctor_get(x_1389, 1);
lean_inc(x_1416);
lean_inc(x_1415);
lean_dec(x_1389);
x_1417 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1417, 0, x_1415);
lean_ctor_set(x_1417, 1, x_1416);
return x_1417;
}
}
}
else
{
lean_object* x_1418; 
x_1418 = lean_box(0);
x_1344 = x_1418;
goto block_1380;
}
}
block_1380:
{
lean_object* x_1345; lean_object* x_1346; lean_object* x_1347; lean_object* x_1348; lean_object* x_1349; lean_object* x_1350; lean_object* x_1351; 
lean_dec(x_1344);
lean_inc(x_1339);
x_1345 = l_Lean_mkNot(x_1339);
lean_inc(x_1338);
lean_inc(x_1337);
x_1346 = l_Lean_Expr_lam___override(x_1337, x_1338, x_1345, x_1340);
x_1347 = l_Lean_Expr_lam___override(x_1337, x_1338, x_1339, x_1340);
x_1348 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1349 = lean_array_push(x_1348, x_1346);
x_1350 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1351 = l_Lean_Meta_mkAppM(x_1350, x_1349, x_5, x_6, x_7, x_8, x_1343);
if (lean_obj_tag(x_1351) == 0)
{
lean_object* x_1352; lean_object* x_1353; lean_object* x_1354; lean_object* x_1355; lean_object* x_1356; 
x_1352 = lean_ctor_get(x_1351, 0);
lean_inc(x_1352);
x_1353 = lean_ctor_get(x_1351, 1);
lean_inc(x_1353);
lean_dec(x_1351);
x_1354 = lean_array_push(x_1348, x_1347);
x_1355 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1356 = l_Lean_Meta_mkAppM(x_1355, x_1354, x_5, x_6, x_7, x_8, x_1353);
if (lean_obj_tag(x_1356) == 0)
{
uint8_t x_1357; 
x_1357 = !lean_is_exclusive(x_1356);
if (x_1357 == 0)
{
lean_object* x_1358; lean_object* x_1359; uint8_t x_1360; lean_object* x_1361; lean_object* x_1362; lean_object* x_1363; 
x_1358 = lean_ctor_get(x_1356, 0);
x_1359 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1359, 0, x_1358);
x_1360 = 1;
x_1361 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1361, 0, x_1352);
lean_ctor_set(x_1361, 1, x_1359);
lean_ctor_set_uint8(x_1361, sizeof(void*)*2, x_1360);
x_1362 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1362, 0, x_1361);
x_1363 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1363, 0, x_1362);
lean_ctor_set(x_1356, 0, x_1363);
return x_1356;
}
else
{
lean_object* x_1364; lean_object* x_1365; lean_object* x_1366; uint8_t x_1367; lean_object* x_1368; lean_object* x_1369; lean_object* x_1370; lean_object* x_1371; 
x_1364 = lean_ctor_get(x_1356, 0);
x_1365 = lean_ctor_get(x_1356, 1);
lean_inc(x_1365);
lean_inc(x_1364);
lean_dec(x_1356);
x_1366 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1366, 0, x_1364);
x_1367 = 1;
x_1368 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1368, 0, x_1352);
lean_ctor_set(x_1368, 1, x_1366);
lean_ctor_set_uint8(x_1368, sizeof(void*)*2, x_1367);
x_1369 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1369, 0, x_1368);
x_1370 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1370, 0, x_1369);
x_1371 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1371, 0, x_1370);
lean_ctor_set(x_1371, 1, x_1365);
return x_1371;
}
}
else
{
uint8_t x_1372; 
lean_dec(x_1352);
x_1372 = !lean_is_exclusive(x_1356);
if (x_1372 == 0)
{
return x_1356;
}
else
{
lean_object* x_1373; lean_object* x_1374; lean_object* x_1375; 
x_1373 = lean_ctor_get(x_1356, 0);
x_1374 = lean_ctor_get(x_1356, 1);
lean_inc(x_1374);
lean_inc(x_1373);
lean_dec(x_1356);
x_1375 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1375, 0, x_1373);
lean_ctor_set(x_1375, 1, x_1374);
return x_1375;
}
}
}
else
{
uint8_t x_1376; 
lean_dec(x_1347);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1376 = !lean_is_exclusive(x_1351);
if (x_1376 == 0)
{
return x_1351;
}
else
{
lean_object* x_1377; lean_object* x_1378; lean_object* x_1379; 
x_1377 = lean_ctor_get(x_1351, 0);
x_1378 = lean_ctor_get(x_1351, 1);
lean_inc(x_1378);
lean_inc(x_1377);
lean_dec(x_1351);
x_1379 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1379, 0, x_1377);
lean_ctor_set(x_1379, 1, x_1378);
return x_1379;
}
}
}
}
else
{
uint8_t x_1419; 
lean_dec(x_1339);
lean_dec(x_1338);
lean_dec(x_1337);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1419 = !lean_is_exclusive(x_1341);
if (x_1419 == 0)
{
return x_1341;
}
else
{
lean_object* x_1420; lean_object* x_1421; lean_object* x_1422; 
x_1420 = lean_ctor_get(x_1341, 0);
x_1421 = lean_ctor_get(x_1341, 1);
lean_inc(x_1421);
lean_inc(x_1420);
lean_dec(x_1341);
x_1422 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1422, 0, x_1420);
lean_ctor_set(x_1422, 1, x_1421);
return x_1422;
}
}
}
else
{
lean_object* x_1423; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1423 = lean_box(0);
lean_ctor_set(x_28, 0, x_1423);
return x_28;
}
}
else
{
lean_object* x_1424; lean_object* x_1425; lean_object* x_1426; lean_object* x_1427; lean_object* x_1428; 
lean_dec(x_32);
lean_free_object(x_28);
x_1424 = lean_array_fget(x_1145, x_24);
lean_dec(x_1145);
x_1425 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1426 = lean_array_push(x_1425, x_1424);
x_1427 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1428 = l_Lean_Meta_mkAppM(x_1427, x_1426, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1428) == 0)
{
lean_object* x_1429; lean_object* x_1430; lean_object* x_1431; 
x_1429 = lean_ctor_get(x_1428, 0);
lean_inc(x_1429);
x_1430 = lean_ctor_get(x_1428, 1);
lean_inc(x_1430);
lean_dec(x_1428);
lean_inc(x_1429);
x_1431 = lean_infer_type(x_1429, x_5, x_6, x_7, x_8, x_1430);
if (lean_obj_tag(x_1431) == 0)
{
uint8_t x_1432; 
x_1432 = !lean_is_exclusive(x_1431);
if (x_1432 == 0)
{
lean_object* x_1433; lean_object* x_1434; lean_object* x_1435; uint8_t x_1436; 
x_1433 = lean_ctor_get(x_1431, 0);
x_1434 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_1435 = lean_unsigned_to_nat(3u);
x_1436 = l_Lean_Expr_isAppOfArity(x_1433, x_1434, x_1435);
if (x_1436 == 0)
{
lean_object* x_1437; 
lean_dec(x_1433);
lean_dec(x_1429);
x_1437 = lean_box(0);
lean_ctor_set(x_1431, 0, x_1437);
return x_1431;
}
else
{
lean_object* x_1438; lean_object* x_1439; uint8_t x_1440; lean_object* x_1441; lean_object* x_1442; lean_object* x_1443; 
x_1438 = l_Lean_Expr_appArg_x21(x_1433);
lean_dec(x_1433);
x_1439 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1439, 0, x_1429);
x_1440 = 1;
x_1441 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1441, 0, x_1438);
lean_ctor_set(x_1441, 1, x_1439);
lean_ctor_set_uint8(x_1441, sizeof(void*)*2, x_1440);
x_1442 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1442, 0, x_1441);
x_1443 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1443, 0, x_1442);
lean_ctor_set(x_1431, 0, x_1443);
return x_1431;
}
}
else
{
lean_object* x_1444; lean_object* x_1445; lean_object* x_1446; lean_object* x_1447; uint8_t x_1448; 
x_1444 = lean_ctor_get(x_1431, 0);
x_1445 = lean_ctor_get(x_1431, 1);
lean_inc(x_1445);
lean_inc(x_1444);
lean_dec(x_1431);
x_1446 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_1447 = lean_unsigned_to_nat(3u);
x_1448 = l_Lean_Expr_isAppOfArity(x_1444, x_1446, x_1447);
if (x_1448 == 0)
{
lean_object* x_1449; lean_object* x_1450; 
lean_dec(x_1444);
lean_dec(x_1429);
x_1449 = lean_box(0);
x_1450 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1450, 0, x_1449);
lean_ctor_set(x_1450, 1, x_1445);
return x_1450;
}
else
{
lean_object* x_1451; lean_object* x_1452; uint8_t x_1453; lean_object* x_1454; lean_object* x_1455; lean_object* x_1456; lean_object* x_1457; 
x_1451 = l_Lean_Expr_appArg_x21(x_1444);
lean_dec(x_1444);
x_1452 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1452, 0, x_1429);
x_1453 = 1;
x_1454 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1454, 0, x_1451);
lean_ctor_set(x_1454, 1, x_1452);
lean_ctor_set_uint8(x_1454, sizeof(void*)*2, x_1453);
x_1455 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1455, 0, x_1454);
x_1456 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1456, 0, x_1455);
x_1457 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1457, 0, x_1456);
lean_ctor_set(x_1457, 1, x_1445);
return x_1457;
}
}
}
else
{
uint8_t x_1458; 
lean_dec(x_1429);
x_1458 = !lean_is_exclusive(x_1431);
if (x_1458 == 0)
{
return x_1431;
}
else
{
lean_object* x_1459; lean_object* x_1460; lean_object* x_1461; 
x_1459 = lean_ctor_get(x_1431, 0);
x_1460 = lean_ctor_get(x_1431, 1);
lean_inc(x_1460);
lean_inc(x_1459);
lean_dec(x_1431);
x_1461 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1461, 0, x_1459);
lean_ctor_set(x_1461, 1, x_1460);
return x_1461;
}
}
}
else
{
uint8_t x_1462; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1462 = !lean_is_exclusive(x_1428);
if (x_1462 == 0)
{
return x_1428;
}
else
{
lean_object* x_1463; lean_object* x_1464; lean_object* x_1465; 
x_1463 = lean_ctor_get(x_1428, 0);
x_1464 = lean_ctor_get(x_1428, 1);
lean_inc(x_1464);
lean_inc(x_1463);
lean_dec(x_1428);
x_1465 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1465, 0, x_1463);
lean_ctor_set(x_1465, 1, x_1464);
return x_1465;
}
}
}
}
}
}
else
{
lean_object* x_1466; uint8_t x_1467; 
lean_dec(x_1147);
x_1466 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42;
x_1467 = lean_string_dec_eq(x_1146, x_1466);
lean_dec(x_1146);
if (x_1467 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1468; lean_object* x_1469; lean_object* x_1470; uint8_t x_1471; lean_object* x_1472; 
lean_free_object(x_28);
x_1468 = lean_ctor_get(x_32, 0);
lean_inc(x_1468);
x_1469 = lean_ctor_get(x_32, 1);
lean_inc(x_1469);
x_1470 = lean_ctor_get(x_32, 2);
lean_inc(x_1470);
x_1471 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1469);
x_1472 = l_Lean_Meta_isProp(x_1469, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1472) == 0)
{
lean_object* x_1473; lean_object* x_1474; lean_object* x_1475; uint8_t x_1512; 
x_1473 = lean_ctor_get(x_1472, 0);
lean_inc(x_1473);
x_1474 = lean_ctor_get(x_1472, 1);
lean_inc(x_1474);
lean_dec(x_1472);
x_1512 = lean_unbox(x_1473);
lean_dec(x_1473);
if (x_1512 == 0)
{
lean_object* x_1513; 
x_1513 = lean_box(0);
x_1475 = x_1513;
goto block_1511;
}
else
{
uint8_t x_1514; 
x_1514 = l_Lean_Expr_hasLooseBVars(x_1470);
if (x_1514 == 0)
{
lean_object* x_1515; lean_object* x_1516; lean_object* x_1517; lean_object* x_1518; lean_object* x_1519; lean_object* x_1520; 
lean_dec(x_1468);
lean_inc(x_1470);
x_1515 = l_Lean_mkNot(x_1470);
x_1516 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1517 = lean_array_push(x_1516, x_1469);
lean_inc(x_1517);
x_1518 = lean_array_push(x_1517, x_1515);
x_1519 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1520 = l_Lean_Meta_mkAppM(x_1519, x_1518, x_5, x_6, x_7, x_8, x_1474);
if (lean_obj_tag(x_1520) == 0)
{
lean_object* x_1521; lean_object* x_1522; lean_object* x_1523; lean_object* x_1524; lean_object* x_1525; 
x_1521 = lean_ctor_get(x_1520, 0);
lean_inc(x_1521);
x_1522 = lean_ctor_get(x_1520, 1);
lean_inc(x_1522);
lean_dec(x_1520);
x_1523 = lean_array_push(x_1517, x_1470);
x_1524 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1525 = l_Lean_Meta_mkAppM(x_1524, x_1523, x_5, x_6, x_7, x_8, x_1522);
if (lean_obj_tag(x_1525) == 0)
{
uint8_t x_1526; 
x_1526 = !lean_is_exclusive(x_1525);
if (x_1526 == 0)
{
lean_object* x_1527; lean_object* x_1528; uint8_t x_1529; lean_object* x_1530; lean_object* x_1531; lean_object* x_1532; 
x_1527 = lean_ctor_get(x_1525, 0);
x_1528 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1528, 0, x_1527);
x_1529 = 1;
x_1530 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1530, 0, x_1521);
lean_ctor_set(x_1530, 1, x_1528);
lean_ctor_set_uint8(x_1530, sizeof(void*)*2, x_1529);
x_1531 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1531, 0, x_1530);
x_1532 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1532, 0, x_1531);
lean_ctor_set(x_1525, 0, x_1532);
return x_1525;
}
else
{
lean_object* x_1533; lean_object* x_1534; lean_object* x_1535; uint8_t x_1536; lean_object* x_1537; lean_object* x_1538; lean_object* x_1539; lean_object* x_1540; 
x_1533 = lean_ctor_get(x_1525, 0);
x_1534 = lean_ctor_get(x_1525, 1);
lean_inc(x_1534);
lean_inc(x_1533);
lean_dec(x_1525);
x_1535 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1535, 0, x_1533);
x_1536 = 1;
x_1537 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1537, 0, x_1521);
lean_ctor_set(x_1537, 1, x_1535);
lean_ctor_set_uint8(x_1537, sizeof(void*)*2, x_1536);
x_1538 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1538, 0, x_1537);
x_1539 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1539, 0, x_1538);
x_1540 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1540, 0, x_1539);
lean_ctor_set(x_1540, 1, x_1534);
return x_1540;
}
}
else
{
uint8_t x_1541; 
lean_dec(x_1521);
x_1541 = !lean_is_exclusive(x_1525);
if (x_1541 == 0)
{
return x_1525;
}
else
{
lean_object* x_1542; lean_object* x_1543; lean_object* x_1544; 
x_1542 = lean_ctor_get(x_1525, 0);
x_1543 = lean_ctor_get(x_1525, 1);
lean_inc(x_1543);
lean_inc(x_1542);
lean_dec(x_1525);
x_1544 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1544, 0, x_1542);
lean_ctor_set(x_1544, 1, x_1543);
return x_1544;
}
}
}
else
{
uint8_t x_1545; 
lean_dec(x_1517);
lean_dec(x_1470);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1545 = !lean_is_exclusive(x_1520);
if (x_1545 == 0)
{
return x_1520;
}
else
{
lean_object* x_1546; lean_object* x_1547; lean_object* x_1548; 
x_1546 = lean_ctor_get(x_1520, 0);
x_1547 = lean_ctor_get(x_1520, 1);
lean_inc(x_1547);
lean_inc(x_1546);
lean_dec(x_1520);
x_1548 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1548, 0, x_1546);
lean_ctor_set(x_1548, 1, x_1547);
return x_1548;
}
}
}
else
{
lean_object* x_1549; 
x_1549 = lean_box(0);
x_1475 = x_1549;
goto block_1511;
}
}
block_1511:
{
lean_object* x_1476; lean_object* x_1477; lean_object* x_1478; lean_object* x_1479; lean_object* x_1480; lean_object* x_1481; lean_object* x_1482; 
lean_dec(x_1475);
lean_inc(x_1470);
x_1476 = l_Lean_mkNot(x_1470);
lean_inc(x_1469);
lean_inc(x_1468);
x_1477 = l_Lean_Expr_lam___override(x_1468, x_1469, x_1476, x_1471);
x_1478 = l_Lean_Expr_lam___override(x_1468, x_1469, x_1470, x_1471);
x_1479 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1480 = lean_array_push(x_1479, x_1477);
x_1481 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1482 = l_Lean_Meta_mkAppM(x_1481, x_1480, x_5, x_6, x_7, x_8, x_1474);
if (lean_obj_tag(x_1482) == 0)
{
lean_object* x_1483; lean_object* x_1484; lean_object* x_1485; lean_object* x_1486; lean_object* x_1487; 
x_1483 = lean_ctor_get(x_1482, 0);
lean_inc(x_1483);
x_1484 = lean_ctor_get(x_1482, 1);
lean_inc(x_1484);
lean_dec(x_1482);
x_1485 = lean_array_push(x_1479, x_1478);
x_1486 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1487 = l_Lean_Meta_mkAppM(x_1486, x_1485, x_5, x_6, x_7, x_8, x_1484);
if (lean_obj_tag(x_1487) == 0)
{
uint8_t x_1488; 
x_1488 = !lean_is_exclusive(x_1487);
if (x_1488 == 0)
{
lean_object* x_1489; lean_object* x_1490; uint8_t x_1491; lean_object* x_1492; lean_object* x_1493; lean_object* x_1494; 
x_1489 = lean_ctor_get(x_1487, 0);
x_1490 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1490, 0, x_1489);
x_1491 = 1;
x_1492 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1492, 0, x_1483);
lean_ctor_set(x_1492, 1, x_1490);
lean_ctor_set_uint8(x_1492, sizeof(void*)*2, x_1491);
x_1493 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1493, 0, x_1492);
x_1494 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1494, 0, x_1493);
lean_ctor_set(x_1487, 0, x_1494);
return x_1487;
}
else
{
lean_object* x_1495; lean_object* x_1496; lean_object* x_1497; uint8_t x_1498; lean_object* x_1499; lean_object* x_1500; lean_object* x_1501; lean_object* x_1502; 
x_1495 = lean_ctor_get(x_1487, 0);
x_1496 = lean_ctor_get(x_1487, 1);
lean_inc(x_1496);
lean_inc(x_1495);
lean_dec(x_1487);
x_1497 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1497, 0, x_1495);
x_1498 = 1;
x_1499 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1499, 0, x_1483);
lean_ctor_set(x_1499, 1, x_1497);
lean_ctor_set_uint8(x_1499, sizeof(void*)*2, x_1498);
x_1500 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1500, 0, x_1499);
x_1501 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1501, 0, x_1500);
x_1502 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1502, 0, x_1501);
lean_ctor_set(x_1502, 1, x_1496);
return x_1502;
}
}
else
{
uint8_t x_1503; 
lean_dec(x_1483);
x_1503 = !lean_is_exclusive(x_1487);
if (x_1503 == 0)
{
return x_1487;
}
else
{
lean_object* x_1504; lean_object* x_1505; lean_object* x_1506; 
x_1504 = lean_ctor_get(x_1487, 0);
x_1505 = lean_ctor_get(x_1487, 1);
lean_inc(x_1505);
lean_inc(x_1504);
lean_dec(x_1487);
x_1506 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1506, 0, x_1504);
lean_ctor_set(x_1506, 1, x_1505);
return x_1506;
}
}
}
else
{
uint8_t x_1507; 
lean_dec(x_1478);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1507 = !lean_is_exclusive(x_1482);
if (x_1507 == 0)
{
return x_1482;
}
else
{
lean_object* x_1508; lean_object* x_1509; lean_object* x_1510; 
x_1508 = lean_ctor_get(x_1482, 0);
x_1509 = lean_ctor_get(x_1482, 1);
lean_inc(x_1509);
lean_inc(x_1508);
lean_dec(x_1482);
x_1510 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1510, 0, x_1508);
lean_ctor_set(x_1510, 1, x_1509);
return x_1510;
}
}
}
}
else
{
uint8_t x_1550; 
lean_dec(x_1470);
lean_dec(x_1469);
lean_dec(x_1468);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1550 = !lean_is_exclusive(x_1472);
if (x_1550 == 0)
{
return x_1472;
}
else
{
lean_object* x_1551; lean_object* x_1552; lean_object* x_1553; 
x_1551 = lean_ctor_get(x_1472, 0);
x_1552 = lean_ctor_get(x_1472, 1);
lean_inc(x_1552);
lean_inc(x_1551);
lean_dec(x_1472);
x_1553 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1553, 0, x_1551);
lean_ctor_set(x_1553, 1, x_1552);
return x_1553;
}
}
}
else
{
lean_object* x_1554; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1554 = lean_box(0);
lean_ctor_set(x_28, 0, x_1554);
return x_28;
}
}
else
{
lean_object* x_1555; lean_object* x_1556; uint8_t x_1557; 
x_1555 = lean_array_get_size(x_1145);
x_1556 = lean_unsigned_to_nat(4u);
x_1557 = lean_nat_dec_eq(x_1555, x_1556);
lean_dec(x_1555);
if (x_1557 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1558; lean_object* x_1559; lean_object* x_1560; uint8_t x_1561; lean_object* x_1562; 
lean_free_object(x_28);
x_1558 = lean_ctor_get(x_32, 0);
lean_inc(x_1558);
x_1559 = lean_ctor_get(x_32, 1);
lean_inc(x_1559);
x_1560 = lean_ctor_get(x_32, 2);
lean_inc(x_1560);
x_1561 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1559);
x_1562 = l_Lean_Meta_isProp(x_1559, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1562) == 0)
{
lean_object* x_1563; lean_object* x_1564; lean_object* x_1565; uint8_t x_1602; 
x_1563 = lean_ctor_get(x_1562, 0);
lean_inc(x_1563);
x_1564 = lean_ctor_get(x_1562, 1);
lean_inc(x_1564);
lean_dec(x_1562);
x_1602 = lean_unbox(x_1563);
lean_dec(x_1563);
if (x_1602 == 0)
{
lean_object* x_1603; 
x_1603 = lean_box(0);
x_1565 = x_1603;
goto block_1601;
}
else
{
uint8_t x_1604; 
x_1604 = l_Lean_Expr_hasLooseBVars(x_1560);
if (x_1604 == 0)
{
lean_object* x_1605; lean_object* x_1606; lean_object* x_1607; lean_object* x_1608; lean_object* x_1609; lean_object* x_1610; 
lean_dec(x_1558);
lean_inc(x_1560);
x_1605 = l_Lean_mkNot(x_1560);
x_1606 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1607 = lean_array_push(x_1606, x_1559);
lean_inc(x_1607);
x_1608 = lean_array_push(x_1607, x_1605);
x_1609 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1610 = l_Lean_Meta_mkAppM(x_1609, x_1608, x_5, x_6, x_7, x_8, x_1564);
if (lean_obj_tag(x_1610) == 0)
{
lean_object* x_1611; lean_object* x_1612; lean_object* x_1613; lean_object* x_1614; lean_object* x_1615; 
x_1611 = lean_ctor_get(x_1610, 0);
lean_inc(x_1611);
x_1612 = lean_ctor_get(x_1610, 1);
lean_inc(x_1612);
lean_dec(x_1610);
x_1613 = lean_array_push(x_1607, x_1560);
x_1614 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1615 = l_Lean_Meta_mkAppM(x_1614, x_1613, x_5, x_6, x_7, x_8, x_1612);
if (lean_obj_tag(x_1615) == 0)
{
uint8_t x_1616; 
x_1616 = !lean_is_exclusive(x_1615);
if (x_1616 == 0)
{
lean_object* x_1617; lean_object* x_1618; uint8_t x_1619; lean_object* x_1620; lean_object* x_1621; lean_object* x_1622; 
x_1617 = lean_ctor_get(x_1615, 0);
x_1618 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1618, 0, x_1617);
x_1619 = 1;
x_1620 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1620, 0, x_1611);
lean_ctor_set(x_1620, 1, x_1618);
lean_ctor_set_uint8(x_1620, sizeof(void*)*2, x_1619);
x_1621 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1621, 0, x_1620);
x_1622 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1622, 0, x_1621);
lean_ctor_set(x_1615, 0, x_1622);
return x_1615;
}
else
{
lean_object* x_1623; lean_object* x_1624; lean_object* x_1625; uint8_t x_1626; lean_object* x_1627; lean_object* x_1628; lean_object* x_1629; lean_object* x_1630; 
x_1623 = lean_ctor_get(x_1615, 0);
x_1624 = lean_ctor_get(x_1615, 1);
lean_inc(x_1624);
lean_inc(x_1623);
lean_dec(x_1615);
x_1625 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1625, 0, x_1623);
x_1626 = 1;
x_1627 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1627, 0, x_1611);
lean_ctor_set(x_1627, 1, x_1625);
lean_ctor_set_uint8(x_1627, sizeof(void*)*2, x_1626);
x_1628 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1628, 0, x_1627);
x_1629 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1629, 0, x_1628);
x_1630 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1630, 0, x_1629);
lean_ctor_set(x_1630, 1, x_1624);
return x_1630;
}
}
else
{
uint8_t x_1631; 
lean_dec(x_1611);
x_1631 = !lean_is_exclusive(x_1615);
if (x_1631 == 0)
{
return x_1615;
}
else
{
lean_object* x_1632; lean_object* x_1633; lean_object* x_1634; 
x_1632 = lean_ctor_get(x_1615, 0);
x_1633 = lean_ctor_get(x_1615, 1);
lean_inc(x_1633);
lean_inc(x_1632);
lean_dec(x_1615);
x_1634 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1634, 0, x_1632);
lean_ctor_set(x_1634, 1, x_1633);
return x_1634;
}
}
}
else
{
uint8_t x_1635; 
lean_dec(x_1607);
lean_dec(x_1560);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1635 = !lean_is_exclusive(x_1610);
if (x_1635 == 0)
{
return x_1610;
}
else
{
lean_object* x_1636; lean_object* x_1637; lean_object* x_1638; 
x_1636 = lean_ctor_get(x_1610, 0);
x_1637 = lean_ctor_get(x_1610, 1);
lean_inc(x_1637);
lean_inc(x_1636);
lean_dec(x_1610);
x_1638 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1638, 0, x_1636);
lean_ctor_set(x_1638, 1, x_1637);
return x_1638;
}
}
}
else
{
lean_object* x_1639; 
x_1639 = lean_box(0);
x_1565 = x_1639;
goto block_1601;
}
}
block_1601:
{
lean_object* x_1566; lean_object* x_1567; lean_object* x_1568; lean_object* x_1569; lean_object* x_1570; lean_object* x_1571; lean_object* x_1572; 
lean_dec(x_1565);
lean_inc(x_1560);
x_1566 = l_Lean_mkNot(x_1560);
lean_inc(x_1559);
lean_inc(x_1558);
x_1567 = l_Lean_Expr_lam___override(x_1558, x_1559, x_1566, x_1561);
x_1568 = l_Lean_Expr_lam___override(x_1558, x_1559, x_1560, x_1561);
x_1569 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1570 = lean_array_push(x_1569, x_1567);
x_1571 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1572 = l_Lean_Meta_mkAppM(x_1571, x_1570, x_5, x_6, x_7, x_8, x_1564);
if (lean_obj_tag(x_1572) == 0)
{
lean_object* x_1573; lean_object* x_1574; lean_object* x_1575; lean_object* x_1576; lean_object* x_1577; 
x_1573 = lean_ctor_get(x_1572, 0);
lean_inc(x_1573);
x_1574 = lean_ctor_get(x_1572, 1);
lean_inc(x_1574);
lean_dec(x_1572);
x_1575 = lean_array_push(x_1569, x_1568);
x_1576 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1577 = l_Lean_Meta_mkAppM(x_1576, x_1575, x_5, x_6, x_7, x_8, x_1574);
if (lean_obj_tag(x_1577) == 0)
{
uint8_t x_1578; 
x_1578 = !lean_is_exclusive(x_1577);
if (x_1578 == 0)
{
lean_object* x_1579; lean_object* x_1580; uint8_t x_1581; lean_object* x_1582; lean_object* x_1583; lean_object* x_1584; 
x_1579 = lean_ctor_get(x_1577, 0);
x_1580 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1580, 0, x_1579);
x_1581 = 1;
x_1582 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1582, 0, x_1573);
lean_ctor_set(x_1582, 1, x_1580);
lean_ctor_set_uint8(x_1582, sizeof(void*)*2, x_1581);
x_1583 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1583, 0, x_1582);
x_1584 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1584, 0, x_1583);
lean_ctor_set(x_1577, 0, x_1584);
return x_1577;
}
else
{
lean_object* x_1585; lean_object* x_1586; lean_object* x_1587; uint8_t x_1588; lean_object* x_1589; lean_object* x_1590; lean_object* x_1591; lean_object* x_1592; 
x_1585 = lean_ctor_get(x_1577, 0);
x_1586 = lean_ctor_get(x_1577, 1);
lean_inc(x_1586);
lean_inc(x_1585);
lean_dec(x_1577);
x_1587 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1587, 0, x_1585);
x_1588 = 1;
x_1589 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1589, 0, x_1573);
lean_ctor_set(x_1589, 1, x_1587);
lean_ctor_set_uint8(x_1589, sizeof(void*)*2, x_1588);
x_1590 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1590, 0, x_1589);
x_1591 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1591, 0, x_1590);
x_1592 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1592, 0, x_1591);
lean_ctor_set(x_1592, 1, x_1586);
return x_1592;
}
}
else
{
uint8_t x_1593; 
lean_dec(x_1573);
x_1593 = !lean_is_exclusive(x_1577);
if (x_1593 == 0)
{
return x_1577;
}
else
{
lean_object* x_1594; lean_object* x_1595; lean_object* x_1596; 
x_1594 = lean_ctor_get(x_1577, 0);
x_1595 = lean_ctor_get(x_1577, 1);
lean_inc(x_1595);
lean_inc(x_1594);
lean_dec(x_1577);
x_1596 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1596, 0, x_1594);
lean_ctor_set(x_1596, 1, x_1595);
return x_1596;
}
}
}
else
{
uint8_t x_1597; 
lean_dec(x_1568);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1597 = !lean_is_exclusive(x_1572);
if (x_1597 == 0)
{
return x_1572;
}
else
{
lean_object* x_1598; lean_object* x_1599; lean_object* x_1600; 
x_1598 = lean_ctor_get(x_1572, 0);
x_1599 = lean_ctor_get(x_1572, 1);
lean_inc(x_1599);
lean_inc(x_1598);
lean_dec(x_1572);
x_1600 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1600, 0, x_1598);
lean_ctor_set(x_1600, 1, x_1599);
return x_1600;
}
}
}
}
else
{
uint8_t x_1640; 
lean_dec(x_1560);
lean_dec(x_1559);
lean_dec(x_1558);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1640 = !lean_is_exclusive(x_1562);
if (x_1640 == 0)
{
return x_1562;
}
else
{
lean_object* x_1641; lean_object* x_1642; lean_object* x_1643; 
x_1641 = lean_ctor_get(x_1562, 0);
x_1642 = lean_ctor_get(x_1562, 1);
lean_inc(x_1642);
lean_inc(x_1641);
lean_dec(x_1562);
x_1643 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1643, 0, x_1641);
lean_ctor_set(x_1643, 1, x_1642);
return x_1643;
}
}
}
else
{
lean_object* x_1644; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1644 = lean_box(0);
lean_ctor_set(x_28, 0, x_1644);
return x_28;
}
}
else
{
lean_object* x_1645; lean_object* x_1646; lean_object* x_1647; lean_object* x_1648; lean_object* x_1649; lean_object* x_1650; lean_object* x_1651; lean_object* x_1652; lean_object* x_1653; 
lean_dec(x_32);
lean_free_object(x_28);
x_1645 = lean_unsigned_to_nat(2u);
x_1646 = lean_array_fget(x_1145, x_1645);
x_1647 = lean_unsigned_to_nat(3u);
x_1648 = lean_array_fget(x_1145, x_1647);
lean_dec(x_1145);
x_1649 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1650 = lean_array_push(x_1649, x_1646);
x_1651 = lean_array_push(x_1650, x_1648);
x_1652 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1653 = l_Lean_Meta_mkAppM(x_1652, x_1651, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1653) == 0)
{
lean_object* x_1654; lean_object* x_1655; lean_object* x_1656; 
x_1654 = lean_ctor_get(x_1653, 0);
lean_inc(x_1654);
x_1655 = lean_ctor_get(x_1653, 1);
lean_inc(x_1655);
lean_dec(x_1653);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1654);
x_1656 = lean_infer_type(x_1654, x_5, x_6, x_7, x_8, x_1655);
if (lean_obj_tag(x_1656) == 0)
{
lean_object* x_1657; lean_object* x_1658; lean_object* x_1659; uint8_t x_1660; 
x_1657 = lean_ctor_get(x_1656, 0);
lean_inc(x_1657);
x_1658 = lean_ctor_get(x_1656, 1);
lean_inc(x_1658);
lean_dec(x_1656);
x_1659 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_1660 = l_Lean_Expr_isAppOfArity(x_1657, x_1659, x_1647);
if (x_1660 == 0)
{
lean_object* x_1661; lean_object* x_1662; lean_object* x_1663; lean_object* x_1664; 
lean_dec(x_1657);
lean_dec(x_1654);
lean_dec(x_1);
x_1661 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_1662 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_1661, x_5, x_6, x_7, x_8, x_1658);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1663 = lean_ctor_get(x_1662, 0);
lean_inc(x_1663);
x_1664 = lean_ctor_get(x_1662, 1);
lean_inc(x_1664);
lean_dec(x_1662);
x_10 = x_1663;
x_11 = x_1664;
goto block_18;
}
else
{
lean_object* x_1665; lean_object* x_1666; lean_object* x_1667; lean_object* x_1668; 
x_1665 = l_Lean_Expr_appFn_x21(x_1657);
x_1666 = l_Lean_Expr_appArg_x21(x_1665);
lean_dec(x_1665);
x_1667 = l_Lean_Expr_appArg_x21(x_1657);
lean_dec(x_1657);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1668 = l_Lean_Meta_isExprDefEq(x_1, x_1666, x_5, x_6, x_7, x_8, x_1658);
if (lean_obj_tag(x_1668) == 0)
{
lean_object* x_1669; uint8_t x_1670; 
x_1669 = lean_ctor_get(x_1668, 0);
lean_inc(x_1669);
x_1670 = lean_unbox(x_1669);
lean_dec(x_1669);
if (x_1670 == 0)
{
lean_object* x_1671; lean_object* x_1672; lean_object* x_1673; lean_object* x_1674; lean_object* x_1675; 
lean_dec(x_1667);
lean_dec(x_1654);
x_1671 = lean_ctor_get(x_1668, 1);
lean_inc(x_1671);
lean_dec(x_1668);
x_1672 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_1673 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_1672, x_5, x_6, x_7, x_8, x_1671);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1674 = lean_ctor_get(x_1673, 0);
lean_inc(x_1674);
x_1675 = lean_ctor_get(x_1673, 1);
lean_inc(x_1675);
lean_dec(x_1673);
x_10 = x_1674;
x_11 = x_1675;
goto block_18;
}
else
{
uint8_t x_1676; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1676 = !lean_is_exclusive(x_1668);
if (x_1676 == 0)
{
lean_object* x_1677; lean_object* x_1678; uint8_t x_1679; lean_object* x_1680; lean_object* x_1681; lean_object* x_1682; 
x_1677 = lean_ctor_get(x_1668, 0);
lean_dec(x_1677);
x_1678 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1678, 0, x_1654);
x_1679 = 1;
x_1680 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1680, 0, x_1667);
lean_ctor_set(x_1680, 1, x_1678);
lean_ctor_set_uint8(x_1680, sizeof(void*)*2, x_1679);
x_1681 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1681, 0, x_1680);
x_1682 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1682, 0, x_1681);
lean_ctor_set(x_1668, 0, x_1682);
return x_1668;
}
else
{
lean_object* x_1683; lean_object* x_1684; uint8_t x_1685; lean_object* x_1686; lean_object* x_1687; lean_object* x_1688; lean_object* x_1689; 
x_1683 = lean_ctor_get(x_1668, 1);
lean_inc(x_1683);
lean_dec(x_1668);
x_1684 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1684, 0, x_1654);
x_1685 = 1;
x_1686 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1686, 0, x_1667);
lean_ctor_set(x_1686, 1, x_1684);
lean_ctor_set_uint8(x_1686, sizeof(void*)*2, x_1685);
x_1687 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1687, 0, x_1686);
x_1688 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1688, 0, x_1687);
x_1689 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1689, 0, x_1688);
lean_ctor_set(x_1689, 1, x_1683);
return x_1689;
}
}
}
else
{
lean_object* x_1690; lean_object* x_1691; 
lean_dec(x_1667);
lean_dec(x_1654);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1690 = lean_ctor_get(x_1668, 0);
lean_inc(x_1690);
x_1691 = lean_ctor_get(x_1668, 1);
lean_inc(x_1691);
lean_dec(x_1668);
x_10 = x_1690;
x_11 = x_1691;
goto block_18;
}
}
}
else
{
lean_object* x_1692; lean_object* x_1693; 
lean_dec(x_1654);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_1692 = lean_ctor_get(x_1656, 0);
lean_inc(x_1692);
x_1693 = lean_ctor_get(x_1656, 1);
lean_inc(x_1693);
lean_dec(x_1656);
x_10 = x_1692;
x_11 = x_1693;
goto block_18;
}
}
else
{
lean_object* x_1694; lean_object* x_1695; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_1694 = lean_ctor_get(x_1653, 0);
lean_inc(x_1694);
x_1695 = lean_ctor_get(x_1653, 1);
lean_inc(x_1695);
lean_dec(x_1653);
x_10 = x_1694;
x_11 = x_1695;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_1696; uint8_t x_1697; 
lean_dec(x_1147);
x_1696 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47;
x_1697 = lean_string_dec_eq(x_1146, x_1696);
lean_dec(x_1146);
if (x_1697 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1698; lean_object* x_1699; lean_object* x_1700; uint8_t x_1701; lean_object* x_1702; 
lean_free_object(x_28);
x_1698 = lean_ctor_get(x_32, 0);
lean_inc(x_1698);
x_1699 = lean_ctor_get(x_32, 1);
lean_inc(x_1699);
x_1700 = lean_ctor_get(x_32, 2);
lean_inc(x_1700);
x_1701 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1699);
x_1702 = l_Lean_Meta_isProp(x_1699, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1702) == 0)
{
lean_object* x_1703; lean_object* x_1704; lean_object* x_1705; uint8_t x_1742; 
x_1703 = lean_ctor_get(x_1702, 0);
lean_inc(x_1703);
x_1704 = lean_ctor_get(x_1702, 1);
lean_inc(x_1704);
lean_dec(x_1702);
x_1742 = lean_unbox(x_1703);
lean_dec(x_1703);
if (x_1742 == 0)
{
lean_object* x_1743; 
x_1743 = lean_box(0);
x_1705 = x_1743;
goto block_1741;
}
else
{
uint8_t x_1744; 
x_1744 = l_Lean_Expr_hasLooseBVars(x_1700);
if (x_1744 == 0)
{
lean_object* x_1745; lean_object* x_1746; lean_object* x_1747; lean_object* x_1748; lean_object* x_1749; lean_object* x_1750; 
lean_dec(x_1698);
lean_inc(x_1700);
x_1745 = l_Lean_mkNot(x_1700);
x_1746 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1747 = lean_array_push(x_1746, x_1699);
lean_inc(x_1747);
x_1748 = lean_array_push(x_1747, x_1745);
x_1749 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1750 = l_Lean_Meta_mkAppM(x_1749, x_1748, x_5, x_6, x_7, x_8, x_1704);
if (lean_obj_tag(x_1750) == 0)
{
lean_object* x_1751; lean_object* x_1752; lean_object* x_1753; lean_object* x_1754; lean_object* x_1755; 
x_1751 = lean_ctor_get(x_1750, 0);
lean_inc(x_1751);
x_1752 = lean_ctor_get(x_1750, 1);
lean_inc(x_1752);
lean_dec(x_1750);
x_1753 = lean_array_push(x_1747, x_1700);
x_1754 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1755 = l_Lean_Meta_mkAppM(x_1754, x_1753, x_5, x_6, x_7, x_8, x_1752);
if (lean_obj_tag(x_1755) == 0)
{
uint8_t x_1756; 
x_1756 = !lean_is_exclusive(x_1755);
if (x_1756 == 0)
{
lean_object* x_1757; lean_object* x_1758; uint8_t x_1759; lean_object* x_1760; lean_object* x_1761; lean_object* x_1762; 
x_1757 = lean_ctor_get(x_1755, 0);
x_1758 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1758, 0, x_1757);
x_1759 = 1;
x_1760 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1760, 0, x_1751);
lean_ctor_set(x_1760, 1, x_1758);
lean_ctor_set_uint8(x_1760, sizeof(void*)*2, x_1759);
x_1761 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1761, 0, x_1760);
x_1762 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1762, 0, x_1761);
lean_ctor_set(x_1755, 0, x_1762);
return x_1755;
}
else
{
lean_object* x_1763; lean_object* x_1764; lean_object* x_1765; uint8_t x_1766; lean_object* x_1767; lean_object* x_1768; lean_object* x_1769; lean_object* x_1770; 
x_1763 = lean_ctor_get(x_1755, 0);
x_1764 = lean_ctor_get(x_1755, 1);
lean_inc(x_1764);
lean_inc(x_1763);
lean_dec(x_1755);
x_1765 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1765, 0, x_1763);
x_1766 = 1;
x_1767 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1767, 0, x_1751);
lean_ctor_set(x_1767, 1, x_1765);
lean_ctor_set_uint8(x_1767, sizeof(void*)*2, x_1766);
x_1768 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1768, 0, x_1767);
x_1769 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1769, 0, x_1768);
x_1770 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1770, 0, x_1769);
lean_ctor_set(x_1770, 1, x_1764);
return x_1770;
}
}
else
{
uint8_t x_1771; 
lean_dec(x_1751);
x_1771 = !lean_is_exclusive(x_1755);
if (x_1771 == 0)
{
return x_1755;
}
else
{
lean_object* x_1772; lean_object* x_1773; lean_object* x_1774; 
x_1772 = lean_ctor_get(x_1755, 0);
x_1773 = lean_ctor_get(x_1755, 1);
lean_inc(x_1773);
lean_inc(x_1772);
lean_dec(x_1755);
x_1774 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1774, 0, x_1772);
lean_ctor_set(x_1774, 1, x_1773);
return x_1774;
}
}
}
else
{
uint8_t x_1775; 
lean_dec(x_1747);
lean_dec(x_1700);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1775 = !lean_is_exclusive(x_1750);
if (x_1775 == 0)
{
return x_1750;
}
else
{
lean_object* x_1776; lean_object* x_1777; lean_object* x_1778; 
x_1776 = lean_ctor_get(x_1750, 0);
x_1777 = lean_ctor_get(x_1750, 1);
lean_inc(x_1777);
lean_inc(x_1776);
lean_dec(x_1750);
x_1778 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1778, 0, x_1776);
lean_ctor_set(x_1778, 1, x_1777);
return x_1778;
}
}
}
else
{
lean_object* x_1779; 
x_1779 = lean_box(0);
x_1705 = x_1779;
goto block_1741;
}
}
block_1741:
{
lean_object* x_1706; lean_object* x_1707; lean_object* x_1708; lean_object* x_1709; lean_object* x_1710; lean_object* x_1711; lean_object* x_1712; 
lean_dec(x_1705);
lean_inc(x_1700);
x_1706 = l_Lean_mkNot(x_1700);
lean_inc(x_1699);
lean_inc(x_1698);
x_1707 = l_Lean_Expr_lam___override(x_1698, x_1699, x_1706, x_1701);
x_1708 = l_Lean_Expr_lam___override(x_1698, x_1699, x_1700, x_1701);
x_1709 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1710 = lean_array_push(x_1709, x_1707);
x_1711 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1712 = l_Lean_Meta_mkAppM(x_1711, x_1710, x_5, x_6, x_7, x_8, x_1704);
if (lean_obj_tag(x_1712) == 0)
{
lean_object* x_1713; lean_object* x_1714; lean_object* x_1715; lean_object* x_1716; lean_object* x_1717; 
x_1713 = lean_ctor_get(x_1712, 0);
lean_inc(x_1713);
x_1714 = lean_ctor_get(x_1712, 1);
lean_inc(x_1714);
lean_dec(x_1712);
x_1715 = lean_array_push(x_1709, x_1708);
x_1716 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1717 = l_Lean_Meta_mkAppM(x_1716, x_1715, x_5, x_6, x_7, x_8, x_1714);
if (lean_obj_tag(x_1717) == 0)
{
uint8_t x_1718; 
x_1718 = !lean_is_exclusive(x_1717);
if (x_1718 == 0)
{
lean_object* x_1719; lean_object* x_1720; uint8_t x_1721; lean_object* x_1722; lean_object* x_1723; lean_object* x_1724; 
x_1719 = lean_ctor_get(x_1717, 0);
x_1720 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1720, 0, x_1719);
x_1721 = 1;
x_1722 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1722, 0, x_1713);
lean_ctor_set(x_1722, 1, x_1720);
lean_ctor_set_uint8(x_1722, sizeof(void*)*2, x_1721);
x_1723 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1723, 0, x_1722);
x_1724 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1724, 0, x_1723);
lean_ctor_set(x_1717, 0, x_1724);
return x_1717;
}
else
{
lean_object* x_1725; lean_object* x_1726; lean_object* x_1727; uint8_t x_1728; lean_object* x_1729; lean_object* x_1730; lean_object* x_1731; lean_object* x_1732; 
x_1725 = lean_ctor_get(x_1717, 0);
x_1726 = lean_ctor_get(x_1717, 1);
lean_inc(x_1726);
lean_inc(x_1725);
lean_dec(x_1717);
x_1727 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1727, 0, x_1725);
x_1728 = 1;
x_1729 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1729, 0, x_1713);
lean_ctor_set(x_1729, 1, x_1727);
lean_ctor_set_uint8(x_1729, sizeof(void*)*2, x_1728);
x_1730 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1730, 0, x_1729);
x_1731 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1731, 0, x_1730);
x_1732 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1732, 0, x_1731);
lean_ctor_set(x_1732, 1, x_1726);
return x_1732;
}
}
else
{
uint8_t x_1733; 
lean_dec(x_1713);
x_1733 = !lean_is_exclusive(x_1717);
if (x_1733 == 0)
{
return x_1717;
}
else
{
lean_object* x_1734; lean_object* x_1735; lean_object* x_1736; 
x_1734 = lean_ctor_get(x_1717, 0);
x_1735 = lean_ctor_get(x_1717, 1);
lean_inc(x_1735);
lean_inc(x_1734);
lean_dec(x_1717);
x_1736 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1736, 0, x_1734);
lean_ctor_set(x_1736, 1, x_1735);
return x_1736;
}
}
}
else
{
uint8_t x_1737; 
lean_dec(x_1708);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1737 = !lean_is_exclusive(x_1712);
if (x_1737 == 0)
{
return x_1712;
}
else
{
lean_object* x_1738; lean_object* x_1739; lean_object* x_1740; 
x_1738 = lean_ctor_get(x_1712, 0);
x_1739 = lean_ctor_get(x_1712, 1);
lean_inc(x_1739);
lean_inc(x_1738);
lean_dec(x_1712);
x_1740 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1740, 0, x_1738);
lean_ctor_set(x_1740, 1, x_1739);
return x_1740;
}
}
}
}
else
{
uint8_t x_1780; 
lean_dec(x_1700);
lean_dec(x_1699);
lean_dec(x_1698);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1780 = !lean_is_exclusive(x_1702);
if (x_1780 == 0)
{
return x_1702;
}
else
{
lean_object* x_1781; lean_object* x_1782; lean_object* x_1783; 
x_1781 = lean_ctor_get(x_1702, 0);
x_1782 = lean_ctor_get(x_1702, 1);
lean_inc(x_1782);
lean_inc(x_1781);
lean_dec(x_1702);
x_1783 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1783, 0, x_1781);
lean_ctor_set(x_1783, 1, x_1782);
return x_1783;
}
}
}
else
{
lean_object* x_1784; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1784 = lean_box(0);
lean_ctor_set(x_28, 0, x_1784);
return x_28;
}
}
else
{
lean_object* x_1785; lean_object* x_1786; uint8_t x_1787; 
x_1785 = lean_array_get_size(x_1145);
x_1786 = lean_unsigned_to_nat(4u);
x_1787 = lean_nat_dec_eq(x_1785, x_1786);
lean_dec(x_1785);
if (x_1787 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1788; lean_object* x_1789; lean_object* x_1790; uint8_t x_1791; lean_object* x_1792; 
lean_free_object(x_28);
x_1788 = lean_ctor_get(x_32, 0);
lean_inc(x_1788);
x_1789 = lean_ctor_get(x_32, 1);
lean_inc(x_1789);
x_1790 = lean_ctor_get(x_32, 2);
lean_inc(x_1790);
x_1791 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1789);
x_1792 = l_Lean_Meta_isProp(x_1789, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1792) == 0)
{
lean_object* x_1793; lean_object* x_1794; lean_object* x_1795; uint8_t x_1832; 
x_1793 = lean_ctor_get(x_1792, 0);
lean_inc(x_1793);
x_1794 = lean_ctor_get(x_1792, 1);
lean_inc(x_1794);
lean_dec(x_1792);
x_1832 = lean_unbox(x_1793);
lean_dec(x_1793);
if (x_1832 == 0)
{
lean_object* x_1833; 
x_1833 = lean_box(0);
x_1795 = x_1833;
goto block_1831;
}
else
{
uint8_t x_1834; 
x_1834 = l_Lean_Expr_hasLooseBVars(x_1790);
if (x_1834 == 0)
{
lean_object* x_1835; lean_object* x_1836; lean_object* x_1837; lean_object* x_1838; lean_object* x_1839; lean_object* x_1840; 
lean_dec(x_1788);
lean_inc(x_1790);
x_1835 = l_Lean_mkNot(x_1790);
x_1836 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1837 = lean_array_push(x_1836, x_1789);
lean_inc(x_1837);
x_1838 = lean_array_push(x_1837, x_1835);
x_1839 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1840 = l_Lean_Meta_mkAppM(x_1839, x_1838, x_5, x_6, x_7, x_8, x_1794);
if (lean_obj_tag(x_1840) == 0)
{
lean_object* x_1841; lean_object* x_1842; lean_object* x_1843; lean_object* x_1844; lean_object* x_1845; 
x_1841 = lean_ctor_get(x_1840, 0);
lean_inc(x_1841);
x_1842 = lean_ctor_get(x_1840, 1);
lean_inc(x_1842);
lean_dec(x_1840);
x_1843 = lean_array_push(x_1837, x_1790);
x_1844 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1845 = l_Lean_Meta_mkAppM(x_1844, x_1843, x_5, x_6, x_7, x_8, x_1842);
if (lean_obj_tag(x_1845) == 0)
{
uint8_t x_1846; 
x_1846 = !lean_is_exclusive(x_1845);
if (x_1846 == 0)
{
lean_object* x_1847; lean_object* x_1848; uint8_t x_1849; lean_object* x_1850; lean_object* x_1851; lean_object* x_1852; 
x_1847 = lean_ctor_get(x_1845, 0);
x_1848 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1848, 0, x_1847);
x_1849 = 1;
x_1850 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1850, 0, x_1841);
lean_ctor_set(x_1850, 1, x_1848);
lean_ctor_set_uint8(x_1850, sizeof(void*)*2, x_1849);
x_1851 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1851, 0, x_1850);
x_1852 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1852, 0, x_1851);
lean_ctor_set(x_1845, 0, x_1852);
return x_1845;
}
else
{
lean_object* x_1853; lean_object* x_1854; lean_object* x_1855; uint8_t x_1856; lean_object* x_1857; lean_object* x_1858; lean_object* x_1859; lean_object* x_1860; 
x_1853 = lean_ctor_get(x_1845, 0);
x_1854 = lean_ctor_get(x_1845, 1);
lean_inc(x_1854);
lean_inc(x_1853);
lean_dec(x_1845);
x_1855 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1855, 0, x_1853);
x_1856 = 1;
x_1857 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1857, 0, x_1841);
lean_ctor_set(x_1857, 1, x_1855);
lean_ctor_set_uint8(x_1857, sizeof(void*)*2, x_1856);
x_1858 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1858, 0, x_1857);
x_1859 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1859, 0, x_1858);
x_1860 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1860, 0, x_1859);
lean_ctor_set(x_1860, 1, x_1854);
return x_1860;
}
}
else
{
uint8_t x_1861; 
lean_dec(x_1841);
x_1861 = !lean_is_exclusive(x_1845);
if (x_1861 == 0)
{
return x_1845;
}
else
{
lean_object* x_1862; lean_object* x_1863; lean_object* x_1864; 
x_1862 = lean_ctor_get(x_1845, 0);
x_1863 = lean_ctor_get(x_1845, 1);
lean_inc(x_1863);
lean_inc(x_1862);
lean_dec(x_1845);
x_1864 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1864, 0, x_1862);
lean_ctor_set(x_1864, 1, x_1863);
return x_1864;
}
}
}
else
{
uint8_t x_1865; 
lean_dec(x_1837);
lean_dec(x_1790);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1865 = !lean_is_exclusive(x_1840);
if (x_1865 == 0)
{
return x_1840;
}
else
{
lean_object* x_1866; lean_object* x_1867; lean_object* x_1868; 
x_1866 = lean_ctor_get(x_1840, 0);
x_1867 = lean_ctor_get(x_1840, 1);
lean_inc(x_1867);
lean_inc(x_1866);
lean_dec(x_1840);
x_1868 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1868, 0, x_1866);
lean_ctor_set(x_1868, 1, x_1867);
return x_1868;
}
}
}
else
{
lean_object* x_1869; 
x_1869 = lean_box(0);
x_1795 = x_1869;
goto block_1831;
}
}
block_1831:
{
lean_object* x_1796; lean_object* x_1797; lean_object* x_1798; lean_object* x_1799; lean_object* x_1800; lean_object* x_1801; lean_object* x_1802; 
lean_dec(x_1795);
lean_inc(x_1790);
x_1796 = l_Lean_mkNot(x_1790);
lean_inc(x_1789);
lean_inc(x_1788);
x_1797 = l_Lean_Expr_lam___override(x_1788, x_1789, x_1796, x_1791);
x_1798 = l_Lean_Expr_lam___override(x_1788, x_1789, x_1790, x_1791);
x_1799 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1800 = lean_array_push(x_1799, x_1797);
x_1801 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1802 = l_Lean_Meta_mkAppM(x_1801, x_1800, x_5, x_6, x_7, x_8, x_1794);
if (lean_obj_tag(x_1802) == 0)
{
lean_object* x_1803; lean_object* x_1804; lean_object* x_1805; lean_object* x_1806; lean_object* x_1807; 
x_1803 = lean_ctor_get(x_1802, 0);
lean_inc(x_1803);
x_1804 = lean_ctor_get(x_1802, 1);
lean_inc(x_1804);
lean_dec(x_1802);
x_1805 = lean_array_push(x_1799, x_1798);
x_1806 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1807 = l_Lean_Meta_mkAppM(x_1806, x_1805, x_5, x_6, x_7, x_8, x_1804);
if (lean_obj_tag(x_1807) == 0)
{
uint8_t x_1808; 
x_1808 = !lean_is_exclusive(x_1807);
if (x_1808 == 0)
{
lean_object* x_1809; lean_object* x_1810; uint8_t x_1811; lean_object* x_1812; lean_object* x_1813; lean_object* x_1814; 
x_1809 = lean_ctor_get(x_1807, 0);
x_1810 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1810, 0, x_1809);
x_1811 = 1;
x_1812 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1812, 0, x_1803);
lean_ctor_set(x_1812, 1, x_1810);
lean_ctor_set_uint8(x_1812, sizeof(void*)*2, x_1811);
x_1813 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1813, 0, x_1812);
x_1814 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1814, 0, x_1813);
lean_ctor_set(x_1807, 0, x_1814);
return x_1807;
}
else
{
lean_object* x_1815; lean_object* x_1816; lean_object* x_1817; uint8_t x_1818; lean_object* x_1819; lean_object* x_1820; lean_object* x_1821; lean_object* x_1822; 
x_1815 = lean_ctor_get(x_1807, 0);
x_1816 = lean_ctor_get(x_1807, 1);
lean_inc(x_1816);
lean_inc(x_1815);
lean_dec(x_1807);
x_1817 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1817, 0, x_1815);
x_1818 = 1;
x_1819 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1819, 0, x_1803);
lean_ctor_set(x_1819, 1, x_1817);
lean_ctor_set_uint8(x_1819, sizeof(void*)*2, x_1818);
x_1820 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1820, 0, x_1819);
x_1821 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1821, 0, x_1820);
x_1822 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1822, 0, x_1821);
lean_ctor_set(x_1822, 1, x_1816);
return x_1822;
}
}
else
{
uint8_t x_1823; 
lean_dec(x_1803);
x_1823 = !lean_is_exclusive(x_1807);
if (x_1823 == 0)
{
return x_1807;
}
else
{
lean_object* x_1824; lean_object* x_1825; lean_object* x_1826; 
x_1824 = lean_ctor_get(x_1807, 0);
x_1825 = lean_ctor_get(x_1807, 1);
lean_inc(x_1825);
lean_inc(x_1824);
lean_dec(x_1807);
x_1826 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1826, 0, x_1824);
lean_ctor_set(x_1826, 1, x_1825);
return x_1826;
}
}
}
else
{
uint8_t x_1827; 
lean_dec(x_1798);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1827 = !lean_is_exclusive(x_1802);
if (x_1827 == 0)
{
return x_1802;
}
else
{
lean_object* x_1828; lean_object* x_1829; lean_object* x_1830; 
x_1828 = lean_ctor_get(x_1802, 0);
x_1829 = lean_ctor_get(x_1802, 1);
lean_inc(x_1829);
lean_inc(x_1828);
lean_dec(x_1802);
x_1830 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1830, 0, x_1828);
lean_ctor_set(x_1830, 1, x_1829);
return x_1830;
}
}
}
}
else
{
uint8_t x_1870; 
lean_dec(x_1790);
lean_dec(x_1789);
lean_dec(x_1788);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1870 = !lean_is_exclusive(x_1792);
if (x_1870 == 0)
{
return x_1792;
}
else
{
lean_object* x_1871; lean_object* x_1872; lean_object* x_1873; 
x_1871 = lean_ctor_get(x_1792, 0);
x_1872 = lean_ctor_get(x_1792, 1);
lean_inc(x_1872);
lean_inc(x_1871);
lean_dec(x_1792);
x_1873 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1873, 0, x_1871);
lean_ctor_set(x_1873, 1, x_1872);
return x_1873;
}
}
}
else
{
lean_object* x_1874; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1874 = lean_box(0);
lean_ctor_set(x_28, 0, x_1874);
return x_28;
}
}
else
{
lean_object* x_1875; lean_object* x_1876; lean_object* x_1877; lean_object* x_1878; lean_object* x_1879; lean_object* x_1880; lean_object* x_1881; lean_object* x_1882; lean_object* x_1883; 
lean_dec(x_32);
lean_free_object(x_28);
x_1875 = lean_unsigned_to_nat(2u);
x_1876 = lean_array_fget(x_1145, x_1875);
x_1877 = lean_unsigned_to_nat(3u);
x_1878 = lean_array_fget(x_1145, x_1877);
lean_dec(x_1145);
x_1879 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1880 = lean_array_push(x_1879, x_1876);
x_1881 = lean_array_push(x_1880, x_1878);
x_1882 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1883 = l_Lean_Meta_mkAppM(x_1882, x_1881, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1883) == 0)
{
lean_object* x_1884; lean_object* x_1885; lean_object* x_1886; 
x_1884 = lean_ctor_get(x_1883, 0);
lean_inc(x_1884);
x_1885 = lean_ctor_get(x_1883, 1);
lean_inc(x_1885);
lean_dec(x_1883);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1884);
x_1886 = lean_infer_type(x_1884, x_5, x_6, x_7, x_8, x_1885);
if (lean_obj_tag(x_1886) == 0)
{
lean_object* x_1887; lean_object* x_1888; lean_object* x_1889; uint8_t x_1890; 
x_1887 = lean_ctor_get(x_1886, 0);
lean_inc(x_1887);
x_1888 = lean_ctor_get(x_1886, 1);
lean_inc(x_1888);
lean_dec(x_1886);
x_1889 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_1890 = l_Lean_Expr_isAppOfArity(x_1887, x_1889, x_1877);
if (x_1890 == 0)
{
lean_object* x_1891; lean_object* x_1892; lean_object* x_1893; lean_object* x_1894; 
lean_dec(x_1887);
lean_dec(x_1884);
lean_dec(x_1);
x_1891 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_1892 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_1891, x_5, x_6, x_7, x_8, x_1888);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1893 = lean_ctor_get(x_1892, 0);
lean_inc(x_1893);
x_1894 = lean_ctor_get(x_1892, 1);
lean_inc(x_1894);
lean_dec(x_1892);
x_10 = x_1893;
x_11 = x_1894;
goto block_18;
}
else
{
lean_object* x_1895; lean_object* x_1896; lean_object* x_1897; lean_object* x_1898; 
x_1895 = l_Lean_Expr_appFn_x21(x_1887);
x_1896 = l_Lean_Expr_appArg_x21(x_1895);
lean_dec(x_1895);
x_1897 = l_Lean_Expr_appArg_x21(x_1887);
lean_dec(x_1887);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1898 = l_Lean_Meta_isExprDefEq(x_1, x_1896, x_5, x_6, x_7, x_8, x_1888);
if (lean_obj_tag(x_1898) == 0)
{
lean_object* x_1899; uint8_t x_1900; 
x_1899 = lean_ctor_get(x_1898, 0);
lean_inc(x_1899);
x_1900 = lean_unbox(x_1899);
lean_dec(x_1899);
if (x_1900 == 0)
{
lean_object* x_1901; lean_object* x_1902; lean_object* x_1903; lean_object* x_1904; lean_object* x_1905; 
lean_dec(x_1897);
lean_dec(x_1884);
x_1901 = lean_ctor_get(x_1898, 1);
lean_inc(x_1901);
lean_dec(x_1898);
x_1902 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_1903 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_1902, x_5, x_6, x_7, x_8, x_1901);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1904 = lean_ctor_get(x_1903, 0);
lean_inc(x_1904);
x_1905 = lean_ctor_get(x_1903, 1);
lean_inc(x_1905);
lean_dec(x_1903);
x_10 = x_1904;
x_11 = x_1905;
goto block_18;
}
else
{
uint8_t x_1906; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1906 = !lean_is_exclusive(x_1898);
if (x_1906 == 0)
{
lean_object* x_1907; lean_object* x_1908; uint8_t x_1909; lean_object* x_1910; lean_object* x_1911; lean_object* x_1912; 
x_1907 = lean_ctor_get(x_1898, 0);
lean_dec(x_1907);
x_1908 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1908, 0, x_1884);
x_1909 = 1;
x_1910 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1910, 0, x_1897);
lean_ctor_set(x_1910, 1, x_1908);
lean_ctor_set_uint8(x_1910, sizeof(void*)*2, x_1909);
x_1911 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1911, 0, x_1910);
x_1912 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1912, 0, x_1911);
lean_ctor_set(x_1898, 0, x_1912);
return x_1898;
}
else
{
lean_object* x_1913; lean_object* x_1914; uint8_t x_1915; lean_object* x_1916; lean_object* x_1917; lean_object* x_1918; lean_object* x_1919; 
x_1913 = lean_ctor_get(x_1898, 1);
lean_inc(x_1913);
lean_dec(x_1898);
x_1914 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1914, 0, x_1884);
x_1915 = 1;
x_1916 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1916, 0, x_1897);
lean_ctor_set(x_1916, 1, x_1914);
lean_ctor_set_uint8(x_1916, sizeof(void*)*2, x_1915);
x_1917 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1917, 0, x_1916);
x_1918 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1918, 0, x_1917);
x_1919 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1919, 0, x_1918);
lean_ctor_set(x_1919, 1, x_1913);
return x_1919;
}
}
}
else
{
lean_object* x_1920; lean_object* x_1921; 
lean_dec(x_1897);
lean_dec(x_1884);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1920 = lean_ctor_get(x_1898, 0);
lean_inc(x_1920);
x_1921 = lean_ctor_get(x_1898, 1);
lean_inc(x_1921);
lean_dec(x_1898);
x_10 = x_1920;
x_11 = x_1921;
goto block_18;
}
}
}
else
{
lean_object* x_1922; lean_object* x_1923; 
lean_dec(x_1884);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_1922 = lean_ctor_get(x_1886, 0);
lean_inc(x_1922);
x_1923 = lean_ctor_get(x_1886, 1);
lean_inc(x_1923);
lean_dec(x_1886);
x_10 = x_1922;
x_11 = x_1923;
goto block_18;
}
}
else
{
lean_object* x_1924; lean_object* x_1925; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_1924 = lean_ctor_get(x_1883, 0);
lean_inc(x_1924);
x_1925 = lean_ctor_get(x_1883, 1);
lean_inc(x_1925);
lean_dec(x_1883);
x_10 = x_1924;
x_11 = x_1925;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_1926; uint8_t x_1927; 
lean_dec(x_1147);
x_1926 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50;
x_1927 = lean_string_dec_eq(x_1146, x_1926);
lean_dec(x_1146);
if (x_1927 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_1928; lean_object* x_1929; lean_object* x_1930; uint8_t x_1931; lean_object* x_1932; 
lean_free_object(x_28);
x_1928 = lean_ctor_get(x_32, 0);
lean_inc(x_1928);
x_1929 = lean_ctor_get(x_32, 1);
lean_inc(x_1929);
x_1930 = lean_ctor_get(x_32, 2);
lean_inc(x_1930);
x_1931 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1929);
x_1932 = l_Lean_Meta_isProp(x_1929, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_1932) == 0)
{
lean_object* x_1933; lean_object* x_1934; lean_object* x_1935; uint8_t x_1972; 
x_1933 = lean_ctor_get(x_1932, 0);
lean_inc(x_1933);
x_1934 = lean_ctor_get(x_1932, 1);
lean_inc(x_1934);
lean_dec(x_1932);
x_1972 = lean_unbox(x_1933);
lean_dec(x_1933);
if (x_1972 == 0)
{
lean_object* x_1973; 
x_1973 = lean_box(0);
x_1935 = x_1973;
goto block_1971;
}
else
{
uint8_t x_1974; 
x_1974 = l_Lean_Expr_hasLooseBVars(x_1930);
if (x_1974 == 0)
{
lean_object* x_1975; lean_object* x_1976; lean_object* x_1977; lean_object* x_1978; lean_object* x_1979; lean_object* x_1980; 
lean_dec(x_1928);
lean_inc(x_1930);
x_1975 = l_Lean_mkNot(x_1930);
x_1976 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_1977 = lean_array_push(x_1976, x_1929);
lean_inc(x_1977);
x_1978 = lean_array_push(x_1977, x_1975);
x_1979 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1980 = l_Lean_Meta_mkAppM(x_1979, x_1978, x_5, x_6, x_7, x_8, x_1934);
if (lean_obj_tag(x_1980) == 0)
{
lean_object* x_1981; lean_object* x_1982; lean_object* x_1983; lean_object* x_1984; lean_object* x_1985; 
x_1981 = lean_ctor_get(x_1980, 0);
lean_inc(x_1981);
x_1982 = lean_ctor_get(x_1980, 1);
lean_inc(x_1982);
lean_dec(x_1980);
x_1983 = lean_array_push(x_1977, x_1930);
x_1984 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_1985 = l_Lean_Meta_mkAppM(x_1984, x_1983, x_5, x_6, x_7, x_8, x_1982);
if (lean_obj_tag(x_1985) == 0)
{
uint8_t x_1986; 
x_1986 = !lean_is_exclusive(x_1985);
if (x_1986 == 0)
{
lean_object* x_1987; lean_object* x_1988; uint8_t x_1989; lean_object* x_1990; lean_object* x_1991; lean_object* x_1992; 
x_1987 = lean_ctor_get(x_1985, 0);
x_1988 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1988, 0, x_1987);
x_1989 = 1;
x_1990 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1990, 0, x_1981);
lean_ctor_set(x_1990, 1, x_1988);
lean_ctor_set_uint8(x_1990, sizeof(void*)*2, x_1989);
x_1991 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1991, 0, x_1990);
x_1992 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1992, 0, x_1991);
lean_ctor_set(x_1985, 0, x_1992);
return x_1985;
}
else
{
lean_object* x_1993; lean_object* x_1994; lean_object* x_1995; uint8_t x_1996; lean_object* x_1997; lean_object* x_1998; lean_object* x_1999; lean_object* x_2000; 
x_1993 = lean_ctor_get(x_1985, 0);
x_1994 = lean_ctor_get(x_1985, 1);
lean_inc(x_1994);
lean_inc(x_1993);
lean_dec(x_1985);
x_1995 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1995, 0, x_1993);
x_1996 = 1;
x_1997 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1997, 0, x_1981);
lean_ctor_set(x_1997, 1, x_1995);
lean_ctor_set_uint8(x_1997, sizeof(void*)*2, x_1996);
x_1998 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1998, 0, x_1997);
x_1999 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1999, 0, x_1998);
x_2000 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2000, 0, x_1999);
lean_ctor_set(x_2000, 1, x_1994);
return x_2000;
}
}
else
{
uint8_t x_2001; 
lean_dec(x_1981);
x_2001 = !lean_is_exclusive(x_1985);
if (x_2001 == 0)
{
return x_1985;
}
else
{
lean_object* x_2002; lean_object* x_2003; lean_object* x_2004; 
x_2002 = lean_ctor_get(x_1985, 0);
x_2003 = lean_ctor_get(x_1985, 1);
lean_inc(x_2003);
lean_inc(x_2002);
lean_dec(x_1985);
x_2004 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2004, 0, x_2002);
lean_ctor_set(x_2004, 1, x_2003);
return x_2004;
}
}
}
else
{
uint8_t x_2005; 
lean_dec(x_1977);
lean_dec(x_1930);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2005 = !lean_is_exclusive(x_1980);
if (x_2005 == 0)
{
return x_1980;
}
else
{
lean_object* x_2006; lean_object* x_2007; lean_object* x_2008; 
x_2006 = lean_ctor_get(x_1980, 0);
x_2007 = lean_ctor_get(x_1980, 1);
lean_inc(x_2007);
lean_inc(x_2006);
lean_dec(x_1980);
x_2008 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2008, 0, x_2006);
lean_ctor_set(x_2008, 1, x_2007);
return x_2008;
}
}
}
else
{
lean_object* x_2009; 
x_2009 = lean_box(0);
x_1935 = x_2009;
goto block_1971;
}
}
block_1971:
{
lean_object* x_1936; lean_object* x_1937; lean_object* x_1938; lean_object* x_1939; lean_object* x_1940; lean_object* x_1941; lean_object* x_1942; 
lean_dec(x_1935);
lean_inc(x_1930);
x_1936 = l_Lean_mkNot(x_1930);
lean_inc(x_1929);
lean_inc(x_1928);
x_1937 = l_Lean_Expr_lam___override(x_1928, x_1929, x_1936, x_1931);
x_1938 = l_Lean_Expr_lam___override(x_1928, x_1929, x_1930, x_1931);
x_1939 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_1940 = lean_array_push(x_1939, x_1937);
x_1941 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_1942 = l_Lean_Meta_mkAppM(x_1941, x_1940, x_5, x_6, x_7, x_8, x_1934);
if (lean_obj_tag(x_1942) == 0)
{
lean_object* x_1943; lean_object* x_1944; lean_object* x_1945; lean_object* x_1946; lean_object* x_1947; 
x_1943 = lean_ctor_get(x_1942, 0);
lean_inc(x_1943);
x_1944 = lean_ctor_get(x_1942, 1);
lean_inc(x_1944);
lean_dec(x_1942);
x_1945 = lean_array_push(x_1939, x_1938);
x_1946 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_1947 = l_Lean_Meta_mkAppM(x_1946, x_1945, x_5, x_6, x_7, x_8, x_1944);
if (lean_obj_tag(x_1947) == 0)
{
uint8_t x_1948; 
x_1948 = !lean_is_exclusive(x_1947);
if (x_1948 == 0)
{
lean_object* x_1949; lean_object* x_1950; uint8_t x_1951; lean_object* x_1952; lean_object* x_1953; lean_object* x_1954; 
x_1949 = lean_ctor_get(x_1947, 0);
x_1950 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1950, 0, x_1949);
x_1951 = 1;
x_1952 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1952, 0, x_1943);
lean_ctor_set(x_1952, 1, x_1950);
lean_ctor_set_uint8(x_1952, sizeof(void*)*2, x_1951);
x_1953 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1953, 0, x_1952);
x_1954 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1954, 0, x_1953);
lean_ctor_set(x_1947, 0, x_1954);
return x_1947;
}
else
{
lean_object* x_1955; lean_object* x_1956; lean_object* x_1957; uint8_t x_1958; lean_object* x_1959; lean_object* x_1960; lean_object* x_1961; lean_object* x_1962; 
x_1955 = lean_ctor_get(x_1947, 0);
x_1956 = lean_ctor_get(x_1947, 1);
lean_inc(x_1956);
lean_inc(x_1955);
lean_dec(x_1947);
x_1957 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1957, 0, x_1955);
x_1958 = 1;
x_1959 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_1959, 0, x_1943);
lean_ctor_set(x_1959, 1, x_1957);
lean_ctor_set_uint8(x_1959, sizeof(void*)*2, x_1958);
x_1960 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1960, 0, x_1959);
x_1961 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_1961, 0, x_1960);
x_1962 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1962, 0, x_1961);
lean_ctor_set(x_1962, 1, x_1956);
return x_1962;
}
}
else
{
uint8_t x_1963; 
lean_dec(x_1943);
x_1963 = !lean_is_exclusive(x_1947);
if (x_1963 == 0)
{
return x_1947;
}
else
{
lean_object* x_1964; lean_object* x_1965; lean_object* x_1966; 
x_1964 = lean_ctor_get(x_1947, 0);
x_1965 = lean_ctor_get(x_1947, 1);
lean_inc(x_1965);
lean_inc(x_1964);
lean_dec(x_1947);
x_1966 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1966, 0, x_1964);
lean_ctor_set(x_1966, 1, x_1965);
return x_1966;
}
}
}
else
{
uint8_t x_1967; 
lean_dec(x_1938);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_1967 = !lean_is_exclusive(x_1942);
if (x_1967 == 0)
{
return x_1942;
}
else
{
lean_object* x_1968; lean_object* x_1969; lean_object* x_1970; 
x_1968 = lean_ctor_get(x_1942, 0);
x_1969 = lean_ctor_get(x_1942, 1);
lean_inc(x_1969);
lean_inc(x_1968);
lean_dec(x_1942);
x_1970 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_1970, 0, x_1968);
lean_ctor_set(x_1970, 1, x_1969);
return x_1970;
}
}
}
}
else
{
uint8_t x_2010; 
lean_dec(x_1930);
lean_dec(x_1929);
lean_dec(x_1928);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2010 = !lean_is_exclusive(x_1932);
if (x_2010 == 0)
{
return x_1932;
}
else
{
lean_object* x_2011; lean_object* x_2012; lean_object* x_2013; 
x_2011 = lean_ctor_get(x_1932, 0);
x_2012 = lean_ctor_get(x_1932, 1);
lean_inc(x_2012);
lean_inc(x_2011);
lean_dec(x_1932);
x_2013 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2013, 0, x_2011);
lean_ctor_set(x_2013, 1, x_2012);
return x_2013;
}
}
}
else
{
lean_object* x_2014; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2014 = lean_box(0);
lean_ctor_set(x_28, 0, x_2014);
return x_28;
}
}
else
{
lean_object* x_2015; lean_object* x_2016; uint8_t x_2017; 
x_2015 = lean_array_get_size(x_1145);
x_2016 = lean_unsigned_to_nat(4u);
x_2017 = lean_nat_dec_eq(x_2015, x_2016);
lean_dec(x_2015);
if (x_2017 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2018; lean_object* x_2019; lean_object* x_2020; uint8_t x_2021; lean_object* x_2022; 
lean_free_object(x_28);
x_2018 = lean_ctor_get(x_32, 0);
lean_inc(x_2018);
x_2019 = lean_ctor_get(x_32, 1);
lean_inc(x_2019);
x_2020 = lean_ctor_get(x_32, 2);
lean_inc(x_2020);
x_2021 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2019);
x_2022 = l_Lean_Meta_isProp(x_2019, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2022) == 0)
{
lean_object* x_2023; lean_object* x_2024; lean_object* x_2025; uint8_t x_2062; 
x_2023 = lean_ctor_get(x_2022, 0);
lean_inc(x_2023);
x_2024 = lean_ctor_get(x_2022, 1);
lean_inc(x_2024);
lean_dec(x_2022);
x_2062 = lean_unbox(x_2023);
lean_dec(x_2023);
if (x_2062 == 0)
{
lean_object* x_2063; 
x_2063 = lean_box(0);
x_2025 = x_2063;
goto block_2061;
}
else
{
uint8_t x_2064; 
x_2064 = l_Lean_Expr_hasLooseBVars(x_2020);
if (x_2064 == 0)
{
lean_object* x_2065; lean_object* x_2066; lean_object* x_2067; lean_object* x_2068; lean_object* x_2069; lean_object* x_2070; 
lean_dec(x_2018);
lean_inc(x_2020);
x_2065 = l_Lean_mkNot(x_2020);
x_2066 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2067 = lean_array_push(x_2066, x_2019);
lean_inc(x_2067);
x_2068 = lean_array_push(x_2067, x_2065);
x_2069 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2070 = l_Lean_Meta_mkAppM(x_2069, x_2068, x_5, x_6, x_7, x_8, x_2024);
if (lean_obj_tag(x_2070) == 0)
{
lean_object* x_2071; lean_object* x_2072; lean_object* x_2073; lean_object* x_2074; lean_object* x_2075; 
x_2071 = lean_ctor_get(x_2070, 0);
lean_inc(x_2071);
x_2072 = lean_ctor_get(x_2070, 1);
lean_inc(x_2072);
lean_dec(x_2070);
x_2073 = lean_array_push(x_2067, x_2020);
x_2074 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2075 = l_Lean_Meta_mkAppM(x_2074, x_2073, x_5, x_6, x_7, x_8, x_2072);
if (lean_obj_tag(x_2075) == 0)
{
uint8_t x_2076; 
x_2076 = !lean_is_exclusive(x_2075);
if (x_2076 == 0)
{
lean_object* x_2077; lean_object* x_2078; uint8_t x_2079; lean_object* x_2080; lean_object* x_2081; lean_object* x_2082; 
x_2077 = lean_ctor_get(x_2075, 0);
x_2078 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2078, 0, x_2077);
x_2079 = 1;
x_2080 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2080, 0, x_2071);
lean_ctor_set(x_2080, 1, x_2078);
lean_ctor_set_uint8(x_2080, sizeof(void*)*2, x_2079);
x_2081 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2081, 0, x_2080);
x_2082 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2082, 0, x_2081);
lean_ctor_set(x_2075, 0, x_2082);
return x_2075;
}
else
{
lean_object* x_2083; lean_object* x_2084; lean_object* x_2085; uint8_t x_2086; lean_object* x_2087; lean_object* x_2088; lean_object* x_2089; lean_object* x_2090; 
x_2083 = lean_ctor_get(x_2075, 0);
x_2084 = lean_ctor_get(x_2075, 1);
lean_inc(x_2084);
lean_inc(x_2083);
lean_dec(x_2075);
x_2085 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2085, 0, x_2083);
x_2086 = 1;
x_2087 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2087, 0, x_2071);
lean_ctor_set(x_2087, 1, x_2085);
lean_ctor_set_uint8(x_2087, sizeof(void*)*2, x_2086);
x_2088 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2088, 0, x_2087);
x_2089 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2089, 0, x_2088);
x_2090 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2090, 0, x_2089);
lean_ctor_set(x_2090, 1, x_2084);
return x_2090;
}
}
else
{
uint8_t x_2091; 
lean_dec(x_2071);
x_2091 = !lean_is_exclusive(x_2075);
if (x_2091 == 0)
{
return x_2075;
}
else
{
lean_object* x_2092; lean_object* x_2093; lean_object* x_2094; 
x_2092 = lean_ctor_get(x_2075, 0);
x_2093 = lean_ctor_get(x_2075, 1);
lean_inc(x_2093);
lean_inc(x_2092);
lean_dec(x_2075);
x_2094 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2094, 0, x_2092);
lean_ctor_set(x_2094, 1, x_2093);
return x_2094;
}
}
}
else
{
uint8_t x_2095; 
lean_dec(x_2067);
lean_dec(x_2020);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2095 = !lean_is_exclusive(x_2070);
if (x_2095 == 0)
{
return x_2070;
}
else
{
lean_object* x_2096; lean_object* x_2097; lean_object* x_2098; 
x_2096 = lean_ctor_get(x_2070, 0);
x_2097 = lean_ctor_get(x_2070, 1);
lean_inc(x_2097);
lean_inc(x_2096);
lean_dec(x_2070);
x_2098 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2098, 0, x_2096);
lean_ctor_set(x_2098, 1, x_2097);
return x_2098;
}
}
}
else
{
lean_object* x_2099; 
x_2099 = lean_box(0);
x_2025 = x_2099;
goto block_2061;
}
}
block_2061:
{
lean_object* x_2026; lean_object* x_2027; lean_object* x_2028; lean_object* x_2029; lean_object* x_2030; lean_object* x_2031; lean_object* x_2032; 
lean_dec(x_2025);
lean_inc(x_2020);
x_2026 = l_Lean_mkNot(x_2020);
lean_inc(x_2019);
lean_inc(x_2018);
x_2027 = l_Lean_Expr_lam___override(x_2018, x_2019, x_2026, x_2021);
x_2028 = l_Lean_Expr_lam___override(x_2018, x_2019, x_2020, x_2021);
x_2029 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2030 = lean_array_push(x_2029, x_2027);
x_2031 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2032 = l_Lean_Meta_mkAppM(x_2031, x_2030, x_5, x_6, x_7, x_8, x_2024);
if (lean_obj_tag(x_2032) == 0)
{
lean_object* x_2033; lean_object* x_2034; lean_object* x_2035; lean_object* x_2036; lean_object* x_2037; 
x_2033 = lean_ctor_get(x_2032, 0);
lean_inc(x_2033);
x_2034 = lean_ctor_get(x_2032, 1);
lean_inc(x_2034);
lean_dec(x_2032);
x_2035 = lean_array_push(x_2029, x_2028);
x_2036 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2037 = l_Lean_Meta_mkAppM(x_2036, x_2035, x_5, x_6, x_7, x_8, x_2034);
if (lean_obj_tag(x_2037) == 0)
{
uint8_t x_2038; 
x_2038 = !lean_is_exclusive(x_2037);
if (x_2038 == 0)
{
lean_object* x_2039; lean_object* x_2040; uint8_t x_2041; lean_object* x_2042; lean_object* x_2043; lean_object* x_2044; 
x_2039 = lean_ctor_get(x_2037, 0);
x_2040 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2040, 0, x_2039);
x_2041 = 1;
x_2042 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2042, 0, x_2033);
lean_ctor_set(x_2042, 1, x_2040);
lean_ctor_set_uint8(x_2042, sizeof(void*)*2, x_2041);
x_2043 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2043, 0, x_2042);
x_2044 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2044, 0, x_2043);
lean_ctor_set(x_2037, 0, x_2044);
return x_2037;
}
else
{
lean_object* x_2045; lean_object* x_2046; lean_object* x_2047; uint8_t x_2048; lean_object* x_2049; lean_object* x_2050; lean_object* x_2051; lean_object* x_2052; 
x_2045 = lean_ctor_get(x_2037, 0);
x_2046 = lean_ctor_get(x_2037, 1);
lean_inc(x_2046);
lean_inc(x_2045);
lean_dec(x_2037);
x_2047 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2047, 0, x_2045);
x_2048 = 1;
x_2049 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2049, 0, x_2033);
lean_ctor_set(x_2049, 1, x_2047);
lean_ctor_set_uint8(x_2049, sizeof(void*)*2, x_2048);
x_2050 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2050, 0, x_2049);
x_2051 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2051, 0, x_2050);
x_2052 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2052, 0, x_2051);
lean_ctor_set(x_2052, 1, x_2046);
return x_2052;
}
}
else
{
uint8_t x_2053; 
lean_dec(x_2033);
x_2053 = !lean_is_exclusive(x_2037);
if (x_2053 == 0)
{
return x_2037;
}
else
{
lean_object* x_2054; lean_object* x_2055; lean_object* x_2056; 
x_2054 = lean_ctor_get(x_2037, 0);
x_2055 = lean_ctor_get(x_2037, 1);
lean_inc(x_2055);
lean_inc(x_2054);
lean_dec(x_2037);
x_2056 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2056, 0, x_2054);
lean_ctor_set(x_2056, 1, x_2055);
return x_2056;
}
}
}
else
{
uint8_t x_2057; 
lean_dec(x_2028);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2057 = !lean_is_exclusive(x_2032);
if (x_2057 == 0)
{
return x_2032;
}
else
{
lean_object* x_2058; lean_object* x_2059; lean_object* x_2060; 
x_2058 = lean_ctor_get(x_2032, 0);
x_2059 = lean_ctor_get(x_2032, 1);
lean_inc(x_2059);
lean_inc(x_2058);
lean_dec(x_2032);
x_2060 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2060, 0, x_2058);
lean_ctor_set(x_2060, 1, x_2059);
return x_2060;
}
}
}
}
else
{
uint8_t x_2100; 
lean_dec(x_2020);
lean_dec(x_2019);
lean_dec(x_2018);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2100 = !lean_is_exclusive(x_2022);
if (x_2100 == 0)
{
return x_2022;
}
else
{
lean_object* x_2101; lean_object* x_2102; lean_object* x_2103; 
x_2101 = lean_ctor_get(x_2022, 0);
x_2102 = lean_ctor_get(x_2022, 1);
lean_inc(x_2102);
lean_inc(x_2101);
lean_dec(x_2022);
x_2103 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2103, 0, x_2101);
lean_ctor_set(x_2103, 1, x_2102);
return x_2103;
}
}
}
else
{
lean_object* x_2104; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2104 = lean_box(0);
lean_ctor_set(x_28, 0, x_2104);
return x_28;
}
}
else
{
lean_object* x_2105; lean_object* x_2106; lean_object* x_2107; lean_object* x_2108; lean_object* x_2109; lean_object* x_2110; lean_object* x_2111; lean_object* x_2112; lean_object* x_2113; 
lean_dec(x_32);
lean_free_object(x_28);
x_2105 = lean_unsigned_to_nat(2u);
x_2106 = lean_array_fget(x_1145, x_2105);
x_2107 = lean_unsigned_to_nat(3u);
x_2108 = lean_array_fget(x_1145, x_2107);
lean_dec(x_1145);
x_2109 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2110 = lean_array_push(x_2109, x_2106);
x_2111 = lean_array_push(x_2110, x_2108);
x_2112 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2113 = l_Lean_Meta_mkAppM(x_2112, x_2111, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2113) == 0)
{
lean_object* x_2114; lean_object* x_2115; lean_object* x_2116; 
x_2114 = lean_ctor_get(x_2113, 0);
lean_inc(x_2114);
x_2115 = lean_ctor_get(x_2113, 1);
lean_inc(x_2115);
lean_dec(x_2113);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2114);
x_2116 = lean_infer_type(x_2114, x_5, x_6, x_7, x_8, x_2115);
if (lean_obj_tag(x_2116) == 0)
{
lean_object* x_2117; lean_object* x_2118; lean_object* x_2119; uint8_t x_2120; 
x_2117 = lean_ctor_get(x_2116, 0);
lean_inc(x_2117);
x_2118 = lean_ctor_get(x_2116, 1);
lean_inc(x_2118);
lean_dec(x_2116);
x_2119 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_2120 = l_Lean_Expr_isAppOfArity(x_2117, x_2119, x_2107);
if (x_2120 == 0)
{
lean_object* x_2121; lean_object* x_2122; lean_object* x_2123; lean_object* x_2124; 
lean_dec(x_2117);
lean_dec(x_2114);
lean_dec(x_1);
x_2121 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_2122 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_2121, x_5, x_6, x_7, x_8, x_2118);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2123 = lean_ctor_get(x_2122, 0);
lean_inc(x_2123);
x_2124 = lean_ctor_get(x_2122, 1);
lean_inc(x_2124);
lean_dec(x_2122);
x_10 = x_2123;
x_11 = x_2124;
goto block_18;
}
else
{
lean_object* x_2125; lean_object* x_2126; lean_object* x_2127; lean_object* x_2128; 
x_2125 = l_Lean_Expr_appFn_x21(x_2117);
x_2126 = l_Lean_Expr_appArg_x21(x_2125);
lean_dec(x_2125);
x_2127 = l_Lean_Expr_appArg_x21(x_2117);
lean_dec(x_2117);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2128 = l_Lean_Meta_isExprDefEq(x_1, x_2126, x_5, x_6, x_7, x_8, x_2118);
if (lean_obj_tag(x_2128) == 0)
{
lean_object* x_2129; uint8_t x_2130; 
x_2129 = lean_ctor_get(x_2128, 0);
lean_inc(x_2129);
x_2130 = lean_unbox(x_2129);
lean_dec(x_2129);
if (x_2130 == 0)
{
lean_object* x_2131; lean_object* x_2132; lean_object* x_2133; lean_object* x_2134; lean_object* x_2135; 
lean_dec(x_2127);
lean_dec(x_2114);
x_2131 = lean_ctor_get(x_2128, 1);
lean_inc(x_2131);
lean_dec(x_2128);
x_2132 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_2133 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_2132, x_5, x_6, x_7, x_8, x_2131);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2134 = lean_ctor_get(x_2133, 0);
lean_inc(x_2134);
x_2135 = lean_ctor_get(x_2133, 1);
lean_inc(x_2135);
lean_dec(x_2133);
x_10 = x_2134;
x_11 = x_2135;
goto block_18;
}
else
{
uint8_t x_2136; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2136 = !lean_is_exclusive(x_2128);
if (x_2136 == 0)
{
lean_object* x_2137; lean_object* x_2138; uint8_t x_2139; lean_object* x_2140; lean_object* x_2141; lean_object* x_2142; 
x_2137 = lean_ctor_get(x_2128, 0);
lean_dec(x_2137);
x_2138 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2138, 0, x_2114);
x_2139 = 1;
x_2140 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2140, 0, x_2127);
lean_ctor_set(x_2140, 1, x_2138);
lean_ctor_set_uint8(x_2140, sizeof(void*)*2, x_2139);
x_2141 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2141, 0, x_2140);
x_2142 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2142, 0, x_2141);
lean_ctor_set(x_2128, 0, x_2142);
return x_2128;
}
else
{
lean_object* x_2143; lean_object* x_2144; uint8_t x_2145; lean_object* x_2146; lean_object* x_2147; lean_object* x_2148; lean_object* x_2149; 
x_2143 = lean_ctor_get(x_2128, 1);
lean_inc(x_2143);
lean_dec(x_2128);
x_2144 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2144, 0, x_2114);
x_2145 = 1;
x_2146 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2146, 0, x_2127);
lean_ctor_set(x_2146, 1, x_2144);
lean_ctor_set_uint8(x_2146, sizeof(void*)*2, x_2145);
x_2147 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2147, 0, x_2146);
x_2148 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2148, 0, x_2147);
x_2149 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2149, 0, x_2148);
lean_ctor_set(x_2149, 1, x_2143);
return x_2149;
}
}
}
else
{
lean_object* x_2150; lean_object* x_2151; 
lean_dec(x_2127);
lean_dec(x_2114);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2150 = lean_ctor_get(x_2128, 0);
lean_inc(x_2150);
x_2151 = lean_ctor_get(x_2128, 1);
lean_inc(x_2151);
lean_dec(x_2128);
x_10 = x_2150;
x_11 = x_2151;
goto block_18;
}
}
}
else
{
lean_object* x_2152; lean_object* x_2153; 
lean_dec(x_2114);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_2152 = lean_ctor_get(x_2116, 0);
lean_inc(x_2152);
x_2153 = lean_ctor_get(x_2116, 1);
lean_inc(x_2153);
lean_dec(x_2116);
x_10 = x_2152;
x_11 = x_2153;
goto block_18;
}
}
else
{
lean_object* x_2154; lean_object* x_2155; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_2154 = lean_ctor_get(x_2113, 0);
lean_inc(x_2154);
x_2155 = lean_ctor_get(x_2113, 1);
lean_inc(x_2155);
lean_dec(x_2113);
x_10 = x_2154;
x_11 = x_2155;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_2156; uint8_t x_2157; 
lean_dec(x_1147);
x_2156 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53;
x_2157 = lean_string_dec_eq(x_1146, x_2156);
lean_dec(x_1146);
if (x_2157 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2158; lean_object* x_2159; lean_object* x_2160; uint8_t x_2161; lean_object* x_2162; 
lean_free_object(x_28);
x_2158 = lean_ctor_get(x_32, 0);
lean_inc(x_2158);
x_2159 = lean_ctor_get(x_32, 1);
lean_inc(x_2159);
x_2160 = lean_ctor_get(x_32, 2);
lean_inc(x_2160);
x_2161 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2159);
x_2162 = l_Lean_Meta_isProp(x_2159, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2162) == 0)
{
lean_object* x_2163; lean_object* x_2164; lean_object* x_2165; uint8_t x_2202; 
x_2163 = lean_ctor_get(x_2162, 0);
lean_inc(x_2163);
x_2164 = lean_ctor_get(x_2162, 1);
lean_inc(x_2164);
lean_dec(x_2162);
x_2202 = lean_unbox(x_2163);
lean_dec(x_2163);
if (x_2202 == 0)
{
lean_object* x_2203; 
x_2203 = lean_box(0);
x_2165 = x_2203;
goto block_2201;
}
else
{
uint8_t x_2204; 
x_2204 = l_Lean_Expr_hasLooseBVars(x_2160);
if (x_2204 == 0)
{
lean_object* x_2205; lean_object* x_2206; lean_object* x_2207; lean_object* x_2208; lean_object* x_2209; lean_object* x_2210; 
lean_dec(x_2158);
lean_inc(x_2160);
x_2205 = l_Lean_mkNot(x_2160);
x_2206 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2207 = lean_array_push(x_2206, x_2159);
lean_inc(x_2207);
x_2208 = lean_array_push(x_2207, x_2205);
x_2209 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2210 = l_Lean_Meta_mkAppM(x_2209, x_2208, x_5, x_6, x_7, x_8, x_2164);
if (lean_obj_tag(x_2210) == 0)
{
lean_object* x_2211; lean_object* x_2212; lean_object* x_2213; lean_object* x_2214; lean_object* x_2215; 
x_2211 = lean_ctor_get(x_2210, 0);
lean_inc(x_2211);
x_2212 = lean_ctor_get(x_2210, 1);
lean_inc(x_2212);
lean_dec(x_2210);
x_2213 = lean_array_push(x_2207, x_2160);
x_2214 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2215 = l_Lean_Meta_mkAppM(x_2214, x_2213, x_5, x_6, x_7, x_8, x_2212);
if (lean_obj_tag(x_2215) == 0)
{
uint8_t x_2216; 
x_2216 = !lean_is_exclusive(x_2215);
if (x_2216 == 0)
{
lean_object* x_2217; lean_object* x_2218; uint8_t x_2219; lean_object* x_2220; lean_object* x_2221; lean_object* x_2222; 
x_2217 = lean_ctor_get(x_2215, 0);
x_2218 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2218, 0, x_2217);
x_2219 = 1;
x_2220 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2220, 0, x_2211);
lean_ctor_set(x_2220, 1, x_2218);
lean_ctor_set_uint8(x_2220, sizeof(void*)*2, x_2219);
x_2221 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2221, 0, x_2220);
x_2222 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2222, 0, x_2221);
lean_ctor_set(x_2215, 0, x_2222);
return x_2215;
}
else
{
lean_object* x_2223; lean_object* x_2224; lean_object* x_2225; uint8_t x_2226; lean_object* x_2227; lean_object* x_2228; lean_object* x_2229; lean_object* x_2230; 
x_2223 = lean_ctor_get(x_2215, 0);
x_2224 = lean_ctor_get(x_2215, 1);
lean_inc(x_2224);
lean_inc(x_2223);
lean_dec(x_2215);
x_2225 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2225, 0, x_2223);
x_2226 = 1;
x_2227 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2227, 0, x_2211);
lean_ctor_set(x_2227, 1, x_2225);
lean_ctor_set_uint8(x_2227, sizeof(void*)*2, x_2226);
x_2228 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2228, 0, x_2227);
x_2229 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2229, 0, x_2228);
x_2230 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2230, 0, x_2229);
lean_ctor_set(x_2230, 1, x_2224);
return x_2230;
}
}
else
{
uint8_t x_2231; 
lean_dec(x_2211);
x_2231 = !lean_is_exclusive(x_2215);
if (x_2231 == 0)
{
return x_2215;
}
else
{
lean_object* x_2232; lean_object* x_2233; lean_object* x_2234; 
x_2232 = lean_ctor_get(x_2215, 0);
x_2233 = lean_ctor_get(x_2215, 1);
lean_inc(x_2233);
lean_inc(x_2232);
lean_dec(x_2215);
x_2234 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2234, 0, x_2232);
lean_ctor_set(x_2234, 1, x_2233);
return x_2234;
}
}
}
else
{
uint8_t x_2235; 
lean_dec(x_2207);
lean_dec(x_2160);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2235 = !lean_is_exclusive(x_2210);
if (x_2235 == 0)
{
return x_2210;
}
else
{
lean_object* x_2236; lean_object* x_2237; lean_object* x_2238; 
x_2236 = lean_ctor_get(x_2210, 0);
x_2237 = lean_ctor_get(x_2210, 1);
lean_inc(x_2237);
lean_inc(x_2236);
lean_dec(x_2210);
x_2238 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2238, 0, x_2236);
lean_ctor_set(x_2238, 1, x_2237);
return x_2238;
}
}
}
else
{
lean_object* x_2239; 
x_2239 = lean_box(0);
x_2165 = x_2239;
goto block_2201;
}
}
block_2201:
{
lean_object* x_2166; lean_object* x_2167; lean_object* x_2168; lean_object* x_2169; lean_object* x_2170; lean_object* x_2171; lean_object* x_2172; 
lean_dec(x_2165);
lean_inc(x_2160);
x_2166 = l_Lean_mkNot(x_2160);
lean_inc(x_2159);
lean_inc(x_2158);
x_2167 = l_Lean_Expr_lam___override(x_2158, x_2159, x_2166, x_2161);
x_2168 = l_Lean_Expr_lam___override(x_2158, x_2159, x_2160, x_2161);
x_2169 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2170 = lean_array_push(x_2169, x_2167);
x_2171 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2172 = l_Lean_Meta_mkAppM(x_2171, x_2170, x_5, x_6, x_7, x_8, x_2164);
if (lean_obj_tag(x_2172) == 0)
{
lean_object* x_2173; lean_object* x_2174; lean_object* x_2175; lean_object* x_2176; lean_object* x_2177; 
x_2173 = lean_ctor_get(x_2172, 0);
lean_inc(x_2173);
x_2174 = lean_ctor_get(x_2172, 1);
lean_inc(x_2174);
lean_dec(x_2172);
x_2175 = lean_array_push(x_2169, x_2168);
x_2176 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2177 = l_Lean_Meta_mkAppM(x_2176, x_2175, x_5, x_6, x_7, x_8, x_2174);
if (lean_obj_tag(x_2177) == 0)
{
uint8_t x_2178; 
x_2178 = !lean_is_exclusive(x_2177);
if (x_2178 == 0)
{
lean_object* x_2179; lean_object* x_2180; uint8_t x_2181; lean_object* x_2182; lean_object* x_2183; lean_object* x_2184; 
x_2179 = lean_ctor_get(x_2177, 0);
x_2180 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2180, 0, x_2179);
x_2181 = 1;
x_2182 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2182, 0, x_2173);
lean_ctor_set(x_2182, 1, x_2180);
lean_ctor_set_uint8(x_2182, sizeof(void*)*2, x_2181);
x_2183 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2183, 0, x_2182);
x_2184 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2184, 0, x_2183);
lean_ctor_set(x_2177, 0, x_2184);
return x_2177;
}
else
{
lean_object* x_2185; lean_object* x_2186; lean_object* x_2187; uint8_t x_2188; lean_object* x_2189; lean_object* x_2190; lean_object* x_2191; lean_object* x_2192; 
x_2185 = lean_ctor_get(x_2177, 0);
x_2186 = lean_ctor_get(x_2177, 1);
lean_inc(x_2186);
lean_inc(x_2185);
lean_dec(x_2177);
x_2187 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2187, 0, x_2185);
x_2188 = 1;
x_2189 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2189, 0, x_2173);
lean_ctor_set(x_2189, 1, x_2187);
lean_ctor_set_uint8(x_2189, sizeof(void*)*2, x_2188);
x_2190 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2190, 0, x_2189);
x_2191 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2191, 0, x_2190);
x_2192 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2192, 0, x_2191);
lean_ctor_set(x_2192, 1, x_2186);
return x_2192;
}
}
else
{
uint8_t x_2193; 
lean_dec(x_2173);
x_2193 = !lean_is_exclusive(x_2177);
if (x_2193 == 0)
{
return x_2177;
}
else
{
lean_object* x_2194; lean_object* x_2195; lean_object* x_2196; 
x_2194 = lean_ctor_get(x_2177, 0);
x_2195 = lean_ctor_get(x_2177, 1);
lean_inc(x_2195);
lean_inc(x_2194);
lean_dec(x_2177);
x_2196 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2196, 0, x_2194);
lean_ctor_set(x_2196, 1, x_2195);
return x_2196;
}
}
}
else
{
uint8_t x_2197; 
lean_dec(x_2168);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2197 = !lean_is_exclusive(x_2172);
if (x_2197 == 0)
{
return x_2172;
}
else
{
lean_object* x_2198; lean_object* x_2199; lean_object* x_2200; 
x_2198 = lean_ctor_get(x_2172, 0);
x_2199 = lean_ctor_get(x_2172, 1);
lean_inc(x_2199);
lean_inc(x_2198);
lean_dec(x_2172);
x_2200 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2200, 0, x_2198);
lean_ctor_set(x_2200, 1, x_2199);
return x_2200;
}
}
}
}
else
{
uint8_t x_2240; 
lean_dec(x_2160);
lean_dec(x_2159);
lean_dec(x_2158);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2240 = !lean_is_exclusive(x_2162);
if (x_2240 == 0)
{
return x_2162;
}
else
{
lean_object* x_2241; lean_object* x_2242; lean_object* x_2243; 
x_2241 = lean_ctor_get(x_2162, 0);
x_2242 = lean_ctor_get(x_2162, 1);
lean_inc(x_2242);
lean_inc(x_2241);
lean_dec(x_2162);
x_2243 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2243, 0, x_2241);
lean_ctor_set(x_2243, 1, x_2242);
return x_2243;
}
}
}
else
{
lean_object* x_2244; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2244 = lean_box(0);
lean_ctor_set(x_28, 0, x_2244);
return x_28;
}
}
else
{
lean_object* x_2245; lean_object* x_2246; uint8_t x_2247; 
x_2245 = lean_array_get_size(x_1145);
x_2246 = lean_unsigned_to_nat(4u);
x_2247 = lean_nat_dec_eq(x_2245, x_2246);
lean_dec(x_2245);
if (x_2247 == 0)
{
lean_dec(x_1145);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2248; lean_object* x_2249; lean_object* x_2250; uint8_t x_2251; lean_object* x_2252; 
lean_free_object(x_28);
x_2248 = lean_ctor_get(x_32, 0);
lean_inc(x_2248);
x_2249 = lean_ctor_get(x_32, 1);
lean_inc(x_2249);
x_2250 = lean_ctor_get(x_32, 2);
lean_inc(x_2250);
x_2251 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2249);
x_2252 = l_Lean_Meta_isProp(x_2249, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2252) == 0)
{
lean_object* x_2253; lean_object* x_2254; lean_object* x_2255; uint8_t x_2292; 
x_2253 = lean_ctor_get(x_2252, 0);
lean_inc(x_2253);
x_2254 = lean_ctor_get(x_2252, 1);
lean_inc(x_2254);
lean_dec(x_2252);
x_2292 = lean_unbox(x_2253);
lean_dec(x_2253);
if (x_2292 == 0)
{
lean_object* x_2293; 
x_2293 = lean_box(0);
x_2255 = x_2293;
goto block_2291;
}
else
{
uint8_t x_2294; 
x_2294 = l_Lean_Expr_hasLooseBVars(x_2250);
if (x_2294 == 0)
{
lean_object* x_2295; lean_object* x_2296; lean_object* x_2297; lean_object* x_2298; lean_object* x_2299; lean_object* x_2300; 
lean_dec(x_2248);
lean_inc(x_2250);
x_2295 = l_Lean_mkNot(x_2250);
x_2296 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2297 = lean_array_push(x_2296, x_2249);
lean_inc(x_2297);
x_2298 = lean_array_push(x_2297, x_2295);
x_2299 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2300 = l_Lean_Meta_mkAppM(x_2299, x_2298, x_5, x_6, x_7, x_8, x_2254);
if (lean_obj_tag(x_2300) == 0)
{
lean_object* x_2301; lean_object* x_2302; lean_object* x_2303; lean_object* x_2304; lean_object* x_2305; 
x_2301 = lean_ctor_get(x_2300, 0);
lean_inc(x_2301);
x_2302 = lean_ctor_get(x_2300, 1);
lean_inc(x_2302);
lean_dec(x_2300);
x_2303 = lean_array_push(x_2297, x_2250);
x_2304 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2305 = l_Lean_Meta_mkAppM(x_2304, x_2303, x_5, x_6, x_7, x_8, x_2302);
if (lean_obj_tag(x_2305) == 0)
{
uint8_t x_2306; 
x_2306 = !lean_is_exclusive(x_2305);
if (x_2306 == 0)
{
lean_object* x_2307; lean_object* x_2308; uint8_t x_2309; lean_object* x_2310; lean_object* x_2311; lean_object* x_2312; 
x_2307 = lean_ctor_get(x_2305, 0);
x_2308 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2308, 0, x_2307);
x_2309 = 1;
x_2310 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2310, 0, x_2301);
lean_ctor_set(x_2310, 1, x_2308);
lean_ctor_set_uint8(x_2310, sizeof(void*)*2, x_2309);
x_2311 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2311, 0, x_2310);
x_2312 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2312, 0, x_2311);
lean_ctor_set(x_2305, 0, x_2312);
return x_2305;
}
else
{
lean_object* x_2313; lean_object* x_2314; lean_object* x_2315; uint8_t x_2316; lean_object* x_2317; lean_object* x_2318; lean_object* x_2319; lean_object* x_2320; 
x_2313 = lean_ctor_get(x_2305, 0);
x_2314 = lean_ctor_get(x_2305, 1);
lean_inc(x_2314);
lean_inc(x_2313);
lean_dec(x_2305);
x_2315 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2315, 0, x_2313);
x_2316 = 1;
x_2317 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2317, 0, x_2301);
lean_ctor_set(x_2317, 1, x_2315);
lean_ctor_set_uint8(x_2317, sizeof(void*)*2, x_2316);
x_2318 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2318, 0, x_2317);
x_2319 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2319, 0, x_2318);
x_2320 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2320, 0, x_2319);
lean_ctor_set(x_2320, 1, x_2314);
return x_2320;
}
}
else
{
uint8_t x_2321; 
lean_dec(x_2301);
x_2321 = !lean_is_exclusive(x_2305);
if (x_2321 == 0)
{
return x_2305;
}
else
{
lean_object* x_2322; lean_object* x_2323; lean_object* x_2324; 
x_2322 = lean_ctor_get(x_2305, 0);
x_2323 = lean_ctor_get(x_2305, 1);
lean_inc(x_2323);
lean_inc(x_2322);
lean_dec(x_2305);
x_2324 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2324, 0, x_2322);
lean_ctor_set(x_2324, 1, x_2323);
return x_2324;
}
}
}
else
{
uint8_t x_2325; 
lean_dec(x_2297);
lean_dec(x_2250);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2325 = !lean_is_exclusive(x_2300);
if (x_2325 == 0)
{
return x_2300;
}
else
{
lean_object* x_2326; lean_object* x_2327; lean_object* x_2328; 
x_2326 = lean_ctor_get(x_2300, 0);
x_2327 = lean_ctor_get(x_2300, 1);
lean_inc(x_2327);
lean_inc(x_2326);
lean_dec(x_2300);
x_2328 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2328, 0, x_2326);
lean_ctor_set(x_2328, 1, x_2327);
return x_2328;
}
}
}
else
{
lean_object* x_2329; 
x_2329 = lean_box(0);
x_2255 = x_2329;
goto block_2291;
}
}
block_2291:
{
lean_object* x_2256; lean_object* x_2257; lean_object* x_2258; lean_object* x_2259; lean_object* x_2260; lean_object* x_2261; lean_object* x_2262; 
lean_dec(x_2255);
lean_inc(x_2250);
x_2256 = l_Lean_mkNot(x_2250);
lean_inc(x_2249);
lean_inc(x_2248);
x_2257 = l_Lean_Expr_lam___override(x_2248, x_2249, x_2256, x_2251);
x_2258 = l_Lean_Expr_lam___override(x_2248, x_2249, x_2250, x_2251);
x_2259 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2260 = lean_array_push(x_2259, x_2257);
x_2261 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2262 = l_Lean_Meta_mkAppM(x_2261, x_2260, x_5, x_6, x_7, x_8, x_2254);
if (lean_obj_tag(x_2262) == 0)
{
lean_object* x_2263; lean_object* x_2264; lean_object* x_2265; lean_object* x_2266; lean_object* x_2267; 
x_2263 = lean_ctor_get(x_2262, 0);
lean_inc(x_2263);
x_2264 = lean_ctor_get(x_2262, 1);
lean_inc(x_2264);
lean_dec(x_2262);
x_2265 = lean_array_push(x_2259, x_2258);
x_2266 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2267 = l_Lean_Meta_mkAppM(x_2266, x_2265, x_5, x_6, x_7, x_8, x_2264);
if (lean_obj_tag(x_2267) == 0)
{
uint8_t x_2268; 
x_2268 = !lean_is_exclusive(x_2267);
if (x_2268 == 0)
{
lean_object* x_2269; lean_object* x_2270; uint8_t x_2271; lean_object* x_2272; lean_object* x_2273; lean_object* x_2274; 
x_2269 = lean_ctor_get(x_2267, 0);
x_2270 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2270, 0, x_2269);
x_2271 = 1;
x_2272 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2272, 0, x_2263);
lean_ctor_set(x_2272, 1, x_2270);
lean_ctor_set_uint8(x_2272, sizeof(void*)*2, x_2271);
x_2273 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2273, 0, x_2272);
x_2274 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2274, 0, x_2273);
lean_ctor_set(x_2267, 0, x_2274);
return x_2267;
}
else
{
lean_object* x_2275; lean_object* x_2276; lean_object* x_2277; uint8_t x_2278; lean_object* x_2279; lean_object* x_2280; lean_object* x_2281; lean_object* x_2282; 
x_2275 = lean_ctor_get(x_2267, 0);
x_2276 = lean_ctor_get(x_2267, 1);
lean_inc(x_2276);
lean_inc(x_2275);
lean_dec(x_2267);
x_2277 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2277, 0, x_2275);
x_2278 = 1;
x_2279 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2279, 0, x_2263);
lean_ctor_set(x_2279, 1, x_2277);
lean_ctor_set_uint8(x_2279, sizeof(void*)*2, x_2278);
x_2280 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2280, 0, x_2279);
x_2281 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2281, 0, x_2280);
x_2282 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2282, 0, x_2281);
lean_ctor_set(x_2282, 1, x_2276);
return x_2282;
}
}
else
{
uint8_t x_2283; 
lean_dec(x_2263);
x_2283 = !lean_is_exclusive(x_2267);
if (x_2283 == 0)
{
return x_2267;
}
else
{
lean_object* x_2284; lean_object* x_2285; lean_object* x_2286; 
x_2284 = lean_ctor_get(x_2267, 0);
x_2285 = lean_ctor_get(x_2267, 1);
lean_inc(x_2285);
lean_inc(x_2284);
lean_dec(x_2267);
x_2286 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2286, 0, x_2284);
lean_ctor_set(x_2286, 1, x_2285);
return x_2286;
}
}
}
else
{
uint8_t x_2287; 
lean_dec(x_2258);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2287 = !lean_is_exclusive(x_2262);
if (x_2287 == 0)
{
return x_2262;
}
else
{
lean_object* x_2288; lean_object* x_2289; lean_object* x_2290; 
x_2288 = lean_ctor_get(x_2262, 0);
x_2289 = lean_ctor_get(x_2262, 1);
lean_inc(x_2289);
lean_inc(x_2288);
lean_dec(x_2262);
x_2290 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2290, 0, x_2288);
lean_ctor_set(x_2290, 1, x_2289);
return x_2290;
}
}
}
}
else
{
uint8_t x_2330; 
lean_dec(x_2250);
lean_dec(x_2249);
lean_dec(x_2248);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2330 = !lean_is_exclusive(x_2252);
if (x_2330 == 0)
{
return x_2252;
}
else
{
lean_object* x_2331; lean_object* x_2332; lean_object* x_2333; 
x_2331 = lean_ctor_get(x_2252, 0);
x_2332 = lean_ctor_get(x_2252, 1);
lean_inc(x_2332);
lean_inc(x_2331);
lean_dec(x_2252);
x_2333 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2333, 0, x_2331);
lean_ctor_set(x_2333, 1, x_2332);
return x_2333;
}
}
}
else
{
lean_object* x_2334; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2334 = lean_box(0);
lean_ctor_set(x_28, 0, x_2334);
return x_28;
}
}
else
{
lean_object* x_2335; lean_object* x_2336; lean_object* x_2337; lean_object* x_2338; lean_object* x_2339; lean_object* x_2340; lean_object* x_2341; lean_object* x_2342; lean_object* x_2343; 
lean_dec(x_32);
lean_free_object(x_28);
x_2335 = lean_unsigned_to_nat(2u);
x_2336 = lean_array_fget(x_1145, x_2335);
x_2337 = lean_unsigned_to_nat(3u);
x_2338 = lean_array_fget(x_1145, x_2337);
lean_dec(x_1145);
x_2339 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2340 = lean_array_push(x_2339, x_2336);
x_2341 = lean_array_push(x_2340, x_2338);
x_2342 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2343 = l_Lean_Meta_mkAppM(x_2342, x_2341, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2343) == 0)
{
lean_object* x_2344; lean_object* x_2345; lean_object* x_2346; 
x_2344 = lean_ctor_get(x_2343, 0);
lean_inc(x_2344);
x_2345 = lean_ctor_get(x_2343, 1);
lean_inc(x_2345);
lean_dec(x_2343);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2344);
x_2346 = lean_infer_type(x_2344, x_5, x_6, x_7, x_8, x_2345);
if (lean_obj_tag(x_2346) == 0)
{
lean_object* x_2347; lean_object* x_2348; lean_object* x_2349; uint8_t x_2350; 
x_2347 = lean_ctor_get(x_2346, 0);
lean_inc(x_2347);
x_2348 = lean_ctor_get(x_2346, 1);
lean_inc(x_2348);
lean_dec(x_2346);
x_2349 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_2350 = l_Lean_Expr_isAppOfArity(x_2347, x_2349, x_2337);
if (x_2350 == 0)
{
lean_object* x_2351; lean_object* x_2352; lean_object* x_2353; lean_object* x_2354; 
lean_dec(x_2347);
lean_dec(x_2344);
lean_dec(x_1);
x_2351 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_2352 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_2351, x_5, x_6, x_7, x_8, x_2348);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2353 = lean_ctor_get(x_2352, 0);
lean_inc(x_2353);
x_2354 = lean_ctor_get(x_2352, 1);
lean_inc(x_2354);
lean_dec(x_2352);
x_10 = x_2353;
x_11 = x_2354;
goto block_18;
}
else
{
lean_object* x_2355; lean_object* x_2356; lean_object* x_2357; lean_object* x_2358; 
x_2355 = l_Lean_Expr_appFn_x21(x_2347);
x_2356 = l_Lean_Expr_appArg_x21(x_2355);
lean_dec(x_2355);
x_2357 = l_Lean_Expr_appArg_x21(x_2347);
lean_dec(x_2347);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2358 = l_Lean_Meta_isExprDefEq(x_1, x_2356, x_5, x_6, x_7, x_8, x_2348);
if (lean_obj_tag(x_2358) == 0)
{
lean_object* x_2359; uint8_t x_2360; 
x_2359 = lean_ctor_get(x_2358, 0);
lean_inc(x_2359);
x_2360 = lean_unbox(x_2359);
lean_dec(x_2359);
if (x_2360 == 0)
{
lean_object* x_2361; lean_object* x_2362; lean_object* x_2363; lean_object* x_2364; lean_object* x_2365; 
lean_dec(x_2357);
lean_dec(x_2344);
x_2361 = lean_ctor_get(x_2358, 1);
lean_inc(x_2361);
lean_dec(x_2358);
x_2362 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_2363 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_2362, x_5, x_6, x_7, x_8, x_2361);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2364 = lean_ctor_get(x_2363, 0);
lean_inc(x_2364);
x_2365 = lean_ctor_get(x_2363, 1);
lean_inc(x_2365);
lean_dec(x_2363);
x_10 = x_2364;
x_11 = x_2365;
goto block_18;
}
else
{
uint8_t x_2366; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2366 = !lean_is_exclusive(x_2358);
if (x_2366 == 0)
{
lean_object* x_2367; lean_object* x_2368; uint8_t x_2369; lean_object* x_2370; lean_object* x_2371; lean_object* x_2372; 
x_2367 = lean_ctor_get(x_2358, 0);
lean_dec(x_2367);
x_2368 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2368, 0, x_2344);
x_2369 = 1;
x_2370 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2370, 0, x_2357);
lean_ctor_set(x_2370, 1, x_2368);
lean_ctor_set_uint8(x_2370, sizeof(void*)*2, x_2369);
x_2371 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2371, 0, x_2370);
x_2372 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2372, 0, x_2371);
lean_ctor_set(x_2358, 0, x_2372);
return x_2358;
}
else
{
lean_object* x_2373; lean_object* x_2374; uint8_t x_2375; lean_object* x_2376; lean_object* x_2377; lean_object* x_2378; lean_object* x_2379; 
x_2373 = lean_ctor_get(x_2358, 1);
lean_inc(x_2373);
lean_dec(x_2358);
x_2374 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2374, 0, x_2344);
x_2375 = 1;
x_2376 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2376, 0, x_2357);
lean_ctor_set(x_2376, 1, x_2374);
lean_ctor_set_uint8(x_2376, sizeof(void*)*2, x_2375);
x_2377 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2377, 0, x_2376);
x_2378 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2378, 0, x_2377);
x_2379 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2379, 0, x_2378);
lean_ctor_set(x_2379, 1, x_2373);
return x_2379;
}
}
}
else
{
lean_object* x_2380; lean_object* x_2381; 
lean_dec(x_2357);
lean_dec(x_2344);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2380 = lean_ctor_get(x_2358, 0);
lean_inc(x_2380);
x_2381 = lean_ctor_get(x_2358, 1);
lean_inc(x_2381);
lean_dec(x_2358);
x_10 = x_2380;
x_11 = x_2381;
goto block_18;
}
}
}
else
{
lean_object* x_2382; lean_object* x_2383; 
lean_dec(x_2344);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_2382 = lean_ctor_get(x_2346, 0);
lean_inc(x_2382);
x_2383 = lean_ctor_get(x_2346, 1);
lean_inc(x_2383);
lean_dec(x_2346);
x_10 = x_2382;
x_11 = x_2383;
goto block_18;
}
}
else
{
lean_object* x_2384; lean_object* x_2385; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_2384 = lean_ctor_get(x_2343, 0);
lean_inc(x_2384);
x_2385 = lean_ctor_get(x_2343, 1);
lean_inc(x_2385);
lean_dec(x_2343);
x_10 = x_2384;
x_11 = x_2385;
goto block_18;
}
}
}
}
}
case 1:
{
lean_dec(x_1144);
lean_dec(x_122);
lean_dec(x_34);
lean_dec(x_33);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2386; lean_object* x_2387; lean_object* x_2388; uint8_t x_2389; lean_object* x_2390; 
lean_free_object(x_28);
x_2386 = lean_ctor_get(x_32, 0);
lean_inc(x_2386);
x_2387 = lean_ctor_get(x_32, 1);
lean_inc(x_2387);
x_2388 = lean_ctor_get(x_32, 2);
lean_inc(x_2388);
x_2389 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2387);
x_2390 = l_Lean_Meta_isProp(x_2387, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2390) == 0)
{
lean_object* x_2391; lean_object* x_2392; lean_object* x_2393; uint8_t x_2430; 
x_2391 = lean_ctor_get(x_2390, 0);
lean_inc(x_2391);
x_2392 = lean_ctor_get(x_2390, 1);
lean_inc(x_2392);
lean_dec(x_2390);
x_2430 = lean_unbox(x_2391);
lean_dec(x_2391);
if (x_2430 == 0)
{
lean_object* x_2431; 
x_2431 = lean_box(0);
x_2393 = x_2431;
goto block_2429;
}
else
{
uint8_t x_2432; 
x_2432 = l_Lean_Expr_hasLooseBVars(x_2388);
if (x_2432 == 0)
{
lean_object* x_2433; lean_object* x_2434; lean_object* x_2435; lean_object* x_2436; lean_object* x_2437; lean_object* x_2438; 
lean_dec(x_2386);
lean_inc(x_2388);
x_2433 = l_Lean_mkNot(x_2388);
x_2434 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2435 = lean_array_push(x_2434, x_2387);
lean_inc(x_2435);
x_2436 = lean_array_push(x_2435, x_2433);
x_2437 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2438 = l_Lean_Meta_mkAppM(x_2437, x_2436, x_5, x_6, x_7, x_8, x_2392);
if (lean_obj_tag(x_2438) == 0)
{
lean_object* x_2439; lean_object* x_2440; lean_object* x_2441; lean_object* x_2442; lean_object* x_2443; 
x_2439 = lean_ctor_get(x_2438, 0);
lean_inc(x_2439);
x_2440 = lean_ctor_get(x_2438, 1);
lean_inc(x_2440);
lean_dec(x_2438);
x_2441 = lean_array_push(x_2435, x_2388);
x_2442 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2443 = l_Lean_Meta_mkAppM(x_2442, x_2441, x_5, x_6, x_7, x_8, x_2440);
if (lean_obj_tag(x_2443) == 0)
{
uint8_t x_2444; 
x_2444 = !lean_is_exclusive(x_2443);
if (x_2444 == 0)
{
lean_object* x_2445; lean_object* x_2446; uint8_t x_2447; lean_object* x_2448; lean_object* x_2449; lean_object* x_2450; 
x_2445 = lean_ctor_get(x_2443, 0);
x_2446 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2446, 0, x_2445);
x_2447 = 1;
x_2448 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2448, 0, x_2439);
lean_ctor_set(x_2448, 1, x_2446);
lean_ctor_set_uint8(x_2448, sizeof(void*)*2, x_2447);
x_2449 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2449, 0, x_2448);
x_2450 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2450, 0, x_2449);
lean_ctor_set(x_2443, 0, x_2450);
return x_2443;
}
else
{
lean_object* x_2451; lean_object* x_2452; lean_object* x_2453; uint8_t x_2454; lean_object* x_2455; lean_object* x_2456; lean_object* x_2457; lean_object* x_2458; 
x_2451 = lean_ctor_get(x_2443, 0);
x_2452 = lean_ctor_get(x_2443, 1);
lean_inc(x_2452);
lean_inc(x_2451);
lean_dec(x_2443);
x_2453 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2453, 0, x_2451);
x_2454 = 1;
x_2455 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2455, 0, x_2439);
lean_ctor_set(x_2455, 1, x_2453);
lean_ctor_set_uint8(x_2455, sizeof(void*)*2, x_2454);
x_2456 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2456, 0, x_2455);
x_2457 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2457, 0, x_2456);
x_2458 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2458, 0, x_2457);
lean_ctor_set(x_2458, 1, x_2452);
return x_2458;
}
}
else
{
uint8_t x_2459; 
lean_dec(x_2439);
x_2459 = !lean_is_exclusive(x_2443);
if (x_2459 == 0)
{
return x_2443;
}
else
{
lean_object* x_2460; lean_object* x_2461; lean_object* x_2462; 
x_2460 = lean_ctor_get(x_2443, 0);
x_2461 = lean_ctor_get(x_2443, 1);
lean_inc(x_2461);
lean_inc(x_2460);
lean_dec(x_2443);
x_2462 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2462, 0, x_2460);
lean_ctor_set(x_2462, 1, x_2461);
return x_2462;
}
}
}
else
{
uint8_t x_2463; 
lean_dec(x_2435);
lean_dec(x_2388);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2463 = !lean_is_exclusive(x_2438);
if (x_2463 == 0)
{
return x_2438;
}
else
{
lean_object* x_2464; lean_object* x_2465; lean_object* x_2466; 
x_2464 = lean_ctor_get(x_2438, 0);
x_2465 = lean_ctor_get(x_2438, 1);
lean_inc(x_2465);
lean_inc(x_2464);
lean_dec(x_2438);
x_2466 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2466, 0, x_2464);
lean_ctor_set(x_2466, 1, x_2465);
return x_2466;
}
}
}
else
{
lean_object* x_2467; 
x_2467 = lean_box(0);
x_2393 = x_2467;
goto block_2429;
}
}
block_2429:
{
lean_object* x_2394; lean_object* x_2395; lean_object* x_2396; lean_object* x_2397; lean_object* x_2398; lean_object* x_2399; lean_object* x_2400; 
lean_dec(x_2393);
lean_inc(x_2388);
x_2394 = l_Lean_mkNot(x_2388);
lean_inc(x_2387);
lean_inc(x_2386);
x_2395 = l_Lean_Expr_lam___override(x_2386, x_2387, x_2394, x_2389);
x_2396 = l_Lean_Expr_lam___override(x_2386, x_2387, x_2388, x_2389);
x_2397 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2398 = lean_array_push(x_2397, x_2395);
x_2399 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2400 = l_Lean_Meta_mkAppM(x_2399, x_2398, x_5, x_6, x_7, x_8, x_2392);
if (lean_obj_tag(x_2400) == 0)
{
lean_object* x_2401; lean_object* x_2402; lean_object* x_2403; lean_object* x_2404; lean_object* x_2405; 
x_2401 = lean_ctor_get(x_2400, 0);
lean_inc(x_2401);
x_2402 = lean_ctor_get(x_2400, 1);
lean_inc(x_2402);
lean_dec(x_2400);
x_2403 = lean_array_push(x_2397, x_2396);
x_2404 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2405 = l_Lean_Meta_mkAppM(x_2404, x_2403, x_5, x_6, x_7, x_8, x_2402);
if (lean_obj_tag(x_2405) == 0)
{
uint8_t x_2406; 
x_2406 = !lean_is_exclusive(x_2405);
if (x_2406 == 0)
{
lean_object* x_2407; lean_object* x_2408; uint8_t x_2409; lean_object* x_2410; lean_object* x_2411; lean_object* x_2412; 
x_2407 = lean_ctor_get(x_2405, 0);
x_2408 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2408, 0, x_2407);
x_2409 = 1;
x_2410 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2410, 0, x_2401);
lean_ctor_set(x_2410, 1, x_2408);
lean_ctor_set_uint8(x_2410, sizeof(void*)*2, x_2409);
x_2411 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2411, 0, x_2410);
x_2412 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2412, 0, x_2411);
lean_ctor_set(x_2405, 0, x_2412);
return x_2405;
}
else
{
lean_object* x_2413; lean_object* x_2414; lean_object* x_2415; uint8_t x_2416; lean_object* x_2417; lean_object* x_2418; lean_object* x_2419; lean_object* x_2420; 
x_2413 = lean_ctor_get(x_2405, 0);
x_2414 = lean_ctor_get(x_2405, 1);
lean_inc(x_2414);
lean_inc(x_2413);
lean_dec(x_2405);
x_2415 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2415, 0, x_2413);
x_2416 = 1;
x_2417 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2417, 0, x_2401);
lean_ctor_set(x_2417, 1, x_2415);
lean_ctor_set_uint8(x_2417, sizeof(void*)*2, x_2416);
x_2418 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2418, 0, x_2417);
x_2419 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2419, 0, x_2418);
x_2420 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2420, 0, x_2419);
lean_ctor_set(x_2420, 1, x_2414);
return x_2420;
}
}
else
{
uint8_t x_2421; 
lean_dec(x_2401);
x_2421 = !lean_is_exclusive(x_2405);
if (x_2421 == 0)
{
return x_2405;
}
else
{
lean_object* x_2422; lean_object* x_2423; lean_object* x_2424; 
x_2422 = lean_ctor_get(x_2405, 0);
x_2423 = lean_ctor_get(x_2405, 1);
lean_inc(x_2423);
lean_inc(x_2422);
lean_dec(x_2405);
x_2424 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2424, 0, x_2422);
lean_ctor_set(x_2424, 1, x_2423);
return x_2424;
}
}
}
else
{
uint8_t x_2425; 
lean_dec(x_2396);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2425 = !lean_is_exclusive(x_2400);
if (x_2425 == 0)
{
return x_2400;
}
else
{
lean_object* x_2426; lean_object* x_2427; lean_object* x_2428; 
x_2426 = lean_ctor_get(x_2400, 0);
x_2427 = lean_ctor_get(x_2400, 1);
lean_inc(x_2427);
lean_inc(x_2426);
lean_dec(x_2400);
x_2428 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2428, 0, x_2426);
lean_ctor_set(x_2428, 1, x_2427);
return x_2428;
}
}
}
}
else
{
uint8_t x_2468; 
lean_dec(x_2388);
lean_dec(x_2387);
lean_dec(x_2386);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2468 = !lean_is_exclusive(x_2390);
if (x_2468 == 0)
{
return x_2390;
}
else
{
lean_object* x_2469; lean_object* x_2470; lean_object* x_2471; 
x_2469 = lean_ctor_get(x_2390, 0);
x_2470 = lean_ctor_get(x_2390, 1);
lean_inc(x_2470);
lean_inc(x_2469);
lean_dec(x_2390);
x_2471 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2471, 0, x_2469);
lean_ctor_set(x_2471, 1, x_2470);
return x_2471;
}
}
}
else
{
lean_object* x_2472; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2472 = lean_box(0);
lean_ctor_set(x_28, 0, x_2472);
return x_28;
}
}
default: 
{
lean_dec(x_1144);
lean_dec(x_122);
lean_dec(x_34);
lean_dec(x_33);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2473; lean_object* x_2474; lean_object* x_2475; uint8_t x_2476; lean_object* x_2477; 
lean_free_object(x_28);
x_2473 = lean_ctor_get(x_32, 0);
lean_inc(x_2473);
x_2474 = lean_ctor_get(x_32, 1);
lean_inc(x_2474);
x_2475 = lean_ctor_get(x_32, 2);
lean_inc(x_2475);
x_2476 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2474);
x_2477 = l_Lean_Meta_isProp(x_2474, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2477) == 0)
{
lean_object* x_2478; lean_object* x_2479; lean_object* x_2480; uint8_t x_2517; 
x_2478 = lean_ctor_get(x_2477, 0);
lean_inc(x_2478);
x_2479 = lean_ctor_get(x_2477, 1);
lean_inc(x_2479);
lean_dec(x_2477);
x_2517 = lean_unbox(x_2478);
lean_dec(x_2478);
if (x_2517 == 0)
{
lean_object* x_2518; 
x_2518 = lean_box(0);
x_2480 = x_2518;
goto block_2516;
}
else
{
uint8_t x_2519; 
x_2519 = l_Lean_Expr_hasLooseBVars(x_2475);
if (x_2519 == 0)
{
lean_object* x_2520; lean_object* x_2521; lean_object* x_2522; lean_object* x_2523; lean_object* x_2524; lean_object* x_2525; 
lean_dec(x_2473);
lean_inc(x_2475);
x_2520 = l_Lean_mkNot(x_2475);
x_2521 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2522 = lean_array_push(x_2521, x_2474);
lean_inc(x_2522);
x_2523 = lean_array_push(x_2522, x_2520);
x_2524 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2525 = l_Lean_Meta_mkAppM(x_2524, x_2523, x_5, x_6, x_7, x_8, x_2479);
if (lean_obj_tag(x_2525) == 0)
{
lean_object* x_2526; lean_object* x_2527; lean_object* x_2528; lean_object* x_2529; lean_object* x_2530; 
x_2526 = lean_ctor_get(x_2525, 0);
lean_inc(x_2526);
x_2527 = lean_ctor_get(x_2525, 1);
lean_inc(x_2527);
lean_dec(x_2525);
x_2528 = lean_array_push(x_2522, x_2475);
x_2529 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2530 = l_Lean_Meta_mkAppM(x_2529, x_2528, x_5, x_6, x_7, x_8, x_2527);
if (lean_obj_tag(x_2530) == 0)
{
uint8_t x_2531; 
x_2531 = !lean_is_exclusive(x_2530);
if (x_2531 == 0)
{
lean_object* x_2532; lean_object* x_2533; uint8_t x_2534; lean_object* x_2535; lean_object* x_2536; lean_object* x_2537; 
x_2532 = lean_ctor_get(x_2530, 0);
x_2533 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2533, 0, x_2532);
x_2534 = 1;
x_2535 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2535, 0, x_2526);
lean_ctor_set(x_2535, 1, x_2533);
lean_ctor_set_uint8(x_2535, sizeof(void*)*2, x_2534);
x_2536 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2536, 0, x_2535);
x_2537 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2537, 0, x_2536);
lean_ctor_set(x_2530, 0, x_2537);
return x_2530;
}
else
{
lean_object* x_2538; lean_object* x_2539; lean_object* x_2540; uint8_t x_2541; lean_object* x_2542; lean_object* x_2543; lean_object* x_2544; lean_object* x_2545; 
x_2538 = lean_ctor_get(x_2530, 0);
x_2539 = lean_ctor_get(x_2530, 1);
lean_inc(x_2539);
lean_inc(x_2538);
lean_dec(x_2530);
x_2540 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2540, 0, x_2538);
x_2541 = 1;
x_2542 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2542, 0, x_2526);
lean_ctor_set(x_2542, 1, x_2540);
lean_ctor_set_uint8(x_2542, sizeof(void*)*2, x_2541);
x_2543 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2543, 0, x_2542);
x_2544 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2544, 0, x_2543);
x_2545 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2545, 0, x_2544);
lean_ctor_set(x_2545, 1, x_2539);
return x_2545;
}
}
else
{
uint8_t x_2546; 
lean_dec(x_2526);
x_2546 = !lean_is_exclusive(x_2530);
if (x_2546 == 0)
{
return x_2530;
}
else
{
lean_object* x_2547; lean_object* x_2548; lean_object* x_2549; 
x_2547 = lean_ctor_get(x_2530, 0);
x_2548 = lean_ctor_get(x_2530, 1);
lean_inc(x_2548);
lean_inc(x_2547);
lean_dec(x_2530);
x_2549 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2549, 0, x_2547);
lean_ctor_set(x_2549, 1, x_2548);
return x_2549;
}
}
}
else
{
uint8_t x_2550; 
lean_dec(x_2522);
lean_dec(x_2475);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2550 = !lean_is_exclusive(x_2525);
if (x_2550 == 0)
{
return x_2525;
}
else
{
lean_object* x_2551; lean_object* x_2552; lean_object* x_2553; 
x_2551 = lean_ctor_get(x_2525, 0);
x_2552 = lean_ctor_get(x_2525, 1);
lean_inc(x_2552);
lean_inc(x_2551);
lean_dec(x_2525);
x_2553 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2553, 0, x_2551);
lean_ctor_set(x_2553, 1, x_2552);
return x_2553;
}
}
}
else
{
lean_object* x_2554; 
x_2554 = lean_box(0);
x_2480 = x_2554;
goto block_2516;
}
}
block_2516:
{
lean_object* x_2481; lean_object* x_2482; lean_object* x_2483; lean_object* x_2484; lean_object* x_2485; lean_object* x_2486; lean_object* x_2487; 
lean_dec(x_2480);
lean_inc(x_2475);
x_2481 = l_Lean_mkNot(x_2475);
lean_inc(x_2474);
lean_inc(x_2473);
x_2482 = l_Lean_Expr_lam___override(x_2473, x_2474, x_2481, x_2476);
x_2483 = l_Lean_Expr_lam___override(x_2473, x_2474, x_2475, x_2476);
x_2484 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2485 = lean_array_push(x_2484, x_2482);
x_2486 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2487 = l_Lean_Meta_mkAppM(x_2486, x_2485, x_5, x_6, x_7, x_8, x_2479);
if (lean_obj_tag(x_2487) == 0)
{
lean_object* x_2488; lean_object* x_2489; lean_object* x_2490; lean_object* x_2491; lean_object* x_2492; 
x_2488 = lean_ctor_get(x_2487, 0);
lean_inc(x_2488);
x_2489 = lean_ctor_get(x_2487, 1);
lean_inc(x_2489);
lean_dec(x_2487);
x_2490 = lean_array_push(x_2484, x_2483);
x_2491 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2492 = l_Lean_Meta_mkAppM(x_2491, x_2490, x_5, x_6, x_7, x_8, x_2489);
if (lean_obj_tag(x_2492) == 0)
{
uint8_t x_2493; 
x_2493 = !lean_is_exclusive(x_2492);
if (x_2493 == 0)
{
lean_object* x_2494; lean_object* x_2495; uint8_t x_2496; lean_object* x_2497; lean_object* x_2498; lean_object* x_2499; 
x_2494 = lean_ctor_get(x_2492, 0);
x_2495 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2495, 0, x_2494);
x_2496 = 1;
x_2497 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2497, 0, x_2488);
lean_ctor_set(x_2497, 1, x_2495);
lean_ctor_set_uint8(x_2497, sizeof(void*)*2, x_2496);
x_2498 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2498, 0, x_2497);
x_2499 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2499, 0, x_2498);
lean_ctor_set(x_2492, 0, x_2499);
return x_2492;
}
else
{
lean_object* x_2500; lean_object* x_2501; lean_object* x_2502; uint8_t x_2503; lean_object* x_2504; lean_object* x_2505; lean_object* x_2506; lean_object* x_2507; 
x_2500 = lean_ctor_get(x_2492, 0);
x_2501 = lean_ctor_get(x_2492, 1);
lean_inc(x_2501);
lean_inc(x_2500);
lean_dec(x_2492);
x_2502 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2502, 0, x_2500);
x_2503 = 1;
x_2504 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2504, 0, x_2488);
lean_ctor_set(x_2504, 1, x_2502);
lean_ctor_set_uint8(x_2504, sizeof(void*)*2, x_2503);
x_2505 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2505, 0, x_2504);
x_2506 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2506, 0, x_2505);
x_2507 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2507, 0, x_2506);
lean_ctor_set(x_2507, 1, x_2501);
return x_2507;
}
}
else
{
uint8_t x_2508; 
lean_dec(x_2488);
x_2508 = !lean_is_exclusive(x_2492);
if (x_2508 == 0)
{
return x_2492;
}
else
{
lean_object* x_2509; lean_object* x_2510; lean_object* x_2511; 
x_2509 = lean_ctor_get(x_2492, 0);
x_2510 = lean_ctor_get(x_2492, 1);
lean_inc(x_2510);
lean_inc(x_2509);
lean_dec(x_2492);
x_2511 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2511, 0, x_2509);
lean_ctor_set(x_2511, 1, x_2510);
return x_2511;
}
}
}
else
{
uint8_t x_2512; 
lean_dec(x_2483);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2512 = !lean_is_exclusive(x_2487);
if (x_2512 == 0)
{
return x_2487;
}
else
{
lean_object* x_2513; lean_object* x_2514; lean_object* x_2515; 
x_2513 = lean_ctor_get(x_2487, 0);
x_2514 = lean_ctor_get(x_2487, 1);
lean_inc(x_2514);
lean_inc(x_2513);
lean_dec(x_2487);
x_2515 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2515, 0, x_2513);
lean_ctor_set(x_2515, 1, x_2514);
return x_2515;
}
}
}
}
else
{
uint8_t x_2555; 
lean_dec(x_2475);
lean_dec(x_2474);
lean_dec(x_2473);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2555 = !lean_is_exclusive(x_2477);
if (x_2555 == 0)
{
return x_2477;
}
else
{
lean_object* x_2556; lean_object* x_2557; lean_object* x_2558; 
x_2556 = lean_ctor_get(x_2477, 0);
x_2557 = lean_ctor_get(x_2477, 1);
lean_inc(x_2557);
lean_inc(x_2556);
lean_dec(x_2477);
x_2558 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2558, 0, x_2556);
lean_ctor_set(x_2558, 1, x_2557);
return x_2558;
}
}
}
else
{
lean_object* x_2559; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2559 = lean_box(0);
lean_ctor_set(x_28, 0, x_2559);
return x_28;
}
}
}
}
default: 
{
lean_dec(x_122);
lean_dec(x_34);
lean_dec(x_33);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2560; lean_object* x_2561; lean_object* x_2562; uint8_t x_2563; lean_object* x_2564; 
lean_free_object(x_28);
x_2560 = lean_ctor_get(x_32, 0);
lean_inc(x_2560);
x_2561 = lean_ctor_get(x_32, 1);
lean_inc(x_2561);
x_2562 = lean_ctor_get(x_32, 2);
lean_inc(x_2562);
x_2563 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2561);
x_2564 = l_Lean_Meta_isProp(x_2561, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2564) == 0)
{
lean_object* x_2565; lean_object* x_2566; lean_object* x_2567; uint8_t x_2604; 
x_2565 = lean_ctor_get(x_2564, 0);
lean_inc(x_2565);
x_2566 = lean_ctor_get(x_2564, 1);
lean_inc(x_2566);
lean_dec(x_2564);
x_2604 = lean_unbox(x_2565);
lean_dec(x_2565);
if (x_2604 == 0)
{
lean_object* x_2605; 
x_2605 = lean_box(0);
x_2567 = x_2605;
goto block_2603;
}
else
{
uint8_t x_2606; 
x_2606 = l_Lean_Expr_hasLooseBVars(x_2562);
if (x_2606 == 0)
{
lean_object* x_2607; lean_object* x_2608; lean_object* x_2609; lean_object* x_2610; lean_object* x_2611; lean_object* x_2612; 
lean_dec(x_2560);
lean_inc(x_2562);
x_2607 = l_Lean_mkNot(x_2562);
x_2608 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2609 = lean_array_push(x_2608, x_2561);
lean_inc(x_2609);
x_2610 = lean_array_push(x_2609, x_2607);
x_2611 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2612 = l_Lean_Meta_mkAppM(x_2611, x_2610, x_5, x_6, x_7, x_8, x_2566);
if (lean_obj_tag(x_2612) == 0)
{
lean_object* x_2613; lean_object* x_2614; lean_object* x_2615; lean_object* x_2616; lean_object* x_2617; 
x_2613 = lean_ctor_get(x_2612, 0);
lean_inc(x_2613);
x_2614 = lean_ctor_get(x_2612, 1);
lean_inc(x_2614);
lean_dec(x_2612);
x_2615 = lean_array_push(x_2609, x_2562);
x_2616 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2617 = l_Lean_Meta_mkAppM(x_2616, x_2615, x_5, x_6, x_7, x_8, x_2614);
if (lean_obj_tag(x_2617) == 0)
{
uint8_t x_2618; 
x_2618 = !lean_is_exclusive(x_2617);
if (x_2618 == 0)
{
lean_object* x_2619; lean_object* x_2620; uint8_t x_2621; lean_object* x_2622; lean_object* x_2623; lean_object* x_2624; 
x_2619 = lean_ctor_get(x_2617, 0);
x_2620 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2620, 0, x_2619);
x_2621 = 1;
x_2622 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2622, 0, x_2613);
lean_ctor_set(x_2622, 1, x_2620);
lean_ctor_set_uint8(x_2622, sizeof(void*)*2, x_2621);
x_2623 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2623, 0, x_2622);
x_2624 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2624, 0, x_2623);
lean_ctor_set(x_2617, 0, x_2624);
return x_2617;
}
else
{
lean_object* x_2625; lean_object* x_2626; lean_object* x_2627; uint8_t x_2628; lean_object* x_2629; lean_object* x_2630; lean_object* x_2631; lean_object* x_2632; 
x_2625 = lean_ctor_get(x_2617, 0);
x_2626 = lean_ctor_get(x_2617, 1);
lean_inc(x_2626);
lean_inc(x_2625);
lean_dec(x_2617);
x_2627 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2627, 0, x_2625);
x_2628 = 1;
x_2629 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2629, 0, x_2613);
lean_ctor_set(x_2629, 1, x_2627);
lean_ctor_set_uint8(x_2629, sizeof(void*)*2, x_2628);
x_2630 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2630, 0, x_2629);
x_2631 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2631, 0, x_2630);
x_2632 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2632, 0, x_2631);
lean_ctor_set(x_2632, 1, x_2626);
return x_2632;
}
}
else
{
uint8_t x_2633; 
lean_dec(x_2613);
x_2633 = !lean_is_exclusive(x_2617);
if (x_2633 == 0)
{
return x_2617;
}
else
{
lean_object* x_2634; lean_object* x_2635; lean_object* x_2636; 
x_2634 = lean_ctor_get(x_2617, 0);
x_2635 = lean_ctor_get(x_2617, 1);
lean_inc(x_2635);
lean_inc(x_2634);
lean_dec(x_2617);
x_2636 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2636, 0, x_2634);
lean_ctor_set(x_2636, 1, x_2635);
return x_2636;
}
}
}
else
{
uint8_t x_2637; 
lean_dec(x_2609);
lean_dec(x_2562);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2637 = !lean_is_exclusive(x_2612);
if (x_2637 == 0)
{
return x_2612;
}
else
{
lean_object* x_2638; lean_object* x_2639; lean_object* x_2640; 
x_2638 = lean_ctor_get(x_2612, 0);
x_2639 = lean_ctor_get(x_2612, 1);
lean_inc(x_2639);
lean_inc(x_2638);
lean_dec(x_2612);
x_2640 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2640, 0, x_2638);
lean_ctor_set(x_2640, 1, x_2639);
return x_2640;
}
}
}
else
{
lean_object* x_2641; 
x_2641 = lean_box(0);
x_2567 = x_2641;
goto block_2603;
}
}
block_2603:
{
lean_object* x_2568; lean_object* x_2569; lean_object* x_2570; lean_object* x_2571; lean_object* x_2572; lean_object* x_2573; lean_object* x_2574; 
lean_dec(x_2567);
lean_inc(x_2562);
x_2568 = l_Lean_mkNot(x_2562);
lean_inc(x_2561);
lean_inc(x_2560);
x_2569 = l_Lean_Expr_lam___override(x_2560, x_2561, x_2568, x_2563);
x_2570 = l_Lean_Expr_lam___override(x_2560, x_2561, x_2562, x_2563);
x_2571 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2572 = lean_array_push(x_2571, x_2569);
x_2573 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2574 = l_Lean_Meta_mkAppM(x_2573, x_2572, x_5, x_6, x_7, x_8, x_2566);
if (lean_obj_tag(x_2574) == 0)
{
lean_object* x_2575; lean_object* x_2576; lean_object* x_2577; lean_object* x_2578; lean_object* x_2579; 
x_2575 = lean_ctor_get(x_2574, 0);
lean_inc(x_2575);
x_2576 = lean_ctor_get(x_2574, 1);
lean_inc(x_2576);
lean_dec(x_2574);
x_2577 = lean_array_push(x_2571, x_2570);
x_2578 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2579 = l_Lean_Meta_mkAppM(x_2578, x_2577, x_5, x_6, x_7, x_8, x_2576);
if (lean_obj_tag(x_2579) == 0)
{
uint8_t x_2580; 
x_2580 = !lean_is_exclusive(x_2579);
if (x_2580 == 0)
{
lean_object* x_2581; lean_object* x_2582; uint8_t x_2583; lean_object* x_2584; lean_object* x_2585; lean_object* x_2586; 
x_2581 = lean_ctor_get(x_2579, 0);
x_2582 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2582, 0, x_2581);
x_2583 = 1;
x_2584 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2584, 0, x_2575);
lean_ctor_set(x_2584, 1, x_2582);
lean_ctor_set_uint8(x_2584, sizeof(void*)*2, x_2583);
x_2585 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2585, 0, x_2584);
x_2586 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2586, 0, x_2585);
lean_ctor_set(x_2579, 0, x_2586);
return x_2579;
}
else
{
lean_object* x_2587; lean_object* x_2588; lean_object* x_2589; uint8_t x_2590; lean_object* x_2591; lean_object* x_2592; lean_object* x_2593; lean_object* x_2594; 
x_2587 = lean_ctor_get(x_2579, 0);
x_2588 = lean_ctor_get(x_2579, 1);
lean_inc(x_2588);
lean_inc(x_2587);
lean_dec(x_2579);
x_2589 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2589, 0, x_2587);
x_2590 = 1;
x_2591 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2591, 0, x_2575);
lean_ctor_set(x_2591, 1, x_2589);
lean_ctor_set_uint8(x_2591, sizeof(void*)*2, x_2590);
x_2592 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2592, 0, x_2591);
x_2593 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2593, 0, x_2592);
x_2594 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2594, 0, x_2593);
lean_ctor_set(x_2594, 1, x_2588);
return x_2594;
}
}
else
{
uint8_t x_2595; 
lean_dec(x_2575);
x_2595 = !lean_is_exclusive(x_2579);
if (x_2595 == 0)
{
return x_2579;
}
else
{
lean_object* x_2596; lean_object* x_2597; lean_object* x_2598; 
x_2596 = lean_ctor_get(x_2579, 0);
x_2597 = lean_ctor_get(x_2579, 1);
lean_inc(x_2597);
lean_inc(x_2596);
lean_dec(x_2579);
x_2598 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2598, 0, x_2596);
lean_ctor_set(x_2598, 1, x_2597);
return x_2598;
}
}
}
else
{
uint8_t x_2599; 
lean_dec(x_2570);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2599 = !lean_is_exclusive(x_2574);
if (x_2599 == 0)
{
return x_2574;
}
else
{
lean_object* x_2600; lean_object* x_2601; lean_object* x_2602; 
x_2600 = lean_ctor_get(x_2574, 0);
x_2601 = lean_ctor_get(x_2574, 1);
lean_inc(x_2601);
lean_inc(x_2600);
lean_dec(x_2574);
x_2602 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2602, 0, x_2600);
lean_ctor_set(x_2602, 1, x_2601);
return x_2602;
}
}
}
}
else
{
uint8_t x_2642; 
lean_dec(x_2562);
lean_dec(x_2561);
lean_dec(x_2560);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2642 = !lean_is_exclusive(x_2564);
if (x_2642 == 0)
{
return x_2564;
}
else
{
lean_object* x_2643; lean_object* x_2644; lean_object* x_2645; 
x_2643 = lean_ctor_get(x_2564, 0);
x_2644 = lean_ctor_get(x_2564, 1);
lean_inc(x_2644);
lean_inc(x_2643);
lean_dec(x_2564);
x_2645 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2645, 0, x_2643);
lean_ctor_set(x_2645, 1, x_2644);
return x_2645;
}
}
}
else
{
lean_object* x_2646; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2646 = lean_box(0);
lean_ctor_set(x_28, 0, x_2646);
return x_28;
}
}
}
}
default: 
{
lean_dec(x_34);
lean_dec(x_33);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_32) == 7)
{
lean_object* x_2647; lean_object* x_2648; lean_object* x_2649; uint8_t x_2650; lean_object* x_2651; 
lean_free_object(x_28);
x_2647 = lean_ctor_get(x_32, 0);
lean_inc(x_2647);
x_2648 = lean_ctor_get(x_32, 1);
lean_inc(x_2648);
x_2649 = lean_ctor_get(x_32, 2);
lean_inc(x_2649);
x_2650 = lean_ctor_get_uint8(x_32, sizeof(void*)*3 + 8);
lean_dec(x_32);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2648);
x_2651 = l_Lean_Meta_isProp(x_2648, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_2651) == 0)
{
lean_object* x_2652; lean_object* x_2653; lean_object* x_2654; uint8_t x_2691; 
x_2652 = lean_ctor_get(x_2651, 0);
lean_inc(x_2652);
x_2653 = lean_ctor_get(x_2651, 1);
lean_inc(x_2653);
lean_dec(x_2651);
x_2691 = lean_unbox(x_2652);
lean_dec(x_2652);
if (x_2691 == 0)
{
lean_object* x_2692; 
x_2692 = lean_box(0);
x_2654 = x_2692;
goto block_2690;
}
else
{
uint8_t x_2693; 
x_2693 = l_Lean_Expr_hasLooseBVars(x_2649);
if (x_2693 == 0)
{
lean_object* x_2694; lean_object* x_2695; lean_object* x_2696; lean_object* x_2697; lean_object* x_2698; lean_object* x_2699; 
lean_dec(x_2647);
lean_inc(x_2649);
x_2694 = l_Lean_mkNot(x_2649);
x_2695 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2696 = lean_array_push(x_2695, x_2648);
lean_inc(x_2696);
x_2697 = lean_array_push(x_2696, x_2694);
x_2698 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2699 = l_Lean_Meta_mkAppM(x_2698, x_2697, x_5, x_6, x_7, x_8, x_2653);
if (lean_obj_tag(x_2699) == 0)
{
lean_object* x_2700; lean_object* x_2701; lean_object* x_2702; lean_object* x_2703; lean_object* x_2704; 
x_2700 = lean_ctor_get(x_2699, 0);
lean_inc(x_2700);
x_2701 = lean_ctor_get(x_2699, 1);
lean_inc(x_2701);
lean_dec(x_2699);
x_2702 = lean_array_push(x_2696, x_2649);
x_2703 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2704 = l_Lean_Meta_mkAppM(x_2703, x_2702, x_5, x_6, x_7, x_8, x_2701);
if (lean_obj_tag(x_2704) == 0)
{
uint8_t x_2705; 
x_2705 = !lean_is_exclusive(x_2704);
if (x_2705 == 0)
{
lean_object* x_2706; lean_object* x_2707; uint8_t x_2708; lean_object* x_2709; lean_object* x_2710; lean_object* x_2711; 
x_2706 = lean_ctor_get(x_2704, 0);
x_2707 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2707, 0, x_2706);
x_2708 = 1;
x_2709 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2709, 0, x_2700);
lean_ctor_set(x_2709, 1, x_2707);
lean_ctor_set_uint8(x_2709, sizeof(void*)*2, x_2708);
x_2710 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2710, 0, x_2709);
x_2711 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2711, 0, x_2710);
lean_ctor_set(x_2704, 0, x_2711);
return x_2704;
}
else
{
lean_object* x_2712; lean_object* x_2713; lean_object* x_2714; uint8_t x_2715; lean_object* x_2716; lean_object* x_2717; lean_object* x_2718; lean_object* x_2719; 
x_2712 = lean_ctor_get(x_2704, 0);
x_2713 = lean_ctor_get(x_2704, 1);
lean_inc(x_2713);
lean_inc(x_2712);
lean_dec(x_2704);
x_2714 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2714, 0, x_2712);
x_2715 = 1;
x_2716 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2716, 0, x_2700);
lean_ctor_set(x_2716, 1, x_2714);
lean_ctor_set_uint8(x_2716, sizeof(void*)*2, x_2715);
x_2717 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2717, 0, x_2716);
x_2718 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2718, 0, x_2717);
x_2719 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2719, 0, x_2718);
lean_ctor_set(x_2719, 1, x_2713);
return x_2719;
}
}
else
{
uint8_t x_2720; 
lean_dec(x_2700);
x_2720 = !lean_is_exclusive(x_2704);
if (x_2720 == 0)
{
return x_2704;
}
else
{
lean_object* x_2721; lean_object* x_2722; lean_object* x_2723; 
x_2721 = lean_ctor_get(x_2704, 0);
x_2722 = lean_ctor_get(x_2704, 1);
lean_inc(x_2722);
lean_inc(x_2721);
lean_dec(x_2704);
x_2723 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2723, 0, x_2721);
lean_ctor_set(x_2723, 1, x_2722);
return x_2723;
}
}
}
else
{
uint8_t x_2724; 
lean_dec(x_2696);
lean_dec(x_2649);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2724 = !lean_is_exclusive(x_2699);
if (x_2724 == 0)
{
return x_2699;
}
else
{
lean_object* x_2725; lean_object* x_2726; lean_object* x_2727; 
x_2725 = lean_ctor_get(x_2699, 0);
x_2726 = lean_ctor_get(x_2699, 1);
lean_inc(x_2726);
lean_inc(x_2725);
lean_dec(x_2699);
x_2727 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2727, 0, x_2725);
lean_ctor_set(x_2727, 1, x_2726);
return x_2727;
}
}
}
else
{
lean_object* x_2728; 
x_2728 = lean_box(0);
x_2654 = x_2728;
goto block_2690;
}
}
block_2690:
{
lean_object* x_2655; lean_object* x_2656; lean_object* x_2657; lean_object* x_2658; lean_object* x_2659; lean_object* x_2660; lean_object* x_2661; 
lean_dec(x_2654);
lean_inc(x_2649);
x_2655 = l_Lean_mkNot(x_2649);
lean_inc(x_2648);
lean_inc(x_2647);
x_2656 = l_Lean_Expr_lam___override(x_2647, x_2648, x_2655, x_2650);
x_2657 = l_Lean_Expr_lam___override(x_2647, x_2648, x_2649, x_2650);
x_2658 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2659 = lean_array_push(x_2658, x_2656);
x_2660 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2661 = l_Lean_Meta_mkAppM(x_2660, x_2659, x_5, x_6, x_7, x_8, x_2653);
if (lean_obj_tag(x_2661) == 0)
{
lean_object* x_2662; lean_object* x_2663; lean_object* x_2664; lean_object* x_2665; lean_object* x_2666; 
x_2662 = lean_ctor_get(x_2661, 0);
lean_inc(x_2662);
x_2663 = lean_ctor_get(x_2661, 1);
lean_inc(x_2663);
lean_dec(x_2661);
x_2664 = lean_array_push(x_2658, x_2657);
x_2665 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2666 = l_Lean_Meta_mkAppM(x_2665, x_2664, x_5, x_6, x_7, x_8, x_2663);
if (lean_obj_tag(x_2666) == 0)
{
uint8_t x_2667; 
x_2667 = !lean_is_exclusive(x_2666);
if (x_2667 == 0)
{
lean_object* x_2668; lean_object* x_2669; uint8_t x_2670; lean_object* x_2671; lean_object* x_2672; lean_object* x_2673; 
x_2668 = lean_ctor_get(x_2666, 0);
x_2669 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2669, 0, x_2668);
x_2670 = 1;
x_2671 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2671, 0, x_2662);
lean_ctor_set(x_2671, 1, x_2669);
lean_ctor_set_uint8(x_2671, sizeof(void*)*2, x_2670);
x_2672 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2672, 0, x_2671);
x_2673 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2673, 0, x_2672);
lean_ctor_set(x_2666, 0, x_2673);
return x_2666;
}
else
{
lean_object* x_2674; lean_object* x_2675; lean_object* x_2676; uint8_t x_2677; lean_object* x_2678; lean_object* x_2679; lean_object* x_2680; lean_object* x_2681; 
x_2674 = lean_ctor_get(x_2666, 0);
x_2675 = lean_ctor_get(x_2666, 1);
lean_inc(x_2675);
lean_inc(x_2674);
lean_dec(x_2666);
x_2676 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2676, 0, x_2674);
x_2677 = 1;
x_2678 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2678, 0, x_2662);
lean_ctor_set(x_2678, 1, x_2676);
lean_ctor_set_uint8(x_2678, sizeof(void*)*2, x_2677);
x_2679 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2679, 0, x_2678);
x_2680 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2680, 0, x_2679);
x_2681 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2681, 0, x_2680);
lean_ctor_set(x_2681, 1, x_2675);
return x_2681;
}
}
else
{
uint8_t x_2682; 
lean_dec(x_2662);
x_2682 = !lean_is_exclusive(x_2666);
if (x_2682 == 0)
{
return x_2666;
}
else
{
lean_object* x_2683; lean_object* x_2684; lean_object* x_2685; 
x_2683 = lean_ctor_get(x_2666, 0);
x_2684 = lean_ctor_get(x_2666, 1);
lean_inc(x_2684);
lean_inc(x_2683);
lean_dec(x_2666);
x_2685 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2685, 0, x_2683);
lean_ctor_set(x_2685, 1, x_2684);
return x_2685;
}
}
}
else
{
uint8_t x_2686; 
lean_dec(x_2657);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2686 = !lean_is_exclusive(x_2661);
if (x_2686 == 0)
{
return x_2661;
}
else
{
lean_object* x_2687; lean_object* x_2688; lean_object* x_2689; 
x_2687 = lean_ctor_get(x_2661, 0);
x_2688 = lean_ctor_get(x_2661, 1);
lean_inc(x_2688);
lean_inc(x_2687);
lean_dec(x_2661);
x_2689 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2689, 0, x_2687);
lean_ctor_set(x_2689, 1, x_2688);
return x_2689;
}
}
}
}
else
{
uint8_t x_2729; 
lean_dec(x_2649);
lean_dec(x_2648);
lean_dec(x_2647);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2729 = !lean_is_exclusive(x_2651);
if (x_2729 == 0)
{
return x_2651;
}
else
{
lean_object* x_2730; lean_object* x_2731; lean_object* x_2732; 
x_2730 = lean_ctor_get(x_2651, 0);
x_2731 = lean_ctor_get(x_2651, 1);
lean_inc(x_2731);
lean_inc(x_2730);
lean_dec(x_2651);
x_2732 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2732, 0, x_2730);
lean_ctor_set(x_2732, 1, x_2731);
return x_2732;
}
}
}
else
{
lean_object* x_2733; 
lean_dec(x_32);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2733 = lean_box(0);
lean_ctor_set(x_28, 0, x_2733);
return x_28;
}
}
}
}
else
{
lean_object* x_2734; lean_object* x_2735; lean_object* x_2736; lean_object* x_2737; lean_object* x_2738; 
x_2734 = lean_ctor_get(x_28, 0);
x_2735 = lean_ctor_get(x_28, 1);
lean_inc(x_2735);
lean_inc(x_2734);
lean_dec(x_28);
x_2736 = l_Lean_Expr_cleanupAnnotations(x_2734);
lean_inc(x_2736);
x_2737 = l_Lean_Expr_getAppFnArgs(x_2736);
x_2738 = lean_ctor_get(x_2737, 0);
lean_inc(x_2738);
switch (lean_obj_tag(x_2738)) {
case 0:
{
lean_dec(x_2737);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_2739; lean_object* x_2740; lean_object* x_2741; uint8_t x_2742; lean_object* x_2743; 
x_2739 = lean_ctor_get(x_2736, 0);
lean_inc(x_2739);
x_2740 = lean_ctor_get(x_2736, 1);
lean_inc(x_2740);
x_2741 = lean_ctor_get(x_2736, 2);
lean_inc(x_2741);
x_2742 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2740);
x_2743 = l_Lean_Meta_isProp(x_2740, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_2743) == 0)
{
lean_object* x_2744; lean_object* x_2745; lean_object* x_2746; uint8_t x_2777; 
x_2744 = lean_ctor_get(x_2743, 0);
lean_inc(x_2744);
x_2745 = lean_ctor_get(x_2743, 1);
lean_inc(x_2745);
lean_dec(x_2743);
x_2777 = lean_unbox(x_2744);
lean_dec(x_2744);
if (x_2777 == 0)
{
lean_object* x_2778; 
x_2778 = lean_box(0);
x_2746 = x_2778;
goto block_2776;
}
else
{
uint8_t x_2779; 
x_2779 = l_Lean_Expr_hasLooseBVars(x_2741);
if (x_2779 == 0)
{
lean_object* x_2780; lean_object* x_2781; lean_object* x_2782; lean_object* x_2783; lean_object* x_2784; lean_object* x_2785; 
lean_dec(x_2739);
lean_inc(x_2741);
x_2780 = l_Lean_mkNot(x_2741);
x_2781 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2782 = lean_array_push(x_2781, x_2740);
lean_inc(x_2782);
x_2783 = lean_array_push(x_2782, x_2780);
x_2784 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2785 = l_Lean_Meta_mkAppM(x_2784, x_2783, x_5, x_6, x_7, x_8, x_2745);
if (lean_obj_tag(x_2785) == 0)
{
lean_object* x_2786; lean_object* x_2787; lean_object* x_2788; lean_object* x_2789; lean_object* x_2790; 
x_2786 = lean_ctor_get(x_2785, 0);
lean_inc(x_2786);
x_2787 = lean_ctor_get(x_2785, 1);
lean_inc(x_2787);
lean_dec(x_2785);
x_2788 = lean_array_push(x_2782, x_2741);
x_2789 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2790 = l_Lean_Meta_mkAppM(x_2789, x_2788, x_5, x_6, x_7, x_8, x_2787);
if (lean_obj_tag(x_2790) == 0)
{
lean_object* x_2791; lean_object* x_2792; lean_object* x_2793; lean_object* x_2794; uint8_t x_2795; lean_object* x_2796; lean_object* x_2797; lean_object* x_2798; lean_object* x_2799; 
x_2791 = lean_ctor_get(x_2790, 0);
lean_inc(x_2791);
x_2792 = lean_ctor_get(x_2790, 1);
lean_inc(x_2792);
if (lean_is_exclusive(x_2790)) {
 lean_ctor_release(x_2790, 0);
 lean_ctor_release(x_2790, 1);
 x_2793 = x_2790;
} else {
 lean_dec_ref(x_2790);
 x_2793 = lean_box(0);
}
x_2794 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2794, 0, x_2791);
x_2795 = 1;
x_2796 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2796, 0, x_2786);
lean_ctor_set(x_2796, 1, x_2794);
lean_ctor_set_uint8(x_2796, sizeof(void*)*2, x_2795);
x_2797 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2797, 0, x_2796);
x_2798 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2798, 0, x_2797);
if (lean_is_scalar(x_2793)) {
 x_2799 = lean_alloc_ctor(0, 2, 0);
} else {
 x_2799 = x_2793;
}
lean_ctor_set(x_2799, 0, x_2798);
lean_ctor_set(x_2799, 1, x_2792);
return x_2799;
}
else
{
lean_object* x_2800; lean_object* x_2801; lean_object* x_2802; lean_object* x_2803; 
lean_dec(x_2786);
x_2800 = lean_ctor_get(x_2790, 0);
lean_inc(x_2800);
x_2801 = lean_ctor_get(x_2790, 1);
lean_inc(x_2801);
if (lean_is_exclusive(x_2790)) {
 lean_ctor_release(x_2790, 0);
 lean_ctor_release(x_2790, 1);
 x_2802 = x_2790;
} else {
 lean_dec_ref(x_2790);
 x_2802 = lean_box(0);
}
if (lean_is_scalar(x_2802)) {
 x_2803 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2803 = x_2802;
}
lean_ctor_set(x_2803, 0, x_2800);
lean_ctor_set(x_2803, 1, x_2801);
return x_2803;
}
}
else
{
lean_object* x_2804; lean_object* x_2805; lean_object* x_2806; lean_object* x_2807; 
lean_dec(x_2782);
lean_dec(x_2741);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2804 = lean_ctor_get(x_2785, 0);
lean_inc(x_2804);
x_2805 = lean_ctor_get(x_2785, 1);
lean_inc(x_2805);
if (lean_is_exclusive(x_2785)) {
 lean_ctor_release(x_2785, 0);
 lean_ctor_release(x_2785, 1);
 x_2806 = x_2785;
} else {
 lean_dec_ref(x_2785);
 x_2806 = lean_box(0);
}
if (lean_is_scalar(x_2806)) {
 x_2807 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2807 = x_2806;
}
lean_ctor_set(x_2807, 0, x_2804);
lean_ctor_set(x_2807, 1, x_2805);
return x_2807;
}
}
else
{
lean_object* x_2808; 
x_2808 = lean_box(0);
x_2746 = x_2808;
goto block_2776;
}
}
block_2776:
{
lean_object* x_2747; lean_object* x_2748; lean_object* x_2749; lean_object* x_2750; lean_object* x_2751; lean_object* x_2752; lean_object* x_2753; 
lean_dec(x_2746);
lean_inc(x_2741);
x_2747 = l_Lean_mkNot(x_2741);
lean_inc(x_2740);
lean_inc(x_2739);
x_2748 = l_Lean_Expr_lam___override(x_2739, x_2740, x_2747, x_2742);
x_2749 = l_Lean_Expr_lam___override(x_2739, x_2740, x_2741, x_2742);
x_2750 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2751 = lean_array_push(x_2750, x_2748);
x_2752 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2753 = l_Lean_Meta_mkAppM(x_2752, x_2751, x_5, x_6, x_7, x_8, x_2745);
if (lean_obj_tag(x_2753) == 0)
{
lean_object* x_2754; lean_object* x_2755; lean_object* x_2756; lean_object* x_2757; lean_object* x_2758; 
x_2754 = lean_ctor_get(x_2753, 0);
lean_inc(x_2754);
x_2755 = lean_ctor_get(x_2753, 1);
lean_inc(x_2755);
lean_dec(x_2753);
x_2756 = lean_array_push(x_2750, x_2749);
x_2757 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2758 = l_Lean_Meta_mkAppM(x_2757, x_2756, x_5, x_6, x_7, x_8, x_2755);
if (lean_obj_tag(x_2758) == 0)
{
lean_object* x_2759; lean_object* x_2760; lean_object* x_2761; lean_object* x_2762; uint8_t x_2763; lean_object* x_2764; lean_object* x_2765; lean_object* x_2766; lean_object* x_2767; 
x_2759 = lean_ctor_get(x_2758, 0);
lean_inc(x_2759);
x_2760 = lean_ctor_get(x_2758, 1);
lean_inc(x_2760);
if (lean_is_exclusive(x_2758)) {
 lean_ctor_release(x_2758, 0);
 lean_ctor_release(x_2758, 1);
 x_2761 = x_2758;
} else {
 lean_dec_ref(x_2758);
 x_2761 = lean_box(0);
}
x_2762 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2762, 0, x_2759);
x_2763 = 1;
x_2764 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2764, 0, x_2754);
lean_ctor_set(x_2764, 1, x_2762);
lean_ctor_set_uint8(x_2764, sizeof(void*)*2, x_2763);
x_2765 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2765, 0, x_2764);
x_2766 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2766, 0, x_2765);
if (lean_is_scalar(x_2761)) {
 x_2767 = lean_alloc_ctor(0, 2, 0);
} else {
 x_2767 = x_2761;
}
lean_ctor_set(x_2767, 0, x_2766);
lean_ctor_set(x_2767, 1, x_2760);
return x_2767;
}
else
{
lean_object* x_2768; lean_object* x_2769; lean_object* x_2770; lean_object* x_2771; 
lean_dec(x_2754);
x_2768 = lean_ctor_get(x_2758, 0);
lean_inc(x_2768);
x_2769 = lean_ctor_get(x_2758, 1);
lean_inc(x_2769);
if (lean_is_exclusive(x_2758)) {
 lean_ctor_release(x_2758, 0);
 lean_ctor_release(x_2758, 1);
 x_2770 = x_2758;
} else {
 lean_dec_ref(x_2758);
 x_2770 = lean_box(0);
}
if (lean_is_scalar(x_2770)) {
 x_2771 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2771 = x_2770;
}
lean_ctor_set(x_2771, 0, x_2768);
lean_ctor_set(x_2771, 1, x_2769);
return x_2771;
}
}
else
{
lean_object* x_2772; lean_object* x_2773; lean_object* x_2774; lean_object* x_2775; 
lean_dec(x_2749);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2772 = lean_ctor_get(x_2753, 0);
lean_inc(x_2772);
x_2773 = lean_ctor_get(x_2753, 1);
lean_inc(x_2773);
if (lean_is_exclusive(x_2753)) {
 lean_ctor_release(x_2753, 0);
 lean_ctor_release(x_2753, 1);
 x_2774 = x_2753;
} else {
 lean_dec_ref(x_2753);
 x_2774 = lean_box(0);
}
if (lean_is_scalar(x_2774)) {
 x_2775 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2775 = x_2774;
}
lean_ctor_set(x_2775, 0, x_2772);
lean_ctor_set(x_2775, 1, x_2773);
return x_2775;
}
}
}
else
{
lean_object* x_2809; lean_object* x_2810; lean_object* x_2811; lean_object* x_2812; 
lean_dec(x_2741);
lean_dec(x_2740);
lean_dec(x_2739);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2809 = lean_ctor_get(x_2743, 0);
lean_inc(x_2809);
x_2810 = lean_ctor_get(x_2743, 1);
lean_inc(x_2810);
if (lean_is_exclusive(x_2743)) {
 lean_ctor_release(x_2743, 0);
 lean_ctor_release(x_2743, 1);
 x_2811 = x_2743;
} else {
 lean_dec_ref(x_2743);
 x_2811 = lean_box(0);
}
if (lean_is_scalar(x_2811)) {
 x_2812 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2812 = x_2811;
}
lean_ctor_set(x_2812, 0, x_2809);
lean_ctor_set(x_2812, 1, x_2810);
return x_2812;
}
}
else
{
lean_object* x_2813; lean_object* x_2814; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2813 = lean_box(0);
x_2814 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2814, 0, x_2813);
lean_ctor_set(x_2814, 1, x_2735);
return x_2814;
}
}
case 1:
{
lean_object* x_2815; 
x_2815 = lean_ctor_get(x_2738, 0);
lean_inc(x_2815);
switch (lean_obj_tag(x_2815)) {
case 0:
{
lean_object* x_2816; lean_object* x_2817; lean_object* x_2818; uint8_t x_2819; 
lean_dec(x_1);
x_2816 = lean_ctor_get(x_2737, 1);
lean_inc(x_2816);
lean_dec(x_2737);
x_2817 = lean_ctor_get(x_2738, 1);
lean_inc(x_2817);
lean_dec(x_2738);
x_2818 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1;
x_2819 = lean_string_dec_eq(x_2817, x_2818);
if (x_2819 == 0)
{
lean_object* x_2820; uint8_t x_2821; 
x_2820 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9;
x_2821 = lean_string_dec_eq(x_2817, x_2820);
if (x_2821 == 0)
{
lean_object* x_2822; uint8_t x_2823; 
x_2822 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13;
x_2823 = lean_string_dec_eq(x_2817, x_2822);
if (x_2823 == 0)
{
lean_object* x_2824; uint8_t x_2825; 
x_2824 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14;
x_2825 = lean_string_dec_eq(x_2817, x_2824);
if (x_2825 == 0)
{
lean_object* x_2826; uint8_t x_2827; 
x_2826 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7;
x_2827 = lean_string_dec_eq(x_2817, x_2826);
if (x_2827 == 0)
{
lean_object* x_2828; uint8_t x_2829; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_2828 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1;
x_2829 = lean_string_dec_eq(x_2817, x_2828);
if (x_2829 == 0)
{
lean_object* x_2830; uint8_t x_2831; 
x_2830 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5;
x_2831 = lean_string_dec_eq(x_2817, x_2830);
lean_dec(x_2817);
if (x_2831 == 0)
{
lean_dec(x_2816);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_2832; lean_object* x_2833; lean_object* x_2834; uint8_t x_2835; lean_object* x_2836; 
x_2832 = lean_ctor_get(x_2736, 0);
lean_inc(x_2832);
x_2833 = lean_ctor_get(x_2736, 1);
lean_inc(x_2833);
x_2834 = lean_ctor_get(x_2736, 2);
lean_inc(x_2834);
x_2835 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2833);
x_2836 = l_Lean_Meta_isProp(x_2833, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_2836) == 0)
{
lean_object* x_2837; lean_object* x_2838; lean_object* x_2839; uint8_t x_2870; 
x_2837 = lean_ctor_get(x_2836, 0);
lean_inc(x_2837);
x_2838 = lean_ctor_get(x_2836, 1);
lean_inc(x_2838);
lean_dec(x_2836);
x_2870 = lean_unbox(x_2837);
lean_dec(x_2837);
if (x_2870 == 0)
{
lean_object* x_2871; 
x_2871 = lean_box(0);
x_2839 = x_2871;
goto block_2869;
}
else
{
uint8_t x_2872; 
x_2872 = l_Lean_Expr_hasLooseBVars(x_2834);
if (x_2872 == 0)
{
lean_object* x_2873; lean_object* x_2874; lean_object* x_2875; lean_object* x_2876; lean_object* x_2877; lean_object* x_2878; 
lean_dec(x_2832);
lean_inc(x_2834);
x_2873 = l_Lean_mkNot(x_2834);
x_2874 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2875 = lean_array_push(x_2874, x_2833);
lean_inc(x_2875);
x_2876 = lean_array_push(x_2875, x_2873);
x_2877 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2878 = l_Lean_Meta_mkAppM(x_2877, x_2876, x_5, x_6, x_7, x_8, x_2838);
if (lean_obj_tag(x_2878) == 0)
{
lean_object* x_2879; lean_object* x_2880; lean_object* x_2881; lean_object* x_2882; lean_object* x_2883; 
x_2879 = lean_ctor_get(x_2878, 0);
lean_inc(x_2879);
x_2880 = lean_ctor_get(x_2878, 1);
lean_inc(x_2880);
lean_dec(x_2878);
x_2881 = lean_array_push(x_2875, x_2834);
x_2882 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2883 = l_Lean_Meta_mkAppM(x_2882, x_2881, x_5, x_6, x_7, x_8, x_2880);
if (lean_obj_tag(x_2883) == 0)
{
lean_object* x_2884; lean_object* x_2885; lean_object* x_2886; lean_object* x_2887; uint8_t x_2888; lean_object* x_2889; lean_object* x_2890; lean_object* x_2891; lean_object* x_2892; 
x_2884 = lean_ctor_get(x_2883, 0);
lean_inc(x_2884);
x_2885 = lean_ctor_get(x_2883, 1);
lean_inc(x_2885);
if (lean_is_exclusive(x_2883)) {
 lean_ctor_release(x_2883, 0);
 lean_ctor_release(x_2883, 1);
 x_2886 = x_2883;
} else {
 lean_dec_ref(x_2883);
 x_2886 = lean_box(0);
}
x_2887 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2887, 0, x_2884);
x_2888 = 1;
x_2889 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2889, 0, x_2879);
lean_ctor_set(x_2889, 1, x_2887);
lean_ctor_set_uint8(x_2889, sizeof(void*)*2, x_2888);
x_2890 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2890, 0, x_2889);
x_2891 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2891, 0, x_2890);
if (lean_is_scalar(x_2886)) {
 x_2892 = lean_alloc_ctor(0, 2, 0);
} else {
 x_2892 = x_2886;
}
lean_ctor_set(x_2892, 0, x_2891);
lean_ctor_set(x_2892, 1, x_2885);
return x_2892;
}
else
{
lean_object* x_2893; lean_object* x_2894; lean_object* x_2895; lean_object* x_2896; 
lean_dec(x_2879);
x_2893 = lean_ctor_get(x_2883, 0);
lean_inc(x_2893);
x_2894 = lean_ctor_get(x_2883, 1);
lean_inc(x_2894);
if (lean_is_exclusive(x_2883)) {
 lean_ctor_release(x_2883, 0);
 lean_ctor_release(x_2883, 1);
 x_2895 = x_2883;
} else {
 lean_dec_ref(x_2883);
 x_2895 = lean_box(0);
}
if (lean_is_scalar(x_2895)) {
 x_2896 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2896 = x_2895;
}
lean_ctor_set(x_2896, 0, x_2893);
lean_ctor_set(x_2896, 1, x_2894);
return x_2896;
}
}
else
{
lean_object* x_2897; lean_object* x_2898; lean_object* x_2899; lean_object* x_2900; 
lean_dec(x_2875);
lean_dec(x_2834);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2897 = lean_ctor_get(x_2878, 0);
lean_inc(x_2897);
x_2898 = lean_ctor_get(x_2878, 1);
lean_inc(x_2898);
if (lean_is_exclusive(x_2878)) {
 lean_ctor_release(x_2878, 0);
 lean_ctor_release(x_2878, 1);
 x_2899 = x_2878;
} else {
 lean_dec_ref(x_2878);
 x_2899 = lean_box(0);
}
if (lean_is_scalar(x_2899)) {
 x_2900 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2900 = x_2899;
}
lean_ctor_set(x_2900, 0, x_2897);
lean_ctor_set(x_2900, 1, x_2898);
return x_2900;
}
}
else
{
lean_object* x_2901; 
x_2901 = lean_box(0);
x_2839 = x_2901;
goto block_2869;
}
}
block_2869:
{
lean_object* x_2840; lean_object* x_2841; lean_object* x_2842; lean_object* x_2843; lean_object* x_2844; lean_object* x_2845; lean_object* x_2846; 
lean_dec(x_2839);
lean_inc(x_2834);
x_2840 = l_Lean_mkNot(x_2834);
lean_inc(x_2833);
lean_inc(x_2832);
x_2841 = l_Lean_Expr_lam___override(x_2832, x_2833, x_2840, x_2835);
x_2842 = l_Lean_Expr_lam___override(x_2832, x_2833, x_2834, x_2835);
x_2843 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2844 = lean_array_push(x_2843, x_2841);
x_2845 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2846 = l_Lean_Meta_mkAppM(x_2845, x_2844, x_5, x_6, x_7, x_8, x_2838);
if (lean_obj_tag(x_2846) == 0)
{
lean_object* x_2847; lean_object* x_2848; lean_object* x_2849; lean_object* x_2850; lean_object* x_2851; 
x_2847 = lean_ctor_get(x_2846, 0);
lean_inc(x_2847);
x_2848 = lean_ctor_get(x_2846, 1);
lean_inc(x_2848);
lean_dec(x_2846);
x_2849 = lean_array_push(x_2843, x_2842);
x_2850 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2851 = l_Lean_Meta_mkAppM(x_2850, x_2849, x_5, x_6, x_7, x_8, x_2848);
if (lean_obj_tag(x_2851) == 0)
{
lean_object* x_2852; lean_object* x_2853; lean_object* x_2854; lean_object* x_2855; uint8_t x_2856; lean_object* x_2857; lean_object* x_2858; lean_object* x_2859; lean_object* x_2860; 
x_2852 = lean_ctor_get(x_2851, 0);
lean_inc(x_2852);
x_2853 = lean_ctor_get(x_2851, 1);
lean_inc(x_2853);
if (lean_is_exclusive(x_2851)) {
 lean_ctor_release(x_2851, 0);
 lean_ctor_release(x_2851, 1);
 x_2854 = x_2851;
} else {
 lean_dec_ref(x_2851);
 x_2854 = lean_box(0);
}
x_2855 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2855, 0, x_2852);
x_2856 = 1;
x_2857 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2857, 0, x_2847);
lean_ctor_set(x_2857, 1, x_2855);
lean_ctor_set_uint8(x_2857, sizeof(void*)*2, x_2856);
x_2858 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2858, 0, x_2857);
x_2859 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2859, 0, x_2858);
if (lean_is_scalar(x_2854)) {
 x_2860 = lean_alloc_ctor(0, 2, 0);
} else {
 x_2860 = x_2854;
}
lean_ctor_set(x_2860, 0, x_2859);
lean_ctor_set(x_2860, 1, x_2853);
return x_2860;
}
else
{
lean_object* x_2861; lean_object* x_2862; lean_object* x_2863; lean_object* x_2864; 
lean_dec(x_2847);
x_2861 = lean_ctor_get(x_2851, 0);
lean_inc(x_2861);
x_2862 = lean_ctor_get(x_2851, 1);
lean_inc(x_2862);
if (lean_is_exclusive(x_2851)) {
 lean_ctor_release(x_2851, 0);
 lean_ctor_release(x_2851, 1);
 x_2863 = x_2851;
} else {
 lean_dec_ref(x_2851);
 x_2863 = lean_box(0);
}
if (lean_is_scalar(x_2863)) {
 x_2864 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2864 = x_2863;
}
lean_ctor_set(x_2864, 0, x_2861);
lean_ctor_set(x_2864, 1, x_2862);
return x_2864;
}
}
else
{
lean_object* x_2865; lean_object* x_2866; lean_object* x_2867; lean_object* x_2868; 
lean_dec(x_2842);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2865 = lean_ctor_get(x_2846, 0);
lean_inc(x_2865);
x_2866 = lean_ctor_get(x_2846, 1);
lean_inc(x_2866);
if (lean_is_exclusive(x_2846)) {
 lean_ctor_release(x_2846, 0);
 lean_ctor_release(x_2846, 1);
 x_2867 = x_2846;
} else {
 lean_dec_ref(x_2846);
 x_2867 = lean_box(0);
}
if (lean_is_scalar(x_2867)) {
 x_2868 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2868 = x_2867;
}
lean_ctor_set(x_2868, 0, x_2865);
lean_ctor_set(x_2868, 1, x_2866);
return x_2868;
}
}
}
else
{
lean_object* x_2902; lean_object* x_2903; lean_object* x_2904; lean_object* x_2905; 
lean_dec(x_2834);
lean_dec(x_2833);
lean_dec(x_2832);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2902 = lean_ctor_get(x_2836, 0);
lean_inc(x_2902);
x_2903 = lean_ctor_get(x_2836, 1);
lean_inc(x_2903);
if (lean_is_exclusive(x_2836)) {
 lean_ctor_release(x_2836, 0);
 lean_ctor_release(x_2836, 1);
 x_2904 = x_2836;
} else {
 lean_dec_ref(x_2836);
 x_2904 = lean_box(0);
}
if (lean_is_scalar(x_2904)) {
 x_2905 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2905 = x_2904;
}
lean_ctor_set(x_2905, 0, x_2902);
lean_ctor_set(x_2905, 1, x_2903);
return x_2905;
}
}
else
{
lean_object* x_2906; lean_object* x_2907; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2906 = lean_box(0);
x_2907 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2907, 0, x_2906);
lean_ctor_set(x_2907, 1, x_2735);
return x_2907;
}
}
else
{
lean_object* x_2908; lean_object* x_2909; uint8_t x_2910; 
x_2908 = lean_array_get_size(x_2816);
x_2909 = lean_unsigned_to_nat(2u);
x_2910 = lean_nat_dec_eq(x_2908, x_2909);
lean_dec(x_2908);
if (x_2910 == 0)
{
lean_dec(x_2816);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_2911; lean_object* x_2912; lean_object* x_2913; uint8_t x_2914; lean_object* x_2915; 
x_2911 = lean_ctor_get(x_2736, 0);
lean_inc(x_2911);
x_2912 = lean_ctor_get(x_2736, 1);
lean_inc(x_2912);
x_2913 = lean_ctor_get(x_2736, 2);
lean_inc(x_2913);
x_2914 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_2912);
x_2915 = l_Lean_Meta_isProp(x_2912, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_2915) == 0)
{
lean_object* x_2916; lean_object* x_2917; lean_object* x_2918; uint8_t x_2949; 
x_2916 = lean_ctor_get(x_2915, 0);
lean_inc(x_2916);
x_2917 = lean_ctor_get(x_2915, 1);
lean_inc(x_2917);
lean_dec(x_2915);
x_2949 = lean_unbox(x_2916);
lean_dec(x_2916);
if (x_2949 == 0)
{
lean_object* x_2950; 
x_2950 = lean_box(0);
x_2918 = x_2950;
goto block_2948;
}
else
{
uint8_t x_2951; 
x_2951 = l_Lean_Expr_hasLooseBVars(x_2913);
if (x_2951 == 0)
{
lean_object* x_2952; lean_object* x_2953; lean_object* x_2954; lean_object* x_2955; lean_object* x_2956; lean_object* x_2957; 
lean_dec(x_2911);
lean_inc(x_2913);
x_2952 = l_Lean_mkNot(x_2913);
x_2953 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_2954 = lean_array_push(x_2953, x_2912);
lean_inc(x_2954);
x_2955 = lean_array_push(x_2954, x_2952);
x_2956 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2957 = l_Lean_Meta_mkAppM(x_2956, x_2955, x_5, x_6, x_7, x_8, x_2917);
if (lean_obj_tag(x_2957) == 0)
{
lean_object* x_2958; lean_object* x_2959; lean_object* x_2960; lean_object* x_2961; lean_object* x_2962; 
x_2958 = lean_ctor_get(x_2957, 0);
lean_inc(x_2958);
x_2959 = lean_ctor_get(x_2957, 1);
lean_inc(x_2959);
lean_dec(x_2957);
x_2960 = lean_array_push(x_2954, x_2913);
x_2961 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_2962 = l_Lean_Meta_mkAppM(x_2961, x_2960, x_5, x_6, x_7, x_8, x_2959);
if (lean_obj_tag(x_2962) == 0)
{
lean_object* x_2963; lean_object* x_2964; lean_object* x_2965; lean_object* x_2966; uint8_t x_2967; lean_object* x_2968; lean_object* x_2969; lean_object* x_2970; lean_object* x_2971; 
x_2963 = lean_ctor_get(x_2962, 0);
lean_inc(x_2963);
x_2964 = lean_ctor_get(x_2962, 1);
lean_inc(x_2964);
if (lean_is_exclusive(x_2962)) {
 lean_ctor_release(x_2962, 0);
 lean_ctor_release(x_2962, 1);
 x_2965 = x_2962;
} else {
 lean_dec_ref(x_2962);
 x_2965 = lean_box(0);
}
x_2966 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2966, 0, x_2963);
x_2967 = 1;
x_2968 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2968, 0, x_2958);
lean_ctor_set(x_2968, 1, x_2966);
lean_ctor_set_uint8(x_2968, sizeof(void*)*2, x_2967);
x_2969 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2969, 0, x_2968);
x_2970 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2970, 0, x_2969);
if (lean_is_scalar(x_2965)) {
 x_2971 = lean_alloc_ctor(0, 2, 0);
} else {
 x_2971 = x_2965;
}
lean_ctor_set(x_2971, 0, x_2970);
lean_ctor_set(x_2971, 1, x_2964);
return x_2971;
}
else
{
lean_object* x_2972; lean_object* x_2973; lean_object* x_2974; lean_object* x_2975; 
lean_dec(x_2958);
x_2972 = lean_ctor_get(x_2962, 0);
lean_inc(x_2972);
x_2973 = lean_ctor_get(x_2962, 1);
lean_inc(x_2973);
if (lean_is_exclusive(x_2962)) {
 lean_ctor_release(x_2962, 0);
 lean_ctor_release(x_2962, 1);
 x_2974 = x_2962;
} else {
 lean_dec_ref(x_2962);
 x_2974 = lean_box(0);
}
if (lean_is_scalar(x_2974)) {
 x_2975 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2975 = x_2974;
}
lean_ctor_set(x_2975, 0, x_2972);
lean_ctor_set(x_2975, 1, x_2973);
return x_2975;
}
}
else
{
lean_object* x_2976; lean_object* x_2977; lean_object* x_2978; lean_object* x_2979; 
lean_dec(x_2954);
lean_dec(x_2913);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2976 = lean_ctor_get(x_2957, 0);
lean_inc(x_2976);
x_2977 = lean_ctor_get(x_2957, 1);
lean_inc(x_2977);
if (lean_is_exclusive(x_2957)) {
 lean_ctor_release(x_2957, 0);
 lean_ctor_release(x_2957, 1);
 x_2978 = x_2957;
} else {
 lean_dec_ref(x_2957);
 x_2978 = lean_box(0);
}
if (lean_is_scalar(x_2978)) {
 x_2979 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2979 = x_2978;
}
lean_ctor_set(x_2979, 0, x_2976);
lean_ctor_set(x_2979, 1, x_2977);
return x_2979;
}
}
else
{
lean_object* x_2980; 
x_2980 = lean_box(0);
x_2918 = x_2980;
goto block_2948;
}
}
block_2948:
{
lean_object* x_2919; lean_object* x_2920; lean_object* x_2921; lean_object* x_2922; lean_object* x_2923; lean_object* x_2924; lean_object* x_2925; 
lean_dec(x_2918);
lean_inc(x_2913);
x_2919 = l_Lean_mkNot(x_2913);
lean_inc(x_2912);
lean_inc(x_2911);
x_2920 = l_Lean_Expr_lam___override(x_2911, x_2912, x_2919, x_2914);
x_2921 = l_Lean_Expr_lam___override(x_2911, x_2912, x_2913, x_2914);
x_2922 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2923 = lean_array_push(x_2922, x_2920);
x_2924 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_2925 = l_Lean_Meta_mkAppM(x_2924, x_2923, x_5, x_6, x_7, x_8, x_2917);
if (lean_obj_tag(x_2925) == 0)
{
lean_object* x_2926; lean_object* x_2927; lean_object* x_2928; lean_object* x_2929; lean_object* x_2930; 
x_2926 = lean_ctor_get(x_2925, 0);
lean_inc(x_2926);
x_2927 = lean_ctor_get(x_2925, 1);
lean_inc(x_2927);
lean_dec(x_2925);
x_2928 = lean_array_push(x_2922, x_2921);
x_2929 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_2930 = l_Lean_Meta_mkAppM(x_2929, x_2928, x_5, x_6, x_7, x_8, x_2927);
if (lean_obj_tag(x_2930) == 0)
{
lean_object* x_2931; lean_object* x_2932; lean_object* x_2933; lean_object* x_2934; uint8_t x_2935; lean_object* x_2936; lean_object* x_2937; lean_object* x_2938; lean_object* x_2939; 
x_2931 = lean_ctor_get(x_2930, 0);
lean_inc(x_2931);
x_2932 = lean_ctor_get(x_2930, 1);
lean_inc(x_2932);
if (lean_is_exclusive(x_2930)) {
 lean_ctor_release(x_2930, 0);
 lean_ctor_release(x_2930, 1);
 x_2933 = x_2930;
} else {
 lean_dec_ref(x_2930);
 x_2933 = lean_box(0);
}
x_2934 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2934, 0, x_2931);
x_2935 = 1;
x_2936 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_2936, 0, x_2926);
lean_ctor_set(x_2936, 1, x_2934);
lean_ctor_set_uint8(x_2936, sizeof(void*)*2, x_2935);
x_2937 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2937, 0, x_2936);
x_2938 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2938, 0, x_2937);
if (lean_is_scalar(x_2933)) {
 x_2939 = lean_alloc_ctor(0, 2, 0);
} else {
 x_2939 = x_2933;
}
lean_ctor_set(x_2939, 0, x_2938);
lean_ctor_set(x_2939, 1, x_2932);
return x_2939;
}
else
{
lean_object* x_2940; lean_object* x_2941; lean_object* x_2942; lean_object* x_2943; 
lean_dec(x_2926);
x_2940 = lean_ctor_get(x_2930, 0);
lean_inc(x_2940);
x_2941 = lean_ctor_get(x_2930, 1);
lean_inc(x_2941);
if (lean_is_exclusive(x_2930)) {
 lean_ctor_release(x_2930, 0);
 lean_ctor_release(x_2930, 1);
 x_2942 = x_2930;
} else {
 lean_dec_ref(x_2930);
 x_2942 = lean_box(0);
}
if (lean_is_scalar(x_2942)) {
 x_2943 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2943 = x_2942;
}
lean_ctor_set(x_2943, 0, x_2940);
lean_ctor_set(x_2943, 1, x_2941);
return x_2943;
}
}
else
{
lean_object* x_2944; lean_object* x_2945; lean_object* x_2946; lean_object* x_2947; 
lean_dec(x_2921);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2944 = lean_ctor_get(x_2925, 0);
lean_inc(x_2944);
x_2945 = lean_ctor_get(x_2925, 1);
lean_inc(x_2945);
if (lean_is_exclusive(x_2925)) {
 lean_ctor_release(x_2925, 0);
 lean_ctor_release(x_2925, 1);
 x_2946 = x_2925;
} else {
 lean_dec_ref(x_2925);
 x_2946 = lean_box(0);
}
if (lean_is_scalar(x_2946)) {
 x_2947 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2947 = x_2946;
}
lean_ctor_set(x_2947, 0, x_2944);
lean_ctor_set(x_2947, 1, x_2945);
return x_2947;
}
}
}
else
{
lean_object* x_2981; lean_object* x_2982; lean_object* x_2983; lean_object* x_2984; 
lean_dec(x_2913);
lean_dec(x_2912);
lean_dec(x_2911);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2981 = lean_ctor_get(x_2915, 0);
lean_inc(x_2981);
x_2982 = lean_ctor_get(x_2915, 1);
lean_inc(x_2982);
if (lean_is_exclusive(x_2915)) {
 lean_ctor_release(x_2915, 0);
 lean_ctor_release(x_2915, 1);
 x_2983 = x_2915;
} else {
 lean_dec_ref(x_2915);
 x_2983 = lean_box(0);
}
if (lean_is_scalar(x_2983)) {
 x_2984 = lean_alloc_ctor(1, 2, 0);
} else {
 x_2984 = x_2983;
}
lean_ctor_set(x_2984, 0, x_2981);
lean_ctor_set(x_2984, 1, x_2982);
return x_2984;
}
}
else
{
lean_object* x_2985; lean_object* x_2986; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_2985 = lean_box(0);
x_2986 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2986, 0, x_2985);
lean_ctor_set(x_2986, 1, x_2735);
return x_2986;
}
}
else
{
lean_object* x_2987; 
lean_dec(x_2736);
x_2987 = lean_array_fget(x_2816, x_24);
lean_dec(x_2816);
if (lean_obj_tag(x_2987) == 6)
{
lean_object* x_2988; lean_object* x_2989; lean_object* x_2990; uint8_t x_2991; lean_object* x_2992; lean_object* x_2993; lean_object* x_2994; lean_object* x_2995; lean_object* x_2996; 
x_2988 = lean_ctor_get(x_2987, 0);
lean_inc(x_2988);
x_2989 = lean_ctor_get(x_2987, 1);
lean_inc(x_2989);
x_2990 = lean_ctor_get(x_2987, 2);
lean_inc(x_2990);
x_2991 = lean_ctor_get_uint8(x_2987, sizeof(void*)*3 + 8);
lean_dec(x_2987);
lean_inc(x_2990);
lean_inc(x_2989);
lean_inc(x_2988);
x_2992 = l_Lean_Expr_lam___override(x_2988, x_2989, x_2990, x_2991);
x_2993 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_2994 = lean_array_push(x_2993, x_2992);
x_2995 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16;
x_2996 = l_Lean_Meta_mkAppM(x_2995, x_2994, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_2996) == 0)
{
lean_object* x_2997; lean_object* x_2998; lean_object* x_2999; lean_object* x_3000; lean_object* x_3001; lean_object* x_3002; uint8_t x_3003; lean_object* x_3004; lean_object* x_3005; lean_object* x_3006; lean_object* x_3007; 
x_2997 = lean_ctor_get(x_2996, 0);
lean_inc(x_2997);
x_2998 = lean_ctor_get(x_2996, 1);
lean_inc(x_2998);
if (lean_is_exclusive(x_2996)) {
 lean_ctor_release(x_2996, 0);
 lean_ctor_release(x_2996, 1);
 x_2999 = x_2996;
} else {
 lean_dec_ref(x_2996);
 x_2999 = lean_box(0);
}
x_3000 = l_Lean_mkNot(x_2990);
x_3001 = l_Lean_Expr_forallE___override(x_2988, x_2989, x_3000, x_2991);
x_3002 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3002, 0, x_2997);
x_3003 = 1;
x_3004 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3004, 0, x_3001);
lean_ctor_set(x_3004, 1, x_3002);
lean_ctor_set_uint8(x_3004, sizeof(void*)*2, x_3003);
x_3005 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3005, 0, x_3004);
x_3006 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3006, 0, x_3005);
if (lean_is_scalar(x_2999)) {
 x_3007 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3007 = x_2999;
}
lean_ctor_set(x_3007, 0, x_3006);
lean_ctor_set(x_3007, 1, x_2998);
return x_3007;
}
else
{
lean_object* x_3008; lean_object* x_3009; lean_object* x_3010; lean_object* x_3011; 
lean_dec(x_2990);
lean_dec(x_2989);
lean_dec(x_2988);
x_3008 = lean_ctor_get(x_2996, 0);
lean_inc(x_3008);
x_3009 = lean_ctor_get(x_2996, 1);
lean_inc(x_3009);
if (lean_is_exclusive(x_2996)) {
 lean_ctor_release(x_2996, 0);
 lean_ctor_release(x_2996, 1);
 x_3010 = x_2996;
} else {
 lean_dec_ref(x_2996);
 x_3010 = lean_box(0);
}
if (lean_is_scalar(x_3010)) {
 x_3011 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3011 = x_3010;
}
lean_ctor_set(x_3011, 0, x_3008);
lean_ctor_set(x_3011, 1, x_3009);
return x_3011;
}
}
else
{
lean_object* x_3012; lean_object* x_3013; 
lean_dec(x_2987);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3012 = lean_box(0);
x_3013 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3013, 0, x_3012);
lean_ctor_set(x_3013, 1, x_2735);
return x_3013;
}
}
}
}
else
{
lean_object* x_3014; lean_object* x_3015; uint8_t x_3016; 
lean_dec(x_2817);
x_3014 = lean_array_get_size(x_2816);
x_3015 = lean_unsigned_to_nat(3u);
x_3016 = lean_nat_dec_eq(x_3014, x_3015);
lean_dec(x_3014);
if (x_3016 == 0)
{
lean_dec(x_2816);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3017; lean_object* x_3018; lean_object* x_3019; uint8_t x_3020; lean_object* x_3021; 
x_3017 = lean_ctor_get(x_2736, 0);
lean_inc(x_3017);
x_3018 = lean_ctor_get(x_2736, 1);
lean_inc(x_3018);
x_3019 = lean_ctor_get(x_2736, 2);
lean_inc(x_3019);
x_3020 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3018);
x_3021 = l_Lean_Meta_isProp(x_3018, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3021) == 0)
{
lean_object* x_3022; lean_object* x_3023; lean_object* x_3024; uint8_t x_3055; 
x_3022 = lean_ctor_get(x_3021, 0);
lean_inc(x_3022);
x_3023 = lean_ctor_get(x_3021, 1);
lean_inc(x_3023);
lean_dec(x_3021);
x_3055 = lean_unbox(x_3022);
lean_dec(x_3022);
if (x_3055 == 0)
{
lean_object* x_3056; 
x_3056 = lean_box(0);
x_3024 = x_3056;
goto block_3054;
}
else
{
uint8_t x_3057; 
x_3057 = l_Lean_Expr_hasLooseBVars(x_3019);
if (x_3057 == 0)
{
lean_object* x_3058; lean_object* x_3059; lean_object* x_3060; lean_object* x_3061; lean_object* x_3062; lean_object* x_3063; 
lean_dec(x_3017);
lean_inc(x_3019);
x_3058 = l_Lean_mkNot(x_3019);
x_3059 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3060 = lean_array_push(x_3059, x_3018);
lean_inc(x_3060);
x_3061 = lean_array_push(x_3060, x_3058);
x_3062 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3063 = l_Lean_Meta_mkAppM(x_3062, x_3061, x_5, x_6, x_7, x_8, x_3023);
if (lean_obj_tag(x_3063) == 0)
{
lean_object* x_3064; lean_object* x_3065; lean_object* x_3066; lean_object* x_3067; lean_object* x_3068; 
x_3064 = lean_ctor_get(x_3063, 0);
lean_inc(x_3064);
x_3065 = lean_ctor_get(x_3063, 1);
lean_inc(x_3065);
lean_dec(x_3063);
x_3066 = lean_array_push(x_3060, x_3019);
x_3067 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3068 = l_Lean_Meta_mkAppM(x_3067, x_3066, x_5, x_6, x_7, x_8, x_3065);
if (lean_obj_tag(x_3068) == 0)
{
lean_object* x_3069; lean_object* x_3070; lean_object* x_3071; lean_object* x_3072; uint8_t x_3073; lean_object* x_3074; lean_object* x_3075; lean_object* x_3076; lean_object* x_3077; 
x_3069 = lean_ctor_get(x_3068, 0);
lean_inc(x_3069);
x_3070 = lean_ctor_get(x_3068, 1);
lean_inc(x_3070);
if (lean_is_exclusive(x_3068)) {
 lean_ctor_release(x_3068, 0);
 lean_ctor_release(x_3068, 1);
 x_3071 = x_3068;
} else {
 lean_dec_ref(x_3068);
 x_3071 = lean_box(0);
}
x_3072 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3072, 0, x_3069);
x_3073 = 1;
x_3074 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3074, 0, x_3064);
lean_ctor_set(x_3074, 1, x_3072);
lean_ctor_set_uint8(x_3074, sizeof(void*)*2, x_3073);
x_3075 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3075, 0, x_3074);
x_3076 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3076, 0, x_3075);
if (lean_is_scalar(x_3071)) {
 x_3077 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3077 = x_3071;
}
lean_ctor_set(x_3077, 0, x_3076);
lean_ctor_set(x_3077, 1, x_3070);
return x_3077;
}
else
{
lean_object* x_3078; lean_object* x_3079; lean_object* x_3080; lean_object* x_3081; 
lean_dec(x_3064);
x_3078 = lean_ctor_get(x_3068, 0);
lean_inc(x_3078);
x_3079 = lean_ctor_get(x_3068, 1);
lean_inc(x_3079);
if (lean_is_exclusive(x_3068)) {
 lean_ctor_release(x_3068, 0);
 lean_ctor_release(x_3068, 1);
 x_3080 = x_3068;
} else {
 lean_dec_ref(x_3068);
 x_3080 = lean_box(0);
}
if (lean_is_scalar(x_3080)) {
 x_3081 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3081 = x_3080;
}
lean_ctor_set(x_3081, 0, x_3078);
lean_ctor_set(x_3081, 1, x_3079);
return x_3081;
}
}
else
{
lean_object* x_3082; lean_object* x_3083; lean_object* x_3084; lean_object* x_3085; 
lean_dec(x_3060);
lean_dec(x_3019);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3082 = lean_ctor_get(x_3063, 0);
lean_inc(x_3082);
x_3083 = lean_ctor_get(x_3063, 1);
lean_inc(x_3083);
if (lean_is_exclusive(x_3063)) {
 lean_ctor_release(x_3063, 0);
 lean_ctor_release(x_3063, 1);
 x_3084 = x_3063;
} else {
 lean_dec_ref(x_3063);
 x_3084 = lean_box(0);
}
if (lean_is_scalar(x_3084)) {
 x_3085 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3085 = x_3084;
}
lean_ctor_set(x_3085, 0, x_3082);
lean_ctor_set(x_3085, 1, x_3083);
return x_3085;
}
}
else
{
lean_object* x_3086; 
x_3086 = lean_box(0);
x_3024 = x_3086;
goto block_3054;
}
}
block_3054:
{
lean_object* x_3025; lean_object* x_3026; lean_object* x_3027; lean_object* x_3028; lean_object* x_3029; lean_object* x_3030; lean_object* x_3031; 
lean_dec(x_3024);
lean_inc(x_3019);
x_3025 = l_Lean_mkNot(x_3019);
lean_inc(x_3018);
lean_inc(x_3017);
x_3026 = l_Lean_Expr_lam___override(x_3017, x_3018, x_3025, x_3020);
x_3027 = l_Lean_Expr_lam___override(x_3017, x_3018, x_3019, x_3020);
x_3028 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3029 = lean_array_push(x_3028, x_3026);
x_3030 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3031 = l_Lean_Meta_mkAppM(x_3030, x_3029, x_5, x_6, x_7, x_8, x_3023);
if (lean_obj_tag(x_3031) == 0)
{
lean_object* x_3032; lean_object* x_3033; lean_object* x_3034; lean_object* x_3035; lean_object* x_3036; 
x_3032 = lean_ctor_get(x_3031, 0);
lean_inc(x_3032);
x_3033 = lean_ctor_get(x_3031, 1);
lean_inc(x_3033);
lean_dec(x_3031);
x_3034 = lean_array_push(x_3028, x_3027);
x_3035 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3036 = l_Lean_Meta_mkAppM(x_3035, x_3034, x_5, x_6, x_7, x_8, x_3033);
if (lean_obj_tag(x_3036) == 0)
{
lean_object* x_3037; lean_object* x_3038; lean_object* x_3039; lean_object* x_3040; uint8_t x_3041; lean_object* x_3042; lean_object* x_3043; lean_object* x_3044; lean_object* x_3045; 
x_3037 = lean_ctor_get(x_3036, 0);
lean_inc(x_3037);
x_3038 = lean_ctor_get(x_3036, 1);
lean_inc(x_3038);
if (lean_is_exclusive(x_3036)) {
 lean_ctor_release(x_3036, 0);
 lean_ctor_release(x_3036, 1);
 x_3039 = x_3036;
} else {
 lean_dec_ref(x_3036);
 x_3039 = lean_box(0);
}
x_3040 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3040, 0, x_3037);
x_3041 = 1;
x_3042 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3042, 0, x_3032);
lean_ctor_set(x_3042, 1, x_3040);
lean_ctor_set_uint8(x_3042, sizeof(void*)*2, x_3041);
x_3043 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3043, 0, x_3042);
x_3044 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3044, 0, x_3043);
if (lean_is_scalar(x_3039)) {
 x_3045 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3045 = x_3039;
}
lean_ctor_set(x_3045, 0, x_3044);
lean_ctor_set(x_3045, 1, x_3038);
return x_3045;
}
else
{
lean_object* x_3046; lean_object* x_3047; lean_object* x_3048; lean_object* x_3049; 
lean_dec(x_3032);
x_3046 = lean_ctor_get(x_3036, 0);
lean_inc(x_3046);
x_3047 = lean_ctor_get(x_3036, 1);
lean_inc(x_3047);
if (lean_is_exclusive(x_3036)) {
 lean_ctor_release(x_3036, 0);
 lean_ctor_release(x_3036, 1);
 x_3048 = x_3036;
} else {
 lean_dec_ref(x_3036);
 x_3048 = lean_box(0);
}
if (lean_is_scalar(x_3048)) {
 x_3049 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3049 = x_3048;
}
lean_ctor_set(x_3049, 0, x_3046);
lean_ctor_set(x_3049, 1, x_3047);
return x_3049;
}
}
else
{
lean_object* x_3050; lean_object* x_3051; lean_object* x_3052; lean_object* x_3053; 
lean_dec(x_3027);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3050 = lean_ctor_get(x_3031, 0);
lean_inc(x_3050);
x_3051 = lean_ctor_get(x_3031, 1);
lean_inc(x_3051);
if (lean_is_exclusive(x_3031)) {
 lean_ctor_release(x_3031, 0);
 lean_ctor_release(x_3031, 1);
 x_3052 = x_3031;
} else {
 lean_dec_ref(x_3031);
 x_3052 = lean_box(0);
}
if (lean_is_scalar(x_3052)) {
 x_3053 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3053 = x_3052;
}
lean_ctor_set(x_3053, 0, x_3050);
lean_ctor_set(x_3053, 1, x_3051);
return x_3053;
}
}
}
else
{
lean_object* x_3087; lean_object* x_3088; lean_object* x_3089; lean_object* x_3090; 
lean_dec(x_3019);
lean_dec(x_3018);
lean_dec(x_3017);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3087 = lean_ctor_get(x_3021, 0);
lean_inc(x_3087);
x_3088 = lean_ctor_get(x_3021, 1);
lean_inc(x_3088);
if (lean_is_exclusive(x_3021)) {
 lean_ctor_release(x_3021, 0);
 lean_ctor_release(x_3021, 1);
 x_3089 = x_3021;
} else {
 lean_dec_ref(x_3021);
 x_3089 = lean_box(0);
}
if (lean_is_scalar(x_3089)) {
 x_3090 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3090 = x_3089;
}
lean_ctor_set(x_3090, 0, x_3087);
lean_ctor_set(x_3090, 1, x_3088);
return x_3090;
}
}
else
{
lean_object* x_3091; lean_object* x_3092; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3091 = lean_box(0);
x_3092 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3092, 0, x_3091);
lean_ctor_set(x_3092, 1, x_2735);
return x_3092;
}
}
else
{
lean_object* x_3093; lean_object* x_3094; lean_object* x_3095; lean_object* x_3096; lean_object* x_3097; lean_object* x_3098; lean_object* x_3099; lean_object* x_3100; 
lean_dec(x_2736);
x_3093 = lean_array_fget(x_2816, x_24);
x_3094 = lean_unsigned_to_nat(2u);
x_3095 = lean_array_fget(x_2816, x_3094);
lean_dec(x_2816);
x_3096 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3097 = lean_array_push(x_3096, x_3093);
x_3098 = lean_array_push(x_3097, x_3095);
x_3099 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3098);
x_3100 = l_Lean_Meta_mkAppM(x_3099, x_3098, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3100) == 0)
{
lean_object* x_3101; lean_object* x_3102; lean_object* x_3103; lean_object* x_3104; 
x_3101 = lean_ctor_get(x_3100, 0);
lean_inc(x_3101);
x_3102 = lean_ctor_get(x_3100, 1);
lean_inc(x_3102);
lean_dec(x_3100);
x_3103 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18;
x_3104 = l_Lean_Meta_mkAppM(x_3103, x_3098, x_5, x_6, x_7, x_8, x_3102);
if (lean_obj_tag(x_3104) == 0)
{
lean_object* x_3105; lean_object* x_3106; lean_object* x_3107; lean_object* x_3108; uint8_t x_3109; lean_object* x_3110; lean_object* x_3111; lean_object* x_3112; lean_object* x_3113; 
x_3105 = lean_ctor_get(x_3104, 0);
lean_inc(x_3105);
x_3106 = lean_ctor_get(x_3104, 1);
lean_inc(x_3106);
if (lean_is_exclusive(x_3104)) {
 lean_ctor_release(x_3104, 0);
 lean_ctor_release(x_3104, 1);
 x_3107 = x_3104;
} else {
 lean_dec_ref(x_3104);
 x_3107 = lean_box(0);
}
x_3108 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3108, 0, x_3105);
x_3109 = 1;
x_3110 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3110, 0, x_3101);
lean_ctor_set(x_3110, 1, x_3108);
lean_ctor_set_uint8(x_3110, sizeof(void*)*2, x_3109);
x_3111 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3111, 0, x_3110);
x_3112 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3112, 0, x_3111);
if (lean_is_scalar(x_3107)) {
 x_3113 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3113 = x_3107;
}
lean_ctor_set(x_3113, 0, x_3112);
lean_ctor_set(x_3113, 1, x_3106);
return x_3113;
}
else
{
lean_object* x_3114; lean_object* x_3115; lean_object* x_3116; lean_object* x_3117; 
lean_dec(x_3101);
x_3114 = lean_ctor_get(x_3104, 0);
lean_inc(x_3114);
x_3115 = lean_ctor_get(x_3104, 1);
lean_inc(x_3115);
if (lean_is_exclusive(x_3104)) {
 lean_ctor_release(x_3104, 0);
 lean_ctor_release(x_3104, 1);
 x_3116 = x_3104;
} else {
 lean_dec_ref(x_3104);
 x_3116 = lean_box(0);
}
if (lean_is_scalar(x_3116)) {
 x_3117 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3117 = x_3116;
}
lean_ctor_set(x_3117, 0, x_3114);
lean_ctor_set(x_3117, 1, x_3115);
return x_3117;
}
}
else
{
lean_object* x_3118; lean_object* x_3119; lean_object* x_3120; lean_object* x_3121; 
lean_dec(x_3098);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3118 = lean_ctor_get(x_3100, 0);
lean_inc(x_3118);
x_3119 = lean_ctor_get(x_3100, 1);
lean_inc(x_3119);
if (lean_is_exclusive(x_3100)) {
 lean_ctor_release(x_3100, 0);
 lean_ctor_release(x_3100, 1);
 x_3120 = x_3100;
} else {
 lean_dec_ref(x_3100);
 x_3120 = lean_box(0);
}
if (lean_is_scalar(x_3120)) {
 x_3121 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3121 = x_3120;
}
lean_ctor_set(x_3121, 0, x_3118);
lean_ctor_set(x_3121, 1, x_3119);
return x_3121;
}
}
}
}
else
{
lean_object* x_3122; lean_object* x_3123; uint8_t x_3124; 
lean_dec(x_2817);
x_3122 = lean_array_get_size(x_2816);
x_3123 = lean_unsigned_to_nat(3u);
x_3124 = lean_nat_dec_eq(x_3122, x_3123);
lean_dec(x_3122);
if (x_3124 == 0)
{
lean_dec(x_2816);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3125; lean_object* x_3126; lean_object* x_3127; uint8_t x_3128; lean_object* x_3129; 
x_3125 = lean_ctor_get(x_2736, 0);
lean_inc(x_3125);
x_3126 = lean_ctor_get(x_2736, 1);
lean_inc(x_3126);
x_3127 = lean_ctor_get(x_2736, 2);
lean_inc(x_3127);
x_3128 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3126);
x_3129 = l_Lean_Meta_isProp(x_3126, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3129) == 0)
{
lean_object* x_3130; lean_object* x_3131; lean_object* x_3132; uint8_t x_3163; 
x_3130 = lean_ctor_get(x_3129, 0);
lean_inc(x_3130);
x_3131 = lean_ctor_get(x_3129, 1);
lean_inc(x_3131);
lean_dec(x_3129);
x_3163 = lean_unbox(x_3130);
lean_dec(x_3130);
if (x_3163 == 0)
{
lean_object* x_3164; 
x_3164 = lean_box(0);
x_3132 = x_3164;
goto block_3162;
}
else
{
uint8_t x_3165; 
x_3165 = l_Lean_Expr_hasLooseBVars(x_3127);
if (x_3165 == 0)
{
lean_object* x_3166; lean_object* x_3167; lean_object* x_3168; lean_object* x_3169; lean_object* x_3170; lean_object* x_3171; 
lean_dec(x_3125);
lean_inc(x_3127);
x_3166 = l_Lean_mkNot(x_3127);
x_3167 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3168 = lean_array_push(x_3167, x_3126);
lean_inc(x_3168);
x_3169 = lean_array_push(x_3168, x_3166);
x_3170 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3171 = l_Lean_Meta_mkAppM(x_3170, x_3169, x_5, x_6, x_7, x_8, x_3131);
if (lean_obj_tag(x_3171) == 0)
{
lean_object* x_3172; lean_object* x_3173; lean_object* x_3174; lean_object* x_3175; lean_object* x_3176; 
x_3172 = lean_ctor_get(x_3171, 0);
lean_inc(x_3172);
x_3173 = lean_ctor_get(x_3171, 1);
lean_inc(x_3173);
lean_dec(x_3171);
x_3174 = lean_array_push(x_3168, x_3127);
x_3175 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3176 = l_Lean_Meta_mkAppM(x_3175, x_3174, x_5, x_6, x_7, x_8, x_3173);
if (lean_obj_tag(x_3176) == 0)
{
lean_object* x_3177; lean_object* x_3178; lean_object* x_3179; lean_object* x_3180; uint8_t x_3181; lean_object* x_3182; lean_object* x_3183; lean_object* x_3184; lean_object* x_3185; 
x_3177 = lean_ctor_get(x_3176, 0);
lean_inc(x_3177);
x_3178 = lean_ctor_get(x_3176, 1);
lean_inc(x_3178);
if (lean_is_exclusive(x_3176)) {
 lean_ctor_release(x_3176, 0);
 lean_ctor_release(x_3176, 1);
 x_3179 = x_3176;
} else {
 lean_dec_ref(x_3176);
 x_3179 = lean_box(0);
}
x_3180 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3180, 0, x_3177);
x_3181 = 1;
x_3182 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3182, 0, x_3172);
lean_ctor_set(x_3182, 1, x_3180);
lean_ctor_set_uint8(x_3182, sizeof(void*)*2, x_3181);
x_3183 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3183, 0, x_3182);
x_3184 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3184, 0, x_3183);
if (lean_is_scalar(x_3179)) {
 x_3185 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3185 = x_3179;
}
lean_ctor_set(x_3185, 0, x_3184);
lean_ctor_set(x_3185, 1, x_3178);
return x_3185;
}
else
{
lean_object* x_3186; lean_object* x_3187; lean_object* x_3188; lean_object* x_3189; 
lean_dec(x_3172);
x_3186 = lean_ctor_get(x_3176, 0);
lean_inc(x_3186);
x_3187 = lean_ctor_get(x_3176, 1);
lean_inc(x_3187);
if (lean_is_exclusive(x_3176)) {
 lean_ctor_release(x_3176, 0);
 lean_ctor_release(x_3176, 1);
 x_3188 = x_3176;
} else {
 lean_dec_ref(x_3176);
 x_3188 = lean_box(0);
}
if (lean_is_scalar(x_3188)) {
 x_3189 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3189 = x_3188;
}
lean_ctor_set(x_3189, 0, x_3186);
lean_ctor_set(x_3189, 1, x_3187);
return x_3189;
}
}
else
{
lean_object* x_3190; lean_object* x_3191; lean_object* x_3192; lean_object* x_3193; 
lean_dec(x_3168);
lean_dec(x_3127);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3190 = lean_ctor_get(x_3171, 0);
lean_inc(x_3190);
x_3191 = lean_ctor_get(x_3171, 1);
lean_inc(x_3191);
if (lean_is_exclusive(x_3171)) {
 lean_ctor_release(x_3171, 0);
 lean_ctor_release(x_3171, 1);
 x_3192 = x_3171;
} else {
 lean_dec_ref(x_3171);
 x_3192 = lean_box(0);
}
if (lean_is_scalar(x_3192)) {
 x_3193 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3193 = x_3192;
}
lean_ctor_set(x_3193, 0, x_3190);
lean_ctor_set(x_3193, 1, x_3191);
return x_3193;
}
}
else
{
lean_object* x_3194; 
x_3194 = lean_box(0);
x_3132 = x_3194;
goto block_3162;
}
}
block_3162:
{
lean_object* x_3133; lean_object* x_3134; lean_object* x_3135; lean_object* x_3136; lean_object* x_3137; lean_object* x_3138; lean_object* x_3139; 
lean_dec(x_3132);
lean_inc(x_3127);
x_3133 = l_Lean_mkNot(x_3127);
lean_inc(x_3126);
lean_inc(x_3125);
x_3134 = l_Lean_Expr_lam___override(x_3125, x_3126, x_3133, x_3128);
x_3135 = l_Lean_Expr_lam___override(x_3125, x_3126, x_3127, x_3128);
x_3136 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3137 = lean_array_push(x_3136, x_3134);
x_3138 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3139 = l_Lean_Meta_mkAppM(x_3138, x_3137, x_5, x_6, x_7, x_8, x_3131);
if (lean_obj_tag(x_3139) == 0)
{
lean_object* x_3140; lean_object* x_3141; lean_object* x_3142; lean_object* x_3143; lean_object* x_3144; 
x_3140 = lean_ctor_get(x_3139, 0);
lean_inc(x_3140);
x_3141 = lean_ctor_get(x_3139, 1);
lean_inc(x_3141);
lean_dec(x_3139);
x_3142 = lean_array_push(x_3136, x_3135);
x_3143 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3144 = l_Lean_Meta_mkAppM(x_3143, x_3142, x_5, x_6, x_7, x_8, x_3141);
if (lean_obj_tag(x_3144) == 0)
{
lean_object* x_3145; lean_object* x_3146; lean_object* x_3147; lean_object* x_3148; uint8_t x_3149; lean_object* x_3150; lean_object* x_3151; lean_object* x_3152; lean_object* x_3153; 
x_3145 = lean_ctor_get(x_3144, 0);
lean_inc(x_3145);
x_3146 = lean_ctor_get(x_3144, 1);
lean_inc(x_3146);
if (lean_is_exclusive(x_3144)) {
 lean_ctor_release(x_3144, 0);
 lean_ctor_release(x_3144, 1);
 x_3147 = x_3144;
} else {
 lean_dec_ref(x_3144);
 x_3147 = lean_box(0);
}
x_3148 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3148, 0, x_3145);
x_3149 = 1;
x_3150 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3150, 0, x_3140);
lean_ctor_set(x_3150, 1, x_3148);
lean_ctor_set_uint8(x_3150, sizeof(void*)*2, x_3149);
x_3151 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3151, 0, x_3150);
x_3152 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3152, 0, x_3151);
if (lean_is_scalar(x_3147)) {
 x_3153 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3153 = x_3147;
}
lean_ctor_set(x_3153, 0, x_3152);
lean_ctor_set(x_3153, 1, x_3146);
return x_3153;
}
else
{
lean_object* x_3154; lean_object* x_3155; lean_object* x_3156; lean_object* x_3157; 
lean_dec(x_3140);
x_3154 = lean_ctor_get(x_3144, 0);
lean_inc(x_3154);
x_3155 = lean_ctor_get(x_3144, 1);
lean_inc(x_3155);
if (lean_is_exclusive(x_3144)) {
 lean_ctor_release(x_3144, 0);
 lean_ctor_release(x_3144, 1);
 x_3156 = x_3144;
} else {
 lean_dec_ref(x_3144);
 x_3156 = lean_box(0);
}
if (lean_is_scalar(x_3156)) {
 x_3157 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3157 = x_3156;
}
lean_ctor_set(x_3157, 0, x_3154);
lean_ctor_set(x_3157, 1, x_3155);
return x_3157;
}
}
else
{
lean_object* x_3158; lean_object* x_3159; lean_object* x_3160; lean_object* x_3161; 
lean_dec(x_3135);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3158 = lean_ctor_get(x_3139, 0);
lean_inc(x_3158);
x_3159 = lean_ctor_get(x_3139, 1);
lean_inc(x_3159);
if (lean_is_exclusive(x_3139)) {
 lean_ctor_release(x_3139, 0);
 lean_ctor_release(x_3139, 1);
 x_3160 = x_3139;
} else {
 lean_dec_ref(x_3139);
 x_3160 = lean_box(0);
}
if (lean_is_scalar(x_3160)) {
 x_3161 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3161 = x_3160;
}
lean_ctor_set(x_3161, 0, x_3158);
lean_ctor_set(x_3161, 1, x_3159);
return x_3161;
}
}
}
else
{
lean_object* x_3195; lean_object* x_3196; lean_object* x_3197; lean_object* x_3198; 
lean_dec(x_3127);
lean_dec(x_3126);
lean_dec(x_3125);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3195 = lean_ctor_get(x_3129, 0);
lean_inc(x_3195);
x_3196 = lean_ctor_get(x_3129, 1);
lean_inc(x_3196);
if (lean_is_exclusive(x_3129)) {
 lean_ctor_release(x_3129, 0);
 lean_ctor_release(x_3129, 1);
 x_3197 = x_3129;
} else {
 lean_dec_ref(x_3129);
 x_3197 = lean_box(0);
}
if (lean_is_scalar(x_3197)) {
 x_3198 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3198 = x_3197;
}
lean_ctor_set(x_3198, 0, x_3195);
lean_ctor_set(x_3198, 1, x_3196);
return x_3198;
}
}
else
{
lean_object* x_3199; lean_object* x_3200; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3199 = lean_box(0);
x_3200 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3200, 0, x_3199);
lean_ctor_set(x_3200, 1, x_2735);
return x_3200;
}
}
else
{
lean_object* x_3201; lean_object* x_3202; lean_object* x_3203; lean_object* x_3204; lean_object* x_3205; lean_object* x_3206; lean_object* x_3207; uint8_t x_3208; 
lean_dec(x_2736);
x_3201 = lean_unsigned_to_nat(0u);
x_3202 = lean_array_fget(x_2816, x_3201);
x_3203 = lean_array_fget(x_2816, x_24);
x_3204 = lean_unsigned_to_nat(2u);
x_3205 = lean_array_fget(x_2816, x_3204);
lean_dec(x_2816);
lean_inc(x_3205);
lean_inc(x_3203);
x_3206 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___boxed), 11, 2);
lean_closure_set(x_3206, 0, x_3203);
lean_closure_set(x_3206, 1, x_3205);
x_3207 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20;
x_3208 = l_Lean_Expr_isAppOfArity(x_3202, x_3207, x_24);
lean_dec(x_3202);
if (x_3208 == 0)
{
lean_object* x_3209; lean_object* x_3210; 
lean_dec(x_3206);
x_3209 = lean_box(0);
x_3210 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1(x_3203, x_3205, x_3209, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_2735);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_3210;
}
else
{
lean_object* x_3211; uint8_t x_3212; 
x_3211 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3;
x_3212 = l_Lean_Expr_isAppOfArity(x_3205, x_3211, x_3204);
if (x_3212 == 0)
{
lean_object* x_3213; lean_object* x_3214; 
x_3213 = lean_box(0);
x_3214 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2(x_3203, x_3206, x_3205, x_3213, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_2735);
lean_dec(x_3203);
return x_3214;
}
else
{
lean_object* x_3215; lean_object* x_3216; lean_object* x_3217; lean_object* x_3218; 
lean_dec(x_3206);
lean_dec(x_3205);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_3215 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3216 = lean_array_push(x_3215, x_3203);
x_3217 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3218 = l_Lean_Meta_mkAppM(x_3217, x_3216, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3218) == 0)
{
lean_object* x_3219; lean_object* x_3220; lean_object* x_3221; 
x_3219 = lean_ctor_get(x_3218, 0);
lean_inc(x_3219);
x_3220 = lean_ctor_get(x_3218, 1);
lean_inc(x_3220);
lean_dec(x_3218);
lean_inc(x_3219);
x_3221 = lean_infer_type(x_3219, x_5, x_6, x_7, x_8, x_3220);
if (lean_obj_tag(x_3221) == 0)
{
lean_object* x_3222; lean_object* x_3223; lean_object* x_3224; lean_object* x_3225; uint8_t x_3226; 
x_3222 = lean_ctor_get(x_3221, 0);
lean_inc(x_3222);
x_3223 = lean_ctor_get(x_3221, 1);
lean_inc(x_3223);
if (lean_is_exclusive(x_3221)) {
 lean_ctor_release(x_3221, 0);
 lean_ctor_release(x_3221, 1);
 x_3224 = x_3221;
} else {
 lean_dec_ref(x_3221);
 x_3224 = lean_box(0);
}
x_3225 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_3226 = l_Lean_Expr_isAppOfArity(x_3222, x_3225, x_3123);
if (x_3226 == 0)
{
lean_object* x_3227; lean_object* x_3228; 
lean_dec(x_3222);
lean_dec(x_3219);
x_3227 = lean_box(0);
if (lean_is_scalar(x_3224)) {
 x_3228 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3228 = x_3224;
}
lean_ctor_set(x_3228, 0, x_3227);
lean_ctor_set(x_3228, 1, x_3223);
return x_3228;
}
else
{
lean_object* x_3229; lean_object* x_3230; uint8_t x_3231; lean_object* x_3232; lean_object* x_3233; lean_object* x_3234; lean_object* x_3235; 
x_3229 = l_Lean_Expr_appArg_x21(x_3222);
lean_dec(x_3222);
x_3230 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3230, 0, x_3219);
x_3231 = 1;
x_3232 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3232, 0, x_3229);
lean_ctor_set(x_3232, 1, x_3230);
lean_ctor_set_uint8(x_3232, sizeof(void*)*2, x_3231);
x_3233 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3233, 0, x_3232);
x_3234 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3234, 0, x_3233);
if (lean_is_scalar(x_3224)) {
 x_3235 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3235 = x_3224;
}
lean_ctor_set(x_3235, 0, x_3234);
lean_ctor_set(x_3235, 1, x_3223);
return x_3235;
}
}
else
{
lean_object* x_3236; lean_object* x_3237; lean_object* x_3238; lean_object* x_3239; 
lean_dec(x_3219);
x_3236 = lean_ctor_get(x_3221, 0);
lean_inc(x_3236);
x_3237 = lean_ctor_get(x_3221, 1);
lean_inc(x_3237);
if (lean_is_exclusive(x_3221)) {
 lean_ctor_release(x_3221, 0);
 lean_ctor_release(x_3221, 1);
 x_3238 = x_3221;
} else {
 lean_dec_ref(x_3221);
 x_3238 = lean_box(0);
}
if (lean_is_scalar(x_3238)) {
 x_3239 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3239 = x_3238;
}
lean_ctor_set(x_3239, 0, x_3236);
lean_ctor_set(x_3239, 1, x_3237);
return x_3239;
}
}
else
{
lean_object* x_3240; lean_object* x_3241; lean_object* x_3242; lean_object* x_3243; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3240 = lean_ctor_get(x_3218, 0);
lean_inc(x_3240);
x_3241 = lean_ctor_get(x_3218, 1);
lean_inc(x_3241);
if (lean_is_exclusive(x_3218)) {
 lean_ctor_release(x_3218, 0);
 lean_ctor_release(x_3218, 1);
 x_3242 = x_3218;
} else {
 lean_dec_ref(x_3218);
 x_3242 = lean_box(0);
}
if (lean_is_scalar(x_3242)) {
 x_3243 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3243 = x_3242;
}
lean_ctor_set(x_3243, 0, x_3240);
lean_ctor_set(x_3243, 1, x_3241);
return x_3243;
}
}
}
}
}
}
else
{
lean_object* x_3244; lean_object* x_3245; uint8_t x_3246; 
lean_dec(x_2817);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_3244 = lean_array_get_size(x_2816);
x_3245 = lean_unsigned_to_nat(2u);
x_3246 = lean_nat_dec_eq(x_3244, x_3245);
lean_dec(x_3244);
if (x_3246 == 0)
{
lean_dec(x_2816);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3247; lean_object* x_3248; lean_object* x_3249; uint8_t x_3250; lean_object* x_3251; 
x_3247 = lean_ctor_get(x_2736, 0);
lean_inc(x_3247);
x_3248 = lean_ctor_get(x_2736, 1);
lean_inc(x_3248);
x_3249 = lean_ctor_get(x_2736, 2);
lean_inc(x_3249);
x_3250 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3248);
x_3251 = l_Lean_Meta_isProp(x_3248, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3251) == 0)
{
lean_object* x_3252; lean_object* x_3253; lean_object* x_3254; uint8_t x_3285; 
x_3252 = lean_ctor_get(x_3251, 0);
lean_inc(x_3252);
x_3253 = lean_ctor_get(x_3251, 1);
lean_inc(x_3253);
lean_dec(x_3251);
x_3285 = lean_unbox(x_3252);
lean_dec(x_3252);
if (x_3285 == 0)
{
lean_object* x_3286; 
x_3286 = lean_box(0);
x_3254 = x_3286;
goto block_3284;
}
else
{
uint8_t x_3287; 
x_3287 = l_Lean_Expr_hasLooseBVars(x_3249);
if (x_3287 == 0)
{
lean_object* x_3288; lean_object* x_3289; lean_object* x_3290; lean_object* x_3291; lean_object* x_3292; lean_object* x_3293; 
lean_dec(x_3247);
lean_inc(x_3249);
x_3288 = l_Lean_mkNot(x_3249);
x_3289 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3290 = lean_array_push(x_3289, x_3248);
lean_inc(x_3290);
x_3291 = lean_array_push(x_3290, x_3288);
x_3292 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3293 = l_Lean_Meta_mkAppM(x_3292, x_3291, x_5, x_6, x_7, x_8, x_3253);
if (lean_obj_tag(x_3293) == 0)
{
lean_object* x_3294; lean_object* x_3295; lean_object* x_3296; lean_object* x_3297; lean_object* x_3298; 
x_3294 = lean_ctor_get(x_3293, 0);
lean_inc(x_3294);
x_3295 = lean_ctor_get(x_3293, 1);
lean_inc(x_3295);
lean_dec(x_3293);
x_3296 = lean_array_push(x_3290, x_3249);
x_3297 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3298 = l_Lean_Meta_mkAppM(x_3297, x_3296, x_5, x_6, x_7, x_8, x_3295);
if (lean_obj_tag(x_3298) == 0)
{
lean_object* x_3299; lean_object* x_3300; lean_object* x_3301; lean_object* x_3302; uint8_t x_3303; lean_object* x_3304; lean_object* x_3305; lean_object* x_3306; lean_object* x_3307; 
x_3299 = lean_ctor_get(x_3298, 0);
lean_inc(x_3299);
x_3300 = lean_ctor_get(x_3298, 1);
lean_inc(x_3300);
if (lean_is_exclusive(x_3298)) {
 lean_ctor_release(x_3298, 0);
 lean_ctor_release(x_3298, 1);
 x_3301 = x_3298;
} else {
 lean_dec_ref(x_3298);
 x_3301 = lean_box(0);
}
x_3302 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3302, 0, x_3299);
x_3303 = 1;
x_3304 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3304, 0, x_3294);
lean_ctor_set(x_3304, 1, x_3302);
lean_ctor_set_uint8(x_3304, sizeof(void*)*2, x_3303);
x_3305 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3305, 0, x_3304);
x_3306 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3306, 0, x_3305);
if (lean_is_scalar(x_3301)) {
 x_3307 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3307 = x_3301;
}
lean_ctor_set(x_3307, 0, x_3306);
lean_ctor_set(x_3307, 1, x_3300);
return x_3307;
}
else
{
lean_object* x_3308; lean_object* x_3309; lean_object* x_3310; lean_object* x_3311; 
lean_dec(x_3294);
x_3308 = lean_ctor_get(x_3298, 0);
lean_inc(x_3308);
x_3309 = lean_ctor_get(x_3298, 1);
lean_inc(x_3309);
if (lean_is_exclusive(x_3298)) {
 lean_ctor_release(x_3298, 0);
 lean_ctor_release(x_3298, 1);
 x_3310 = x_3298;
} else {
 lean_dec_ref(x_3298);
 x_3310 = lean_box(0);
}
if (lean_is_scalar(x_3310)) {
 x_3311 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3311 = x_3310;
}
lean_ctor_set(x_3311, 0, x_3308);
lean_ctor_set(x_3311, 1, x_3309);
return x_3311;
}
}
else
{
lean_object* x_3312; lean_object* x_3313; lean_object* x_3314; lean_object* x_3315; 
lean_dec(x_3290);
lean_dec(x_3249);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3312 = lean_ctor_get(x_3293, 0);
lean_inc(x_3312);
x_3313 = lean_ctor_get(x_3293, 1);
lean_inc(x_3313);
if (lean_is_exclusive(x_3293)) {
 lean_ctor_release(x_3293, 0);
 lean_ctor_release(x_3293, 1);
 x_3314 = x_3293;
} else {
 lean_dec_ref(x_3293);
 x_3314 = lean_box(0);
}
if (lean_is_scalar(x_3314)) {
 x_3315 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3315 = x_3314;
}
lean_ctor_set(x_3315, 0, x_3312);
lean_ctor_set(x_3315, 1, x_3313);
return x_3315;
}
}
else
{
lean_object* x_3316; 
x_3316 = lean_box(0);
x_3254 = x_3316;
goto block_3284;
}
}
block_3284:
{
lean_object* x_3255; lean_object* x_3256; lean_object* x_3257; lean_object* x_3258; lean_object* x_3259; lean_object* x_3260; lean_object* x_3261; 
lean_dec(x_3254);
lean_inc(x_3249);
x_3255 = l_Lean_mkNot(x_3249);
lean_inc(x_3248);
lean_inc(x_3247);
x_3256 = l_Lean_Expr_lam___override(x_3247, x_3248, x_3255, x_3250);
x_3257 = l_Lean_Expr_lam___override(x_3247, x_3248, x_3249, x_3250);
x_3258 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3259 = lean_array_push(x_3258, x_3256);
x_3260 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3261 = l_Lean_Meta_mkAppM(x_3260, x_3259, x_5, x_6, x_7, x_8, x_3253);
if (lean_obj_tag(x_3261) == 0)
{
lean_object* x_3262; lean_object* x_3263; lean_object* x_3264; lean_object* x_3265; lean_object* x_3266; 
x_3262 = lean_ctor_get(x_3261, 0);
lean_inc(x_3262);
x_3263 = lean_ctor_get(x_3261, 1);
lean_inc(x_3263);
lean_dec(x_3261);
x_3264 = lean_array_push(x_3258, x_3257);
x_3265 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3266 = l_Lean_Meta_mkAppM(x_3265, x_3264, x_5, x_6, x_7, x_8, x_3263);
if (lean_obj_tag(x_3266) == 0)
{
lean_object* x_3267; lean_object* x_3268; lean_object* x_3269; lean_object* x_3270; uint8_t x_3271; lean_object* x_3272; lean_object* x_3273; lean_object* x_3274; lean_object* x_3275; 
x_3267 = lean_ctor_get(x_3266, 0);
lean_inc(x_3267);
x_3268 = lean_ctor_get(x_3266, 1);
lean_inc(x_3268);
if (lean_is_exclusive(x_3266)) {
 lean_ctor_release(x_3266, 0);
 lean_ctor_release(x_3266, 1);
 x_3269 = x_3266;
} else {
 lean_dec_ref(x_3266);
 x_3269 = lean_box(0);
}
x_3270 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3270, 0, x_3267);
x_3271 = 1;
x_3272 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3272, 0, x_3262);
lean_ctor_set(x_3272, 1, x_3270);
lean_ctor_set_uint8(x_3272, sizeof(void*)*2, x_3271);
x_3273 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3273, 0, x_3272);
x_3274 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3274, 0, x_3273);
if (lean_is_scalar(x_3269)) {
 x_3275 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3275 = x_3269;
}
lean_ctor_set(x_3275, 0, x_3274);
lean_ctor_set(x_3275, 1, x_3268);
return x_3275;
}
else
{
lean_object* x_3276; lean_object* x_3277; lean_object* x_3278; lean_object* x_3279; 
lean_dec(x_3262);
x_3276 = lean_ctor_get(x_3266, 0);
lean_inc(x_3276);
x_3277 = lean_ctor_get(x_3266, 1);
lean_inc(x_3277);
if (lean_is_exclusive(x_3266)) {
 lean_ctor_release(x_3266, 0);
 lean_ctor_release(x_3266, 1);
 x_3278 = x_3266;
} else {
 lean_dec_ref(x_3266);
 x_3278 = lean_box(0);
}
if (lean_is_scalar(x_3278)) {
 x_3279 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3279 = x_3278;
}
lean_ctor_set(x_3279, 0, x_3276);
lean_ctor_set(x_3279, 1, x_3277);
return x_3279;
}
}
else
{
lean_object* x_3280; lean_object* x_3281; lean_object* x_3282; lean_object* x_3283; 
lean_dec(x_3257);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3280 = lean_ctor_get(x_3261, 0);
lean_inc(x_3280);
x_3281 = lean_ctor_get(x_3261, 1);
lean_inc(x_3281);
if (lean_is_exclusive(x_3261)) {
 lean_ctor_release(x_3261, 0);
 lean_ctor_release(x_3261, 1);
 x_3282 = x_3261;
} else {
 lean_dec_ref(x_3261);
 x_3282 = lean_box(0);
}
if (lean_is_scalar(x_3282)) {
 x_3283 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3283 = x_3282;
}
lean_ctor_set(x_3283, 0, x_3280);
lean_ctor_set(x_3283, 1, x_3281);
return x_3283;
}
}
}
else
{
lean_object* x_3317; lean_object* x_3318; lean_object* x_3319; lean_object* x_3320; 
lean_dec(x_3249);
lean_dec(x_3248);
lean_dec(x_3247);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3317 = lean_ctor_get(x_3251, 0);
lean_inc(x_3317);
x_3318 = lean_ctor_get(x_3251, 1);
lean_inc(x_3318);
if (lean_is_exclusive(x_3251)) {
 lean_ctor_release(x_3251, 0);
 lean_ctor_release(x_3251, 1);
 x_3319 = x_3251;
} else {
 lean_dec_ref(x_3251);
 x_3319 = lean_box(0);
}
if (lean_is_scalar(x_3319)) {
 x_3320 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3320 = x_3319;
}
lean_ctor_set(x_3320, 0, x_3317);
lean_ctor_set(x_3320, 1, x_3318);
return x_3320;
}
}
else
{
lean_object* x_3321; lean_object* x_3322; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3321 = lean_box(0);
x_3322 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3322, 0, x_3321);
lean_ctor_set(x_3322, 1, x_2735);
return x_3322;
}
}
else
{
lean_object* x_3323; lean_object* x_3324; lean_object* x_3325; lean_object* x_3326; lean_object* x_3327; lean_object* x_3328; lean_object* x_3329; lean_object* x_3330; 
lean_dec(x_2736);
x_3323 = lean_unsigned_to_nat(0u);
x_3324 = lean_array_fget(x_2816, x_3323);
x_3325 = lean_array_fget(x_2816, x_24);
lean_dec(x_2816);
x_3326 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_3324);
x_3327 = lean_array_push(x_3326, x_3324);
lean_inc(x_3325);
x_3328 = lean_array_push(x_3327, x_3325);
x_3329 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24;
x_3330 = l_Lean_Meta_mkAppM(x_3329, x_3328, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3330) == 0)
{
lean_object* x_3331; lean_object* x_3332; lean_object* x_3333; lean_object* x_3334; lean_object* x_3335; lean_object* x_3336; lean_object* x_3337; lean_object* x_3338; lean_object* x_3339; uint8_t x_3340; lean_object* x_3341; lean_object* x_3342; lean_object* x_3343; lean_object* x_3344; 
x_3331 = lean_ctor_get(x_3330, 0);
lean_inc(x_3331);
x_3332 = lean_ctor_get(x_3330, 1);
lean_inc(x_3332);
if (lean_is_exclusive(x_3330)) {
 lean_ctor_release(x_3330, 0);
 lean_ctor_release(x_3330, 1);
 x_3333 = x_3330;
} else {
 lean_dec_ref(x_3330);
 x_3333 = lean_box(0);
}
lean_inc(x_3325);
x_3334 = l_Lean_mkNot(x_3325);
lean_inc(x_3324);
x_3335 = l_Lean_mkAnd(x_3324, x_3334);
x_3336 = l_Lean_mkNot(x_3324);
x_3337 = l_Lean_mkAnd(x_3336, x_3325);
x_3338 = l_Lean_mkOr(x_3335, x_3337);
x_3339 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3339, 0, x_3331);
x_3340 = 1;
x_3341 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3341, 0, x_3338);
lean_ctor_set(x_3341, 1, x_3339);
lean_ctor_set_uint8(x_3341, sizeof(void*)*2, x_3340);
x_3342 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3342, 0, x_3341);
x_3343 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3343, 0, x_3342);
if (lean_is_scalar(x_3333)) {
 x_3344 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3344 = x_3333;
}
lean_ctor_set(x_3344, 0, x_3343);
lean_ctor_set(x_3344, 1, x_3332);
return x_3344;
}
else
{
lean_object* x_3345; lean_object* x_3346; lean_object* x_3347; lean_object* x_3348; 
lean_dec(x_3325);
lean_dec(x_3324);
x_3345 = lean_ctor_get(x_3330, 0);
lean_inc(x_3345);
x_3346 = lean_ctor_get(x_3330, 1);
lean_inc(x_3346);
if (lean_is_exclusive(x_3330)) {
 lean_ctor_release(x_3330, 0);
 lean_ctor_release(x_3330, 1);
 x_3347 = x_3330;
} else {
 lean_dec_ref(x_3330);
 x_3347 = lean_box(0);
}
if (lean_is_scalar(x_3347)) {
 x_3348 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3348 = x_3347;
}
lean_ctor_set(x_3348, 0, x_3345);
lean_ctor_set(x_3348, 1, x_3346);
return x_3348;
}
}
}
}
else
{
lean_object* x_3349; lean_object* x_3350; uint8_t x_3351; 
lean_dec(x_2817);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_3349 = lean_array_get_size(x_2816);
x_3350 = lean_unsigned_to_nat(2u);
x_3351 = lean_nat_dec_eq(x_3349, x_3350);
lean_dec(x_3349);
if (x_3351 == 0)
{
lean_dec(x_2816);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3352; lean_object* x_3353; lean_object* x_3354; uint8_t x_3355; lean_object* x_3356; 
x_3352 = lean_ctor_get(x_2736, 0);
lean_inc(x_3352);
x_3353 = lean_ctor_get(x_2736, 1);
lean_inc(x_3353);
x_3354 = lean_ctor_get(x_2736, 2);
lean_inc(x_3354);
x_3355 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3353);
x_3356 = l_Lean_Meta_isProp(x_3353, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3356) == 0)
{
lean_object* x_3357; lean_object* x_3358; lean_object* x_3359; uint8_t x_3390; 
x_3357 = lean_ctor_get(x_3356, 0);
lean_inc(x_3357);
x_3358 = lean_ctor_get(x_3356, 1);
lean_inc(x_3358);
lean_dec(x_3356);
x_3390 = lean_unbox(x_3357);
lean_dec(x_3357);
if (x_3390 == 0)
{
lean_object* x_3391; 
x_3391 = lean_box(0);
x_3359 = x_3391;
goto block_3389;
}
else
{
uint8_t x_3392; 
x_3392 = l_Lean_Expr_hasLooseBVars(x_3354);
if (x_3392 == 0)
{
lean_object* x_3393; lean_object* x_3394; lean_object* x_3395; lean_object* x_3396; lean_object* x_3397; lean_object* x_3398; 
lean_dec(x_3352);
lean_inc(x_3354);
x_3393 = l_Lean_mkNot(x_3354);
x_3394 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3395 = lean_array_push(x_3394, x_3353);
lean_inc(x_3395);
x_3396 = lean_array_push(x_3395, x_3393);
x_3397 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3398 = l_Lean_Meta_mkAppM(x_3397, x_3396, x_5, x_6, x_7, x_8, x_3358);
if (lean_obj_tag(x_3398) == 0)
{
lean_object* x_3399; lean_object* x_3400; lean_object* x_3401; lean_object* x_3402; lean_object* x_3403; 
x_3399 = lean_ctor_get(x_3398, 0);
lean_inc(x_3399);
x_3400 = lean_ctor_get(x_3398, 1);
lean_inc(x_3400);
lean_dec(x_3398);
x_3401 = lean_array_push(x_3395, x_3354);
x_3402 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3403 = l_Lean_Meta_mkAppM(x_3402, x_3401, x_5, x_6, x_7, x_8, x_3400);
if (lean_obj_tag(x_3403) == 0)
{
lean_object* x_3404; lean_object* x_3405; lean_object* x_3406; lean_object* x_3407; uint8_t x_3408; lean_object* x_3409; lean_object* x_3410; lean_object* x_3411; lean_object* x_3412; 
x_3404 = lean_ctor_get(x_3403, 0);
lean_inc(x_3404);
x_3405 = lean_ctor_get(x_3403, 1);
lean_inc(x_3405);
if (lean_is_exclusive(x_3403)) {
 lean_ctor_release(x_3403, 0);
 lean_ctor_release(x_3403, 1);
 x_3406 = x_3403;
} else {
 lean_dec_ref(x_3403);
 x_3406 = lean_box(0);
}
x_3407 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3407, 0, x_3404);
x_3408 = 1;
x_3409 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3409, 0, x_3399);
lean_ctor_set(x_3409, 1, x_3407);
lean_ctor_set_uint8(x_3409, sizeof(void*)*2, x_3408);
x_3410 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3410, 0, x_3409);
x_3411 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3411, 0, x_3410);
if (lean_is_scalar(x_3406)) {
 x_3412 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3412 = x_3406;
}
lean_ctor_set(x_3412, 0, x_3411);
lean_ctor_set(x_3412, 1, x_3405);
return x_3412;
}
else
{
lean_object* x_3413; lean_object* x_3414; lean_object* x_3415; lean_object* x_3416; 
lean_dec(x_3399);
x_3413 = lean_ctor_get(x_3403, 0);
lean_inc(x_3413);
x_3414 = lean_ctor_get(x_3403, 1);
lean_inc(x_3414);
if (lean_is_exclusive(x_3403)) {
 lean_ctor_release(x_3403, 0);
 lean_ctor_release(x_3403, 1);
 x_3415 = x_3403;
} else {
 lean_dec_ref(x_3403);
 x_3415 = lean_box(0);
}
if (lean_is_scalar(x_3415)) {
 x_3416 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3416 = x_3415;
}
lean_ctor_set(x_3416, 0, x_3413);
lean_ctor_set(x_3416, 1, x_3414);
return x_3416;
}
}
else
{
lean_object* x_3417; lean_object* x_3418; lean_object* x_3419; lean_object* x_3420; 
lean_dec(x_3395);
lean_dec(x_3354);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3417 = lean_ctor_get(x_3398, 0);
lean_inc(x_3417);
x_3418 = lean_ctor_get(x_3398, 1);
lean_inc(x_3418);
if (lean_is_exclusive(x_3398)) {
 lean_ctor_release(x_3398, 0);
 lean_ctor_release(x_3398, 1);
 x_3419 = x_3398;
} else {
 lean_dec_ref(x_3398);
 x_3419 = lean_box(0);
}
if (lean_is_scalar(x_3419)) {
 x_3420 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3420 = x_3419;
}
lean_ctor_set(x_3420, 0, x_3417);
lean_ctor_set(x_3420, 1, x_3418);
return x_3420;
}
}
else
{
lean_object* x_3421; 
x_3421 = lean_box(0);
x_3359 = x_3421;
goto block_3389;
}
}
block_3389:
{
lean_object* x_3360; lean_object* x_3361; lean_object* x_3362; lean_object* x_3363; lean_object* x_3364; lean_object* x_3365; lean_object* x_3366; 
lean_dec(x_3359);
lean_inc(x_3354);
x_3360 = l_Lean_mkNot(x_3354);
lean_inc(x_3353);
lean_inc(x_3352);
x_3361 = l_Lean_Expr_lam___override(x_3352, x_3353, x_3360, x_3355);
x_3362 = l_Lean_Expr_lam___override(x_3352, x_3353, x_3354, x_3355);
x_3363 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3364 = lean_array_push(x_3363, x_3361);
x_3365 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3366 = l_Lean_Meta_mkAppM(x_3365, x_3364, x_5, x_6, x_7, x_8, x_3358);
if (lean_obj_tag(x_3366) == 0)
{
lean_object* x_3367; lean_object* x_3368; lean_object* x_3369; lean_object* x_3370; lean_object* x_3371; 
x_3367 = lean_ctor_get(x_3366, 0);
lean_inc(x_3367);
x_3368 = lean_ctor_get(x_3366, 1);
lean_inc(x_3368);
lean_dec(x_3366);
x_3369 = lean_array_push(x_3363, x_3362);
x_3370 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3371 = l_Lean_Meta_mkAppM(x_3370, x_3369, x_5, x_6, x_7, x_8, x_3368);
if (lean_obj_tag(x_3371) == 0)
{
lean_object* x_3372; lean_object* x_3373; lean_object* x_3374; lean_object* x_3375; uint8_t x_3376; lean_object* x_3377; lean_object* x_3378; lean_object* x_3379; lean_object* x_3380; 
x_3372 = lean_ctor_get(x_3371, 0);
lean_inc(x_3372);
x_3373 = lean_ctor_get(x_3371, 1);
lean_inc(x_3373);
if (lean_is_exclusive(x_3371)) {
 lean_ctor_release(x_3371, 0);
 lean_ctor_release(x_3371, 1);
 x_3374 = x_3371;
} else {
 lean_dec_ref(x_3371);
 x_3374 = lean_box(0);
}
x_3375 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3375, 0, x_3372);
x_3376 = 1;
x_3377 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3377, 0, x_3367);
lean_ctor_set(x_3377, 1, x_3375);
lean_ctor_set_uint8(x_3377, sizeof(void*)*2, x_3376);
x_3378 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3378, 0, x_3377);
x_3379 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3379, 0, x_3378);
if (lean_is_scalar(x_3374)) {
 x_3380 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3380 = x_3374;
}
lean_ctor_set(x_3380, 0, x_3379);
lean_ctor_set(x_3380, 1, x_3373);
return x_3380;
}
else
{
lean_object* x_3381; lean_object* x_3382; lean_object* x_3383; lean_object* x_3384; 
lean_dec(x_3367);
x_3381 = lean_ctor_get(x_3371, 0);
lean_inc(x_3381);
x_3382 = lean_ctor_get(x_3371, 1);
lean_inc(x_3382);
if (lean_is_exclusive(x_3371)) {
 lean_ctor_release(x_3371, 0);
 lean_ctor_release(x_3371, 1);
 x_3383 = x_3371;
} else {
 lean_dec_ref(x_3371);
 x_3383 = lean_box(0);
}
if (lean_is_scalar(x_3383)) {
 x_3384 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3384 = x_3383;
}
lean_ctor_set(x_3384, 0, x_3381);
lean_ctor_set(x_3384, 1, x_3382);
return x_3384;
}
}
else
{
lean_object* x_3385; lean_object* x_3386; lean_object* x_3387; lean_object* x_3388; 
lean_dec(x_3362);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3385 = lean_ctor_get(x_3366, 0);
lean_inc(x_3385);
x_3386 = lean_ctor_get(x_3366, 1);
lean_inc(x_3386);
if (lean_is_exclusive(x_3366)) {
 lean_ctor_release(x_3366, 0);
 lean_ctor_release(x_3366, 1);
 x_3387 = x_3366;
} else {
 lean_dec_ref(x_3366);
 x_3387 = lean_box(0);
}
if (lean_is_scalar(x_3387)) {
 x_3388 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3388 = x_3387;
}
lean_ctor_set(x_3388, 0, x_3385);
lean_ctor_set(x_3388, 1, x_3386);
return x_3388;
}
}
}
else
{
lean_object* x_3422; lean_object* x_3423; lean_object* x_3424; lean_object* x_3425; 
lean_dec(x_3354);
lean_dec(x_3353);
lean_dec(x_3352);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3422 = lean_ctor_get(x_3356, 0);
lean_inc(x_3422);
x_3423 = lean_ctor_get(x_3356, 1);
lean_inc(x_3423);
if (lean_is_exclusive(x_3356)) {
 lean_ctor_release(x_3356, 0);
 lean_ctor_release(x_3356, 1);
 x_3424 = x_3356;
} else {
 lean_dec_ref(x_3356);
 x_3424 = lean_box(0);
}
if (lean_is_scalar(x_3424)) {
 x_3425 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3425 = x_3424;
}
lean_ctor_set(x_3425, 0, x_3422);
lean_ctor_set(x_3425, 1, x_3423);
return x_3425;
}
}
else
{
lean_object* x_3426; lean_object* x_3427; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3426 = lean_box(0);
x_3427 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3427, 0, x_3426);
lean_ctor_set(x_3427, 1, x_2735);
return x_3427;
}
}
else
{
lean_object* x_3428; lean_object* x_3429; lean_object* x_3430; lean_object* x_3431; lean_object* x_3432; lean_object* x_3433; lean_object* x_3434; lean_object* x_3435; 
lean_dec(x_2736);
x_3428 = lean_unsigned_to_nat(0u);
x_3429 = lean_array_fget(x_2816, x_3428);
x_3430 = lean_array_fget(x_2816, x_24);
lean_dec(x_2816);
x_3431 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_3429);
x_3432 = lean_array_push(x_3431, x_3429);
lean_inc(x_3430);
x_3433 = lean_array_push(x_3432, x_3430);
x_3434 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26;
x_3435 = l_Lean_Meta_mkAppM(x_3434, x_3433, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3435) == 0)
{
lean_object* x_3436; lean_object* x_3437; lean_object* x_3438; lean_object* x_3439; lean_object* x_3440; lean_object* x_3441; lean_object* x_3442; uint8_t x_3443; lean_object* x_3444; lean_object* x_3445; lean_object* x_3446; lean_object* x_3447; 
x_3436 = lean_ctor_get(x_3435, 0);
lean_inc(x_3436);
x_3437 = lean_ctor_get(x_3435, 1);
lean_inc(x_3437);
if (lean_is_exclusive(x_3435)) {
 lean_ctor_release(x_3435, 0);
 lean_ctor_release(x_3435, 1);
 x_3438 = x_3435;
} else {
 lean_dec_ref(x_3435);
 x_3438 = lean_box(0);
}
x_3439 = l_Lean_mkNot(x_3429);
x_3440 = l_Lean_mkNot(x_3430);
x_3441 = l_Lean_mkAnd(x_3439, x_3440);
x_3442 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3442, 0, x_3436);
x_3443 = 1;
x_3444 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3444, 0, x_3441);
lean_ctor_set(x_3444, 1, x_3442);
lean_ctor_set_uint8(x_3444, sizeof(void*)*2, x_3443);
x_3445 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3445, 0, x_3444);
x_3446 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3446, 0, x_3445);
if (lean_is_scalar(x_3438)) {
 x_3447 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3447 = x_3438;
}
lean_ctor_set(x_3447, 0, x_3446);
lean_ctor_set(x_3447, 1, x_3437);
return x_3447;
}
else
{
lean_object* x_3448; lean_object* x_3449; lean_object* x_3450; lean_object* x_3451; 
lean_dec(x_3430);
lean_dec(x_3429);
x_3448 = lean_ctor_get(x_3435, 0);
lean_inc(x_3448);
x_3449 = lean_ctor_get(x_3435, 1);
lean_inc(x_3449);
if (lean_is_exclusive(x_3435)) {
 lean_ctor_release(x_3435, 0);
 lean_ctor_release(x_3435, 1);
 x_3450 = x_3435;
} else {
 lean_dec_ref(x_3435);
 x_3450 = lean_box(0);
}
if (lean_is_scalar(x_3450)) {
 x_3451 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3451 = x_3450;
}
lean_ctor_set(x_3451, 0, x_3448);
lean_ctor_set(x_3451, 1, x_3449);
return x_3451;
}
}
}
}
else
{
lean_object* x_3452; lean_object* x_3453; uint8_t x_3454; 
lean_dec(x_2817);
x_3452 = lean_array_get_size(x_2816);
x_3453 = lean_unsigned_to_nat(2u);
x_3454 = lean_nat_dec_eq(x_3452, x_3453);
lean_dec(x_3452);
if (x_3454 == 0)
{
lean_dec(x_2816);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3455; lean_object* x_3456; lean_object* x_3457; uint8_t x_3458; lean_object* x_3459; 
x_3455 = lean_ctor_get(x_2736, 0);
lean_inc(x_3455);
x_3456 = lean_ctor_get(x_2736, 1);
lean_inc(x_3456);
x_3457 = lean_ctor_get(x_2736, 2);
lean_inc(x_3457);
x_3458 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3456);
x_3459 = l_Lean_Meta_isProp(x_3456, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3459) == 0)
{
lean_object* x_3460; lean_object* x_3461; lean_object* x_3462; uint8_t x_3493; 
x_3460 = lean_ctor_get(x_3459, 0);
lean_inc(x_3460);
x_3461 = lean_ctor_get(x_3459, 1);
lean_inc(x_3461);
lean_dec(x_3459);
x_3493 = lean_unbox(x_3460);
lean_dec(x_3460);
if (x_3493 == 0)
{
lean_object* x_3494; 
x_3494 = lean_box(0);
x_3462 = x_3494;
goto block_3492;
}
else
{
uint8_t x_3495; 
x_3495 = l_Lean_Expr_hasLooseBVars(x_3457);
if (x_3495 == 0)
{
lean_object* x_3496; lean_object* x_3497; lean_object* x_3498; lean_object* x_3499; lean_object* x_3500; lean_object* x_3501; 
lean_dec(x_3455);
lean_inc(x_3457);
x_3496 = l_Lean_mkNot(x_3457);
x_3497 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3498 = lean_array_push(x_3497, x_3456);
lean_inc(x_3498);
x_3499 = lean_array_push(x_3498, x_3496);
x_3500 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3501 = l_Lean_Meta_mkAppM(x_3500, x_3499, x_5, x_6, x_7, x_8, x_3461);
if (lean_obj_tag(x_3501) == 0)
{
lean_object* x_3502; lean_object* x_3503; lean_object* x_3504; lean_object* x_3505; lean_object* x_3506; 
x_3502 = lean_ctor_get(x_3501, 0);
lean_inc(x_3502);
x_3503 = lean_ctor_get(x_3501, 1);
lean_inc(x_3503);
lean_dec(x_3501);
x_3504 = lean_array_push(x_3498, x_3457);
x_3505 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3506 = l_Lean_Meta_mkAppM(x_3505, x_3504, x_5, x_6, x_7, x_8, x_3503);
if (lean_obj_tag(x_3506) == 0)
{
lean_object* x_3507; lean_object* x_3508; lean_object* x_3509; lean_object* x_3510; uint8_t x_3511; lean_object* x_3512; lean_object* x_3513; lean_object* x_3514; lean_object* x_3515; 
x_3507 = lean_ctor_get(x_3506, 0);
lean_inc(x_3507);
x_3508 = lean_ctor_get(x_3506, 1);
lean_inc(x_3508);
if (lean_is_exclusive(x_3506)) {
 lean_ctor_release(x_3506, 0);
 lean_ctor_release(x_3506, 1);
 x_3509 = x_3506;
} else {
 lean_dec_ref(x_3506);
 x_3509 = lean_box(0);
}
x_3510 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3510, 0, x_3507);
x_3511 = 1;
x_3512 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3512, 0, x_3502);
lean_ctor_set(x_3512, 1, x_3510);
lean_ctor_set_uint8(x_3512, sizeof(void*)*2, x_3511);
x_3513 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3513, 0, x_3512);
x_3514 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3514, 0, x_3513);
if (lean_is_scalar(x_3509)) {
 x_3515 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3515 = x_3509;
}
lean_ctor_set(x_3515, 0, x_3514);
lean_ctor_set(x_3515, 1, x_3508);
return x_3515;
}
else
{
lean_object* x_3516; lean_object* x_3517; lean_object* x_3518; lean_object* x_3519; 
lean_dec(x_3502);
x_3516 = lean_ctor_get(x_3506, 0);
lean_inc(x_3516);
x_3517 = lean_ctor_get(x_3506, 1);
lean_inc(x_3517);
if (lean_is_exclusive(x_3506)) {
 lean_ctor_release(x_3506, 0);
 lean_ctor_release(x_3506, 1);
 x_3518 = x_3506;
} else {
 lean_dec_ref(x_3506);
 x_3518 = lean_box(0);
}
if (lean_is_scalar(x_3518)) {
 x_3519 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3519 = x_3518;
}
lean_ctor_set(x_3519, 0, x_3516);
lean_ctor_set(x_3519, 1, x_3517);
return x_3519;
}
}
else
{
lean_object* x_3520; lean_object* x_3521; lean_object* x_3522; lean_object* x_3523; 
lean_dec(x_3498);
lean_dec(x_3457);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3520 = lean_ctor_get(x_3501, 0);
lean_inc(x_3520);
x_3521 = lean_ctor_get(x_3501, 1);
lean_inc(x_3521);
if (lean_is_exclusive(x_3501)) {
 lean_ctor_release(x_3501, 0);
 lean_ctor_release(x_3501, 1);
 x_3522 = x_3501;
} else {
 lean_dec_ref(x_3501);
 x_3522 = lean_box(0);
}
if (lean_is_scalar(x_3522)) {
 x_3523 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3523 = x_3522;
}
lean_ctor_set(x_3523, 0, x_3520);
lean_ctor_set(x_3523, 1, x_3521);
return x_3523;
}
}
else
{
lean_object* x_3524; 
x_3524 = lean_box(0);
x_3462 = x_3524;
goto block_3492;
}
}
block_3492:
{
lean_object* x_3463; lean_object* x_3464; lean_object* x_3465; lean_object* x_3466; lean_object* x_3467; lean_object* x_3468; lean_object* x_3469; 
lean_dec(x_3462);
lean_inc(x_3457);
x_3463 = l_Lean_mkNot(x_3457);
lean_inc(x_3456);
lean_inc(x_3455);
x_3464 = l_Lean_Expr_lam___override(x_3455, x_3456, x_3463, x_3458);
x_3465 = l_Lean_Expr_lam___override(x_3455, x_3456, x_3457, x_3458);
x_3466 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3467 = lean_array_push(x_3466, x_3464);
x_3468 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3469 = l_Lean_Meta_mkAppM(x_3468, x_3467, x_5, x_6, x_7, x_8, x_3461);
if (lean_obj_tag(x_3469) == 0)
{
lean_object* x_3470; lean_object* x_3471; lean_object* x_3472; lean_object* x_3473; lean_object* x_3474; 
x_3470 = lean_ctor_get(x_3469, 0);
lean_inc(x_3470);
x_3471 = lean_ctor_get(x_3469, 1);
lean_inc(x_3471);
lean_dec(x_3469);
x_3472 = lean_array_push(x_3466, x_3465);
x_3473 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3474 = l_Lean_Meta_mkAppM(x_3473, x_3472, x_5, x_6, x_7, x_8, x_3471);
if (lean_obj_tag(x_3474) == 0)
{
lean_object* x_3475; lean_object* x_3476; lean_object* x_3477; lean_object* x_3478; uint8_t x_3479; lean_object* x_3480; lean_object* x_3481; lean_object* x_3482; lean_object* x_3483; 
x_3475 = lean_ctor_get(x_3474, 0);
lean_inc(x_3475);
x_3476 = lean_ctor_get(x_3474, 1);
lean_inc(x_3476);
if (lean_is_exclusive(x_3474)) {
 lean_ctor_release(x_3474, 0);
 lean_ctor_release(x_3474, 1);
 x_3477 = x_3474;
} else {
 lean_dec_ref(x_3474);
 x_3477 = lean_box(0);
}
x_3478 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3478, 0, x_3475);
x_3479 = 1;
x_3480 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3480, 0, x_3470);
lean_ctor_set(x_3480, 1, x_3478);
lean_ctor_set_uint8(x_3480, sizeof(void*)*2, x_3479);
x_3481 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3481, 0, x_3480);
x_3482 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3482, 0, x_3481);
if (lean_is_scalar(x_3477)) {
 x_3483 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3483 = x_3477;
}
lean_ctor_set(x_3483, 0, x_3482);
lean_ctor_set(x_3483, 1, x_3476);
return x_3483;
}
else
{
lean_object* x_3484; lean_object* x_3485; lean_object* x_3486; lean_object* x_3487; 
lean_dec(x_3470);
x_3484 = lean_ctor_get(x_3474, 0);
lean_inc(x_3484);
x_3485 = lean_ctor_get(x_3474, 1);
lean_inc(x_3485);
if (lean_is_exclusive(x_3474)) {
 lean_ctor_release(x_3474, 0);
 lean_ctor_release(x_3474, 1);
 x_3486 = x_3474;
} else {
 lean_dec_ref(x_3474);
 x_3486 = lean_box(0);
}
if (lean_is_scalar(x_3486)) {
 x_3487 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3487 = x_3486;
}
lean_ctor_set(x_3487, 0, x_3484);
lean_ctor_set(x_3487, 1, x_3485);
return x_3487;
}
}
else
{
lean_object* x_3488; lean_object* x_3489; lean_object* x_3490; lean_object* x_3491; 
lean_dec(x_3465);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3488 = lean_ctor_get(x_3469, 0);
lean_inc(x_3488);
x_3489 = lean_ctor_get(x_3469, 1);
lean_inc(x_3489);
if (lean_is_exclusive(x_3469)) {
 lean_ctor_release(x_3469, 0);
 lean_ctor_release(x_3469, 1);
 x_3490 = x_3469;
} else {
 lean_dec_ref(x_3469);
 x_3490 = lean_box(0);
}
if (lean_is_scalar(x_3490)) {
 x_3491 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3491 = x_3490;
}
lean_ctor_set(x_3491, 0, x_3488);
lean_ctor_set(x_3491, 1, x_3489);
return x_3491;
}
}
}
else
{
lean_object* x_3525; lean_object* x_3526; lean_object* x_3527; lean_object* x_3528; 
lean_dec(x_3457);
lean_dec(x_3456);
lean_dec(x_3455);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3525 = lean_ctor_get(x_3459, 0);
lean_inc(x_3525);
x_3526 = lean_ctor_get(x_3459, 1);
lean_inc(x_3526);
if (lean_is_exclusive(x_3459)) {
 lean_ctor_release(x_3459, 0);
 lean_ctor_release(x_3459, 1);
 x_3527 = x_3459;
} else {
 lean_dec_ref(x_3459);
 x_3527 = lean_box(0);
}
if (lean_is_scalar(x_3527)) {
 x_3528 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3528 = x_3527;
}
lean_ctor_set(x_3528, 0, x_3525);
lean_ctor_set(x_3528, 1, x_3526);
return x_3528;
}
}
else
{
lean_object* x_3529; lean_object* x_3530; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3529 = lean_box(0);
x_3530 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3530, 0, x_3529);
lean_ctor_set(x_3530, 1, x_2735);
return x_3530;
}
}
else
{
lean_object* x_3531; lean_object* x_3532; lean_object* x_3533; lean_object* x_3534; uint8_t x_3535; lean_object* x_3536; lean_object* x_3537; uint8_t x_3538; 
lean_dec(x_2736);
x_3531 = lean_unsigned_to_nat(0u);
x_3532 = lean_array_fget(x_2816, x_3531);
x_3533 = lean_array_fget(x_2816, x_24);
lean_dec(x_2816);
x_3534 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3;
x_3535 = 0;
x_3536 = l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1(x_3534, x_3535, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_2735);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_3537 = lean_ctor_get(x_3536, 0);
lean_inc(x_3537);
x_3538 = lean_unbox(x_3537);
lean_dec(x_3537);
if (x_3538 == 0)
{
lean_object* x_3539; lean_object* x_3540; lean_object* x_3541; lean_object* x_3542; lean_object* x_3543; lean_object* x_3544; 
x_3539 = lean_ctor_get(x_3536, 1);
lean_inc(x_3539);
lean_dec(x_3536);
x_3540 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_3532);
x_3541 = lean_array_push(x_3540, x_3532);
lean_inc(x_3533);
x_3542 = lean_array_push(x_3541, x_3533);
x_3543 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28;
x_3544 = l_Lean_Meta_mkAppM(x_3543, x_3542, x_5, x_6, x_7, x_8, x_3539);
if (lean_obj_tag(x_3544) == 0)
{
lean_object* x_3545; lean_object* x_3546; lean_object* x_3547; lean_object* x_3548; lean_object* x_3549; uint8_t x_3550; lean_object* x_3551; lean_object* x_3552; uint8_t x_3553; lean_object* x_3554; lean_object* x_3555; lean_object* x_3556; lean_object* x_3557; 
x_3545 = lean_ctor_get(x_3544, 0);
lean_inc(x_3545);
x_3546 = lean_ctor_get(x_3544, 1);
lean_inc(x_3546);
if (lean_is_exclusive(x_3544)) {
 lean_ctor_release(x_3544, 0);
 lean_ctor_release(x_3544, 1);
 x_3547 = x_3544;
} else {
 lean_dec_ref(x_3544);
 x_3547 = lean_box(0);
}
x_3548 = l_Lean_mkNot(x_3533);
x_3549 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30;
x_3550 = 0;
x_3551 = l_Lean_Expr_forallE___override(x_3549, x_3532, x_3548, x_3550);
x_3552 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3552, 0, x_3545);
x_3553 = 1;
x_3554 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3554, 0, x_3551);
lean_ctor_set(x_3554, 1, x_3552);
lean_ctor_set_uint8(x_3554, sizeof(void*)*2, x_3553);
x_3555 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3555, 0, x_3554);
x_3556 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3556, 0, x_3555);
if (lean_is_scalar(x_3547)) {
 x_3557 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3557 = x_3547;
}
lean_ctor_set(x_3557, 0, x_3556);
lean_ctor_set(x_3557, 1, x_3546);
return x_3557;
}
else
{
lean_object* x_3558; lean_object* x_3559; lean_object* x_3560; lean_object* x_3561; 
lean_dec(x_3533);
lean_dec(x_3532);
x_3558 = lean_ctor_get(x_3544, 0);
lean_inc(x_3558);
x_3559 = lean_ctor_get(x_3544, 1);
lean_inc(x_3559);
if (lean_is_exclusive(x_3544)) {
 lean_ctor_release(x_3544, 0);
 lean_ctor_release(x_3544, 1);
 x_3560 = x_3544;
} else {
 lean_dec_ref(x_3544);
 x_3560 = lean_box(0);
}
if (lean_is_scalar(x_3560)) {
 x_3561 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3561 = x_3560;
}
lean_ctor_set(x_3561, 0, x_3558);
lean_ctor_set(x_3561, 1, x_3559);
return x_3561;
}
}
else
{
lean_object* x_3562; lean_object* x_3563; lean_object* x_3564; lean_object* x_3565; lean_object* x_3566; lean_object* x_3567; 
x_3562 = lean_ctor_get(x_3536, 1);
lean_inc(x_3562);
lean_dec(x_3536);
x_3563 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_3532);
x_3564 = lean_array_push(x_3563, x_3532);
lean_inc(x_3533);
x_3565 = lean_array_push(x_3564, x_3533);
x_3566 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32;
x_3567 = l_Lean_Meta_mkAppM(x_3566, x_3565, x_5, x_6, x_7, x_8, x_3562);
if (lean_obj_tag(x_3567) == 0)
{
lean_object* x_3568; lean_object* x_3569; lean_object* x_3570; lean_object* x_3571; lean_object* x_3572; lean_object* x_3573; lean_object* x_3574; uint8_t x_3575; lean_object* x_3576; lean_object* x_3577; lean_object* x_3578; lean_object* x_3579; 
x_3568 = lean_ctor_get(x_3567, 0);
lean_inc(x_3568);
x_3569 = lean_ctor_get(x_3567, 1);
lean_inc(x_3569);
if (lean_is_exclusive(x_3567)) {
 lean_ctor_release(x_3567, 0);
 lean_ctor_release(x_3567, 1);
 x_3570 = x_3567;
} else {
 lean_dec_ref(x_3567);
 x_3570 = lean_box(0);
}
x_3571 = l_Lean_mkNot(x_3532);
x_3572 = l_Lean_mkNot(x_3533);
x_3573 = l_Lean_mkOr(x_3571, x_3572);
x_3574 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3574, 0, x_3568);
x_3575 = 1;
x_3576 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3576, 0, x_3573);
lean_ctor_set(x_3576, 1, x_3574);
lean_ctor_set_uint8(x_3576, sizeof(void*)*2, x_3575);
x_3577 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3577, 0, x_3576);
x_3578 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3578, 0, x_3577);
if (lean_is_scalar(x_3570)) {
 x_3579 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3579 = x_3570;
}
lean_ctor_set(x_3579, 0, x_3578);
lean_ctor_set(x_3579, 1, x_3569);
return x_3579;
}
else
{
lean_object* x_3580; lean_object* x_3581; lean_object* x_3582; lean_object* x_3583; 
lean_dec(x_3533);
lean_dec(x_3532);
x_3580 = lean_ctor_get(x_3567, 0);
lean_inc(x_3580);
x_3581 = lean_ctor_get(x_3567, 1);
lean_inc(x_3581);
if (lean_is_exclusive(x_3567)) {
 lean_ctor_release(x_3567, 0);
 lean_ctor_release(x_3567, 1);
 x_3582 = x_3567;
} else {
 lean_dec_ref(x_3567);
 x_3582 = lean_box(0);
}
if (lean_is_scalar(x_3582)) {
 x_3583 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3583 = x_3582;
}
lean_ctor_set(x_3583, 0, x_3580);
lean_ctor_set(x_3583, 1, x_3581);
return x_3583;
}
}
}
}
}
else
{
lean_object* x_3584; uint8_t x_3585; 
lean_dec(x_2817);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_3584 = lean_array_get_size(x_2816);
x_3585 = lean_nat_dec_eq(x_3584, x_24);
lean_dec(x_3584);
if (x_3585 == 0)
{
lean_dec(x_2816);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3586; lean_object* x_3587; lean_object* x_3588; uint8_t x_3589; lean_object* x_3590; 
x_3586 = lean_ctor_get(x_2736, 0);
lean_inc(x_3586);
x_3587 = lean_ctor_get(x_2736, 1);
lean_inc(x_3587);
x_3588 = lean_ctor_get(x_2736, 2);
lean_inc(x_3588);
x_3589 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3587);
x_3590 = l_Lean_Meta_isProp(x_3587, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3590) == 0)
{
lean_object* x_3591; lean_object* x_3592; lean_object* x_3593; uint8_t x_3624; 
x_3591 = lean_ctor_get(x_3590, 0);
lean_inc(x_3591);
x_3592 = lean_ctor_get(x_3590, 1);
lean_inc(x_3592);
lean_dec(x_3590);
x_3624 = lean_unbox(x_3591);
lean_dec(x_3591);
if (x_3624 == 0)
{
lean_object* x_3625; 
x_3625 = lean_box(0);
x_3593 = x_3625;
goto block_3623;
}
else
{
uint8_t x_3626; 
x_3626 = l_Lean_Expr_hasLooseBVars(x_3588);
if (x_3626 == 0)
{
lean_object* x_3627; lean_object* x_3628; lean_object* x_3629; lean_object* x_3630; lean_object* x_3631; lean_object* x_3632; 
lean_dec(x_3586);
lean_inc(x_3588);
x_3627 = l_Lean_mkNot(x_3588);
x_3628 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3629 = lean_array_push(x_3628, x_3587);
lean_inc(x_3629);
x_3630 = lean_array_push(x_3629, x_3627);
x_3631 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3632 = l_Lean_Meta_mkAppM(x_3631, x_3630, x_5, x_6, x_7, x_8, x_3592);
if (lean_obj_tag(x_3632) == 0)
{
lean_object* x_3633; lean_object* x_3634; lean_object* x_3635; lean_object* x_3636; lean_object* x_3637; 
x_3633 = lean_ctor_get(x_3632, 0);
lean_inc(x_3633);
x_3634 = lean_ctor_get(x_3632, 1);
lean_inc(x_3634);
lean_dec(x_3632);
x_3635 = lean_array_push(x_3629, x_3588);
x_3636 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3637 = l_Lean_Meta_mkAppM(x_3636, x_3635, x_5, x_6, x_7, x_8, x_3634);
if (lean_obj_tag(x_3637) == 0)
{
lean_object* x_3638; lean_object* x_3639; lean_object* x_3640; lean_object* x_3641; uint8_t x_3642; lean_object* x_3643; lean_object* x_3644; lean_object* x_3645; lean_object* x_3646; 
x_3638 = lean_ctor_get(x_3637, 0);
lean_inc(x_3638);
x_3639 = lean_ctor_get(x_3637, 1);
lean_inc(x_3639);
if (lean_is_exclusive(x_3637)) {
 lean_ctor_release(x_3637, 0);
 lean_ctor_release(x_3637, 1);
 x_3640 = x_3637;
} else {
 lean_dec_ref(x_3637);
 x_3640 = lean_box(0);
}
x_3641 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3641, 0, x_3638);
x_3642 = 1;
x_3643 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3643, 0, x_3633);
lean_ctor_set(x_3643, 1, x_3641);
lean_ctor_set_uint8(x_3643, sizeof(void*)*2, x_3642);
x_3644 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3644, 0, x_3643);
x_3645 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3645, 0, x_3644);
if (lean_is_scalar(x_3640)) {
 x_3646 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3646 = x_3640;
}
lean_ctor_set(x_3646, 0, x_3645);
lean_ctor_set(x_3646, 1, x_3639);
return x_3646;
}
else
{
lean_object* x_3647; lean_object* x_3648; lean_object* x_3649; lean_object* x_3650; 
lean_dec(x_3633);
x_3647 = lean_ctor_get(x_3637, 0);
lean_inc(x_3647);
x_3648 = lean_ctor_get(x_3637, 1);
lean_inc(x_3648);
if (lean_is_exclusive(x_3637)) {
 lean_ctor_release(x_3637, 0);
 lean_ctor_release(x_3637, 1);
 x_3649 = x_3637;
} else {
 lean_dec_ref(x_3637);
 x_3649 = lean_box(0);
}
if (lean_is_scalar(x_3649)) {
 x_3650 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3650 = x_3649;
}
lean_ctor_set(x_3650, 0, x_3647);
lean_ctor_set(x_3650, 1, x_3648);
return x_3650;
}
}
else
{
lean_object* x_3651; lean_object* x_3652; lean_object* x_3653; lean_object* x_3654; 
lean_dec(x_3629);
lean_dec(x_3588);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3651 = lean_ctor_get(x_3632, 0);
lean_inc(x_3651);
x_3652 = lean_ctor_get(x_3632, 1);
lean_inc(x_3652);
if (lean_is_exclusive(x_3632)) {
 lean_ctor_release(x_3632, 0);
 lean_ctor_release(x_3632, 1);
 x_3653 = x_3632;
} else {
 lean_dec_ref(x_3632);
 x_3653 = lean_box(0);
}
if (lean_is_scalar(x_3653)) {
 x_3654 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3654 = x_3653;
}
lean_ctor_set(x_3654, 0, x_3651);
lean_ctor_set(x_3654, 1, x_3652);
return x_3654;
}
}
else
{
lean_object* x_3655; 
x_3655 = lean_box(0);
x_3593 = x_3655;
goto block_3623;
}
}
block_3623:
{
lean_object* x_3594; lean_object* x_3595; lean_object* x_3596; lean_object* x_3597; lean_object* x_3598; lean_object* x_3599; lean_object* x_3600; 
lean_dec(x_3593);
lean_inc(x_3588);
x_3594 = l_Lean_mkNot(x_3588);
lean_inc(x_3587);
lean_inc(x_3586);
x_3595 = l_Lean_Expr_lam___override(x_3586, x_3587, x_3594, x_3589);
x_3596 = l_Lean_Expr_lam___override(x_3586, x_3587, x_3588, x_3589);
x_3597 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3598 = lean_array_push(x_3597, x_3595);
x_3599 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3600 = l_Lean_Meta_mkAppM(x_3599, x_3598, x_5, x_6, x_7, x_8, x_3592);
if (lean_obj_tag(x_3600) == 0)
{
lean_object* x_3601; lean_object* x_3602; lean_object* x_3603; lean_object* x_3604; lean_object* x_3605; 
x_3601 = lean_ctor_get(x_3600, 0);
lean_inc(x_3601);
x_3602 = lean_ctor_get(x_3600, 1);
lean_inc(x_3602);
lean_dec(x_3600);
x_3603 = lean_array_push(x_3597, x_3596);
x_3604 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3605 = l_Lean_Meta_mkAppM(x_3604, x_3603, x_5, x_6, x_7, x_8, x_3602);
if (lean_obj_tag(x_3605) == 0)
{
lean_object* x_3606; lean_object* x_3607; lean_object* x_3608; lean_object* x_3609; uint8_t x_3610; lean_object* x_3611; lean_object* x_3612; lean_object* x_3613; lean_object* x_3614; 
x_3606 = lean_ctor_get(x_3605, 0);
lean_inc(x_3606);
x_3607 = lean_ctor_get(x_3605, 1);
lean_inc(x_3607);
if (lean_is_exclusive(x_3605)) {
 lean_ctor_release(x_3605, 0);
 lean_ctor_release(x_3605, 1);
 x_3608 = x_3605;
} else {
 lean_dec_ref(x_3605);
 x_3608 = lean_box(0);
}
x_3609 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3609, 0, x_3606);
x_3610 = 1;
x_3611 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3611, 0, x_3601);
lean_ctor_set(x_3611, 1, x_3609);
lean_ctor_set_uint8(x_3611, sizeof(void*)*2, x_3610);
x_3612 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3612, 0, x_3611);
x_3613 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3613, 0, x_3612);
if (lean_is_scalar(x_3608)) {
 x_3614 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3614 = x_3608;
}
lean_ctor_set(x_3614, 0, x_3613);
lean_ctor_set(x_3614, 1, x_3607);
return x_3614;
}
else
{
lean_object* x_3615; lean_object* x_3616; lean_object* x_3617; lean_object* x_3618; 
lean_dec(x_3601);
x_3615 = lean_ctor_get(x_3605, 0);
lean_inc(x_3615);
x_3616 = lean_ctor_get(x_3605, 1);
lean_inc(x_3616);
if (lean_is_exclusive(x_3605)) {
 lean_ctor_release(x_3605, 0);
 lean_ctor_release(x_3605, 1);
 x_3617 = x_3605;
} else {
 lean_dec_ref(x_3605);
 x_3617 = lean_box(0);
}
if (lean_is_scalar(x_3617)) {
 x_3618 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3618 = x_3617;
}
lean_ctor_set(x_3618, 0, x_3615);
lean_ctor_set(x_3618, 1, x_3616);
return x_3618;
}
}
else
{
lean_object* x_3619; lean_object* x_3620; lean_object* x_3621; lean_object* x_3622; 
lean_dec(x_3596);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3619 = lean_ctor_get(x_3600, 0);
lean_inc(x_3619);
x_3620 = lean_ctor_get(x_3600, 1);
lean_inc(x_3620);
if (lean_is_exclusive(x_3600)) {
 lean_ctor_release(x_3600, 0);
 lean_ctor_release(x_3600, 1);
 x_3621 = x_3600;
} else {
 lean_dec_ref(x_3600);
 x_3621 = lean_box(0);
}
if (lean_is_scalar(x_3621)) {
 x_3622 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3622 = x_3621;
}
lean_ctor_set(x_3622, 0, x_3619);
lean_ctor_set(x_3622, 1, x_3620);
return x_3622;
}
}
}
else
{
lean_object* x_3656; lean_object* x_3657; lean_object* x_3658; lean_object* x_3659; 
lean_dec(x_3588);
lean_dec(x_3587);
lean_dec(x_3586);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3656 = lean_ctor_get(x_3590, 0);
lean_inc(x_3656);
x_3657 = lean_ctor_get(x_3590, 1);
lean_inc(x_3657);
if (lean_is_exclusive(x_3590)) {
 lean_ctor_release(x_3590, 0);
 lean_ctor_release(x_3590, 1);
 x_3658 = x_3590;
} else {
 lean_dec_ref(x_3590);
 x_3658 = lean_box(0);
}
if (lean_is_scalar(x_3658)) {
 x_3659 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3659 = x_3658;
}
lean_ctor_set(x_3659, 0, x_3656);
lean_ctor_set(x_3659, 1, x_3657);
return x_3659;
}
}
else
{
lean_object* x_3660; lean_object* x_3661; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3660 = lean_box(0);
x_3661 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3661, 0, x_3660);
lean_ctor_set(x_3661, 1, x_2735);
return x_3661;
}
}
else
{
lean_object* x_3662; lean_object* x_3663; lean_object* x_3664; lean_object* x_3665; lean_object* x_3666; lean_object* x_3667; 
lean_dec(x_2736);
x_3662 = lean_unsigned_to_nat(0u);
x_3663 = lean_array_fget(x_2816, x_3662);
lean_dec(x_2816);
x_3664 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
lean_inc(x_3663);
x_3665 = lean_array_push(x_3664, x_3663);
x_3666 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34;
x_3667 = l_Lean_Meta_mkAppM(x_3666, x_3665, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3667) == 0)
{
lean_object* x_3668; lean_object* x_3669; lean_object* x_3670; lean_object* x_3671; uint8_t x_3672; lean_object* x_3673; lean_object* x_3674; lean_object* x_3675; lean_object* x_3676; 
x_3668 = lean_ctor_get(x_3667, 0);
lean_inc(x_3668);
x_3669 = lean_ctor_get(x_3667, 1);
lean_inc(x_3669);
if (lean_is_exclusive(x_3667)) {
 lean_ctor_release(x_3667, 0);
 lean_ctor_release(x_3667, 1);
 x_3670 = x_3667;
} else {
 lean_dec_ref(x_3667);
 x_3670 = lean_box(0);
}
x_3671 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3671, 0, x_3668);
x_3672 = 1;
x_3673 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3673, 0, x_3663);
lean_ctor_set(x_3673, 1, x_3671);
lean_ctor_set_uint8(x_3673, sizeof(void*)*2, x_3672);
x_3674 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3674, 0, x_3673);
x_3675 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3675, 0, x_3674);
if (lean_is_scalar(x_3670)) {
 x_3676 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3676 = x_3670;
}
lean_ctor_set(x_3676, 0, x_3675);
lean_ctor_set(x_3676, 1, x_3669);
return x_3676;
}
else
{
lean_object* x_3677; lean_object* x_3678; lean_object* x_3679; lean_object* x_3680; 
lean_dec(x_3663);
x_3677 = lean_ctor_get(x_3667, 0);
lean_inc(x_3677);
x_3678 = lean_ctor_get(x_3667, 1);
lean_inc(x_3678);
if (lean_is_exclusive(x_3667)) {
 lean_ctor_release(x_3667, 0);
 lean_ctor_release(x_3667, 1);
 x_3679 = x_3667;
} else {
 lean_dec_ref(x_3667);
 x_3679 = lean_box(0);
}
if (lean_is_scalar(x_3679)) {
 x_3680 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3680 = x_3679;
}
lean_ctor_set(x_3680, 0, x_3677);
lean_ctor_set(x_3680, 1, x_3678);
return x_3680;
}
}
}
}
case 1:
{
lean_object* x_3681; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_3681 = lean_ctor_get(x_2815, 0);
lean_inc(x_3681);
switch (lean_obj_tag(x_3681)) {
case 0:
{
lean_object* x_3682; lean_object* x_3683; lean_object* x_3684; lean_object* x_3685; uint8_t x_3686; 
x_3682 = lean_ctor_get(x_2737, 1);
lean_inc(x_3682);
lean_dec(x_2737);
x_3683 = lean_ctor_get(x_2738, 1);
lean_inc(x_3683);
lean_dec(x_2738);
x_3684 = lean_ctor_get(x_2815, 1);
lean_inc(x_3684);
lean_dec(x_2815);
x_3685 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35;
x_3686 = lean_string_dec_eq(x_3684, x_3685);
if (x_3686 == 0)
{
lean_object* x_3687; uint8_t x_3688; 
x_3687 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36;
x_3688 = lean_string_dec_eq(x_3684, x_3687);
if (x_3688 == 0)
{
lean_object* x_3689; uint8_t x_3690; 
x_3689 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37;
x_3690 = lean_string_dec_eq(x_3684, x_3689);
if (x_3690 == 0)
{
lean_object* x_3691; uint8_t x_3692; 
x_3691 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38;
x_3692 = lean_string_dec_eq(x_3684, x_3691);
if (x_3692 == 0)
{
lean_object* x_3693; uint8_t x_3694; 
lean_dec(x_1);
x_3693 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19;
x_3694 = lean_string_dec_eq(x_3684, x_3693);
lean_dec(x_3684);
if (x_3694 == 0)
{
lean_dec(x_3683);
lean_dec(x_3682);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3695; lean_object* x_3696; lean_object* x_3697; uint8_t x_3698; lean_object* x_3699; 
x_3695 = lean_ctor_get(x_2736, 0);
lean_inc(x_3695);
x_3696 = lean_ctor_get(x_2736, 1);
lean_inc(x_3696);
x_3697 = lean_ctor_get(x_2736, 2);
lean_inc(x_3697);
x_3698 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3696);
x_3699 = l_Lean_Meta_isProp(x_3696, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3699) == 0)
{
lean_object* x_3700; lean_object* x_3701; lean_object* x_3702; uint8_t x_3733; 
x_3700 = lean_ctor_get(x_3699, 0);
lean_inc(x_3700);
x_3701 = lean_ctor_get(x_3699, 1);
lean_inc(x_3701);
lean_dec(x_3699);
x_3733 = lean_unbox(x_3700);
lean_dec(x_3700);
if (x_3733 == 0)
{
lean_object* x_3734; 
x_3734 = lean_box(0);
x_3702 = x_3734;
goto block_3732;
}
else
{
uint8_t x_3735; 
x_3735 = l_Lean_Expr_hasLooseBVars(x_3697);
if (x_3735 == 0)
{
lean_object* x_3736; lean_object* x_3737; lean_object* x_3738; lean_object* x_3739; lean_object* x_3740; lean_object* x_3741; 
lean_dec(x_3695);
lean_inc(x_3697);
x_3736 = l_Lean_mkNot(x_3697);
x_3737 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3738 = lean_array_push(x_3737, x_3696);
lean_inc(x_3738);
x_3739 = lean_array_push(x_3738, x_3736);
x_3740 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3741 = l_Lean_Meta_mkAppM(x_3740, x_3739, x_5, x_6, x_7, x_8, x_3701);
if (lean_obj_tag(x_3741) == 0)
{
lean_object* x_3742; lean_object* x_3743; lean_object* x_3744; lean_object* x_3745; lean_object* x_3746; 
x_3742 = lean_ctor_get(x_3741, 0);
lean_inc(x_3742);
x_3743 = lean_ctor_get(x_3741, 1);
lean_inc(x_3743);
lean_dec(x_3741);
x_3744 = lean_array_push(x_3738, x_3697);
x_3745 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3746 = l_Lean_Meta_mkAppM(x_3745, x_3744, x_5, x_6, x_7, x_8, x_3743);
if (lean_obj_tag(x_3746) == 0)
{
lean_object* x_3747; lean_object* x_3748; lean_object* x_3749; lean_object* x_3750; uint8_t x_3751; lean_object* x_3752; lean_object* x_3753; lean_object* x_3754; lean_object* x_3755; 
x_3747 = lean_ctor_get(x_3746, 0);
lean_inc(x_3747);
x_3748 = lean_ctor_get(x_3746, 1);
lean_inc(x_3748);
if (lean_is_exclusive(x_3746)) {
 lean_ctor_release(x_3746, 0);
 lean_ctor_release(x_3746, 1);
 x_3749 = x_3746;
} else {
 lean_dec_ref(x_3746);
 x_3749 = lean_box(0);
}
x_3750 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3750, 0, x_3747);
x_3751 = 1;
x_3752 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3752, 0, x_3742);
lean_ctor_set(x_3752, 1, x_3750);
lean_ctor_set_uint8(x_3752, sizeof(void*)*2, x_3751);
x_3753 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3753, 0, x_3752);
x_3754 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3754, 0, x_3753);
if (lean_is_scalar(x_3749)) {
 x_3755 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3755 = x_3749;
}
lean_ctor_set(x_3755, 0, x_3754);
lean_ctor_set(x_3755, 1, x_3748);
return x_3755;
}
else
{
lean_object* x_3756; lean_object* x_3757; lean_object* x_3758; lean_object* x_3759; 
lean_dec(x_3742);
x_3756 = lean_ctor_get(x_3746, 0);
lean_inc(x_3756);
x_3757 = lean_ctor_get(x_3746, 1);
lean_inc(x_3757);
if (lean_is_exclusive(x_3746)) {
 lean_ctor_release(x_3746, 0);
 lean_ctor_release(x_3746, 1);
 x_3758 = x_3746;
} else {
 lean_dec_ref(x_3746);
 x_3758 = lean_box(0);
}
if (lean_is_scalar(x_3758)) {
 x_3759 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3759 = x_3758;
}
lean_ctor_set(x_3759, 0, x_3756);
lean_ctor_set(x_3759, 1, x_3757);
return x_3759;
}
}
else
{
lean_object* x_3760; lean_object* x_3761; lean_object* x_3762; lean_object* x_3763; 
lean_dec(x_3738);
lean_dec(x_3697);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3760 = lean_ctor_get(x_3741, 0);
lean_inc(x_3760);
x_3761 = lean_ctor_get(x_3741, 1);
lean_inc(x_3761);
if (lean_is_exclusive(x_3741)) {
 lean_ctor_release(x_3741, 0);
 lean_ctor_release(x_3741, 1);
 x_3762 = x_3741;
} else {
 lean_dec_ref(x_3741);
 x_3762 = lean_box(0);
}
if (lean_is_scalar(x_3762)) {
 x_3763 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3763 = x_3762;
}
lean_ctor_set(x_3763, 0, x_3760);
lean_ctor_set(x_3763, 1, x_3761);
return x_3763;
}
}
else
{
lean_object* x_3764; 
x_3764 = lean_box(0);
x_3702 = x_3764;
goto block_3732;
}
}
block_3732:
{
lean_object* x_3703; lean_object* x_3704; lean_object* x_3705; lean_object* x_3706; lean_object* x_3707; lean_object* x_3708; lean_object* x_3709; 
lean_dec(x_3702);
lean_inc(x_3697);
x_3703 = l_Lean_mkNot(x_3697);
lean_inc(x_3696);
lean_inc(x_3695);
x_3704 = l_Lean_Expr_lam___override(x_3695, x_3696, x_3703, x_3698);
x_3705 = l_Lean_Expr_lam___override(x_3695, x_3696, x_3697, x_3698);
x_3706 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3707 = lean_array_push(x_3706, x_3704);
x_3708 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3709 = l_Lean_Meta_mkAppM(x_3708, x_3707, x_5, x_6, x_7, x_8, x_3701);
if (lean_obj_tag(x_3709) == 0)
{
lean_object* x_3710; lean_object* x_3711; lean_object* x_3712; lean_object* x_3713; lean_object* x_3714; 
x_3710 = lean_ctor_get(x_3709, 0);
lean_inc(x_3710);
x_3711 = lean_ctor_get(x_3709, 1);
lean_inc(x_3711);
lean_dec(x_3709);
x_3712 = lean_array_push(x_3706, x_3705);
x_3713 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3714 = l_Lean_Meta_mkAppM(x_3713, x_3712, x_5, x_6, x_7, x_8, x_3711);
if (lean_obj_tag(x_3714) == 0)
{
lean_object* x_3715; lean_object* x_3716; lean_object* x_3717; lean_object* x_3718; uint8_t x_3719; lean_object* x_3720; lean_object* x_3721; lean_object* x_3722; lean_object* x_3723; 
x_3715 = lean_ctor_get(x_3714, 0);
lean_inc(x_3715);
x_3716 = lean_ctor_get(x_3714, 1);
lean_inc(x_3716);
if (lean_is_exclusive(x_3714)) {
 lean_ctor_release(x_3714, 0);
 lean_ctor_release(x_3714, 1);
 x_3717 = x_3714;
} else {
 lean_dec_ref(x_3714);
 x_3717 = lean_box(0);
}
x_3718 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3718, 0, x_3715);
x_3719 = 1;
x_3720 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3720, 0, x_3710);
lean_ctor_set(x_3720, 1, x_3718);
lean_ctor_set_uint8(x_3720, sizeof(void*)*2, x_3719);
x_3721 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3721, 0, x_3720);
x_3722 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3722, 0, x_3721);
if (lean_is_scalar(x_3717)) {
 x_3723 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3723 = x_3717;
}
lean_ctor_set(x_3723, 0, x_3722);
lean_ctor_set(x_3723, 1, x_3716);
return x_3723;
}
else
{
lean_object* x_3724; lean_object* x_3725; lean_object* x_3726; lean_object* x_3727; 
lean_dec(x_3710);
x_3724 = lean_ctor_get(x_3714, 0);
lean_inc(x_3724);
x_3725 = lean_ctor_get(x_3714, 1);
lean_inc(x_3725);
if (lean_is_exclusive(x_3714)) {
 lean_ctor_release(x_3714, 0);
 lean_ctor_release(x_3714, 1);
 x_3726 = x_3714;
} else {
 lean_dec_ref(x_3714);
 x_3726 = lean_box(0);
}
if (lean_is_scalar(x_3726)) {
 x_3727 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3727 = x_3726;
}
lean_ctor_set(x_3727, 0, x_3724);
lean_ctor_set(x_3727, 1, x_3725);
return x_3727;
}
}
else
{
lean_object* x_3728; lean_object* x_3729; lean_object* x_3730; lean_object* x_3731; 
lean_dec(x_3705);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3728 = lean_ctor_get(x_3709, 0);
lean_inc(x_3728);
x_3729 = lean_ctor_get(x_3709, 1);
lean_inc(x_3729);
if (lean_is_exclusive(x_3709)) {
 lean_ctor_release(x_3709, 0);
 lean_ctor_release(x_3709, 1);
 x_3730 = x_3709;
} else {
 lean_dec_ref(x_3709);
 x_3730 = lean_box(0);
}
if (lean_is_scalar(x_3730)) {
 x_3731 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3731 = x_3730;
}
lean_ctor_set(x_3731, 0, x_3728);
lean_ctor_set(x_3731, 1, x_3729);
return x_3731;
}
}
}
else
{
lean_object* x_3765; lean_object* x_3766; lean_object* x_3767; lean_object* x_3768; 
lean_dec(x_3697);
lean_dec(x_3696);
lean_dec(x_3695);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3765 = lean_ctor_get(x_3699, 0);
lean_inc(x_3765);
x_3766 = lean_ctor_get(x_3699, 1);
lean_inc(x_3766);
if (lean_is_exclusive(x_3699)) {
 lean_ctor_release(x_3699, 0);
 lean_ctor_release(x_3699, 1);
 x_3767 = x_3699;
} else {
 lean_dec_ref(x_3699);
 x_3767 = lean_box(0);
}
if (lean_is_scalar(x_3767)) {
 x_3768 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3768 = x_3767;
}
lean_ctor_set(x_3768, 0, x_3765);
lean_ctor_set(x_3768, 1, x_3766);
return x_3768;
}
}
else
{
lean_object* x_3769; lean_object* x_3770; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3769 = lean_box(0);
x_3770 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3770, 0, x_3769);
lean_ctor_set(x_3770, 1, x_2735);
return x_3770;
}
}
else
{
lean_object* x_3771; uint8_t x_3772; 
x_3771 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39;
x_3772 = lean_string_dec_eq(x_3683, x_3771);
lean_dec(x_3683);
if (x_3772 == 0)
{
lean_dec(x_3682);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3773; lean_object* x_3774; lean_object* x_3775; uint8_t x_3776; lean_object* x_3777; 
x_3773 = lean_ctor_get(x_2736, 0);
lean_inc(x_3773);
x_3774 = lean_ctor_get(x_2736, 1);
lean_inc(x_3774);
x_3775 = lean_ctor_get(x_2736, 2);
lean_inc(x_3775);
x_3776 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3774);
x_3777 = l_Lean_Meta_isProp(x_3774, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3777) == 0)
{
lean_object* x_3778; lean_object* x_3779; lean_object* x_3780; uint8_t x_3811; 
x_3778 = lean_ctor_get(x_3777, 0);
lean_inc(x_3778);
x_3779 = lean_ctor_get(x_3777, 1);
lean_inc(x_3779);
lean_dec(x_3777);
x_3811 = lean_unbox(x_3778);
lean_dec(x_3778);
if (x_3811 == 0)
{
lean_object* x_3812; 
x_3812 = lean_box(0);
x_3780 = x_3812;
goto block_3810;
}
else
{
uint8_t x_3813; 
x_3813 = l_Lean_Expr_hasLooseBVars(x_3775);
if (x_3813 == 0)
{
lean_object* x_3814; lean_object* x_3815; lean_object* x_3816; lean_object* x_3817; lean_object* x_3818; lean_object* x_3819; 
lean_dec(x_3773);
lean_inc(x_3775);
x_3814 = l_Lean_mkNot(x_3775);
x_3815 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3816 = lean_array_push(x_3815, x_3774);
lean_inc(x_3816);
x_3817 = lean_array_push(x_3816, x_3814);
x_3818 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3819 = l_Lean_Meta_mkAppM(x_3818, x_3817, x_5, x_6, x_7, x_8, x_3779);
if (lean_obj_tag(x_3819) == 0)
{
lean_object* x_3820; lean_object* x_3821; lean_object* x_3822; lean_object* x_3823; lean_object* x_3824; 
x_3820 = lean_ctor_get(x_3819, 0);
lean_inc(x_3820);
x_3821 = lean_ctor_get(x_3819, 1);
lean_inc(x_3821);
lean_dec(x_3819);
x_3822 = lean_array_push(x_3816, x_3775);
x_3823 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3824 = l_Lean_Meta_mkAppM(x_3823, x_3822, x_5, x_6, x_7, x_8, x_3821);
if (lean_obj_tag(x_3824) == 0)
{
lean_object* x_3825; lean_object* x_3826; lean_object* x_3827; lean_object* x_3828; uint8_t x_3829; lean_object* x_3830; lean_object* x_3831; lean_object* x_3832; lean_object* x_3833; 
x_3825 = lean_ctor_get(x_3824, 0);
lean_inc(x_3825);
x_3826 = lean_ctor_get(x_3824, 1);
lean_inc(x_3826);
if (lean_is_exclusive(x_3824)) {
 lean_ctor_release(x_3824, 0);
 lean_ctor_release(x_3824, 1);
 x_3827 = x_3824;
} else {
 lean_dec_ref(x_3824);
 x_3827 = lean_box(0);
}
x_3828 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3828, 0, x_3825);
x_3829 = 1;
x_3830 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3830, 0, x_3820);
lean_ctor_set(x_3830, 1, x_3828);
lean_ctor_set_uint8(x_3830, sizeof(void*)*2, x_3829);
x_3831 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3831, 0, x_3830);
x_3832 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3832, 0, x_3831);
if (lean_is_scalar(x_3827)) {
 x_3833 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3833 = x_3827;
}
lean_ctor_set(x_3833, 0, x_3832);
lean_ctor_set(x_3833, 1, x_3826);
return x_3833;
}
else
{
lean_object* x_3834; lean_object* x_3835; lean_object* x_3836; lean_object* x_3837; 
lean_dec(x_3820);
x_3834 = lean_ctor_get(x_3824, 0);
lean_inc(x_3834);
x_3835 = lean_ctor_get(x_3824, 1);
lean_inc(x_3835);
if (lean_is_exclusive(x_3824)) {
 lean_ctor_release(x_3824, 0);
 lean_ctor_release(x_3824, 1);
 x_3836 = x_3824;
} else {
 lean_dec_ref(x_3824);
 x_3836 = lean_box(0);
}
if (lean_is_scalar(x_3836)) {
 x_3837 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3837 = x_3836;
}
lean_ctor_set(x_3837, 0, x_3834);
lean_ctor_set(x_3837, 1, x_3835);
return x_3837;
}
}
else
{
lean_object* x_3838; lean_object* x_3839; lean_object* x_3840; lean_object* x_3841; 
lean_dec(x_3816);
lean_dec(x_3775);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3838 = lean_ctor_get(x_3819, 0);
lean_inc(x_3838);
x_3839 = lean_ctor_get(x_3819, 1);
lean_inc(x_3839);
if (lean_is_exclusive(x_3819)) {
 lean_ctor_release(x_3819, 0);
 lean_ctor_release(x_3819, 1);
 x_3840 = x_3819;
} else {
 lean_dec_ref(x_3819);
 x_3840 = lean_box(0);
}
if (lean_is_scalar(x_3840)) {
 x_3841 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3841 = x_3840;
}
lean_ctor_set(x_3841, 0, x_3838);
lean_ctor_set(x_3841, 1, x_3839);
return x_3841;
}
}
else
{
lean_object* x_3842; 
x_3842 = lean_box(0);
x_3780 = x_3842;
goto block_3810;
}
}
block_3810:
{
lean_object* x_3781; lean_object* x_3782; lean_object* x_3783; lean_object* x_3784; lean_object* x_3785; lean_object* x_3786; lean_object* x_3787; 
lean_dec(x_3780);
lean_inc(x_3775);
x_3781 = l_Lean_mkNot(x_3775);
lean_inc(x_3774);
lean_inc(x_3773);
x_3782 = l_Lean_Expr_lam___override(x_3773, x_3774, x_3781, x_3776);
x_3783 = l_Lean_Expr_lam___override(x_3773, x_3774, x_3775, x_3776);
x_3784 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3785 = lean_array_push(x_3784, x_3782);
x_3786 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3787 = l_Lean_Meta_mkAppM(x_3786, x_3785, x_5, x_6, x_7, x_8, x_3779);
if (lean_obj_tag(x_3787) == 0)
{
lean_object* x_3788; lean_object* x_3789; lean_object* x_3790; lean_object* x_3791; lean_object* x_3792; 
x_3788 = lean_ctor_get(x_3787, 0);
lean_inc(x_3788);
x_3789 = lean_ctor_get(x_3787, 1);
lean_inc(x_3789);
lean_dec(x_3787);
x_3790 = lean_array_push(x_3784, x_3783);
x_3791 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3792 = l_Lean_Meta_mkAppM(x_3791, x_3790, x_5, x_6, x_7, x_8, x_3789);
if (lean_obj_tag(x_3792) == 0)
{
lean_object* x_3793; lean_object* x_3794; lean_object* x_3795; lean_object* x_3796; uint8_t x_3797; lean_object* x_3798; lean_object* x_3799; lean_object* x_3800; lean_object* x_3801; 
x_3793 = lean_ctor_get(x_3792, 0);
lean_inc(x_3793);
x_3794 = lean_ctor_get(x_3792, 1);
lean_inc(x_3794);
if (lean_is_exclusive(x_3792)) {
 lean_ctor_release(x_3792, 0);
 lean_ctor_release(x_3792, 1);
 x_3795 = x_3792;
} else {
 lean_dec_ref(x_3792);
 x_3795 = lean_box(0);
}
x_3796 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3796, 0, x_3793);
x_3797 = 1;
x_3798 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3798, 0, x_3788);
lean_ctor_set(x_3798, 1, x_3796);
lean_ctor_set_uint8(x_3798, sizeof(void*)*2, x_3797);
x_3799 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3799, 0, x_3798);
x_3800 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3800, 0, x_3799);
if (lean_is_scalar(x_3795)) {
 x_3801 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3801 = x_3795;
}
lean_ctor_set(x_3801, 0, x_3800);
lean_ctor_set(x_3801, 1, x_3794);
return x_3801;
}
else
{
lean_object* x_3802; lean_object* x_3803; lean_object* x_3804; lean_object* x_3805; 
lean_dec(x_3788);
x_3802 = lean_ctor_get(x_3792, 0);
lean_inc(x_3802);
x_3803 = lean_ctor_get(x_3792, 1);
lean_inc(x_3803);
if (lean_is_exclusive(x_3792)) {
 lean_ctor_release(x_3792, 0);
 lean_ctor_release(x_3792, 1);
 x_3804 = x_3792;
} else {
 lean_dec_ref(x_3792);
 x_3804 = lean_box(0);
}
if (lean_is_scalar(x_3804)) {
 x_3805 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3805 = x_3804;
}
lean_ctor_set(x_3805, 0, x_3802);
lean_ctor_set(x_3805, 1, x_3803);
return x_3805;
}
}
else
{
lean_object* x_3806; lean_object* x_3807; lean_object* x_3808; lean_object* x_3809; 
lean_dec(x_3783);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3806 = lean_ctor_get(x_3787, 0);
lean_inc(x_3806);
x_3807 = lean_ctor_get(x_3787, 1);
lean_inc(x_3807);
if (lean_is_exclusive(x_3787)) {
 lean_ctor_release(x_3787, 0);
 lean_ctor_release(x_3787, 1);
 x_3808 = x_3787;
} else {
 lean_dec_ref(x_3787);
 x_3808 = lean_box(0);
}
if (lean_is_scalar(x_3808)) {
 x_3809 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3809 = x_3808;
}
lean_ctor_set(x_3809, 0, x_3806);
lean_ctor_set(x_3809, 1, x_3807);
return x_3809;
}
}
}
else
{
lean_object* x_3843; lean_object* x_3844; lean_object* x_3845; lean_object* x_3846; 
lean_dec(x_3775);
lean_dec(x_3774);
lean_dec(x_3773);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3843 = lean_ctor_get(x_3777, 0);
lean_inc(x_3843);
x_3844 = lean_ctor_get(x_3777, 1);
lean_inc(x_3844);
if (lean_is_exclusive(x_3777)) {
 lean_ctor_release(x_3777, 0);
 lean_ctor_release(x_3777, 1);
 x_3845 = x_3777;
} else {
 lean_dec_ref(x_3777);
 x_3845 = lean_box(0);
}
if (lean_is_scalar(x_3845)) {
 x_3846 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3846 = x_3845;
}
lean_ctor_set(x_3846, 0, x_3843);
lean_ctor_set(x_3846, 1, x_3844);
return x_3846;
}
}
else
{
lean_object* x_3847; lean_object* x_3848; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3847 = lean_box(0);
x_3848 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3848, 0, x_3847);
lean_ctor_set(x_3848, 1, x_2735);
return x_3848;
}
}
else
{
lean_object* x_3849; lean_object* x_3850; uint8_t x_3851; 
x_3849 = lean_array_get_size(x_3682);
x_3850 = lean_unsigned_to_nat(2u);
x_3851 = lean_nat_dec_eq(x_3849, x_3850);
lean_dec(x_3849);
if (x_3851 == 0)
{
lean_dec(x_3682);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3852; lean_object* x_3853; lean_object* x_3854; uint8_t x_3855; lean_object* x_3856; 
x_3852 = lean_ctor_get(x_2736, 0);
lean_inc(x_3852);
x_3853 = lean_ctor_get(x_2736, 1);
lean_inc(x_3853);
x_3854 = lean_ctor_get(x_2736, 2);
lean_inc(x_3854);
x_3855 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3853);
x_3856 = l_Lean_Meta_isProp(x_3853, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3856) == 0)
{
lean_object* x_3857; lean_object* x_3858; lean_object* x_3859; uint8_t x_3890; 
x_3857 = lean_ctor_get(x_3856, 0);
lean_inc(x_3857);
x_3858 = lean_ctor_get(x_3856, 1);
lean_inc(x_3858);
lean_dec(x_3856);
x_3890 = lean_unbox(x_3857);
lean_dec(x_3857);
if (x_3890 == 0)
{
lean_object* x_3891; 
x_3891 = lean_box(0);
x_3859 = x_3891;
goto block_3889;
}
else
{
uint8_t x_3892; 
x_3892 = l_Lean_Expr_hasLooseBVars(x_3854);
if (x_3892 == 0)
{
lean_object* x_3893; lean_object* x_3894; lean_object* x_3895; lean_object* x_3896; lean_object* x_3897; lean_object* x_3898; 
lean_dec(x_3852);
lean_inc(x_3854);
x_3893 = l_Lean_mkNot(x_3854);
x_3894 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_3895 = lean_array_push(x_3894, x_3853);
lean_inc(x_3895);
x_3896 = lean_array_push(x_3895, x_3893);
x_3897 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3898 = l_Lean_Meta_mkAppM(x_3897, x_3896, x_5, x_6, x_7, x_8, x_3858);
if (lean_obj_tag(x_3898) == 0)
{
lean_object* x_3899; lean_object* x_3900; lean_object* x_3901; lean_object* x_3902; lean_object* x_3903; 
x_3899 = lean_ctor_get(x_3898, 0);
lean_inc(x_3899);
x_3900 = lean_ctor_get(x_3898, 1);
lean_inc(x_3900);
lean_dec(x_3898);
x_3901 = lean_array_push(x_3895, x_3854);
x_3902 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_3903 = l_Lean_Meta_mkAppM(x_3902, x_3901, x_5, x_6, x_7, x_8, x_3900);
if (lean_obj_tag(x_3903) == 0)
{
lean_object* x_3904; lean_object* x_3905; lean_object* x_3906; lean_object* x_3907; uint8_t x_3908; lean_object* x_3909; lean_object* x_3910; lean_object* x_3911; lean_object* x_3912; 
x_3904 = lean_ctor_get(x_3903, 0);
lean_inc(x_3904);
x_3905 = lean_ctor_get(x_3903, 1);
lean_inc(x_3905);
if (lean_is_exclusive(x_3903)) {
 lean_ctor_release(x_3903, 0);
 lean_ctor_release(x_3903, 1);
 x_3906 = x_3903;
} else {
 lean_dec_ref(x_3903);
 x_3906 = lean_box(0);
}
x_3907 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3907, 0, x_3904);
x_3908 = 1;
x_3909 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3909, 0, x_3899);
lean_ctor_set(x_3909, 1, x_3907);
lean_ctor_set_uint8(x_3909, sizeof(void*)*2, x_3908);
x_3910 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3910, 0, x_3909);
x_3911 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3911, 0, x_3910);
if (lean_is_scalar(x_3906)) {
 x_3912 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3912 = x_3906;
}
lean_ctor_set(x_3912, 0, x_3911);
lean_ctor_set(x_3912, 1, x_3905);
return x_3912;
}
else
{
lean_object* x_3913; lean_object* x_3914; lean_object* x_3915; lean_object* x_3916; 
lean_dec(x_3899);
x_3913 = lean_ctor_get(x_3903, 0);
lean_inc(x_3913);
x_3914 = lean_ctor_get(x_3903, 1);
lean_inc(x_3914);
if (lean_is_exclusive(x_3903)) {
 lean_ctor_release(x_3903, 0);
 lean_ctor_release(x_3903, 1);
 x_3915 = x_3903;
} else {
 lean_dec_ref(x_3903);
 x_3915 = lean_box(0);
}
if (lean_is_scalar(x_3915)) {
 x_3916 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3916 = x_3915;
}
lean_ctor_set(x_3916, 0, x_3913);
lean_ctor_set(x_3916, 1, x_3914);
return x_3916;
}
}
else
{
lean_object* x_3917; lean_object* x_3918; lean_object* x_3919; lean_object* x_3920; 
lean_dec(x_3895);
lean_dec(x_3854);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3917 = lean_ctor_get(x_3898, 0);
lean_inc(x_3917);
x_3918 = lean_ctor_get(x_3898, 1);
lean_inc(x_3918);
if (lean_is_exclusive(x_3898)) {
 lean_ctor_release(x_3898, 0);
 lean_ctor_release(x_3898, 1);
 x_3919 = x_3898;
} else {
 lean_dec_ref(x_3898);
 x_3919 = lean_box(0);
}
if (lean_is_scalar(x_3919)) {
 x_3920 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3920 = x_3919;
}
lean_ctor_set(x_3920, 0, x_3917);
lean_ctor_set(x_3920, 1, x_3918);
return x_3920;
}
}
else
{
lean_object* x_3921; 
x_3921 = lean_box(0);
x_3859 = x_3921;
goto block_3889;
}
}
block_3889:
{
lean_object* x_3860; lean_object* x_3861; lean_object* x_3862; lean_object* x_3863; lean_object* x_3864; lean_object* x_3865; lean_object* x_3866; 
lean_dec(x_3859);
lean_inc(x_3854);
x_3860 = l_Lean_mkNot(x_3854);
lean_inc(x_3853);
lean_inc(x_3852);
x_3861 = l_Lean_Expr_lam___override(x_3852, x_3853, x_3860, x_3855);
x_3862 = l_Lean_Expr_lam___override(x_3852, x_3853, x_3854, x_3855);
x_3863 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3864 = lean_array_push(x_3863, x_3861);
x_3865 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3866 = l_Lean_Meta_mkAppM(x_3865, x_3864, x_5, x_6, x_7, x_8, x_3858);
if (lean_obj_tag(x_3866) == 0)
{
lean_object* x_3867; lean_object* x_3868; lean_object* x_3869; lean_object* x_3870; lean_object* x_3871; 
x_3867 = lean_ctor_get(x_3866, 0);
lean_inc(x_3867);
x_3868 = lean_ctor_get(x_3866, 1);
lean_inc(x_3868);
lean_dec(x_3866);
x_3869 = lean_array_push(x_3863, x_3862);
x_3870 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3871 = l_Lean_Meta_mkAppM(x_3870, x_3869, x_5, x_6, x_7, x_8, x_3868);
if (lean_obj_tag(x_3871) == 0)
{
lean_object* x_3872; lean_object* x_3873; lean_object* x_3874; lean_object* x_3875; uint8_t x_3876; lean_object* x_3877; lean_object* x_3878; lean_object* x_3879; lean_object* x_3880; 
x_3872 = lean_ctor_get(x_3871, 0);
lean_inc(x_3872);
x_3873 = lean_ctor_get(x_3871, 1);
lean_inc(x_3873);
if (lean_is_exclusive(x_3871)) {
 lean_ctor_release(x_3871, 0);
 lean_ctor_release(x_3871, 1);
 x_3874 = x_3871;
} else {
 lean_dec_ref(x_3871);
 x_3874 = lean_box(0);
}
x_3875 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3875, 0, x_3872);
x_3876 = 1;
x_3877 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3877, 0, x_3867);
lean_ctor_set(x_3877, 1, x_3875);
lean_ctor_set_uint8(x_3877, sizeof(void*)*2, x_3876);
x_3878 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3878, 0, x_3877);
x_3879 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3879, 0, x_3878);
if (lean_is_scalar(x_3874)) {
 x_3880 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3880 = x_3874;
}
lean_ctor_set(x_3880, 0, x_3879);
lean_ctor_set(x_3880, 1, x_3873);
return x_3880;
}
else
{
lean_object* x_3881; lean_object* x_3882; lean_object* x_3883; lean_object* x_3884; 
lean_dec(x_3867);
x_3881 = lean_ctor_get(x_3871, 0);
lean_inc(x_3881);
x_3882 = lean_ctor_get(x_3871, 1);
lean_inc(x_3882);
if (lean_is_exclusive(x_3871)) {
 lean_ctor_release(x_3871, 0);
 lean_ctor_release(x_3871, 1);
 x_3883 = x_3871;
} else {
 lean_dec_ref(x_3871);
 x_3883 = lean_box(0);
}
if (lean_is_scalar(x_3883)) {
 x_3884 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3884 = x_3883;
}
lean_ctor_set(x_3884, 0, x_3881);
lean_ctor_set(x_3884, 1, x_3882);
return x_3884;
}
}
else
{
lean_object* x_3885; lean_object* x_3886; lean_object* x_3887; lean_object* x_3888; 
lean_dec(x_3862);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3885 = lean_ctor_get(x_3866, 0);
lean_inc(x_3885);
x_3886 = lean_ctor_get(x_3866, 1);
lean_inc(x_3886);
if (lean_is_exclusive(x_3866)) {
 lean_ctor_release(x_3866, 0);
 lean_ctor_release(x_3866, 1);
 x_3887 = x_3866;
} else {
 lean_dec_ref(x_3866);
 x_3887 = lean_box(0);
}
if (lean_is_scalar(x_3887)) {
 x_3888 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3888 = x_3887;
}
lean_ctor_set(x_3888, 0, x_3885);
lean_ctor_set(x_3888, 1, x_3886);
return x_3888;
}
}
}
else
{
lean_object* x_3922; lean_object* x_3923; lean_object* x_3924; lean_object* x_3925; 
lean_dec(x_3854);
lean_dec(x_3853);
lean_dec(x_3852);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3922 = lean_ctor_get(x_3856, 0);
lean_inc(x_3922);
x_3923 = lean_ctor_get(x_3856, 1);
lean_inc(x_3923);
if (lean_is_exclusive(x_3856)) {
 lean_ctor_release(x_3856, 0);
 lean_ctor_release(x_3856, 1);
 x_3924 = x_3856;
} else {
 lean_dec_ref(x_3856);
 x_3924 = lean_box(0);
}
if (lean_is_scalar(x_3924)) {
 x_3925 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3925 = x_3924;
}
lean_ctor_set(x_3925, 0, x_3922);
lean_ctor_set(x_3925, 1, x_3923);
return x_3925;
}
}
else
{
lean_object* x_3926; lean_object* x_3927; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3926 = lean_box(0);
x_3927 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3927, 0, x_3926);
lean_ctor_set(x_3927, 1, x_2735);
return x_3927;
}
}
else
{
lean_object* x_3928; lean_object* x_3929; lean_object* x_3930; lean_object* x_3931; lean_object* x_3932; 
lean_dec(x_2736);
x_3928 = lean_array_fget(x_3682, x_24);
lean_dec(x_3682);
x_3929 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3930 = lean_array_push(x_3929, x_3928);
x_3931 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3932 = l_Lean_Meta_mkAppM(x_3931, x_3930, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3932) == 0)
{
lean_object* x_3933; lean_object* x_3934; lean_object* x_3935; 
x_3933 = lean_ctor_get(x_3932, 0);
lean_inc(x_3933);
x_3934 = lean_ctor_get(x_3932, 1);
lean_inc(x_3934);
lean_dec(x_3932);
lean_inc(x_3933);
x_3935 = lean_infer_type(x_3933, x_5, x_6, x_7, x_8, x_3934);
if (lean_obj_tag(x_3935) == 0)
{
lean_object* x_3936; lean_object* x_3937; lean_object* x_3938; lean_object* x_3939; lean_object* x_3940; uint8_t x_3941; 
x_3936 = lean_ctor_get(x_3935, 0);
lean_inc(x_3936);
x_3937 = lean_ctor_get(x_3935, 1);
lean_inc(x_3937);
if (lean_is_exclusive(x_3935)) {
 lean_ctor_release(x_3935, 0);
 lean_ctor_release(x_3935, 1);
 x_3938 = x_3935;
} else {
 lean_dec_ref(x_3935);
 x_3938 = lean_box(0);
}
x_3939 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_3940 = lean_unsigned_to_nat(3u);
x_3941 = l_Lean_Expr_isAppOfArity(x_3936, x_3939, x_3940);
if (x_3941 == 0)
{
lean_object* x_3942; lean_object* x_3943; 
lean_dec(x_3936);
lean_dec(x_3933);
x_3942 = lean_box(0);
if (lean_is_scalar(x_3938)) {
 x_3943 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3943 = x_3938;
}
lean_ctor_set(x_3943, 0, x_3942);
lean_ctor_set(x_3943, 1, x_3937);
return x_3943;
}
else
{
lean_object* x_3944; lean_object* x_3945; uint8_t x_3946; lean_object* x_3947; lean_object* x_3948; lean_object* x_3949; lean_object* x_3950; 
x_3944 = l_Lean_Expr_appArg_x21(x_3936);
lean_dec(x_3936);
x_3945 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3945, 0, x_3933);
x_3946 = 1;
x_3947 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3947, 0, x_3944);
lean_ctor_set(x_3947, 1, x_3945);
lean_ctor_set_uint8(x_3947, sizeof(void*)*2, x_3946);
x_3948 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3948, 0, x_3947);
x_3949 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3949, 0, x_3948);
if (lean_is_scalar(x_3938)) {
 x_3950 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3950 = x_3938;
}
lean_ctor_set(x_3950, 0, x_3949);
lean_ctor_set(x_3950, 1, x_3937);
return x_3950;
}
}
else
{
lean_object* x_3951; lean_object* x_3952; lean_object* x_3953; lean_object* x_3954; 
lean_dec(x_3933);
x_3951 = lean_ctor_get(x_3935, 0);
lean_inc(x_3951);
x_3952 = lean_ctor_get(x_3935, 1);
lean_inc(x_3952);
if (lean_is_exclusive(x_3935)) {
 lean_ctor_release(x_3935, 0);
 lean_ctor_release(x_3935, 1);
 x_3953 = x_3935;
} else {
 lean_dec_ref(x_3935);
 x_3953 = lean_box(0);
}
if (lean_is_scalar(x_3953)) {
 x_3954 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3954 = x_3953;
}
lean_ctor_set(x_3954, 0, x_3951);
lean_ctor_set(x_3954, 1, x_3952);
return x_3954;
}
}
else
{
lean_object* x_3955; lean_object* x_3956; lean_object* x_3957; lean_object* x_3958; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3955 = lean_ctor_get(x_3932, 0);
lean_inc(x_3955);
x_3956 = lean_ctor_get(x_3932, 1);
lean_inc(x_3956);
if (lean_is_exclusive(x_3932)) {
 lean_ctor_release(x_3932, 0);
 lean_ctor_release(x_3932, 1);
 x_3957 = x_3932;
} else {
 lean_dec_ref(x_3932);
 x_3957 = lean_box(0);
}
if (lean_is_scalar(x_3957)) {
 x_3958 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3958 = x_3957;
}
lean_ctor_set(x_3958, 0, x_3955);
lean_ctor_set(x_3958, 1, x_3956);
return x_3958;
}
}
}
}
}
else
{
lean_object* x_3959; uint8_t x_3960; 
lean_dec(x_3684);
x_3959 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42;
x_3960 = lean_string_dec_eq(x_3683, x_3959);
lean_dec(x_3683);
if (x_3960 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_3961; lean_object* x_3962; lean_object* x_3963; uint8_t x_3964; lean_object* x_3965; 
x_3961 = lean_ctor_get(x_2736, 0);
lean_inc(x_3961);
x_3962 = lean_ctor_get(x_2736, 1);
lean_inc(x_3962);
x_3963 = lean_ctor_get(x_2736, 2);
lean_inc(x_3963);
x_3964 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_3962);
x_3965 = l_Lean_Meta_isProp(x_3962, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_3965) == 0)
{
lean_object* x_3966; lean_object* x_3967; lean_object* x_3968; uint8_t x_3999; 
x_3966 = lean_ctor_get(x_3965, 0);
lean_inc(x_3966);
x_3967 = lean_ctor_get(x_3965, 1);
lean_inc(x_3967);
lean_dec(x_3965);
x_3999 = lean_unbox(x_3966);
lean_dec(x_3966);
if (x_3999 == 0)
{
lean_object* x_4000; 
x_4000 = lean_box(0);
x_3968 = x_4000;
goto block_3998;
}
else
{
uint8_t x_4001; 
x_4001 = l_Lean_Expr_hasLooseBVars(x_3963);
if (x_4001 == 0)
{
lean_object* x_4002; lean_object* x_4003; lean_object* x_4004; lean_object* x_4005; lean_object* x_4006; lean_object* x_4007; 
lean_dec(x_3961);
lean_inc(x_3963);
x_4002 = l_Lean_mkNot(x_3963);
x_4003 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4004 = lean_array_push(x_4003, x_3962);
lean_inc(x_4004);
x_4005 = lean_array_push(x_4004, x_4002);
x_4006 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4007 = l_Lean_Meta_mkAppM(x_4006, x_4005, x_5, x_6, x_7, x_8, x_3967);
if (lean_obj_tag(x_4007) == 0)
{
lean_object* x_4008; lean_object* x_4009; lean_object* x_4010; lean_object* x_4011; lean_object* x_4012; 
x_4008 = lean_ctor_get(x_4007, 0);
lean_inc(x_4008);
x_4009 = lean_ctor_get(x_4007, 1);
lean_inc(x_4009);
lean_dec(x_4007);
x_4010 = lean_array_push(x_4004, x_3963);
x_4011 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4012 = l_Lean_Meta_mkAppM(x_4011, x_4010, x_5, x_6, x_7, x_8, x_4009);
if (lean_obj_tag(x_4012) == 0)
{
lean_object* x_4013; lean_object* x_4014; lean_object* x_4015; lean_object* x_4016; uint8_t x_4017; lean_object* x_4018; lean_object* x_4019; lean_object* x_4020; lean_object* x_4021; 
x_4013 = lean_ctor_get(x_4012, 0);
lean_inc(x_4013);
x_4014 = lean_ctor_get(x_4012, 1);
lean_inc(x_4014);
if (lean_is_exclusive(x_4012)) {
 lean_ctor_release(x_4012, 0);
 lean_ctor_release(x_4012, 1);
 x_4015 = x_4012;
} else {
 lean_dec_ref(x_4012);
 x_4015 = lean_box(0);
}
x_4016 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4016, 0, x_4013);
x_4017 = 1;
x_4018 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4018, 0, x_4008);
lean_ctor_set(x_4018, 1, x_4016);
lean_ctor_set_uint8(x_4018, sizeof(void*)*2, x_4017);
x_4019 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4019, 0, x_4018);
x_4020 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4020, 0, x_4019);
if (lean_is_scalar(x_4015)) {
 x_4021 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4021 = x_4015;
}
lean_ctor_set(x_4021, 0, x_4020);
lean_ctor_set(x_4021, 1, x_4014);
return x_4021;
}
else
{
lean_object* x_4022; lean_object* x_4023; lean_object* x_4024; lean_object* x_4025; 
lean_dec(x_4008);
x_4022 = lean_ctor_get(x_4012, 0);
lean_inc(x_4022);
x_4023 = lean_ctor_get(x_4012, 1);
lean_inc(x_4023);
if (lean_is_exclusive(x_4012)) {
 lean_ctor_release(x_4012, 0);
 lean_ctor_release(x_4012, 1);
 x_4024 = x_4012;
} else {
 lean_dec_ref(x_4012);
 x_4024 = lean_box(0);
}
if (lean_is_scalar(x_4024)) {
 x_4025 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4025 = x_4024;
}
lean_ctor_set(x_4025, 0, x_4022);
lean_ctor_set(x_4025, 1, x_4023);
return x_4025;
}
}
else
{
lean_object* x_4026; lean_object* x_4027; lean_object* x_4028; lean_object* x_4029; 
lean_dec(x_4004);
lean_dec(x_3963);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4026 = lean_ctor_get(x_4007, 0);
lean_inc(x_4026);
x_4027 = lean_ctor_get(x_4007, 1);
lean_inc(x_4027);
if (lean_is_exclusive(x_4007)) {
 lean_ctor_release(x_4007, 0);
 lean_ctor_release(x_4007, 1);
 x_4028 = x_4007;
} else {
 lean_dec_ref(x_4007);
 x_4028 = lean_box(0);
}
if (lean_is_scalar(x_4028)) {
 x_4029 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4029 = x_4028;
}
lean_ctor_set(x_4029, 0, x_4026);
lean_ctor_set(x_4029, 1, x_4027);
return x_4029;
}
}
else
{
lean_object* x_4030; 
x_4030 = lean_box(0);
x_3968 = x_4030;
goto block_3998;
}
}
block_3998:
{
lean_object* x_3969; lean_object* x_3970; lean_object* x_3971; lean_object* x_3972; lean_object* x_3973; lean_object* x_3974; lean_object* x_3975; 
lean_dec(x_3968);
lean_inc(x_3963);
x_3969 = l_Lean_mkNot(x_3963);
lean_inc(x_3962);
lean_inc(x_3961);
x_3970 = l_Lean_Expr_lam___override(x_3961, x_3962, x_3969, x_3964);
x_3971 = l_Lean_Expr_lam___override(x_3961, x_3962, x_3963, x_3964);
x_3972 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_3973 = lean_array_push(x_3972, x_3970);
x_3974 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_3975 = l_Lean_Meta_mkAppM(x_3974, x_3973, x_5, x_6, x_7, x_8, x_3967);
if (lean_obj_tag(x_3975) == 0)
{
lean_object* x_3976; lean_object* x_3977; lean_object* x_3978; lean_object* x_3979; lean_object* x_3980; 
x_3976 = lean_ctor_get(x_3975, 0);
lean_inc(x_3976);
x_3977 = lean_ctor_get(x_3975, 1);
lean_inc(x_3977);
lean_dec(x_3975);
x_3978 = lean_array_push(x_3972, x_3971);
x_3979 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_3980 = l_Lean_Meta_mkAppM(x_3979, x_3978, x_5, x_6, x_7, x_8, x_3977);
if (lean_obj_tag(x_3980) == 0)
{
lean_object* x_3981; lean_object* x_3982; lean_object* x_3983; lean_object* x_3984; uint8_t x_3985; lean_object* x_3986; lean_object* x_3987; lean_object* x_3988; lean_object* x_3989; 
x_3981 = lean_ctor_get(x_3980, 0);
lean_inc(x_3981);
x_3982 = lean_ctor_get(x_3980, 1);
lean_inc(x_3982);
if (lean_is_exclusive(x_3980)) {
 lean_ctor_release(x_3980, 0);
 lean_ctor_release(x_3980, 1);
 x_3983 = x_3980;
} else {
 lean_dec_ref(x_3980);
 x_3983 = lean_box(0);
}
x_3984 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3984, 0, x_3981);
x_3985 = 1;
x_3986 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_3986, 0, x_3976);
lean_ctor_set(x_3986, 1, x_3984);
lean_ctor_set_uint8(x_3986, sizeof(void*)*2, x_3985);
x_3987 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3987, 0, x_3986);
x_3988 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3988, 0, x_3987);
if (lean_is_scalar(x_3983)) {
 x_3989 = lean_alloc_ctor(0, 2, 0);
} else {
 x_3989 = x_3983;
}
lean_ctor_set(x_3989, 0, x_3988);
lean_ctor_set(x_3989, 1, x_3982);
return x_3989;
}
else
{
lean_object* x_3990; lean_object* x_3991; lean_object* x_3992; lean_object* x_3993; 
lean_dec(x_3976);
x_3990 = lean_ctor_get(x_3980, 0);
lean_inc(x_3990);
x_3991 = lean_ctor_get(x_3980, 1);
lean_inc(x_3991);
if (lean_is_exclusive(x_3980)) {
 lean_ctor_release(x_3980, 0);
 lean_ctor_release(x_3980, 1);
 x_3992 = x_3980;
} else {
 lean_dec_ref(x_3980);
 x_3992 = lean_box(0);
}
if (lean_is_scalar(x_3992)) {
 x_3993 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3993 = x_3992;
}
lean_ctor_set(x_3993, 0, x_3990);
lean_ctor_set(x_3993, 1, x_3991);
return x_3993;
}
}
else
{
lean_object* x_3994; lean_object* x_3995; lean_object* x_3996; lean_object* x_3997; 
lean_dec(x_3971);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_3994 = lean_ctor_get(x_3975, 0);
lean_inc(x_3994);
x_3995 = lean_ctor_get(x_3975, 1);
lean_inc(x_3995);
if (lean_is_exclusive(x_3975)) {
 lean_ctor_release(x_3975, 0);
 lean_ctor_release(x_3975, 1);
 x_3996 = x_3975;
} else {
 lean_dec_ref(x_3975);
 x_3996 = lean_box(0);
}
if (lean_is_scalar(x_3996)) {
 x_3997 = lean_alloc_ctor(1, 2, 0);
} else {
 x_3997 = x_3996;
}
lean_ctor_set(x_3997, 0, x_3994);
lean_ctor_set(x_3997, 1, x_3995);
return x_3997;
}
}
}
else
{
lean_object* x_4031; lean_object* x_4032; lean_object* x_4033; lean_object* x_4034; 
lean_dec(x_3963);
lean_dec(x_3962);
lean_dec(x_3961);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4031 = lean_ctor_get(x_3965, 0);
lean_inc(x_4031);
x_4032 = lean_ctor_get(x_3965, 1);
lean_inc(x_4032);
if (lean_is_exclusive(x_3965)) {
 lean_ctor_release(x_3965, 0);
 lean_ctor_release(x_3965, 1);
 x_4033 = x_3965;
} else {
 lean_dec_ref(x_3965);
 x_4033 = lean_box(0);
}
if (lean_is_scalar(x_4033)) {
 x_4034 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4034 = x_4033;
}
lean_ctor_set(x_4034, 0, x_4031);
lean_ctor_set(x_4034, 1, x_4032);
return x_4034;
}
}
else
{
lean_object* x_4035; lean_object* x_4036; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4035 = lean_box(0);
x_4036 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4036, 0, x_4035);
lean_ctor_set(x_4036, 1, x_2735);
return x_4036;
}
}
else
{
lean_object* x_4037; lean_object* x_4038; uint8_t x_4039; 
x_4037 = lean_array_get_size(x_3682);
x_4038 = lean_unsigned_to_nat(4u);
x_4039 = lean_nat_dec_eq(x_4037, x_4038);
lean_dec(x_4037);
if (x_4039 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4040; lean_object* x_4041; lean_object* x_4042; uint8_t x_4043; lean_object* x_4044; 
x_4040 = lean_ctor_get(x_2736, 0);
lean_inc(x_4040);
x_4041 = lean_ctor_get(x_2736, 1);
lean_inc(x_4041);
x_4042 = lean_ctor_get(x_2736, 2);
lean_inc(x_4042);
x_4043 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4041);
x_4044 = l_Lean_Meta_isProp(x_4041, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4044) == 0)
{
lean_object* x_4045; lean_object* x_4046; lean_object* x_4047; uint8_t x_4078; 
x_4045 = lean_ctor_get(x_4044, 0);
lean_inc(x_4045);
x_4046 = lean_ctor_get(x_4044, 1);
lean_inc(x_4046);
lean_dec(x_4044);
x_4078 = lean_unbox(x_4045);
lean_dec(x_4045);
if (x_4078 == 0)
{
lean_object* x_4079; 
x_4079 = lean_box(0);
x_4047 = x_4079;
goto block_4077;
}
else
{
uint8_t x_4080; 
x_4080 = l_Lean_Expr_hasLooseBVars(x_4042);
if (x_4080 == 0)
{
lean_object* x_4081; lean_object* x_4082; lean_object* x_4083; lean_object* x_4084; lean_object* x_4085; lean_object* x_4086; 
lean_dec(x_4040);
lean_inc(x_4042);
x_4081 = l_Lean_mkNot(x_4042);
x_4082 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4083 = lean_array_push(x_4082, x_4041);
lean_inc(x_4083);
x_4084 = lean_array_push(x_4083, x_4081);
x_4085 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4086 = l_Lean_Meta_mkAppM(x_4085, x_4084, x_5, x_6, x_7, x_8, x_4046);
if (lean_obj_tag(x_4086) == 0)
{
lean_object* x_4087; lean_object* x_4088; lean_object* x_4089; lean_object* x_4090; lean_object* x_4091; 
x_4087 = lean_ctor_get(x_4086, 0);
lean_inc(x_4087);
x_4088 = lean_ctor_get(x_4086, 1);
lean_inc(x_4088);
lean_dec(x_4086);
x_4089 = lean_array_push(x_4083, x_4042);
x_4090 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4091 = l_Lean_Meta_mkAppM(x_4090, x_4089, x_5, x_6, x_7, x_8, x_4088);
if (lean_obj_tag(x_4091) == 0)
{
lean_object* x_4092; lean_object* x_4093; lean_object* x_4094; lean_object* x_4095; uint8_t x_4096; lean_object* x_4097; lean_object* x_4098; lean_object* x_4099; lean_object* x_4100; 
x_4092 = lean_ctor_get(x_4091, 0);
lean_inc(x_4092);
x_4093 = lean_ctor_get(x_4091, 1);
lean_inc(x_4093);
if (lean_is_exclusive(x_4091)) {
 lean_ctor_release(x_4091, 0);
 lean_ctor_release(x_4091, 1);
 x_4094 = x_4091;
} else {
 lean_dec_ref(x_4091);
 x_4094 = lean_box(0);
}
x_4095 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4095, 0, x_4092);
x_4096 = 1;
x_4097 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4097, 0, x_4087);
lean_ctor_set(x_4097, 1, x_4095);
lean_ctor_set_uint8(x_4097, sizeof(void*)*2, x_4096);
x_4098 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4098, 0, x_4097);
x_4099 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4099, 0, x_4098);
if (lean_is_scalar(x_4094)) {
 x_4100 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4100 = x_4094;
}
lean_ctor_set(x_4100, 0, x_4099);
lean_ctor_set(x_4100, 1, x_4093);
return x_4100;
}
else
{
lean_object* x_4101; lean_object* x_4102; lean_object* x_4103; lean_object* x_4104; 
lean_dec(x_4087);
x_4101 = lean_ctor_get(x_4091, 0);
lean_inc(x_4101);
x_4102 = lean_ctor_get(x_4091, 1);
lean_inc(x_4102);
if (lean_is_exclusive(x_4091)) {
 lean_ctor_release(x_4091, 0);
 lean_ctor_release(x_4091, 1);
 x_4103 = x_4091;
} else {
 lean_dec_ref(x_4091);
 x_4103 = lean_box(0);
}
if (lean_is_scalar(x_4103)) {
 x_4104 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4104 = x_4103;
}
lean_ctor_set(x_4104, 0, x_4101);
lean_ctor_set(x_4104, 1, x_4102);
return x_4104;
}
}
else
{
lean_object* x_4105; lean_object* x_4106; lean_object* x_4107; lean_object* x_4108; 
lean_dec(x_4083);
lean_dec(x_4042);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4105 = lean_ctor_get(x_4086, 0);
lean_inc(x_4105);
x_4106 = lean_ctor_get(x_4086, 1);
lean_inc(x_4106);
if (lean_is_exclusive(x_4086)) {
 lean_ctor_release(x_4086, 0);
 lean_ctor_release(x_4086, 1);
 x_4107 = x_4086;
} else {
 lean_dec_ref(x_4086);
 x_4107 = lean_box(0);
}
if (lean_is_scalar(x_4107)) {
 x_4108 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4108 = x_4107;
}
lean_ctor_set(x_4108, 0, x_4105);
lean_ctor_set(x_4108, 1, x_4106);
return x_4108;
}
}
else
{
lean_object* x_4109; 
x_4109 = lean_box(0);
x_4047 = x_4109;
goto block_4077;
}
}
block_4077:
{
lean_object* x_4048; lean_object* x_4049; lean_object* x_4050; lean_object* x_4051; lean_object* x_4052; lean_object* x_4053; lean_object* x_4054; 
lean_dec(x_4047);
lean_inc(x_4042);
x_4048 = l_Lean_mkNot(x_4042);
lean_inc(x_4041);
lean_inc(x_4040);
x_4049 = l_Lean_Expr_lam___override(x_4040, x_4041, x_4048, x_4043);
x_4050 = l_Lean_Expr_lam___override(x_4040, x_4041, x_4042, x_4043);
x_4051 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4052 = lean_array_push(x_4051, x_4049);
x_4053 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4054 = l_Lean_Meta_mkAppM(x_4053, x_4052, x_5, x_6, x_7, x_8, x_4046);
if (lean_obj_tag(x_4054) == 0)
{
lean_object* x_4055; lean_object* x_4056; lean_object* x_4057; lean_object* x_4058; lean_object* x_4059; 
x_4055 = lean_ctor_get(x_4054, 0);
lean_inc(x_4055);
x_4056 = lean_ctor_get(x_4054, 1);
lean_inc(x_4056);
lean_dec(x_4054);
x_4057 = lean_array_push(x_4051, x_4050);
x_4058 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4059 = l_Lean_Meta_mkAppM(x_4058, x_4057, x_5, x_6, x_7, x_8, x_4056);
if (lean_obj_tag(x_4059) == 0)
{
lean_object* x_4060; lean_object* x_4061; lean_object* x_4062; lean_object* x_4063; uint8_t x_4064; lean_object* x_4065; lean_object* x_4066; lean_object* x_4067; lean_object* x_4068; 
x_4060 = lean_ctor_get(x_4059, 0);
lean_inc(x_4060);
x_4061 = lean_ctor_get(x_4059, 1);
lean_inc(x_4061);
if (lean_is_exclusive(x_4059)) {
 lean_ctor_release(x_4059, 0);
 lean_ctor_release(x_4059, 1);
 x_4062 = x_4059;
} else {
 lean_dec_ref(x_4059);
 x_4062 = lean_box(0);
}
x_4063 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4063, 0, x_4060);
x_4064 = 1;
x_4065 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4065, 0, x_4055);
lean_ctor_set(x_4065, 1, x_4063);
lean_ctor_set_uint8(x_4065, sizeof(void*)*2, x_4064);
x_4066 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4066, 0, x_4065);
x_4067 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4067, 0, x_4066);
if (lean_is_scalar(x_4062)) {
 x_4068 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4068 = x_4062;
}
lean_ctor_set(x_4068, 0, x_4067);
lean_ctor_set(x_4068, 1, x_4061);
return x_4068;
}
else
{
lean_object* x_4069; lean_object* x_4070; lean_object* x_4071; lean_object* x_4072; 
lean_dec(x_4055);
x_4069 = lean_ctor_get(x_4059, 0);
lean_inc(x_4069);
x_4070 = lean_ctor_get(x_4059, 1);
lean_inc(x_4070);
if (lean_is_exclusive(x_4059)) {
 lean_ctor_release(x_4059, 0);
 lean_ctor_release(x_4059, 1);
 x_4071 = x_4059;
} else {
 lean_dec_ref(x_4059);
 x_4071 = lean_box(0);
}
if (lean_is_scalar(x_4071)) {
 x_4072 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4072 = x_4071;
}
lean_ctor_set(x_4072, 0, x_4069);
lean_ctor_set(x_4072, 1, x_4070);
return x_4072;
}
}
else
{
lean_object* x_4073; lean_object* x_4074; lean_object* x_4075; lean_object* x_4076; 
lean_dec(x_4050);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4073 = lean_ctor_get(x_4054, 0);
lean_inc(x_4073);
x_4074 = lean_ctor_get(x_4054, 1);
lean_inc(x_4074);
if (lean_is_exclusive(x_4054)) {
 lean_ctor_release(x_4054, 0);
 lean_ctor_release(x_4054, 1);
 x_4075 = x_4054;
} else {
 lean_dec_ref(x_4054);
 x_4075 = lean_box(0);
}
if (lean_is_scalar(x_4075)) {
 x_4076 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4076 = x_4075;
}
lean_ctor_set(x_4076, 0, x_4073);
lean_ctor_set(x_4076, 1, x_4074);
return x_4076;
}
}
}
else
{
lean_object* x_4110; lean_object* x_4111; lean_object* x_4112; lean_object* x_4113; 
lean_dec(x_4042);
lean_dec(x_4041);
lean_dec(x_4040);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4110 = lean_ctor_get(x_4044, 0);
lean_inc(x_4110);
x_4111 = lean_ctor_get(x_4044, 1);
lean_inc(x_4111);
if (lean_is_exclusive(x_4044)) {
 lean_ctor_release(x_4044, 0);
 lean_ctor_release(x_4044, 1);
 x_4112 = x_4044;
} else {
 lean_dec_ref(x_4044);
 x_4112 = lean_box(0);
}
if (lean_is_scalar(x_4112)) {
 x_4113 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4113 = x_4112;
}
lean_ctor_set(x_4113, 0, x_4110);
lean_ctor_set(x_4113, 1, x_4111);
return x_4113;
}
}
else
{
lean_object* x_4114; lean_object* x_4115; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4114 = lean_box(0);
x_4115 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4115, 0, x_4114);
lean_ctor_set(x_4115, 1, x_2735);
return x_4115;
}
}
else
{
lean_object* x_4116; lean_object* x_4117; lean_object* x_4118; lean_object* x_4119; lean_object* x_4120; lean_object* x_4121; lean_object* x_4122; lean_object* x_4123; lean_object* x_4124; 
lean_dec(x_2736);
x_4116 = lean_unsigned_to_nat(2u);
x_4117 = lean_array_fget(x_3682, x_4116);
x_4118 = lean_unsigned_to_nat(3u);
x_4119 = lean_array_fget(x_3682, x_4118);
lean_dec(x_3682);
x_4120 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4121 = lean_array_push(x_4120, x_4117);
x_4122 = lean_array_push(x_4121, x_4119);
x_4123 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4124 = l_Lean_Meta_mkAppM(x_4123, x_4122, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4124) == 0)
{
lean_object* x_4125; lean_object* x_4126; lean_object* x_4127; 
x_4125 = lean_ctor_get(x_4124, 0);
lean_inc(x_4125);
x_4126 = lean_ctor_get(x_4124, 1);
lean_inc(x_4126);
lean_dec(x_4124);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4125);
x_4127 = lean_infer_type(x_4125, x_5, x_6, x_7, x_8, x_4126);
if (lean_obj_tag(x_4127) == 0)
{
lean_object* x_4128; lean_object* x_4129; lean_object* x_4130; uint8_t x_4131; 
x_4128 = lean_ctor_get(x_4127, 0);
lean_inc(x_4128);
x_4129 = lean_ctor_get(x_4127, 1);
lean_inc(x_4129);
lean_dec(x_4127);
x_4130 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_4131 = l_Lean_Expr_isAppOfArity(x_4128, x_4130, x_4118);
if (x_4131 == 0)
{
lean_object* x_4132; lean_object* x_4133; lean_object* x_4134; lean_object* x_4135; 
lean_dec(x_4128);
lean_dec(x_4125);
lean_dec(x_1);
x_4132 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4133 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_4132, x_5, x_6, x_7, x_8, x_4129);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4134 = lean_ctor_get(x_4133, 0);
lean_inc(x_4134);
x_4135 = lean_ctor_get(x_4133, 1);
lean_inc(x_4135);
lean_dec(x_4133);
x_10 = x_4134;
x_11 = x_4135;
goto block_18;
}
else
{
lean_object* x_4136; lean_object* x_4137; lean_object* x_4138; lean_object* x_4139; 
x_4136 = l_Lean_Expr_appFn_x21(x_4128);
x_4137 = l_Lean_Expr_appArg_x21(x_4136);
lean_dec(x_4136);
x_4138 = l_Lean_Expr_appArg_x21(x_4128);
lean_dec(x_4128);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4139 = l_Lean_Meta_isExprDefEq(x_1, x_4137, x_5, x_6, x_7, x_8, x_4129);
if (lean_obj_tag(x_4139) == 0)
{
lean_object* x_4140; uint8_t x_4141; 
x_4140 = lean_ctor_get(x_4139, 0);
lean_inc(x_4140);
x_4141 = lean_unbox(x_4140);
lean_dec(x_4140);
if (x_4141 == 0)
{
lean_object* x_4142; lean_object* x_4143; lean_object* x_4144; lean_object* x_4145; lean_object* x_4146; 
lean_dec(x_4138);
lean_dec(x_4125);
x_4142 = lean_ctor_get(x_4139, 1);
lean_inc(x_4142);
lean_dec(x_4139);
x_4143 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4144 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_4143, x_5, x_6, x_7, x_8, x_4142);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4145 = lean_ctor_get(x_4144, 0);
lean_inc(x_4145);
x_4146 = lean_ctor_get(x_4144, 1);
lean_inc(x_4146);
lean_dec(x_4144);
x_10 = x_4145;
x_11 = x_4146;
goto block_18;
}
else
{
lean_object* x_4147; lean_object* x_4148; lean_object* x_4149; uint8_t x_4150; lean_object* x_4151; lean_object* x_4152; lean_object* x_4153; lean_object* x_4154; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4147 = lean_ctor_get(x_4139, 1);
lean_inc(x_4147);
if (lean_is_exclusive(x_4139)) {
 lean_ctor_release(x_4139, 0);
 lean_ctor_release(x_4139, 1);
 x_4148 = x_4139;
} else {
 lean_dec_ref(x_4139);
 x_4148 = lean_box(0);
}
x_4149 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4149, 0, x_4125);
x_4150 = 1;
x_4151 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4151, 0, x_4138);
lean_ctor_set(x_4151, 1, x_4149);
lean_ctor_set_uint8(x_4151, sizeof(void*)*2, x_4150);
x_4152 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4152, 0, x_4151);
x_4153 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4153, 0, x_4152);
if (lean_is_scalar(x_4148)) {
 x_4154 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4154 = x_4148;
}
lean_ctor_set(x_4154, 0, x_4153);
lean_ctor_set(x_4154, 1, x_4147);
return x_4154;
}
}
else
{
lean_object* x_4155; lean_object* x_4156; 
lean_dec(x_4138);
lean_dec(x_4125);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4155 = lean_ctor_get(x_4139, 0);
lean_inc(x_4155);
x_4156 = lean_ctor_get(x_4139, 1);
lean_inc(x_4156);
lean_dec(x_4139);
x_10 = x_4155;
x_11 = x_4156;
goto block_18;
}
}
}
else
{
lean_object* x_4157; lean_object* x_4158; 
lean_dec(x_4125);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4157 = lean_ctor_get(x_4127, 0);
lean_inc(x_4157);
x_4158 = lean_ctor_get(x_4127, 1);
lean_inc(x_4158);
lean_dec(x_4127);
x_10 = x_4157;
x_11 = x_4158;
goto block_18;
}
}
else
{
lean_object* x_4159; lean_object* x_4160; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4159 = lean_ctor_get(x_4124, 0);
lean_inc(x_4159);
x_4160 = lean_ctor_get(x_4124, 1);
lean_inc(x_4160);
lean_dec(x_4124);
x_10 = x_4159;
x_11 = x_4160;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_4161; uint8_t x_4162; 
lean_dec(x_3684);
x_4161 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47;
x_4162 = lean_string_dec_eq(x_3683, x_4161);
lean_dec(x_3683);
if (x_4162 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4163; lean_object* x_4164; lean_object* x_4165; uint8_t x_4166; lean_object* x_4167; 
x_4163 = lean_ctor_get(x_2736, 0);
lean_inc(x_4163);
x_4164 = lean_ctor_get(x_2736, 1);
lean_inc(x_4164);
x_4165 = lean_ctor_get(x_2736, 2);
lean_inc(x_4165);
x_4166 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4164);
x_4167 = l_Lean_Meta_isProp(x_4164, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4167) == 0)
{
lean_object* x_4168; lean_object* x_4169; lean_object* x_4170; uint8_t x_4201; 
x_4168 = lean_ctor_get(x_4167, 0);
lean_inc(x_4168);
x_4169 = lean_ctor_get(x_4167, 1);
lean_inc(x_4169);
lean_dec(x_4167);
x_4201 = lean_unbox(x_4168);
lean_dec(x_4168);
if (x_4201 == 0)
{
lean_object* x_4202; 
x_4202 = lean_box(0);
x_4170 = x_4202;
goto block_4200;
}
else
{
uint8_t x_4203; 
x_4203 = l_Lean_Expr_hasLooseBVars(x_4165);
if (x_4203 == 0)
{
lean_object* x_4204; lean_object* x_4205; lean_object* x_4206; lean_object* x_4207; lean_object* x_4208; lean_object* x_4209; 
lean_dec(x_4163);
lean_inc(x_4165);
x_4204 = l_Lean_mkNot(x_4165);
x_4205 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4206 = lean_array_push(x_4205, x_4164);
lean_inc(x_4206);
x_4207 = lean_array_push(x_4206, x_4204);
x_4208 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4209 = l_Lean_Meta_mkAppM(x_4208, x_4207, x_5, x_6, x_7, x_8, x_4169);
if (lean_obj_tag(x_4209) == 0)
{
lean_object* x_4210; lean_object* x_4211; lean_object* x_4212; lean_object* x_4213; lean_object* x_4214; 
x_4210 = lean_ctor_get(x_4209, 0);
lean_inc(x_4210);
x_4211 = lean_ctor_get(x_4209, 1);
lean_inc(x_4211);
lean_dec(x_4209);
x_4212 = lean_array_push(x_4206, x_4165);
x_4213 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4214 = l_Lean_Meta_mkAppM(x_4213, x_4212, x_5, x_6, x_7, x_8, x_4211);
if (lean_obj_tag(x_4214) == 0)
{
lean_object* x_4215; lean_object* x_4216; lean_object* x_4217; lean_object* x_4218; uint8_t x_4219; lean_object* x_4220; lean_object* x_4221; lean_object* x_4222; lean_object* x_4223; 
x_4215 = lean_ctor_get(x_4214, 0);
lean_inc(x_4215);
x_4216 = lean_ctor_get(x_4214, 1);
lean_inc(x_4216);
if (lean_is_exclusive(x_4214)) {
 lean_ctor_release(x_4214, 0);
 lean_ctor_release(x_4214, 1);
 x_4217 = x_4214;
} else {
 lean_dec_ref(x_4214);
 x_4217 = lean_box(0);
}
x_4218 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4218, 0, x_4215);
x_4219 = 1;
x_4220 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4220, 0, x_4210);
lean_ctor_set(x_4220, 1, x_4218);
lean_ctor_set_uint8(x_4220, sizeof(void*)*2, x_4219);
x_4221 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4221, 0, x_4220);
x_4222 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4222, 0, x_4221);
if (lean_is_scalar(x_4217)) {
 x_4223 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4223 = x_4217;
}
lean_ctor_set(x_4223, 0, x_4222);
lean_ctor_set(x_4223, 1, x_4216);
return x_4223;
}
else
{
lean_object* x_4224; lean_object* x_4225; lean_object* x_4226; lean_object* x_4227; 
lean_dec(x_4210);
x_4224 = lean_ctor_get(x_4214, 0);
lean_inc(x_4224);
x_4225 = lean_ctor_get(x_4214, 1);
lean_inc(x_4225);
if (lean_is_exclusive(x_4214)) {
 lean_ctor_release(x_4214, 0);
 lean_ctor_release(x_4214, 1);
 x_4226 = x_4214;
} else {
 lean_dec_ref(x_4214);
 x_4226 = lean_box(0);
}
if (lean_is_scalar(x_4226)) {
 x_4227 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4227 = x_4226;
}
lean_ctor_set(x_4227, 0, x_4224);
lean_ctor_set(x_4227, 1, x_4225);
return x_4227;
}
}
else
{
lean_object* x_4228; lean_object* x_4229; lean_object* x_4230; lean_object* x_4231; 
lean_dec(x_4206);
lean_dec(x_4165);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4228 = lean_ctor_get(x_4209, 0);
lean_inc(x_4228);
x_4229 = lean_ctor_get(x_4209, 1);
lean_inc(x_4229);
if (lean_is_exclusive(x_4209)) {
 lean_ctor_release(x_4209, 0);
 lean_ctor_release(x_4209, 1);
 x_4230 = x_4209;
} else {
 lean_dec_ref(x_4209);
 x_4230 = lean_box(0);
}
if (lean_is_scalar(x_4230)) {
 x_4231 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4231 = x_4230;
}
lean_ctor_set(x_4231, 0, x_4228);
lean_ctor_set(x_4231, 1, x_4229);
return x_4231;
}
}
else
{
lean_object* x_4232; 
x_4232 = lean_box(0);
x_4170 = x_4232;
goto block_4200;
}
}
block_4200:
{
lean_object* x_4171; lean_object* x_4172; lean_object* x_4173; lean_object* x_4174; lean_object* x_4175; lean_object* x_4176; lean_object* x_4177; 
lean_dec(x_4170);
lean_inc(x_4165);
x_4171 = l_Lean_mkNot(x_4165);
lean_inc(x_4164);
lean_inc(x_4163);
x_4172 = l_Lean_Expr_lam___override(x_4163, x_4164, x_4171, x_4166);
x_4173 = l_Lean_Expr_lam___override(x_4163, x_4164, x_4165, x_4166);
x_4174 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4175 = lean_array_push(x_4174, x_4172);
x_4176 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4177 = l_Lean_Meta_mkAppM(x_4176, x_4175, x_5, x_6, x_7, x_8, x_4169);
if (lean_obj_tag(x_4177) == 0)
{
lean_object* x_4178; lean_object* x_4179; lean_object* x_4180; lean_object* x_4181; lean_object* x_4182; 
x_4178 = lean_ctor_get(x_4177, 0);
lean_inc(x_4178);
x_4179 = lean_ctor_get(x_4177, 1);
lean_inc(x_4179);
lean_dec(x_4177);
x_4180 = lean_array_push(x_4174, x_4173);
x_4181 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4182 = l_Lean_Meta_mkAppM(x_4181, x_4180, x_5, x_6, x_7, x_8, x_4179);
if (lean_obj_tag(x_4182) == 0)
{
lean_object* x_4183; lean_object* x_4184; lean_object* x_4185; lean_object* x_4186; uint8_t x_4187; lean_object* x_4188; lean_object* x_4189; lean_object* x_4190; lean_object* x_4191; 
x_4183 = lean_ctor_get(x_4182, 0);
lean_inc(x_4183);
x_4184 = lean_ctor_get(x_4182, 1);
lean_inc(x_4184);
if (lean_is_exclusive(x_4182)) {
 lean_ctor_release(x_4182, 0);
 lean_ctor_release(x_4182, 1);
 x_4185 = x_4182;
} else {
 lean_dec_ref(x_4182);
 x_4185 = lean_box(0);
}
x_4186 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4186, 0, x_4183);
x_4187 = 1;
x_4188 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4188, 0, x_4178);
lean_ctor_set(x_4188, 1, x_4186);
lean_ctor_set_uint8(x_4188, sizeof(void*)*2, x_4187);
x_4189 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4189, 0, x_4188);
x_4190 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4190, 0, x_4189);
if (lean_is_scalar(x_4185)) {
 x_4191 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4191 = x_4185;
}
lean_ctor_set(x_4191, 0, x_4190);
lean_ctor_set(x_4191, 1, x_4184);
return x_4191;
}
else
{
lean_object* x_4192; lean_object* x_4193; lean_object* x_4194; lean_object* x_4195; 
lean_dec(x_4178);
x_4192 = lean_ctor_get(x_4182, 0);
lean_inc(x_4192);
x_4193 = lean_ctor_get(x_4182, 1);
lean_inc(x_4193);
if (lean_is_exclusive(x_4182)) {
 lean_ctor_release(x_4182, 0);
 lean_ctor_release(x_4182, 1);
 x_4194 = x_4182;
} else {
 lean_dec_ref(x_4182);
 x_4194 = lean_box(0);
}
if (lean_is_scalar(x_4194)) {
 x_4195 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4195 = x_4194;
}
lean_ctor_set(x_4195, 0, x_4192);
lean_ctor_set(x_4195, 1, x_4193);
return x_4195;
}
}
else
{
lean_object* x_4196; lean_object* x_4197; lean_object* x_4198; lean_object* x_4199; 
lean_dec(x_4173);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4196 = lean_ctor_get(x_4177, 0);
lean_inc(x_4196);
x_4197 = lean_ctor_get(x_4177, 1);
lean_inc(x_4197);
if (lean_is_exclusive(x_4177)) {
 lean_ctor_release(x_4177, 0);
 lean_ctor_release(x_4177, 1);
 x_4198 = x_4177;
} else {
 lean_dec_ref(x_4177);
 x_4198 = lean_box(0);
}
if (lean_is_scalar(x_4198)) {
 x_4199 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4199 = x_4198;
}
lean_ctor_set(x_4199, 0, x_4196);
lean_ctor_set(x_4199, 1, x_4197);
return x_4199;
}
}
}
else
{
lean_object* x_4233; lean_object* x_4234; lean_object* x_4235; lean_object* x_4236; 
lean_dec(x_4165);
lean_dec(x_4164);
lean_dec(x_4163);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4233 = lean_ctor_get(x_4167, 0);
lean_inc(x_4233);
x_4234 = lean_ctor_get(x_4167, 1);
lean_inc(x_4234);
if (lean_is_exclusive(x_4167)) {
 lean_ctor_release(x_4167, 0);
 lean_ctor_release(x_4167, 1);
 x_4235 = x_4167;
} else {
 lean_dec_ref(x_4167);
 x_4235 = lean_box(0);
}
if (lean_is_scalar(x_4235)) {
 x_4236 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4236 = x_4235;
}
lean_ctor_set(x_4236, 0, x_4233);
lean_ctor_set(x_4236, 1, x_4234);
return x_4236;
}
}
else
{
lean_object* x_4237; lean_object* x_4238; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4237 = lean_box(0);
x_4238 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4238, 0, x_4237);
lean_ctor_set(x_4238, 1, x_2735);
return x_4238;
}
}
else
{
lean_object* x_4239; lean_object* x_4240; uint8_t x_4241; 
x_4239 = lean_array_get_size(x_3682);
x_4240 = lean_unsigned_to_nat(4u);
x_4241 = lean_nat_dec_eq(x_4239, x_4240);
lean_dec(x_4239);
if (x_4241 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4242; lean_object* x_4243; lean_object* x_4244; uint8_t x_4245; lean_object* x_4246; 
x_4242 = lean_ctor_get(x_2736, 0);
lean_inc(x_4242);
x_4243 = lean_ctor_get(x_2736, 1);
lean_inc(x_4243);
x_4244 = lean_ctor_get(x_2736, 2);
lean_inc(x_4244);
x_4245 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4243);
x_4246 = l_Lean_Meta_isProp(x_4243, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4246) == 0)
{
lean_object* x_4247; lean_object* x_4248; lean_object* x_4249; uint8_t x_4280; 
x_4247 = lean_ctor_get(x_4246, 0);
lean_inc(x_4247);
x_4248 = lean_ctor_get(x_4246, 1);
lean_inc(x_4248);
lean_dec(x_4246);
x_4280 = lean_unbox(x_4247);
lean_dec(x_4247);
if (x_4280 == 0)
{
lean_object* x_4281; 
x_4281 = lean_box(0);
x_4249 = x_4281;
goto block_4279;
}
else
{
uint8_t x_4282; 
x_4282 = l_Lean_Expr_hasLooseBVars(x_4244);
if (x_4282 == 0)
{
lean_object* x_4283; lean_object* x_4284; lean_object* x_4285; lean_object* x_4286; lean_object* x_4287; lean_object* x_4288; 
lean_dec(x_4242);
lean_inc(x_4244);
x_4283 = l_Lean_mkNot(x_4244);
x_4284 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4285 = lean_array_push(x_4284, x_4243);
lean_inc(x_4285);
x_4286 = lean_array_push(x_4285, x_4283);
x_4287 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4288 = l_Lean_Meta_mkAppM(x_4287, x_4286, x_5, x_6, x_7, x_8, x_4248);
if (lean_obj_tag(x_4288) == 0)
{
lean_object* x_4289; lean_object* x_4290; lean_object* x_4291; lean_object* x_4292; lean_object* x_4293; 
x_4289 = lean_ctor_get(x_4288, 0);
lean_inc(x_4289);
x_4290 = lean_ctor_get(x_4288, 1);
lean_inc(x_4290);
lean_dec(x_4288);
x_4291 = lean_array_push(x_4285, x_4244);
x_4292 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4293 = l_Lean_Meta_mkAppM(x_4292, x_4291, x_5, x_6, x_7, x_8, x_4290);
if (lean_obj_tag(x_4293) == 0)
{
lean_object* x_4294; lean_object* x_4295; lean_object* x_4296; lean_object* x_4297; uint8_t x_4298; lean_object* x_4299; lean_object* x_4300; lean_object* x_4301; lean_object* x_4302; 
x_4294 = lean_ctor_get(x_4293, 0);
lean_inc(x_4294);
x_4295 = lean_ctor_get(x_4293, 1);
lean_inc(x_4295);
if (lean_is_exclusive(x_4293)) {
 lean_ctor_release(x_4293, 0);
 lean_ctor_release(x_4293, 1);
 x_4296 = x_4293;
} else {
 lean_dec_ref(x_4293);
 x_4296 = lean_box(0);
}
x_4297 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4297, 0, x_4294);
x_4298 = 1;
x_4299 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4299, 0, x_4289);
lean_ctor_set(x_4299, 1, x_4297);
lean_ctor_set_uint8(x_4299, sizeof(void*)*2, x_4298);
x_4300 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4300, 0, x_4299);
x_4301 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4301, 0, x_4300);
if (lean_is_scalar(x_4296)) {
 x_4302 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4302 = x_4296;
}
lean_ctor_set(x_4302, 0, x_4301);
lean_ctor_set(x_4302, 1, x_4295);
return x_4302;
}
else
{
lean_object* x_4303; lean_object* x_4304; lean_object* x_4305; lean_object* x_4306; 
lean_dec(x_4289);
x_4303 = lean_ctor_get(x_4293, 0);
lean_inc(x_4303);
x_4304 = lean_ctor_get(x_4293, 1);
lean_inc(x_4304);
if (lean_is_exclusive(x_4293)) {
 lean_ctor_release(x_4293, 0);
 lean_ctor_release(x_4293, 1);
 x_4305 = x_4293;
} else {
 lean_dec_ref(x_4293);
 x_4305 = lean_box(0);
}
if (lean_is_scalar(x_4305)) {
 x_4306 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4306 = x_4305;
}
lean_ctor_set(x_4306, 0, x_4303);
lean_ctor_set(x_4306, 1, x_4304);
return x_4306;
}
}
else
{
lean_object* x_4307; lean_object* x_4308; lean_object* x_4309; lean_object* x_4310; 
lean_dec(x_4285);
lean_dec(x_4244);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4307 = lean_ctor_get(x_4288, 0);
lean_inc(x_4307);
x_4308 = lean_ctor_get(x_4288, 1);
lean_inc(x_4308);
if (lean_is_exclusive(x_4288)) {
 lean_ctor_release(x_4288, 0);
 lean_ctor_release(x_4288, 1);
 x_4309 = x_4288;
} else {
 lean_dec_ref(x_4288);
 x_4309 = lean_box(0);
}
if (lean_is_scalar(x_4309)) {
 x_4310 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4310 = x_4309;
}
lean_ctor_set(x_4310, 0, x_4307);
lean_ctor_set(x_4310, 1, x_4308);
return x_4310;
}
}
else
{
lean_object* x_4311; 
x_4311 = lean_box(0);
x_4249 = x_4311;
goto block_4279;
}
}
block_4279:
{
lean_object* x_4250; lean_object* x_4251; lean_object* x_4252; lean_object* x_4253; lean_object* x_4254; lean_object* x_4255; lean_object* x_4256; 
lean_dec(x_4249);
lean_inc(x_4244);
x_4250 = l_Lean_mkNot(x_4244);
lean_inc(x_4243);
lean_inc(x_4242);
x_4251 = l_Lean_Expr_lam___override(x_4242, x_4243, x_4250, x_4245);
x_4252 = l_Lean_Expr_lam___override(x_4242, x_4243, x_4244, x_4245);
x_4253 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4254 = lean_array_push(x_4253, x_4251);
x_4255 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4256 = l_Lean_Meta_mkAppM(x_4255, x_4254, x_5, x_6, x_7, x_8, x_4248);
if (lean_obj_tag(x_4256) == 0)
{
lean_object* x_4257; lean_object* x_4258; lean_object* x_4259; lean_object* x_4260; lean_object* x_4261; 
x_4257 = lean_ctor_get(x_4256, 0);
lean_inc(x_4257);
x_4258 = lean_ctor_get(x_4256, 1);
lean_inc(x_4258);
lean_dec(x_4256);
x_4259 = lean_array_push(x_4253, x_4252);
x_4260 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4261 = l_Lean_Meta_mkAppM(x_4260, x_4259, x_5, x_6, x_7, x_8, x_4258);
if (lean_obj_tag(x_4261) == 0)
{
lean_object* x_4262; lean_object* x_4263; lean_object* x_4264; lean_object* x_4265; uint8_t x_4266; lean_object* x_4267; lean_object* x_4268; lean_object* x_4269; lean_object* x_4270; 
x_4262 = lean_ctor_get(x_4261, 0);
lean_inc(x_4262);
x_4263 = lean_ctor_get(x_4261, 1);
lean_inc(x_4263);
if (lean_is_exclusive(x_4261)) {
 lean_ctor_release(x_4261, 0);
 lean_ctor_release(x_4261, 1);
 x_4264 = x_4261;
} else {
 lean_dec_ref(x_4261);
 x_4264 = lean_box(0);
}
x_4265 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4265, 0, x_4262);
x_4266 = 1;
x_4267 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4267, 0, x_4257);
lean_ctor_set(x_4267, 1, x_4265);
lean_ctor_set_uint8(x_4267, sizeof(void*)*2, x_4266);
x_4268 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4268, 0, x_4267);
x_4269 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4269, 0, x_4268);
if (lean_is_scalar(x_4264)) {
 x_4270 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4270 = x_4264;
}
lean_ctor_set(x_4270, 0, x_4269);
lean_ctor_set(x_4270, 1, x_4263);
return x_4270;
}
else
{
lean_object* x_4271; lean_object* x_4272; lean_object* x_4273; lean_object* x_4274; 
lean_dec(x_4257);
x_4271 = lean_ctor_get(x_4261, 0);
lean_inc(x_4271);
x_4272 = lean_ctor_get(x_4261, 1);
lean_inc(x_4272);
if (lean_is_exclusive(x_4261)) {
 lean_ctor_release(x_4261, 0);
 lean_ctor_release(x_4261, 1);
 x_4273 = x_4261;
} else {
 lean_dec_ref(x_4261);
 x_4273 = lean_box(0);
}
if (lean_is_scalar(x_4273)) {
 x_4274 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4274 = x_4273;
}
lean_ctor_set(x_4274, 0, x_4271);
lean_ctor_set(x_4274, 1, x_4272);
return x_4274;
}
}
else
{
lean_object* x_4275; lean_object* x_4276; lean_object* x_4277; lean_object* x_4278; 
lean_dec(x_4252);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4275 = lean_ctor_get(x_4256, 0);
lean_inc(x_4275);
x_4276 = lean_ctor_get(x_4256, 1);
lean_inc(x_4276);
if (lean_is_exclusive(x_4256)) {
 lean_ctor_release(x_4256, 0);
 lean_ctor_release(x_4256, 1);
 x_4277 = x_4256;
} else {
 lean_dec_ref(x_4256);
 x_4277 = lean_box(0);
}
if (lean_is_scalar(x_4277)) {
 x_4278 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4278 = x_4277;
}
lean_ctor_set(x_4278, 0, x_4275);
lean_ctor_set(x_4278, 1, x_4276);
return x_4278;
}
}
}
else
{
lean_object* x_4312; lean_object* x_4313; lean_object* x_4314; lean_object* x_4315; 
lean_dec(x_4244);
lean_dec(x_4243);
lean_dec(x_4242);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4312 = lean_ctor_get(x_4246, 0);
lean_inc(x_4312);
x_4313 = lean_ctor_get(x_4246, 1);
lean_inc(x_4313);
if (lean_is_exclusive(x_4246)) {
 lean_ctor_release(x_4246, 0);
 lean_ctor_release(x_4246, 1);
 x_4314 = x_4246;
} else {
 lean_dec_ref(x_4246);
 x_4314 = lean_box(0);
}
if (lean_is_scalar(x_4314)) {
 x_4315 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4315 = x_4314;
}
lean_ctor_set(x_4315, 0, x_4312);
lean_ctor_set(x_4315, 1, x_4313);
return x_4315;
}
}
else
{
lean_object* x_4316; lean_object* x_4317; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4316 = lean_box(0);
x_4317 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4317, 0, x_4316);
lean_ctor_set(x_4317, 1, x_2735);
return x_4317;
}
}
else
{
lean_object* x_4318; lean_object* x_4319; lean_object* x_4320; lean_object* x_4321; lean_object* x_4322; lean_object* x_4323; lean_object* x_4324; lean_object* x_4325; lean_object* x_4326; 
lean_dec(x_2736);
x_4318 = lean_unsigned_to_nat(2u);
x_4319 = lean_array_fget(x_3682, x_4318);
x_4320 = lean_unsigned_to_nat(3u);
x_4321 = lean_array_fget(x_3682, x_4320);
lean_dec(x_3682);
x_4322 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4323 = lean_array_push(x_4322, x_4319);
x_4324 = lean_array_push(x_4323, x_4321);
x_4325 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4326 = l_Lean_Meta_mkAppM(x_4325, x_4324, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4326) == 0)
{
lean_object* x_4327; lean_object* x_4328; lean_object* x_4329; 
x_4327 = lean_ctor_get(x_4326, 0);
lean_inc(x_4327);
x_4328 = lean_ctor_get(x_4326, 1);
lean_inc(x_4328);
lean_dec(x_4326);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4327);
x_4329 = lean_infer_type(x_4327, x_5, x_6, x_7, x_8, x_4328);
if (lean_obj_tag(x_4329) == 0)
{
lean_object* x_4330; lean_object* x_4331; lean_object* x_4332; uint8_t x_4333; 
x_4330 = lean_ctor_get(x_4329, 0);
lean_inc(x_4330);
x_4331 = lean_ctor_get(x_4329, 1);
lean_inc(x_4331);
lean_dec(x_4329);
x_4332 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_4333 = l_Lean_Expr_isAppOfArity(x_4330, x_4332, x_4320);
if (x_4333 == 0)
{
lean_object* x_4334; lean_object* x_4335; lean_object* x_4336; lean_object* x_4337; 
lean_dec(x_4330);
lean_dec(x_4327);
lean_dec(x_1);
x_4334 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4335 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_4334, x_5, x_6, x_7, x_8, x_4331);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4336 = lean_ctor_get(x_4335, 0);
lean_inc(x_4336);
x_4337 = lean_ctor_get(x_4335, 1);
lean_inc(x_4337);
lean_dec(x_4335);
x_10 = x_4336;
x_11 = x_4337;
goto block_18;
}
else
{
lean_object* x_4338; lean_object* x_4339; lean_object* x_4340; lean_object* x_4341; 
x_4338 = l_Lean_Expr_appFn_x21(x_4330);
x_4339 = l_Lean_Expr_appArg_x21(x_4338);
lean_dec(x_4338);
x_4340 = l_Lean_Expr_appArg_x21(x_4330);
lean_dec(x_4330);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4341 = l_Lean_Meta_isExprDefEq(x_1, x_4339, x_5, x_6, x_7, x_8, x_4331);
if (lean_obj_tag(x_4341) == 0)
{
lean_object* x_4342; uint8_t x_4343; 
x_4342 = lean_ctor_get(x_4341, 0);
lean_inc(x_4342);
x_4343 = lean_unbox(x_4342);
lean_dec(x_4342);
if (x_4343 == 0)
{
lean_object* x_4344; lean_object* x_4345; lean_object* x_4346; lean_object* x_4347; lean_object* x_4348; 
lean_dec(x_4340);
lean_dec(x_4327);
x_4344 = lean_ctor_get(x_4341, 1);
lean_inc(x_4344);
lean_dec(x_4341);
x_4345 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4346 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_4345, x_5, x_6, x_7, x_8, x_4344);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4347 = lean_ctor_get(x_4346, 0);
lean_inc(x_4347);
x_4348 = lean_ctor_get(x_4346, 1);
lean_inc(x_4348);
lean_dec(x_4346);
x_10 = x_4347;
x_11 = x_4348;
goto block_18;
}
else
{
lean_object* x_4349; lean_object* x_4350; lean_object* x_4351; uint8_t x_4352; lean_object* x_4353; lean_object* x_4354; lean_object* x_4355; lean_object* x_4356; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4349 = lean_ctor_get(x_4341, 1);
lean_inc(x_4349);
if (lean_is_exclusive(x_4341)) {
 lean_ctor_release(x_4341, 0);
 lean_ctor_release(x_4341, 1);
 x_4350 = x_4341;
} else {
 lean_dec_ref(x_4341);
 x_4350 = lean_box(0);
}
x_4351 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4351, 0, x_4327);
x_4352 = 1;
x_4353 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4353, 0, x_4340);
lean_ctor_set(x_4353, 1, x_4351);
lean_ctor_set_uint8(x_4353, sizeof(void*)*2, x_4352);
x_4354 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4354, 0, x_4353);
x_4355 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4355, 0, x_4354);
if (lean_is_scalar(x_4350)) {
 x_4356 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4356 = x_4350;
}
lean_ctor_set(x_4356, 0, x_4355);
lean_ctor_set(x_4356, 1, x_4349);
return x_4356;
}
}
else
{
lean_object* x_4357; lean_object* x_4358; 
lean_dec(x_4340);
lean_dec(x_4327);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4357 = lean_ctor_get(x_4341, 0);
lean_inc(x_4357);
x_4358 = lean_ctor_get(x_4341, 1);
lean_inc(x_4358);
lean_dec(x_4341);
x_10 = x_4357;
x_11 = x_4358;
goto block_18;
}
}
}
else
{
lean_object* x_4359; lean_object* x_4360; 
lean_dec(x_4327);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4359 = lean_ctor_get(x_4329, 0);
lean_inc(x_4359);
x_4360 = lean_ctor_get(x_4329, 1);
lean_inc(x_4360);
lean_dec(x_4329);
x_10 = x_4359;
x_11 = x_4360;
goto block_18;
}
}
else
{
lean_object* x_4361; lean_object* x_4362; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4361 = lean_ctor_get(x_4326, 0);
lean_inc(x_4361);
x_4362 = lean_ctor_get(x_4326, 1);
lean_inc(x_4362);
lean_dec(x_4326);
x_10 = x_4361;
x_11 = x_4362;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_4363; uint8_t x_4364; 
lean_dec(x_3684);
x_4363 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50;
x_4364 = lean_string_dec_eq(x_3683, x_4363);
lean_dec(x_3683);
if (x_4364 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4365; lean_object* x_4366; lean_object* x_4367; uint8_t x_4368; lean_object* x_4369; 
x_4365 = lean_ctor_get(x_2736, 0);
lean_inc(x_4365);
x_4366 = lean_ctor_get(x_2736, 1);
lean_inc(x_4366);
x_4367 = lean_ctor_get(x_2736, 2);
lean_inc(x_4367);
x_4368 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4366);
x_4369 = l_Lean_Meta_isProp(x_4366, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4369) == 0)
{
lean_object* x_4370; lean_object* x_4371; lean_object* x_4372; uint8_t x_4403; 
x_4370 = lean_ctor_get(x_4369, 0);
lean_inc(x_4370);
x_4371 = lean_ctor_get(x_4369, 1);
lean_inc(x_4371);
lean_dec(x_4369);
x_4403 = lean_unbox(x_4370);
lean_dec(x_4370);
if (x_4403 == 0)
{
lean_object* x_4404; 
x_4404 = lean_box(0);
x_4372 = x_4404;
goto block_4402;
}
else
{
uint8_t x_4405; 
x_4405 = l_Lean_Expr_hasLooseBVars(x_4367);
if (x_4405 == 0)
{
lean_object* x_4406; lean_object* x_4407; lean_object* x_4408; lean_object* x_4409; lean_object* x_4410; lean_object* x_4411; 
lean_dec(x_4365);
lean_inc(x_4367);
x_4406 = l_Lean_mkNot(x_4367);
x_4407 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4408 = lean_array_push(x_4407, x_4366);
lean_inc(x_4408);
x_4409 = lean_array_push(x_4408, x_4406);
x_4410 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4411 = l_Lean_Meta_mkAppM(x_4410, x_4409, x_5, x_6, x_7, x_8, x_4371);
if (lean_obj_tag(x_4411) == 0)
{
lean_object* x_4412; lean_object* x_4413; lean_object* x_4414; lean_object* x_4415; lean_object* x_4416; 
x_4412 = lean_ctor_get(x_4411, 0);
lean_inc(x_4412);
x_4413 = lean_ctor_get(x_4411, 1);
lean_inc(x_4413);
lean_dec(x_4411);
x_4414 = lean_array_push(x_4408, x_4367);
x_4415 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4416 = l_Lean_Meta_mkAppM(x_4415, x_4414, x_5, x_6, x_7, x_8, x_4413);
if (lean_obj_tag(x_4416) == 0)
{
lean_object* x_4417; lean_object* x_4418; lean_object* x_4419; lean_object* x_4420; uint8_t x_4421; lean_object* x_4422; lean_object* x_4423; lean_object* x_4424; lean_object* x_4425; 
x_4417 = lean_ctor_get(x_4416, 0);
lean_inc(x_4417);
x_4418 = lean_ctor_get(x_4416, 1);
lean_inc(x_4418);
if (lean_is_exclusive(x_4416)) {
 lean_ctor_release(x_4416, 0);
 lean_ctor_release(x_4416, 1);
 x_4419 = x_4416;
} else {
 lean_dec_ref(x_4416);
 x_4419 = lean_box(0);
}
x_4420 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4420, 0, x_4417);
x_4421 = 1;
x_4422 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4422, 0, x_4412);
lean_ctor_set(x_4422, 1, x_4420);
lean_ctor_set_uint8(x_4422, sizeof(void*)*2, x_4421);
x_4423 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4423, 0, x_4422);
x_4424 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4424, 0, x_4423);
if (lean_is_scalar(x_4419)) {
 x_4425 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4425 = x_4419;
}
lean_ctor_set(x_4425, 0, x_4424);
lean_ctor_set(x_4425, 1, x_4418);
return x_4425;
}
else
{
lean_object* x_4426; lean_object* x_4427; lean_object* x_4428; lean_object* x_4429; 
lean_dec(x_4412);
x_4426 = lean_ctor_get(x_4416, 0);
lean_inc(x_4426);
x_4427 = lean_ctor_get(x_4416, 1);
lean_inc(x_4427);
if (lean_is_exclusive(x_4416)) {
 lean_ctor_release(x_4416, 0);
 lean_ctor_release(x_4416, 1);
 x_4428 = x_4416;
} else {
 lean_dec_ref(x_4416);
 x_4428 = lean_box(0);
}
if (lean_is_scalar(x_4428)) {
 x_4429 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4429 = x_4428;
}
lean_ctor_set(x_4429, 0, x_4426);
lean_ctor_set(x_4429, 1, x_4427);
return x_4429;
}
}
else
{
lean_object* x_4430; lean_object* x_4431; lean_object* x_4432; lean_object* x_4433; 
lean_dec(x_4408);
lean_dec(x_4367);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4430 = lean_ctor_get(x_4411, 0);
lean_inc(x_4430);
x_4431 = lean_ctor_get(x_4411, 1);
lean_inc(x_4431);
if (lean_is_exclusive(x_4411)) {
 lean_ctor_release(x_4411, 0);
 lean_ctor_release(x_4411, 1);
 x_4432 = x_4411;
} else {
 lean_dec_ref(x_4411);
 x_4432 = lean_box(0);
}
if (lean_is_scalar(x_4432)) {
 x_4433 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4433 = x_4432;
}
lean_ctor_set(x_4433, 0, x_4430);
lean_ctor_set(x_4433, 1, x_4431);
return x_4433;
}
}
else
{
lean_object* x_4434; 
x_4434 = lean_box(0);
x_4372 = x_4434;
goto block_4402;
}
}
block_4402:
{
lean_object* x_4373; lean_object* x_4374; lean_object* x_4375; lean_object* x_4376; lean_object* x_4377; lean_object* x_4378; lean_object* x_4379; 
lean_dec(x_4372);
lean_inc(x_4367);
x_4373 = l_Lean_mkNot(x_4367);
lean_inc(x_4366);
lean_inc(x_4365);
x_4374 = l_Lean_Expr_lam___override(x_4365, x_4366, x_4373, x_4368);
x_4375 = l_Lean_Expr_lam___override(x_4365, x_4366, x_4367, x_4368);
x_4376 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4377 = lean_array_push(x_4376, x_4374);
x_4378 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4379 = l_Lean_Meta_mkAppM(x_4378, x_4377, x_5, x_6, x_7, x_8, x_4371);
if (lean_obj_tag(x_4379) == 0)
{
lean_object* x_4380; lean_object* x_4381; lean_object* x_4382; lean_object* x_4383; lean_object* x_4384; 
x_4380 = lean_ctor_get(x_4379, 0);
lean_inc(x_4380);
x_4381 = lean_ctor_get(x_4379, 1);
lean_inc(x_4381);
lean_dec(x_4379);
x_4382 = lean_array_push(x_4376, x_4375);
x_4383 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4384 = l_Lean_Meta_mkAppM(x_4383, x_4382, x_5, x_6, x_7, x_8, x_4381);
if (lean_obj_tag(x_4384) == 0)
{
lean_object* x_4385; lean_object* x_4386; lean_object* x_4387; lean_object* x_4388; uint8_t x_4389; lean_object* x_4390; lean_object* x_4391; lean_object* x_4392; lean_object* x_4393; 
x_4385 = lean_ctor_get(x_4384, 0);
lean_inc(x_4385);
x_4386 = lean_ctor_get(x_4384, 1);
lean_inc(x_4386);
if (lean_is_exclusive(x_4384)) {
 lean_ctor_release(x_4384, 0);
 lean_ctor_release(x_4384, 1);
 x_4387 = x_4384;
} else {
 lean_dec_ref(x_4384);
 x_4387 = lean_box(0);
}
x_4388 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4388, 0, x_4385);
x_4389 = 1;
x_4390 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4390, 0, x_4380);
lean_ctor_set(x_4390, 1, x_4388);
lean_ctor_set_uint8(x_4390, sizeof(void*)*2, x_4389);
x_4391 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4391, 0, x_4390);
x_4392 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4392, 0, x_4391);
if (lean_is_scalar(x_4387)) {
 x_4393 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4393 = x_4387;
}
lean_ctor_set(x_4393, 0, x_4392);
lean_ctor_set(x_4393, 1, x_4386);
return x_4393;
}
else
{
lean_object* x_4394; lean_object* x_4395; lean_object* x_4396; lean_object* x_4397; 
lean_dec(x_4380);
x_4394 = lean_ctor_get(x_4384, 0);
lean_inc(x_4394);
x_4395 = lean_ctor_get(x_4384, 1);
lean_inc(x_4395);
if (lean_is_exclusive(x_4384)) {
 lean_ctor_release(x_4384, 0);
 lean_ctor_release(x_4384, 1);
 x_4396 = x_4384;
} else {
 lean_dec_ref(x_4384);
 x_4396 = lean_box(0);
}
if (lean_is_scalar(x_4396)) {
 x_4397 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4397 = x_4396;
}
lean_ctor_set(x_4397, 0, x_4394);
lean_ctor_set(x_4397, 1, x_4395);
return x_4397;
}
}
else
{
lean_object* x_4398; lean_object* x_4399; lean_object* x_4400; lean_object* x_4401; 
lean_dec(x_4375);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4398 = lean_ctor_get(x_4379, 0);
lean_inc(x_4398);
x_4399 = lean_ctor_get(x_4379, 1);
lean_inc(x_4399);
if (lean_is_exclusive(x_4379)) {
 lean_ctor_release(x_4379, 0);
 lean_ctor_release(x_4379, 1);
 x_4400 = x_4379;
} else {
 lean_dec_ref(x_4379);
 x_4400 = lean_box(0);
}
if (lean_is_scalar(x_4400)) {
 x_4401 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4401 = x_4400;
}
lean_ctor_set(x_4401, 0, x_4398);
lean_ctor_set(x_4401, 1, x_4399);
return x_4401;
}
}
}
else
{
lean_object* x_4435; lean_object* x_4436; lean_object* x_4437; lean_object* x_4438; 
lean_dec(x_4367);
lean_dec(x_4366);
lean_dec(x_4365);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4435 = lean_ctor_get(x_4369, 0);
lean_inc(x_4435);
x_4436 = lean_ctor_get(x_4369, 1);
lean_inc(x_4436);
if (lean_is_exclusive(x_4369)) {
 lean_ctor_release(x_4369, 0);
 lean_ctor_release(x_4369, 1);
 x_4437 = x_4369;
} else {
 lean_dec_ref(x_4369);
 x_4437 = lean_box(0);
}
if (lean_is_scalar(x_4437)) {
 x_4438 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4438 = x_4437;
}
lean_ctor_set(x_4438, 0, x_4435);
lean_ctor_set(x_4438, 1, x_4436);
return x_4438;
}
}
else
{
lean_object* x_4439; lean_object* x_4440; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4439 = lean_box(0);
x_4440 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4440, 0, x_4439);
lean_ctor_set(x_4440, 1, x_2735);
return x_4440;
}
}
else
{
lean_object* x_4441; lean_object* x_4442; uint8_t x_4443; 
x_4441 = lean_array_get_size(x_3682);
x_4442 = lean_unsigned_to_nat(4u);
x_4443 = lean_nat_dec_eq(x_4441, x_4442);
lean_dec(x_4441);
if (x_4443 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4444; lean_object* x_4445; lean_object* x_4446; uint8_t x_4447; lean_object* x_4448; 
x_4444 = lean_ctor_get(x_2736, 0);
lean_inc(x_4444);
x_4445 = lean_ctor_get(x_2736, 1);
lean_inc(x_4445);
x_4446 = lean_ctor_get(x_2736, 2);
lean_inc(x_4446);
x_4447 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4445);
x_4448 = l_Lean_Meta_isProp(x_4445, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4448) == 0)
{
lean_object* x_4449; lean_object* x_4450; lean_object* x_4451; uint8_t x_4482; 
x_4449 = lean_ctor_get(x_4448, 0);
lean_inc(x_4449);
x_4450 = lean_ctor_get(x_4448, 1);
lean_inc(x_4450);
lean_dec(x_4448);
x_4482 = lean_unbox(x_4449);
lean_dec(x_4449);
if (x_4482 == 0)
{
lean_object* x_4483; 
x_4483 = lean_box(0);
x_4451 = x_4483;
goto block_4481;
}
else
{
uint8_t x_4484; 
x_4484 = l_Lean_Expr_hasLooseBVars(x_4446);
if (x_4484 == 0)
{
lean_object* x_4485; lean_object* x_4486; lean_object* x_4487; lean_object* x_4488; lean_object* x_4489; lean_object* x_4490; 
lean_dec(x_4444);
lean_inc(x_4446);
x_4485 = l_Lean_mkNot(x_4446);
x_4486 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4487 = lean_array_push(x_4486, x_4445);
lean_inc(x_4487);
x_4488 = lean_array_push(x_4487, x_4485);
x_4489 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4490 = l_Lean_Meta_mkAppM(x_4489, x_4488, x_5, x_6, x_7, x_8, x_4450);
if (lean_obj_tag(x_4490) == 0)
{
lean_object* x_4491; lean_object* x_4492; lean_object* x_4493; lean_object* x_4494; lean_object* x_4495; 
x_4491 = lean_ctor_get(x_4490, 0);
lean_inc(x_4491);
x_4492 = lean_ctor_get(x_4490, 1);
lean_inc(x_4492);
lean_dec(x_4490);
x_4493 = lean_array_push(x_4487, x_4446);
x_4494 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4495 = l_Lean_Meta_mkAppM(x_4494, x_4493, x_5, x_6, x_7, x_8, x_4492);
if (lean_obj_tag(x_4495) == 0)
{
lean_object* x_4496; lean_object* x_4497; lean_object* x_4498; lean_object* x_4499; uint8_t x_4500; lean_object* x_4501; lean_object* x_4502; lean_object* x_4503; lean_object* x_4504; 
x_4496 = lean_ctor_get(x_4495, 0);
lean_inc(x_4496);
x_4497 = lean_ctor_get(x_4495, 1);
lean_inc(x_4497);
if (lean_is_exclusive(x_4495)) {
 lean_ctor_release(x_4495, 0);
 lean_ctor_release(x_4495, 1);
 x_4498 = x_4495;
} else {
 lean_dec_ref(x_4495);
 x_4498 = lean_box(0);
}
x_4499 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4499, 0, x_4496);
x_4500 = 1;
x_4501 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4501, 0, x_4491);
lean_ctor_set(x_4501, 1, x_4499);
lean_ctor_set_uint8(x_4501, sizeof(void*)*2, x_4500);
x_4502 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4502, 0, x_4501);
x_4503 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4503, 0, x_4502);
if (lean_is_scalar(x_4498)) {
 x_4504 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4504 = x_4498;
}
lean_ctor_set(x_4504, 0, x_4503);
lean_ctor_set(x_4504, 1, x_4497);
return x_4504;
}
else
{
lean_object* x_4505; lean_object* x_4506; lean_object* x_4507; lean_object* x_4508; 
lean_dec(x_4491);
x_4505 = lean_ctor_get(x_4495, 0);
lean_inc(x_4505);
x_4506 = lean_ctor_get(x_4495, 1);
lean_inc(x_4506);
if (lean_is_exclusive(x_4495)) {
 lean_ctor_release(x_4495, 0);
 lean_ctor_release(x_4495, 1);
 x_4507 = x_4495;
} else {
 lean_dec_ref(x_4495);
 x_4507 = lean_box(0);
}
if (lean_is_scalar(x_4507)) {
 x_4508 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4508 = x_4507;
}
lean_ctor_set(x_4508, 0, x_4505);
lean_ctor_set(x_4508, 1, x_4506);
return x_4508;
}
}
else
{
lean_object* x_4509; lean_object* x_4510; lean_object* x_4511; lean_object* x_4512; 
lean_dec(x_4487);
lean_dec(x_4446);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4509 = lean_ctor_get(x_4490, 0);
lean_inc(x_4509);
x_4510 = lean_ctor_get(x_4490, 1);
lean_inc(x_4510);
if (lean_is_exclusive(x_4490)) {
 lean_ctor_release(x_4490, 0);
 lean_ctor_release(x_4490, 1);
 x_4511 = x_4490;
} else {
 lean_dec_ref(x_4490);
 x_4511 = lean_box(0);
}
if (lean_is_scalar(x_4511)) {
 x_4512 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4512 = x_4511;
}
lean_ctor_set(x_4512, 0, x_4509);
lean_ctor_set(x_4512, 1, x_4510);
return x_4512;
}
}
else
{
lean_object* x_4513; 
x_4513 = lean_box(0);
x_4451 = x_4513;
goto block_4481;
}
}
block_4481:
{
lean_object* x_4452; lean_object* x_4453; lean_object* x_4454; lean_object* x_4455; lean_object* x_4456; lean_object* x_4457; lean_object* x_4458; 
lean_dec(x_4451);
lean_inc(x_4446);
x_4452 = l_Lean_mkNot(x_4446);
lean_inc(x_4445);
lean_inc(x_4444);
x_4453 = l_Lean_Expr_lam___override(x_4444, x_4445, x_4452, x_4447);
x_4454 = l_Lean_Expr_lam___override(x_4444, x_4445, x_4446, x_4447);
x_4455 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4456 = lean_array_push(x_4455, x_4453);
x_4457 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4458 = l_Lean_Meta_mkAppM(x_4457, x_4456, x_5, x_6, x_7, x_8, x_4450);
if (lean_obj_tag(x_4458) == 0)
{
lean_object* x_4459; lean_object* x_4460; lean_object* x_4461; lean_object* x_4462; lean_object* x_4463; 
x_4459 = lean_ctor_get(x_4458, 0);
lean_inc(x_4459);
x_4460 = lean_ctor_get(x_4458, 1);
lean_inc(x_4460);
lean_dec(x_4458);
x_4461 = lean_array_push(x_4455, x_4454);
x_4462 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4463 = l_Lean_Meta_mkAppM(x_4462, x_4461, x_5, x_6, x_7, x_8, x_4460);
if (lean_obj_tag(x_4463) == 0)
{
lean_object* x_4464; lean_object* x_4465; lean_object* x_4466; lean_object* x_4467; uint8_t x_4468; lean_object* x_4469; lean_object* x_4470; lean_object* x_4471; lean_object* x_4472; 
x_4464 = lean_ctor_get(x_4463, 0);
lean_inc(x_4464);
x_4465 = lean_ctor_get(x_4463, 1);
lean_inc(x_4465);
if (lean_is_exclusive(x_4463)) {
 lean_ctor_release(x_4463, 0);
 lean_ctor_release(x_4463, 1);
 x_4466 = x_4463;
} else {
 lean_dec_ref(x_4463);
 x_4466 = lean_box(0);
}
x_4467 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4467, 0, x_4464);
x_4468 = 1;
x_4469 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4469, 0, x_4459);
lean_ctor_set(x_4469, 1, x_4467);
lean_ctor_set_uint8(x_4469, sizeof(void*)*2, x_4468);
x_4470 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4470, 0, x_4469);
x_4471 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4471, 0, x_4470);
if (lean_is_scalar(x_4466)) {
 x_4472 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4472 = x_4466;
}
lean_ctor_set(x_4472, 0, x_4471);
lean_ctor_set(x_4472, 1, x_4465);
return x_4472;
}
else
{
lean_object* x_4473; lean_object* x_4474; lean_object* x_4475; lean_object* x_4476; 
lean_dec(x_4459);
x_4473 = lean_ctor_get(x_4463, 0);
lean_inc(x_4473);
x_4474 = lean_ctor_get(x_4463, 1);
lean_inc(x_4474);
if (lean_is_exclusive(x_4463)) {
 lean_ctor_release(x_4463, 0);
 lean_ctor_release(x_4463, 1);
 x_4475 = x_4463;
} else {
 lean_dec_ref(x_4463);
 x_4475 = lean_box(0);
}
if (lean_is_scalar(x_4475)) {
 x_4476 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4476 = x_4475;
}
lean_ctor_set(x_4476, 0, x_4473);
lean_ctor_set(x_4476, 1, x_4474);
return x_4476;
}
}
else
{
lean_object* x_4477; lean_object* x_4478; lean_object* x_4479; lean_object* x_4480; 
lean_dec(x_4454);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4477 = lean_ctor_get(x_4458, 0);
lean_inc(x_4477);
x_4478 = lean_ctor_get(x_4458, 1);
lean_inc(x_4478);
if (lean_is_exclusive(x_4458)) {
 lean_ctor_release(x_4458, 0);
 lean_ctor_release(x_4458, 1);
 x_4479 = x_4458;
} else {
 lean_dec_ref(x_4458);
 x_4479 = lean_box(0);
}
if (lean_is_scalar(x_4479)) {
 x_4480 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4480 = x_4479;
}
lean_ctor_set(x_4480, 0, x_4477);
lean_ctor_set(x_4480, 1, x_4478);
return x_4480;
}
}
}
else
{
lean_object* x_4514; lean_object* x_4515; lean_object* x_4516; lean_object* x_4517; 
lean_dec(x_4446);
lean_dec(x_4445);
lean_dec(x_4444);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4514 = lean_ctor_get(x_4448, 0);
lean_inc(x_4514);
x_4515 = lean_ctor_get(x_4448, 1);
lean_inc(x_4515);
if (lean_is_exclusive(x_4448)) {
 lean_ctor_release(x_4448, 0);
 lean_ctor_release(x_4448, 1);
 x_4516 = x_4448;
} else {
 lean_dec_ref(x_4448);
 x_4516 = lean_box(0);
}
if (lean_is_scalar(x_4516)) {
 x_4517 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4517 = x_4516;
}
lean_ctor_set(x_4517, 0, x_4514);
lean_ctor_set(x_4517, 1, x_4515);
return x_4517;
}
}
else
{
lean_object* x_4518; lean_object* x_4519; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4518 = lean_box(0);
x_4519 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4519, 0, x_4518);
lean_ctor_set(x_4519, 1, x_2735);
return x_4519;
}
}
else
{
lean_object* x_4520; lean_object* x_4521; lean_object* x_4522; lean_object* x_4523; lean_object* x_4524; lean_object* x_4525; lean_object* x_4526; lean_object* x_4527; lean_object* x_4528; 
lean_dec(x_2736);
x_4520 = lean_unsigned_to_nat(2u);
x_4521 = lean_array_fget(x_3682, x_4520);
x_4522 = lean_unsigned_to_nat(3u);
x_4523 = lean_array_fget(x_3682, x_4522);
lean_dec(x_3682);
x_4524 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4525 = lean_array_push(x_4524, x_4521);
x_4526 = lean_array_push(x_4525, x_4523);
x_4527 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4528 = l_Lean_Meta_mkAppM(x_4527, x_4526, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4528) == 0)
{
lean_object* x_4529; lean_object* x_4530; lean_object* x_4531; 
x_4529 = lean_ctor_get(x_4528, 0);
lean_inc(x_4529);
x_4530 = lean_ctor_get(x_4528, 1);
lean_inc(x_4530);
lean_dec(x_4528);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4529);
x_4531 = lean_infer_type(x_4529, x_5, x_6, x_7, x_8, x_4530);
if (lean_obj_tag(x_4531) == 0)
{
lean_object* x_4532; lean_object* x_4533; lean_object* x_4534; uint8_t x_4535; 
x_4532 = lean_ctor_get(x_4531, 0);
lean_inc(x_4532);
x_4533 = lean_ctor_get(x_4531, 1);
lean_inc(x_4533);
lean_dec(x_4531);
x_4534 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_4535 = l_Lean_Expr_isAppOfArity(x_4532, x_4534, x_4522);
if (x_4535 == 0)
{
lean_object* x_4536; lean_object* x_4537; lean_object* x_4538; lean_object* x_4539; 
lean_dec(x_4532);
lean_dec(x_4529);
lean_dec(x_1);
x_4536 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4537 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_4536, x_5, x_6, x_7, x_8, x_4533);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4538 = lean_ctor_get(x_4537, 0);
lean_inc(x_4538);
x_4539 = lean_ctor_get(x_4537, 1);
lean_inc(x_4539);
lean_dec(x_4537);
x_10 = x_4538;
x_11 = x_4539;
goto block_18;
}
else
{
lean_object* x_4540; lean_object* x_4541; lean_object* x_4542; lean_object* x_4543; 
x_4540 = l_Lean_Expr_appFn_x21(x_4532);
x_4541 = l_Lean_Expr_appArg_x21(x_4540);
lean_dec(x_4540);
x_4542 = l_Lean_Expr_appArg_x21(x_4532);
lean_dec(x_4532);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4543 = l_Lean_Meta_isExprDefEq(x_1, x_4541, x_5, x_6, x_7, x_8, x_4533);
if (lean_obj_tag(x_4543) == 0)
{
lean_object* x_4544; uint8_t x_4545; 
x_4544 = lean_ctor_get(x_4543, 0);
lean_inc(x_4544);
x_4545 = lean_unbox(x_4544);
lean_dec(x_4544);
if (x_4545 == 0)
{
lean_object* x_4546; lean_object* x_4547; lean_object* x_4548; lean_object* x_4549; lean_object* x_4550; 
lean_dec(x_4542);
lean_dec(x_4529);
x_4546 = lean_ctor_get(x_4543, 1);
lean_inc(x_4546);
lean_dec(x_4543);
x_4547 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4548 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_4547, x_5, x_6, x_7, x_8, x_4546);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4549 = lean_ctor_get(x_4548, 0);
lean_inc(x_4549);
x_4550 = lean_ctor_get(x_4548, 1);
lean_inc(x_4550);
lean_dec(x_4548);
x_10 = x_4549;
x_11 = x_4550;
goto block_18;
}
else
{
lean_object* x_4551; lean_object* x_4552; lean_object* x_4553; uint8_t x_4554; lean_object* x_4555; lean_object* x_4556; lean_object* x_4557; lean_object* x_4558; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4551 = lean_ctor_get(x_4543, 1);
lean_inc(x_4551);
if (lean_is_exclusive(x_4543)) {
 lean_ctor_release(x_4543, 0);
 lean_ctor_release(x_4543, 1);
 x_4552 = x_4543;
} else {
 lean_dec_ref(x_4543);
 x_4552 = lean_box(0);
}
x_4553 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4553, 0, x_4529);
x_4554 = 1;
x_4555 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4555, 0, x_4542);
lean_ctor_set(x_4555, 1, x_4553);
lean_ctor_set_uint8(x_4555, sizeof(void*)*2, x_4554);
x_4556 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4556, 0, x_4555);
x_4557 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4557, 0, x_4556);
if (lean_is_scalar(x_4552)) {
 x_4558 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4558 = x_4552;
}
lean_ctor_set(x_4558, 0, x_4557);
lean_ctor_set(x_4558, 1, x_4551);
return x_4558;
}
}
else
{
lean_object* x_4559; lean_object* x_4560; 
lean_dec(x_4542);
lean_dec(x_4529);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4559 = lean_ctor_get(x_4543, 0);
lean_inc(x_4559);
x_4560 = lean_ctor_get(x_4543, 1);
lean_inc(x_4560);
lean_dec(x_4543);
x_10 = x_4559;
x_11 = x_4560;
goto block_18;
}
}
}
else
{
lean_object* x_4561; lean_object* x_4562; 
lean_dec(x_4529);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4561 = lean_ctor_get(x_4531, 0);
lean_inc(x_4561);
x_4562 = lean_ctor_get(x_4531, 1);
lean_inc(x_4562);
lean_dec(x_4531);
x_10 = x_4561;
x_11 = x_4562;
goto block_18;
}
}
else
{
lean_object* x_4563; lean_object* x_4564; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4563 = lean_ctor_get(x_4528, 0);
lean_inc(x_4563);
x_4564 = lean_ctor_get(x_4528, 1);
lean_inc(x_4564);
lean_dec(x_4528);
x_10 = x_4563;
x_11 = x_4564;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_4565; uint8_t x_4566; 
lean_dec(x_3684);
x_4565 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53;
x_4566 = lean_string_dec_eq(x_3683, x_4565);
lean_dec(x_3683);
if (x_4566 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4567; lean_object* x_4568; lean_object* x_4569; uint8_t x_4570; lean_object* x_4571; 
x_4567 = lean_ctor_get(x_2736, 0);
lean_inc(x_4567);
x_4568 = lean_ctor_get(x_2736, 1);
lean_inc(x_4568);
x_4569 = lean_ctor_get(x_2736, 2);
lean_inc(x_4569);
x_4570 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4568);
x_4571 = l_Lean_Meta_isProp(x_4568, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4571) == 0)
{
lean_object* x_4572; lean_object* x_4573; lean_object* x_4574; uint8_t x_4605; 
x_4572 = lean_ctor_get(x_4571, 0);
lean_inc(x_4572);
x_4573 = lean_ctor_get(x_4571, 1);
lean_inc(x_4573);
lean_dec(x_4571);
x_4605 = lean_unbox(x_4572);
lean_dec(x_4572);
if (x_4605 == 0)
{
lean_object* x_4606; 
x_4606 = lean_box(0);
x_4574 = x_4606;
goto block_4604;
}
else
{
uint8_t x_4607; 
x_4607 = l_Lean_Expr_hasLooseBVars(x_4569);
if (x_4607 == 0)
{
lean_object* x_4608; lean_object* x_4609; lean_object* x_4610; lean_object* x_4611; lean_object* x_4612; lean_object* x_4613; 
lean_dec(x_4567);
lean_inc(x_4569);
x_4608 = l_Lean_mkNot(x_4569);
x_4609 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4610 = lean_array_push(x_4609, x_4568);
lean_inc(x_4610);
x_4611 = lean_array_push(x_4610, x_4608);
x_4612 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4613 = l_Lean_Meta_mkAppM(x_4612, x_4611, x_5, x_6, x_7, x_8, x_4573);
if (lean_obj_tag(x_4613) == 0)
{
lean_object* x_4614; lean_object* x_4615; lean_object* x_4616; lean_object* x_4617; lean_object* x_4618; 
x_4614 = lean_ctor_get(x_4613, 0);
lean_inc(x_4614);
x_4615 = lean_ctor_get(x_4613, 1);
lean_inc(x_4615);
lean_dec(x_4613);
x_4616 = lean_array_push(x_4610, x_4569);
x_4617 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4618 = l_Lean_Meta_mkAppM(x_4617, x_4616, x_5, x_6, x_7, x_8, x_4615);
if (lean_obj_tag(x_4618) == 0)
{
lean_object* x_4619; lean_object* x_4620; lean_object* x_4621; lean_object* x_4622; uint8_t x_4623; lean_object* x_4624; lean_object* x_4625; lean_object* x_4626; lean_object* x_4627; 
x_4619 = lean_ctor_get(x_4618, 0);
lean_inc(x_4619);
x_4620 = lean_ctor_get(x_4618, 1);
lean_inc(x_4620);
if (lean_is_exclusive(x_4618)) {
 lean_ctor_release(x_4618, 0);
 lean_ctor_release(x_4618, 1);
 x_4621 = x_4618;
} else {
 lean_dec_ref(x_4618);
 x_4621 = lean_box(0);
}
x_4622 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4622, 0, x_4619);
x_4623 = 1;
x_4624 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4624, 0, x_4614);
lean_ctor_set(x_4624, 1, x_4622);
lean_ctor_set_uint8(x_4624, sizeof(void*)*2, x_4623);
x_4625 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4625, 0, x_4624);
x_4626 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4626, 0, x_4625);
if (lean_is_scalar(x_4621)) {
 x_4627 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4627 = x_4621;
}
lean_ctor_set(x_4627, 0, x_4626);
lean_ctor_set(x_4627, 1, x_4620);
return x_4627;
}
else
{
lean_object* x_4628; lean_object* x_4629; lean_object* x_4630; lean_object* x_4631; 
lean_dec(x_4614);
x_4628 = lean_ctor_get(x_4618, 0);
lean_inc(x_4628);
x_4629 = lean_ctor_get(x_4618, 1);
lean_inc(x_4629);
if (lean_is_exclusive(x_4618)) {
 lean_ctor_release(x_4618, 0);
 lean_ctor_release(x_4618, 1);
 x_4630 = x_4618;
} else {
 lean_dec_ref(x_4618);
 x_4630 = lean_box(0);
}
if (lean_is_scalar(x_4630)) {
 x_4631 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4631 = x_4630;
}
lean_ctor_set(x_4631, 0, x_4628);
lean_ctor_set(x_4631, 1, x_4629);
return x_4631;
}
}
else
{
lean_object* x_4632; lean_object* x_4633; lean_object* x_4634; lean_object* x_4635; 
lean_dec(x_4610);
lean_dec(x_4569);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4632 = lean_ctor_get(x_4613, 0);
lean_inc(x_4632);
x_4633 = lean_ctor_get(x_4613, 1);
lean_inc(x_4633);
if (lean_is_exclusive(x_4613)) {
 lean_ctor_release(x_4613, 0);
 lean_ctor_release(x_4613, 1);
 x_4634 = x_4613;
} else {
 lean_dec_ref(x_4613);
 x_4634 = lean_box(0);
}
if (lean_is_scalar(x_4634)) {
 x_4635 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4635 = x_4634;
}
lean_ctor_set(x_4635, 0, x_4632);
lean_ctor_set(x_4635, 1, x_4633);
return x_4635;
}
}
else
{
lean_object* x_4636; 
x_4636 = lean_box(0);
x_4574 = x_4636;
goto block_4604;
}
}
block_4604:
{
lean_object* x_4575; lean_object* x_4576; lean_object* x_4577; lean_object* x_4578; lean_object* x_4579; lean_object* x_4580; lean_object* x_4581; 
lean_dec(x_4574);
lean_inc(x_4569);
x_4575 = l_Lean_mkNot(x_4569);
lean_inc(x_4568);
lean_inc(x_4567);
x_4576 = l_Lean_Expr_lam___override(x_4567, x_4568, x_4575, x_4570);
x_4577 = l_Lean_Expr_lam___override(x_4567, x_4568, x_4569, x_4570);
x_4578 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4579 = lean_array_push(x_4578, x_4576);
x_4580 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4581 = l_Lean_Meta_mkAppM(x_4580, x_4579, x_5, x_6, x_7, x_8, x_4573);
if (lean_obj_tag(x_4581) == 0)
{
lean_object* x_4582; lean_object* x_4583; lean_object* x_4584; lean_object* x_4585; lean_object* x_4586; 
x_4582 = lean_ctor_get(x_4581, 0);
lean_inc(x_4582);
x_4583 = lean_ctor_get(x_4581, 1);
lean_inc(x_4583);
lean_dec(x_4581);
x_4584 = lean_array_push(x_4578, x_4577);
x_4585 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4586 = l_Lean_Meta_mkAppM(x_4585, x_4584, x_5, x_6, x_7, x_8, x_4583);
if (lean_obj_tag(x_4586) == 0)
{
lean_object* x_4587; lean_object* x_4588; lean_object* x_4589; lean_object* x_4590; uint8_t x_4591; lean_object* x_4592; lean_object* x_4593; lean_object* x_4594; lean_object* x_4595; 
x_4587 = lean_ctor_get(x_4586, 0);
lean_inc(x_4587);
x_4588 = lean_ctor_get(x_4586, 1);
lean_inc(x_4588);
if (lean_is_exclusive(x_4586)) {
 lean_ctor_release(x_4586, 0);
 lean_ctor_release(x_4586, 1);
 x_4589 = x_4586;
} else {
 lean_dec_ref(x_4586);
 x_4589 = lean_box(0);
}
x_4590 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4590, 0, x_4587);
x_4591 = 1;
x_4592 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4592, 0, x_4582);
lean_ctor_set(x_4592, 1, x_4590);
lean_ctor_set_uint8(x_4592, sizeof(void*)*2, x_4591);
x_4593 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4593, 0, x_4592);
x_4594 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4594, 0, x_4593);
if (lean_is_scalar(x_4589)) {
 x_4595 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4595 = x_4589;
}
lean_ctor_set(x_4595, 0, x_4594);
lean_ctor_set(x_4595, 1, x_4588);
return x_4595;
}
else
{
lean_object* x_4596; lean_object* x_4597; lean_object* x_4598; lean_object* x_4599; 
lean_dec(x_4582);
x_4596 = lean_ctor_get(x_4586, 0);
lean_inc(x_4596);
x_4597 = lean_ctor_get(x_4586, 1);
lean_inc(x_4597);
if (lean_is_exclusive(x_4586)) {
 lean_ctor_release(x_4586, 0);
 lean_ctor_release(x_4586, 1);
 x_4598 = x_4586;
} else {
 lean_dec_ref(x_4586);
 x_4598 = lean_box(0);
}
if (lean_is_scalar(x_4598)) {
 x_4599 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4599 = x_4598;
}
lean_ctor_set(x_4599, 0, x_4596);
lean_ctor_set(x_4599, 1, x_4597);
return x_4599;
}
}
else
{
lean_object* x_4600; lean_object* x_4601; lean_object* x_4602; lean_object* x_4603; 
lean_dec(x_4577);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4600 = lean_ctor_get(x_4581, 0);
lean_inc(x_4600);
x_4601 = lean_ctor_get(x_4581, 1);
lean_inc(x_4601);
if (lean_is_exclusive(x_4581)) {
 lean_ctor_release(x_4581, 0);
 lean_ctor_release(x_4581, 1);
 x_4602 = x_4581;
} else {
 lean_dec_ref(x_4581);
 x_4602 = lean_box(0);
}
if (lean_is_scalar(x_4602)) {
 x_4603 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4603 = x_4602;
}
lean_ctor_set(x_4603, 0, x_4600);
lean_ctor_set(x_4603, 1, x_4601);
return x_4603;
}
}
}
else
{
lean_object* x_4637; lean_object* x_4638; lean_object* x_4639; lean_object* x_4640; 
lean_dec(x_4569);
lean_dec(x_4568);
lean_dec(x_4567);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4637 = lean_ctor_get(x_4571, 0);
lean_inc(x_4637);
x_4638 = lean_ctor_get(x_4571, 1);
lean_inc(x_4638);
if (lean_is_exclusive(x_4571)) {
 lean_ctor_release(x_4571, 0);
 lean_ctor_release(x_4571, 1);
 x_4639 = x_4571;
} else {
 lean_dec_ref(x_4571);
 x_4639 = lean_box(0);
}
if (lean_is_scalar(x_4639)) {
 x_4640 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4640 = x_4639;
}
lean_ctor_set(x_4640, 0, x_4637);
lean_ctor_set(x_4640, 1, x_4638);
return x_4640;
}
}
else
{
lean_object* x_4641; lean_object* x_4642; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4641 = lean_box(0);
x_4642 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4642, 0, x_4641);
lean_ctor_set(x_4642, 1, x_2735);
return x_4642;
}
}
else
{
lean_object* x_4643; lean_object* x_4644; uint8_t x_4645; 
x_4643 = lean_array_get_size(x_3682);
x_4644 = lean_unsigned_to_nat(4u);
x_4645 = lean_nat_dec_eq(x_4643, x_4644);
lean_dec(x_4643);
if (x_4645 == 0)
{
lean_dec(x_3682);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4646; lean_object* x_4647; lean_object* x_4648; uint8_t x_4649; lean_object* x_4650; 
x_4646 = lean_ctor_get(x_2736, 0);
lean_inc(x_4646);
x_4647 = lean_ctor_get(x_2736, 1);
lean_inc(x_4647);
x_4648 = lean_ctor_get(x_2736, 2);
lean_inc(x_4648);
x_4649 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4647);
x_4650 = l_Lean_Meta_isProp(x_4647, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4650) == 0)
{
lean_object* x_4651; lean_object* x_4652; lean_object* x_4653; uint8_t x_4684; 
x_4651 = lean_ctor_get(x_4650, 0);
lean_inc(x_4651);
x_4652 = lean_ctor_get(x_4650, 1);
lean_inc(x_4652);
lean_dec(x_4650);
x_4684 = lean_unbox(x_4651);
lean_dec(x_4651);
if (x_4684 == 0)
{
lean_object* x_4685; 
x_4685 = lean_box(0);
x_4653 = x_4685;
goto block_4683;
}
else
{
uint8_t x_4686; 
x_4686 = l_Lean_Expr_hasLooseBVars(x_4648);
if (x_4686 == 0)
{
lean_object* x_4687; lean_object* x_4688; lean_object* x_4689; lean_object* x_4690; lean_object* x_4691; lean_object* x_4692; 
lean_dec(x_4646);
lean_inc(x_4648);
x_4687 = l_Lean_mkNot(x_4648);
x_4688 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4689 = lean_array_push(x_4688, x_4647);
lean_inc(x_4689);
x_4690 = lean_array_push(x_4689, x_4687);
x_4691 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4692 = l_Lean_Meta_mkAppM(x_4691, x_4690, x_5, x_6, x_7, x_8, x_4652);
if (lean_obj_tag(x_4692) == 0)
{
lean_object* x_4693; lean_object* x_4694; lean_object* x_4695; lean_object* x_4696; lean_object* x_4697; 
x_4693 = lean_ctor_get(x_4692, 0);
lean_inc(x_4693);
x_4694 = lean_ctor_get(x_4692, 1);
lean_inc(x_4694);
lean_dec(x_4692);
x_4695 = lean_array_push(x_4689, x_4648);
x_4696 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4697 = l_Lean_Meta_mkAppM(x_4696, x_4695, x_5, x_6, x_7, x_8, x_4694);
if (lean_obj_tag(x_4697) == 0)
{
lean_object* x_4698; lean_object* x_4699; lean_object* x_4700; lean_object* x_4701; uint8_t x_4702; lean_object* x_4703; lean_object* x_4704; lean_object* x_4705; lean_object* x_4706; 
x_4698 = lean_ctor_get(x_4697, 0);
lean_inc(x_4698);
x_4699 = lean_ctor_get(x_4697, 1);
lean_inc(x_4699);
if (lean_is_exclusive(x_4697)) {
 lean_ctor_release(x_4697, 0);
 lean_ctor_release(x_4697, 1);
 x_4700 = x_4697;
} else {
 lean_dec_ref(x_4697);
 x_4700 = lean_box(0);
}
x_4701 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4701, 0, x_4698);
x_4702 = 1;
x_4703 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4703, 0, x_4693);
lean_ctor_set(x_4703, 1, x_4701);
lean_ctor_set_uint8(x_4703, sizeof(void*)*2, x_4702);
x_4704 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4704, 0, x_4703);
x_4705 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4705, 0, x_4704);
if (lean_is_scalar(x_4700)) {
 x_4706 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4706 = x_4700;
}
lean_ctor_set(x_4706, 0, x_4705);
lean_ctor_set(x_4706, 1, x_4699);
return x_4706;
}
else
{
lean_object* x_4707; lean_object* x_4708; lean_object* x_4709; lean_object* x_4710; 
lean_dec(x_4693);
x_4707 = lean_ctor_get(x_4697, 0);
lean_inc(x_4707);
x_4708 = lean_ctor_get(x_4697, 1);
lean_inc(x_4708);
if (lean_is_exclusive(x_4697)) {
 lean_ctor_release(x_4697, 0);
 lean_ctor_release(x_4697, 1);
 x_4709 = x_4697;
} else {
 lean_dec_ref(x_4697);
 x_4709 = lean_box(0);
}
if (lean_is_scalar(x_4709)) {
 x_4710 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4710 = x_4709;
}
lean_ctor_set(x_4710, 0, x_4707);
lean_ctor_set(x_4710, 1, x_4708);
return x_4710;
}
}
else
{
lean_object* x_4711; lean_object* x_4712; lean_object* x_4713; lean_object* x_4714; 
lean_dec(x_4689);
lean_dec(x_4648);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4711 = lean_ctor_get(x_4692, 0);
lean_inc(x_4711);
x_4712 = lean_ctor_get(x_4692, 1);
lean_inc(x_4712);
if (lean_is_exclusive(x_4692)) {
 lean_ctor_release(x_4692, 0);
 lean_ctor_release(x_4692, 1);
 x_4713 = x_4692;
} else {
 lean_dec_ref(x_4692);
 x_4713 = lean_box(0);
}
if (lean_is_scalar(x_4713)) {
 x_4714 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4714 = x_4713;
}
lean_ctor_set(x_4714, 0, x_4711);
lean_ctor_set(x_4714, 1, x_4712);
return x_4714;
}
}
else
{
lean_object* x_4715; 
x_4715 = lean_box(0);
x_4653 = x_4715;
goto block_4683;
}
}
block_4683:
{
lean_object* x_4654; lean_object* x_4655; lean_object* x_4656; lean_object* x_4657; lean_object* x_4658; lean_object* x_4659; lean_object* x_4660; 
lean_dec(x_4653);
lean_inc(x_4648);
x_4654 = l_Lean_mkNot(x_4648);
lean_inc(x_4647);
lean_inc(x_4646);
x_4655 = l_Lean_Expr_lam___override(x_4646, x_4647, x_4654, x_4649);
x_4656 = l_Lean_Expr_lam___override(x_4646, x_4647, x_4648, x_4649);
x_4657 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4658 = lean_array_push(x_4657, x_4655);
x_4659 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4660 = l_Lean_Meta_mkAppM(x_4659, x_4658, x_5, x_6, x_7, x_8, x_4652);
if (lean_obj_tag(x_4660) == 0)
{
lean_object* x_4661; lean_object* x_4662; lean_object* x_4663; lean_object* x_4664; lean_object* x_4665; 
x_4661 = lean_ctor_get(x_4660, 0);
lean_inc(x_4661);
x_4662 = lean_ctor_get(x_4660, 1);
lean_inc(x_4662);
lean_dec(x_4660);
x_4663 = lean_array_push(x_4657, x_4656);
x_4664 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4665 = l_Lean_Meta_mkAppM(x_4664, x_4663, x_5, x_6, x_7, x_8, x_4662);
if (lean_obj_tag(x_4665) == 0)
{
lean_object* x_4666; lean_object* x_4667; lean_object* x_4668; lean_object* x_4669; uint8_t x_4670; lean_object* x_4671; lean_object* x_4672; lean_object* x_4673; lean_object* x_4674; 
x_4666 = lean_ctor_get(x_4665, 0);
lean_inc(x_4666);
x_4667 = lean_ctor_get(x_4665, 1);
lean_inc(x_4667);
if (lean_is_exclusive(x_4665)) {
 lean_ctor_release(x_4665, 0);
 lean_ctor_release(x_4665, 1);
 x_4668 = x_4665;
} else {
 lean_dec_ref(x_4665);
 x_4668 = lean_box(0);
}
x_4669 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4669, 0, x_4666);
x_4670 = 1;
x_4671 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4671, 0, x_4661);
lean_ctor_set(x_4671, 1, x_4669);
lean_ctor_set_uint8(x_4671, sizeof(void*)*2, x_4670);
x_4672 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4672, 0, x_4671);
x_4673 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4673, 0, x_4672);
if (lean_is_scalar(x_4668)) {
 x_4674 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4674 = x_4668;
}
lean_ctor_set(x_4674, 0, x_4673);
lean_ctor_set(x_4674, 1, x_4667);
return x_4674;
}
else
{
lean_object* x_4675; lean_object* x_4676; lean_object* x_4677; lean_object* x_4678; 
lean_dec(x_4661);
x_4675 = lean_ctor_get(x_4665, 0);
lean_inc(x_4675);
x_4676 = lean_ctor_get(x_4665, 1);
lean_inc(x_4676);
if (lean_is_exclusive(x_4665)) {
 lean_ctor_release(x_4665, 0);
 lean_ctor_release(x_4665, 1);
 x_4677 = x_4665;
} else {
 lean_dec_ref(x_4665);
 x_4677 = lean_box(0);
}
if (lean_is_scalar(x_4677)) {
 x_4678 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4678 = x_4677;
}
lean_ctor_set(x_4678, 0, x_4675);
lean_ctor_set(x_4678, 1, x_4676);
return x_4678;
}
}
else
{
lean_object* x_4679; lean_object* x_4680; lean_object* x_4681; lean_object* x_4682; 
lean_dec(x_4656);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4679 = lean_ctor_get(x_4660, 0);
lean_inc(x_4679);
x_4680 = lean_ctor_get(x_4660, 1);
lean_inc(x_4680);
if (lean_is_exclusive(x_4660)) {
 lean_ctor_release(x_4660, 0);
 lean_ctor_release(x_4660, 1);
 x_4681 = x_4660;
} else {
 lean_dec_ref(x_4660);
 x_4681 = lean_box(0);
}
if (lean_is_scalar(x_4681)) {
 x_4682 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4682 = x_4681;
}
lean_ctor_set(x_4682, 0, x_4679);
lean_ctor_set(x_4682, 1, x_4680);
return x_4682;
}
}
}
else
{
lean_object* x_4716; lean_object* x_4717; lean_object* x_4718; lean_object* x_4719; 
lean_dec(x_4648);
lean_dec(x_4647);
lean_dec(x_4646);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4716 = lean_ctor_get(x_4650, 0);
lean_inc(x_4716);
x_4717 = lean_ctor_get(x_4650, 1);
lean_inc(x_4717);
if (lean_is_exclusive(x_4650)) {
 lean_ctor_release(x_4650, 0);
 lean_ctor_release(x_4650, 1);
 x_4718 = x_4650;
} else {
 lean_dec_ref(x_4650);
 x_4718 = lean_box(0);
}
if (lean_is_scalar(x_4718)) {
 x_4719 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4719 = x_4718;
}
lean_ctor_set(x_4719, 0, x_4716);
lean_ctor_set(x_4719, 1, x_4717);
return x_4719;
}
}
else
{
lean_object* x_4720; lean_object* x_4721; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4720 = lean_box(0);
x_4721 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4721, 0, x_4720);
lean_ctor_set(x_4721, 1, x_2735);
return x_4721;
}
}
else
{
lean_object* x_4722; lean_object* x_4723; lean_object* x_4724; lean_object* x_4725; lean_object* x_4726; lean_object* x_4727; lean_object* x_4728; lean_object* x_4729; lean_object* x_4730; 
lean_dec(x_2736);
x_4722 = lean_unsigned_to_nat(2u);
x_4723 = lean_array_fget(x_3682, x_4722);
x_4724 = lean_unsigned_to_nat(3u);
x_4725 = lean_array_fget(x_3682, x_4724);
lean_dec(x_3682);
x_4726 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4727 = lean_array_push(x_4726, x_4723);
x_4728 = lean_array_push(x_4727, x_4725);
x_4729 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4730 = l_Lean_Meta_mkAppM(x_4729, x_4728, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4730) == 0)
{
lean_object* x_4731; lean_object* x_4732; lean_object* x_4733; 
x_4731 = lean_ctor_get(x_4730, 0);
lean_inc(x_4731);
x_4732 = lean_ctor_get(x_4730, 1);
lean_inc(x_4732);
lean_dec(x_4730);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4731);
x_4733 = lean_infer_type(x_4731, x_5, x_6, x_7, x_8, x_4732);
if (lean_obj_tag(x_4733) == 0)
{
lean_object* x_4734; lean_object* x_4735; lean_object* x_4736; uint8_t x_4737; 
x_4734 = lean_ctor_get(x_4733, 0);
lean_inc(x_4734);
x_4735 = lean_ctor_get(x_4733, 1);
lean_inc(x_4735);
lean_dec(x_4733);
x_4736 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_4737 = l_Lean_Expr_isAppOfArity(x_4734, x_4736, x_4724);
if (x_4737 == 0)
{
lean_object* x_4738; lean_object* x_4739; lean_object* x_4740; lean_object* x_4741; 
lean_dec(x_4734);
lean_dec(x_4731);
lean_dec(x_1);
x_4738 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4739 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_4738, x_5, x_6, x_7, x_8, x_4735);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4740 = lean_ctor_get(x_4739, 0);
lean_inc(x_4740);
x_4741 = lean_ctor_get(x_4739, 1);
lean_inc(x_4741);
lean_dec(x_4739);
x_10 = x_4740;
x_11 = x_4741;
goto block_18;
}
else
{
lean_object* x_4742; lean_object* x_4743; lean_object* x_4744; lean_object* x_4745; 
x_4742 = l_Lean_Expr_appFn_x21(x_4734);
x_4743 = l_Lean_Expr_appArg_x21(x_4742);
lean_dec(x_4742);
x_4744 = l_Lean_Expr_appArg_x21(x_4734);
lean_dec(x_4734);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4745 = l_Lean_Meta_isExprDefEq(x_1, x_4743, x_5, x_6, x_7, x_8, x_4735);
if (lean_obj_tag(x_4745) == 0)
{
lean_object* x_4746; uint8_t x_4747; 
x_4746 = lean_ctor_get(x_4745, 0);
lean_inc(x_4746);
x_4747 = lean_unbox(x_4746);
lean_dec(x_4746);
if (x_4747 == 0)
{
lean_object* x_4748; lean_object* x_4749; lean_object* x_4750; lean_object* x_4751; lean_object* x_4752; 
lean_dec(x_4744);
lean_dec(x_4731);
x_4748 = lean_ctor_get(x_4745, 1);
lean_inc(x_4748);
lean_dec(x_4745);
x_4749 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_4750 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_4749, x_5, x_6, x_7, x_8, x_4748);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4751 = lean_ctor_get(x_4750, 0);
lean_inc(x_4751);
x_4752 = lean_ctor_get(x_4750, 1);
lean_inc(x_4752);
lean_dec(x_4750);
x_10 = x_4751;
x_11 = x_4752;
goto block_18;
}
else
{
lean_object* x_4753; lean_object* x_4754; lean_object* x_4755; uint8_t x_4756; lean_object* x_4757; lean_object* x_4758; lean_object* x_4759; lean_object* x_4760; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4753 = lean_ctor_get(x_4745, 1);
lean_inc(x_4753);
if (lean_is_exclusive(x_4745)) {
 lean_ctor_release(x_4745, 0);
 lean_ctor_release(x_4745, 1);
 x_4754 = x_4745;
} else {
 lean_dec_ref(x_4745);
 x_4754 = lean_box(0);
}
x_4755 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4755, 0, x_4731);
x_4756 = 1;
x_4757 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4757, 0, x_4744);
lean_ctor_set(x_4757, 1, x_4755);
lean_ctor_set_uint8(x_4757, sizeof(void*)*2, x_4756);
x_4758 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4758, 0, x_4757);
x_4759 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4759, 0, x_4758);
if (lean_is_scalar(x_4754)) {
 x_4760 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4760 = x_4754;
}
lean_ctor_set(x_4760, 0, x_4759);
lean_ctor_set(x_4760, 1, x_4753);
return x_4760;
}
}
else
{
lean_object* x_4761; lean_object* x_4762; 
lean_dec(x_4744);
lean_dec(x_4731);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4761 = lean_ctor_get(x_4745, 0);
lean_inc(x_4761);
x_4762 = lean_ctor_get(x_4745, 1);
lean_inc(x_4762);
lean_dec(x_4745);
x_10 = x_4761;
x_11 = x_4762;
goto block_18;
}
}
}
else
{
lean_object* x_4763; lean_object* x_4764; 
lean_dec(x_4731);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4763 = lean_ctor_get(x_4733, 0);
lean_inc(x_4763);
x_4764 = lean_ctor_get(x_4733, 1);
lean_inc(x_4764);
lean_dec(x_4733);
x_10 = x_4763;
x_11 = x_4764;
goto block_18;
}
}
else
{
lean_object* x_4765; lean_object* x_4766; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_4765 = lean_ctor_get(x_4730, 0);
lean_inc(x_4765);
x_4766 = lean_ctor_get(x_4730, 1);
lean_inc(x_4766);
lean_dec(x_4730);
x_10 = x_4765;
x_11 = x_4766;
goto block_18;
}
}
}
}
}
case 1:
{
lean_dec(x_3681);
lean_dec(x_2815);
lean_dec(x_2738);
lean_dec(x_2737);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4767; lean_object* x_4768; lean_object* x_4769; uint8_t x_4770; lean_object* x_4771; 
x_4767 = lean_ctor_get(x_2736, 0);
lean_inc(x_4767);
x_4768 = lean_ctor_get(x_2736, 1);
lean_inc(x_4768);
x_4769 = lean_ctor_get(x_2736, 2);
lean_inc(x_4769);
x_4770 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4768);
x_4771 = l_Lean_Meta_isProp(x_4768, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4771) == 0)
{
lean_object* x_4772; lean_object* x_4773; lean_object* x_4774; uint8_t x_4805; 
x_4772 = lean_ctor_get(x_4771, 0);
lean_inc(x_4772);
x_4773 = lean_ctor_get(x_4771, 1);
lean_inc(x_4773);
lean_dec(x_4771);
x_4805 = lean_unbox(x_4772);
lean_dec(x_4772);
if (x_4805 == 0)
{
lean_object* x_4806; 
x_4806 = lean_box(0);
x_4774 = x_4806;
goto block_4804;
}
else
{
uint8_t x_4807; 
x_4807 = l_Lean_Expr_hasLooseBVars(x_4769);
if (x_4807 == 0)
{
lean_object* x_4808; lean_object* x_4809; lean_object* x_4810; lean_object* x_4811; lean_object* x_4812; lean_object* x_4813; 
lean_dec(x_4767);
lean_inc(x_4769);
x_4808 = l_Lean_mkNot(x_4769);
x_4809 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4810 = lean_array_push(x_4809, x_4768);
lean_inc(x_4810);
x_4811 = lean_array_push(x_4810, x_4808);
x_4812 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4813 = l_Lean_Meta_mkAppM(x_4812, x_4811, x_5, x_6, x_7, x_8, x_4773);
if (lean_obj_tag(x_4813) == 0)
{
lean_object* x_4814; lean_object* x_4815; lean_object* x_4816; lean_object* x_4817; lean_object* x_4818; 
x_4814 = lean_ctor_get(x_4813, 0);
lean_inc(x_4814);
x_4815 = lean_ctor_get(x_4813, 1);
lean_inc(x_4815);
lean_dec(x_4813);
x_4816 = lean_array_push(x_4810, x_4769);
x_4817 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4818 = l_Lean_Meta_mkAppM(x_4817, x_4816, x_5, x_6, x_7, x_8, x_4815);
if (lean_obj_tag(x_4818) == 0)
{
lean_object* x_4819; lean_object* x_4820; lean_object* x_4821; lean_object* x_4822; uint8_t x_4823; lean_object* x_4824; lean_object* x_4825; lean_object* x_4826; lean_object* x_4827; 
x_4819 = lean_ctor_get(x_4818, 0);
lean_inc(x_4819);
x_4820 = lean_ctor_get(x_4818, 1);
lean_inc(x_4820);
if (lean_is_exclusive(x_4818)) {
 lean_ctor_release(x_4818, 0);
 lean_ctor_release(x_4818, 1);
 x_4821 = x_4818;
} else {
 lean_dec_ref(x_4818);
 x_4821 = lean_box(0);
}
x_4822 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4822, 0, x_4819);
x_4823 = 1;
x_4824 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4824, 0, x_4814);
lean_ctor_set(x_4824, 1, x_4822);
lean_ctor_set_uint8(x_4824, sizeof(void*)*2, x_4823);
x_4825 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4825, 0, x_4824);
x_4826 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4826, 0, x_4825);
if (lean_is_scalar(x_4821)) {
 x_4827 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4827 = x_4821;
}
lean_ctor_set(x_4827, 0, x_4826);
lean_ctor_set(x_4827, 1, x_4820);
return x_4827;
}
else
{
lean_object* x_4828; lean_object* x_4829; lean_object* x_4830; lean_object* x_4831; 
lean_dec(x_4814);
x_4828 = lean_ctor_get(x_4818, 0);
lean_inc(x_4828);
x_4829 = lean_ctor_get(x_4818, 1);
lean_inc(x_4829);
if (lean_is_exclusive(x_4818)) {
 lean_ctor_release(x_4818, 0);
 lean_ctor_release(x_4818, 1);
 x_4830 = x_4818;
} else {
 lean_dec_ref(x_4818);
 x_4830 = lean_box(0);
}
if (lean_is_scalar(x_4830)) {
 x_4831 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4831 = x_4830;
}
lean_ctor_set(x_4831, 0, x_4828);
lean_ctor_set(x_4831, 1, x_4829);
return x_4831;
}
}
else
{
lean_object* x_4832; lean_object* x_4833; lean_object* x_4834; lean_object* x_4835; 
lean_dec(x_4810);
lean_dec(x_4769);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4832 = lean_ctor_get(x_4813, 0);
lean_inc(x_4832);
x_4833 = lean_ctor_get(x_4813, 1);
lean_inc(x_4833);
if (lean_is_exclusive(x_4813)) {
 lean_ctor_release(x_4813, 0);
 lean_ctor_release(x_4813, 1);
 x_4834 = x_4813;
} else {
 lean_dec_ref(x_4813);
 x_4834 = lean_box(0);
}
if (lean_is_scalar(x_4834)) {
 x_4835 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4835 = x_4834;
}
lean_ctor_set(x_4835, 0, x_4832);
lean_ctor_set(x_4835, 1, x_4833);
return x_4835;
}
}
else
{
lean_object* x_4836; 
x_4836 = lean_box(0);
x_4774 = x_4836;
goto block_4804;
}
}
block_4804:
{
lean_object* x_4775; lean_object* x_4776; lean_object* x_4777; lean_object* x_4778; lean_object* x_4779; lean_object* x_4780; lean_object* x_4781; 
lean_dec(x_4774);
lean_inc(x_4769);
x_4775 = l_Lean_mkNot(x_4769);
lean_inc(x_4768);
lean_inc(x_4767);
x_4776 = l_Lean_Expr_lam___override(x_4767, x_4768, x_4775, x_4770);
x_4777 = l_Lean_Expr_lam___override(x_4767, x_4768, x_4769, x_4770);
x_4778 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4779 = lean_array_push(x_4778, x_4776);
x_4780 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4781 = l_Lean_Meta_mkAppM(x_4780, x_4779, x_5, x_6, x_7, x_8, x_4773);
if (lean_obj_tag(x_4781) == 0)
{
lean_object* x_4782; lean_object* x_4783; lean_object* x_4784; lean_object* x_4785; lean_object* x_4786; 
x_4782 = lean_ctor_get(x_4781, 0);
lean_inc(x_4782);
x_4783 = lean_ctor_get(x_4781, 1);
lean_inc(x_4783);
lean_dec(x_4781);
x_4784 = lean_array_push(x_4778, x_4777);
x_4785 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4786 = l_Lean_Meta_mkAppM(x_4785, x_4784, x_5, x_6, x_7, x_8, x_4783);
if (lean_obj_tag(x_4786) == 0)
{
lean_object* x_4787; lean_object* x_4788; lean_object* x_4789; lean_object* x_4790; uint8_t x_4791; lean_object* x_4792; lean_object* x_4793; lean_object* x_4794; lean_object* x_4795; 
x_4787 = lean_ctor_get(x_4786, 0);
lean_inc(x_4787);
x_4788 = lean_ctor_get(x_4786, 1);
lean_inc(x_4788);
if (lean_is_exclusive(x_4786)) {
 lean_ctor_release(x_4786, 0);
 lean_ctor_release(x_4786, 1);
 x_4789 = x_4786;
} else {
 lean_dec_ref(x_4786);
 x_4789 = lean_box(0);
}
x_4790 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4790, 0, x_4787);
x_4791 = 1;
x_4792 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4792, 0, x_4782);
lean_ctor_set(x_4792, 1, x_4790);
lean_ctor_set_uint8(x_4792, sizeof(void*)*2, x_4791);
x_4793 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4793, 0, x_4792);
x_4794 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4794, 0, x_4793);
if (lean_is_scalar(x_4789)) {
 x_4795 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4795 = x_4789;
}
lean_ctor_set(x_4795, 0, x_4794);
lean_ctor_set(x_4795, 1, x_4788);
return x_4795;
}
else
{
lean_object* x_4796; lean_object* x_4797; lean_object* x_4798; lean_object* x_4799; 
lean_dec(x_4782);
x_4796 = lean_ctor_get(x_4786, 0);
lean_inc(x_4796);
x_4797 = lean_ctor_get(x_4786, 1);
lean_inc(x_4797);
if (lean_is_exclusive(x_4786)) {
 lean_ctor_release(x_4786, 0);
 lean_ctor_release(x_4786, 1);
 x_4798 = x_4786;
} else {
 lean_dec_ref(x_4786);
 x_4798 = lean_box(0);
}
if (lean_is_scalar(x_4798)) {
 x_4799 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4799 = x_4798;
}
lean_ctor_set(x_4799, 0, x_4796);
lean_ctor_set(x_4799, 1, x_4797);
return x_4799;
}
}
else
{
lean_object* x_4800; lean_object* x_4801; lean_object* x_4802; lean_object* x_4803; 
lean_dec(x_4777);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4800 = lean_ctor_get(x_4781, 0);
lean_inc(x_4800);
x_4801 = lean_ctor_get(x_4781, 1);
lean_inc(x_4801);
if (lean_is_exclusive(x_4781)) {
 lean_ctor_release(x_4781, 0);
 lean_ctor_release(x_4781, 1);
 x_4802 = x_4781;
} else {
 lean_dec_ref(x_4781);
 x_4802 = lean_box(0);
}
if (lean_is_scalar(x_4802)) {
 x_4803 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4803 = x_4802;
}
lean_ctor_set(x_4803, 0, x_4800);
lean_ctor_set(x_4803, 1, x_4801);
return x_4803;
}
}
}
else
{
lean_object* x_4837; lean_object* x_4838; lean_object* x_4839; lean_object* x_4840; 
lean_dec(x_4769);
lean_dec(x_4768);
lean_dec(x_4767);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4837 = lean_ctor_get(x_4771, 0);
lean_inc(x_4837);
x_4838 = lean_ctor_get(x_4771, 1);
lean_inc(x_4838);
if (lean_is_exclusive(x_4771)) {
 lean_ctor_release(x_4771, 0);
 lean_ctor_release(x_4771, 1);
 x_4839 = x_4771;
} else {
 lean_dec_ref(x_4771);
 x_4839 = lean_box(0);
}
if (lean_is_scalar(x_4839)) {
 x_4840 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4840 = x_4839;
}
lean_ctor_set(x_4840, 0, x_4837);
lean_ctor_set(x_4840, 1, x_4838);
return x_4840;
}
}
else
{
lean_object* x_4841; lean_object* x_4842; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4841 = lean_box(0);
x_4842 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4842, 0, x_4841);
lean_ctor_set(x_4842, 1, x_2735);
return x_4842;
}
}
default: 
{
lean_dec(x_3681);
lean_dec(x_2815);
lean_dec(x_2738);
lean_dec(x_2737);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4843; lean_object* x_4844; lean_object* x_4845; uint8_t x_4846; lean_object* x_4847; 
x_4843 = lean_ctor_get(x_2736, 0);
lean_inc(x_4843);
x_4844 = lean_ctor_get(x_2736, 1);
lean_inc(x_4844);
x_4845 = lean_ctor_get(x_2736, 2);
lean_inc(x_4845);
x_4846 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4844);
x_4847 = l_Lean_Meta_isProp(x_4844, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4847) == 0)
{
lean_object* x_4848; lean_object* x_4849; lean_object* x_4850; uint8_t x_4881; 
x_4848 = lean_ctor_get(x_4847, 0);
lean_inc(x_4848);
x_4849 = lean_ctor_get(x_4847, 1);
lean_inc(x_4849);
lean_dec(x_4847);
x_4881 = lean_unbox(x_4848);
lean_dec(x_4848);
if (x_4881 == 0)
{
lean_object* x_4882; 
x_4882 = lean_box(0);
x_4850 = x_4882;
goto block_4880;
}
else
{
uint8_t x_4883; 
x_4883 = l_Lean_Expr_hasLooseBVars(x_4845);
if (x_4883 == 0)
{
lean_object* x_4884; lean_object* x_4885; lean_object* x_4886; lean_object* x_4887; lean_object* x_4888; lean_object* x_4889; 
lean_dec(x_4843);
lean_inc(x_4845);
x_4884 = l_Lean_mkNot(x_4845);
x_4885 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4886 = lean_array_push(x_4885, x_4844);
lean_inc(x_4886);
x_4887 = lean_array_push(x_4886, x_4884);
x_4888 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4889 = l_Lean_Meta_mkAppM(x_4888, x_4887, x_5, x_6, x_7, x_8, x_4849);
if (lean_obj_tag(x_4889) == 0)
{
lean_object* x_4890; lean_object* x_4891; lean_object* x_4892; lean_object* x_4893; lean_object* x_4894; 
x_4890 = lean_ctor_get(x_4889, 0);
lean_inc(x_4890);
x_4891 = lean_ctor_get(x_4889, 1);
lean_inc(x_4891);
lean_dec(x_4889);
x_4892 = lean_array_push(x_4886, x_4845);
x_4893 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4894 = l_Lean_Meta_mkAppM(x_4893, x_4892, x_5, x_6, x_7, x_8, x_4891);
if (lean_obj_tag(x_4894) == 0)
{
lean_object* x_4895; lean_object* x_4896; lean_object* x_4897; lean_object* x_4898; uint8_t x_4899; lean_object* x_4900; lean_object* x_4901; lean_object* x_4902; lean_object* x_4903; 
x_4895 = lean_ctor_get(x_4894, 0);
lean_inc(x_4895);
x_4896 = lean_ctor_get(x_4894, 1);
lean_inc(x_4896);
if (lean_is_exclusive(x_4894)) {
 lean_ctor_release(x_4894, 0);
 lean_ctor_release(x_4894, 1);
 x_4897 = x_4894;
} else {
 lean_dec_ref(x_4894);
 x_4897 = lean_box(0);
}
x_4898 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4898, 0, x_4895);
x_4899 = 1;
x_4900 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4900, 0, x_4890);
lean_ctor_set(x_4900, 1, x_4898);
lean_ctor_set_uint8(x_4900, sizeof(void*)*2, x_4899);
x_4901 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4901, 0, x_4900);
x_4902 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4902, 0, x_4901);
if (lean_is_scalar(x_4897)) {
 x_4903 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4903 = x_4897;
}
lean_ctor_set(x_4903, 0, x_4902);
lean_ctor_set(x_4903, 1, x_4896);
return x_4903;
}
else
{
lean_object* x_4904; lean_object* x_4905; lean_object* x_4906; lean_object* x_4907; 
lean_dec(x_4890);
x_4904 = lean_ctor_get(x_4894, 0);
lean_inc(x_4904);
x_4905 = lean_ctor_get(x_4894, 1);
lean_inc(x_4905);
if (lean_is_exclusive(x_4894)) {
 lean_ctor_release(x_4894, 0);
 lean_ctor_release(x_4894, 1);
 x_4906 = x_4894;
} else {
 lean_dec_ref(x_4894);
 x_4906 = lean_box(0);
}
if (lean_is_scalar(x_4906)) {
 x_4907 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4907 = x_4906;
}
lean_ctor_set(x_4907, 0, x_4904);
lean_ctor_set(x_4907, 1, x_4905);
return x_4907;
}
}
else
{
lean_object* x_4908; lean_object* x_4909; lean_object* x_4910; lean_object* x_4911; 
lean_dec(x_4886);
lean_dec(x_4845);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4908 = lean_ctor_get(x_4889, 0);
lean_inc(x_4908);
x_4909 = lean_ctor_get(x_4889, 1);
lean_inc(x_4909);
if (lean_is_exclusive(x_4889)) {
 lean_ctor_release(x_4889, 0);
 lean_ctor_release(x_4889, 1);
 x_4910 = x_4889;
} else {
 lean_dec_ref(x_4889);
 x_4910 = lean_box(0);
}
if (lean_is_scalar(x_4910)) {
 x_4911 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4911 = x_4910;
}
lean_ctor_set(x_4911, 0, x_4908);
lean_ctor_set(x_4911, 1, x_4909);
return x_4911;
}
}
else
{
lean_object* x_4912; 
x_4912 = lean_box(0);
x_4850 = x_4912;
goto block_4880;
}
}
block_4880:
{
lean_object* x_4851; lean_object* x_4852; lean_object* x_4853; lean_object* x_4854; lean_object* x_4855; lean_object* x_4856; lean_object* x_4857; 
lean_dec(x_4850);
lean_inc(x_4845);
x_4851 = l_Lean_mkNot(x_4845);
lean_inc(x_4844);
lean_inc(x_4843);
x_4852 = l_Lean_Expr_lam___override(x_4843, x_4844, x_4851, x_4846);
x_4853 = l_Lean_Expr_lam___override(x_4843, x_4844, x_4845, x_4846);
x_4854 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4855 = lean_array_push(x_4854, x_4852);
x_4856 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4857 = l_Lean_Meta_mkAppM(x_4856, x_4855, x_5, x_6, x_7, x_8, x_4849);
if (lean_obj_tag(x_4857) == 0)
{
lean_object* x_4858; lean_object* x_4859; lean_object* x_4860; lean_object* x_4861; lean_object* x_4862; 
x_4858 = lean_ctor_get(x_4857, 0);
lean_inc(x_4858);
x_4859 = lean_ctor_get(x_4857, 1);
lean_inc(x_4859);
lean_dec(x_4857);
x_4860 = lean_array_push(x_4854, x_4853);
x_4861 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4862 = l_Lean_Meta_mkAppM(x_4861, x_4860, x_5, x_6, x_7, x_8, x_4859);
if (lean_obj_tag(x_4862) == 0)
{
lean_object* x_4863; lean_object* x_4864; lean_object* x_4865; lean_object* x_4866; uint8_t x_4867; lean_object* x_4868; lean_object* x_4869; lean_object* x_4870; lean_object* x_4871; 
x_4863 = lean_ctor_get(x_4862, 0);
lean_inc(x_4863);
x_4864 = lean_ctor_get(x_4862, 1);
lean_inc(x_4864);
if (lean_is_exclusive(x_4862)) {
 lean_ctor_release(x_4862, 0);
 lean_ctor_release(x_4862, 1);
 x_4865 = x_4862;
} else {
 lean_dec_ref(x_4862);
 x_4865 = lean_box(0);
}
x_4866 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4866, 0, x_4863);
x_4867 = 1;
x_4868 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4868, 0, x_4858);
lean_ctor_set(x_4868, 1, x_4866);
lean_ctor_set_uint8(x_4868, sizeof(void*)*2, x_4867);
x_4869 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4869, 0, x_4868);
x_4870 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4870, 0, x_4869);
if (lean_is_scalar(x_4865)) {
 x_4871 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4871 = x_4865;
}
lean_ctor_set(x_4871, 0, x_4870);
lean_ctor_set(x_4871, 1, x_4864);
return x_4871;
}
else
{
lean_object* x_4872; lean_object* x_4873; lean_object* x_4874; lean_object* x_4875; 
lean_dec(x_4858);
x_4872 = lean_ctor_get(x_4862, 0);
lean_inc(x_4872);
x_4873 = lean_ctor_get(x_4862, 1);
lean_inc(x_4873);
if (lean_is_exclusive(x_4862)) {
 lean_ctor_release(x_4862, 0);
 lean_ctor_release(x_4862, 1);
 x_4874 = x_4862;
} else {
 lean_dec_ref(x_4862);
 x_4874 = lean_box(0);
}
if (lean_is_scalar(x_4874)) {
 x_4875 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4875 = x_4874;
}
lean_ctor_set(x_4875, 0, x_4872);
lean_ctor_set(x_4875, 1, x_4873);
return x_4875;
}
}
else
{
lean_object* x_4876; lean_object* x_4877; lean_object* x_4878; lean_object* x_4879; 
lean_dec(x_4853);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4876 = lean_ctor_get(x_4857, 0);
lean_inc(x_4876);
x_4877 = lean_ctor_get(x_4857, 1);
lean_inc(x_4877);
if (lean_is_exclusive(x_4857)) {
 lean_ctor_release(x_4857, 0);
 lean_ctor_release(x_4857, 1);
 x_4878 = x_4857;
} else {
 lean_dec_ref(x_4857);
 x_4878 = lean_box(0);
}
if (lean_is_scalar(x_4878)) {
 x_4879 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4879 = x_4878;
}
lean_ctor_set(x_4879, 0, x_4876);
lean_ctor_set(x_4879, 1, x_4877);
return x_4879;
}
}
}
else
{
lean_object* x_4913; lean_object* x_4914; lean_object* x_4915; lean_object* x_4916; 
lean_dec(x_4845);
lean_dec(x_4844);
lean_dec(x_4843);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4913 = lean_ctor_get(x_4847, 0);
lean_inc(x_4913);
x_4914 = lean_ctor_get(x_4847, 1);
lean_inc(x_4914);
if (lean_is_exclusive(x_4847)) {
 lean_ctor_release(x_4847, 0);
 lean_ctor_release(x_4847, 1);
 x_4915 = x_4847;
} else {
 lean_dec_ref(x_4847);
 x_4915 = lean_box(0);
}
if (lean_is_scalar(x_4915)) {
 x_4916 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4916 = x_4915;
}
lean_ctor_set(x_4916, 0, x_4913);
lean_ctor_set(x_4916, 1, x_4914);
return x_4916;
}
}
else
{
lean_object* x_4917; lean_object* x_4918; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4917 = lean_box(0);
x_4918 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4918, 0, x_4917);
lean_ctor_set(x_4918, 1, x_2735);
return x_4918;
}
}
}
}
default: 
{
lean_dec(x_2815);
lean_dec(x_2738);
lean_dec(x_2737);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4919; lean_object* x_4920; lean_object* x_4921; uint8_t x_4922; lean_object* x_4923; 
x_4919 = lean_ctor_get(x_2736, 0);
lean_inc(x_4919);
x_4920 = lean_ctor_get(x_2736, 1);
lean_inc(x_4920);
x_4921 = lean_ctor_get(x_2736, 2);
lean_inc(x_4921);
x_4922 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4920);
x_4923 = l_Lean_Meta_isProp(x_4920, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4923) == 0)
{
lean_object* x_4924; lean_object* x_4925; lean_object* x_4926; uint8_t x_4957; 
x_4924 = lean_ctor_get(x_4923, 0);
lean_inc(x_4924);
x_4925 = lean_ctor_get(x_4923, 1);
lean_inc(x_4925);
lean_dec(x_4923);
x_4957 = lean_unbox(x_4924);
lean_dec(x_4924);
if (x_4957 == 0)
{
lean_object* x_4958; 
x_4958 = lean_box(0);
x_4926 = x_4958;
goto block_4956;
}
else
{
uint8_t x_4959; 
x_4959 = l_Lean_Expr_hasLooseBVars(x_4921);
if (x_4959 == 0)
{
lean_object* x_4960; lean_object* x_4961; lean_object* x_4962; lean_object* x_4963; lean_object* x_4964; lean_object* x_4965; 
lean_dec(x_4919);
lean_inc(x_4921);
x_4960 = l_Lean_mkNot(x_4921);
x_4961 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_4962 = lean_array_push(x_4961, x_4920);
lean_inc(x_4962);
x_4963 = lean_array_push(x_4962, x_4960);
x_4964 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4965 = l_Lean_Meta_mkAppM(x_4964, x_4963, x_5, x_6, x_7, x_8, x_4925);
if (lean_obj_tag(x_4965) == 0)
{
lean_object* x_4966; lean_object* x_4967; lean_object* x_4968; lean_object* x_4969; lean_object* x_4970; 
x_4966 = lean_ctor_get(x_4965, 0);
lean_inc(x_4966);
x_4967 = lean_ctor_get(x_4965, 1);
lean_inc(x_4967);
lean_dec(x_4965);
x_4968 = lean_array_push(x_4962, x_4921);
x_4969 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_4970 = l_Lean_Meta_mkAppM(x_4969, x_4968, x_5, x_6, x_7, x_8, x_4967);
if (lean_obj_tag(x_4970) == 0)
{
lean_object* x_4971; lean_object* x_4972; lean_object* x_4973; lean_object* x_4974; uint8_t x_4975; lean_object* x_4976; lean_object* x_4977; lean_object* x_4978; lean_object* x_4979; 
x_4971 = lean_ctor_get(x_4970, 0);
lean_inc(x_4971);
x_4972 = lean_ctor_get(x_4970, 1);
lean_inc(x_4972);
if (lean_is_exclusive(x_4970)) {
 lean_ctor_release(x_4970, 0);
 lean_ctor_release(x_4970, 1);
 x_4973 = x_4970;
} else {
 lean_dec_ref(x_4970);
 x_4973 = lean_box(0);
}
x_4974 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4974, 0, x_4971);
x_4975 = 1;
x_4976 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4976, 0, x_4966);
lean_ctor_set(x_4976, 1, x_4974);
lean_ctor_set_uint8(x_4976, sizeof(void*)*2, x_4975);
x_4977 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4977, 0, x_4976);
x_4978 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4978, 0, x_4977);
if (lean_is_scalar(x_4973)) {
 x_4979 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4979 = x_4973;
}
lean_ctor_set(x_4979, 0, x_4978);
lean_ctor_set(x_4979, 1, x_4972);
return x_4979;
}
else
{
lean_object* x_4980; lean_object* x_4981; lean_object* x_4982; lean_object* x_4983; 
lean_dec(x_4966);
x_4980 = lean_ctor_get(x_4970, 0);
lean_inc(x_4980);
x_4981 = lean_ctor_get(x_4970, 1);
lean_inc(x_4981);
if (lean_is_exclusive(x_4970)) {
 lean_ctor_release(x_4970, 0);
 lean_ctor_release(x_4970, 1);
 x_4982 = x_4970;
} else {
 lean_dec_ref(x_4970);
 x_4982 = lean_box(0);
}
if (lean_is_scalar(x_4982)) {
 x_4983 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4983 = x_4982;
}
lean_ctor_set(x_4983, 0, x_4980);
lean_ctor_set(x_4983, 1, x_4981);
return x_4983;
}
}
else
{
lean_object* x_4984; lean_object* x_4985; lean_object* x_4986; lean_object* x_4987; 
lean_dec(x_4962);
lean_dec(x_4921);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4984 = lean_ctor_get(x_4965, 0);
lean_inc(x_4984);
x_4985 = lean_ctor_get(x_4965, 1);
lean_inc(x_4985);
if (lean_is_exclusive(x_4965)) {
 lean_ctor_release(x_4965, 0);
 lean_ctor_release(x_4965, 1);
 x_4986 = x_4965;
} else {
 lean_dec_ref(x_4965);
 x_4986 = lean_box(0);
}
if (lean_is_scalar(x_4986)) {
 x_4987 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4987 = x_4986;
}
lean_ctor_set(x_4987, 0, x_4984);
lean_ctor_set(x_4987, 1, x_4985);
return x_4987;
}
}
else
{
lean_object* x_4988; 
x_4988 = lean_box(0);
x_4926 = x_4988;
goto block_4956;
}
}
block_4956:
{
lean_object* x_4927; lean_object* x_4928; lean_object* x_4929; lean_object* x_4930; lean_object* x_4931; lean_object* x_4932; lean_object* x_4933; 
lean_dec(x_4926);
lean_inc(x_4921);
x_4927 = l_Lean_mkNot(x_4921);
lean_inc(x_4920);
lean_inc(x_4919);
x_4928 = l_Lean_Expr_lam___override(x_4919, x_4920, x_4927, x_4922);
x_4929 = l_Lean_Expr_lam___override(x_4919, x_4920, x_4921, x_4922);
x_4930 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_4931 = lean_array_push(x_4930, x_4928);
x_4932 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_4933 = l_Lean_Meta_mkAppM(x_4932, x_4931, x_5, x_6, x_7, x_8, x_4925);
if (lean_obj_tag(x_4933) == 0)
{
lean_object* x_4934; lean_object* x_4935; lean_object* x_4936; lean_object* x_4937; lean_object* x_4938; 
x_4934 = lean_ctor_get(x_4933, 0);
lean_inc(x_4934);
x_4935 = lean_ctor_get(x_4933, 1);
lean_inc(x_4935);
lean_dec(x_4933);
x_4936 = lean_array_push(x_4930, x_4929);
x_4937 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_4938 = l_Lean_Meta_mkAppM(x_4937, x_4936, x_5, x_6, x_7, x_8, x_4935);
if (lean_obj_tag(x_4938) == 0)
{
lean_object* x_4939; lean_object* x_4940; lean_object* x_4941; lean_object* x_4942; uint8_t x_4943; lean_object* x_4944; lean_object* x_4945; lean_object* x_4946; lean_object* x_4947; 
x_4939 = lean_ctor_get(x_4938, 0);
lean_inc(x_4939);
x_4940 = lean_ctor_get(x_4938, 1);
lean_inc(x_4940);
if (lean_is_exclusive(x_4938)) {
 lean_ctor_release(x_4938, 0);
 lean_ctor_release(x_4938, 1);
 x_4941 = x_4938;
} else {
 lean_dec_ref(x_4938);
 x_4941 = lean_box(0);
}
x_4942 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4942, 0, x_4939);
x_4943 = 1;
x_4944 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4944, 0, x_4934);
lean_ctor_set(x_4944, 1, x_4942);
lean_ctor_set_uint8(x_4944, sizeof(void*)*2, x_4943);
x_4945 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4945, 0, x_4944);
x_4946 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4946, 0, x_4945);
if (lean_is_scalar(x_4941)) {
 x_4947 = lean_alloc_ctor(0, 2, 0);
} else {
 x_4947 = x_4941;
}
lean_ctor_set(x_4947, 0, x_4946);
lean_ctor_set(x_4947, 1, x_4940);
return x_4947;
}
else
{
lean_object* x_4948; lean_object* x_4949; lean_object* x_4950; lean_object* x_4951; 
lean_dec(x_4934);
x_4948 = lean_ctor_get(x_4938, 0);
lean_inc(x_4948);
x_4949 = lean_ctor_get(x_4938, 1);
lean_inc(x_4949);
if (lean_is_exclusive(x_4938)) {
 lean_ctor_release(x_4938, 0);
 lean_ctor_release(x_4938, 1);
 x_4950 = x_4938;
} else {
 lean_dec_ref(x_4938);
 x_4950 = lean_box(0);
}
if (lean_is_scalar(x_4950)) {
 x_4951 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4951 = x_4950;
}
lean_ctor_set(x_4951, 0, x_4948);
lean_ctor_set(x_4951, 1, x_4949);
return x_4951;
}
}
else
{
lean_object* x_4952; lean_object* x_4953; lean_object* x_4954; lean_object* x_4955; 
lean_dec(x_4929);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4952 = lean_ctor_get(x_4933, 0);
lean_inc(x_4952);
x_4953 = lean_ctor_get(x_4933, 1);
lean_inc(x_4953);
if (lean_is_exclusive(x_4933)) {
 lean_ctor_release(x_4933, 0);
 lean_ctor_release(x_4933, 1);
 x_4954 = x_4933;
} else {
 lean_dec_ref(x_4933);
 x_4954 = lean_box(0);
}
if (lean_is_scalar(x_4954)) {
 x_4955 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4955 = x_4954;
}
lean_ctor_set(x_4955, 0, x_4952);
lean_ctor_set(x_4955, 1, x_4953);
return x_4955;
}
}
}
else
{
lean_object* x_4989; lean_object* x_4990; lean_object* x_4991; lean_object* x_4992; 
lean_dec(x_4921);
lean_dec(x_4920);
lean_dec(x_4919);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4989 = lean_ctor_get(x_4923, 0);
lean_inc(x_4989);
x_4990 = lean_ctor_get(x_4923, 1);
lean_inc(x_4990);
if (lean_is_exclusive(x_4923)) {
 lean_ctor_release(x_4923, 0);
 lean_ctor_release(x_4923, 1);
 x_4991 = x_4923;
} else {
 lean_dec_ref(x_4923);
 x_4991 = lean_box(0);
}
if (lean_is_scalar(x_4991)) {
 x_4992 = lean_alloc_ctor(1, 2, 0);
} else {
 x_4992 = x_4991;
}
lean_ctor_set(x_4992, 0, x_4989);
lean_ctor_set(x_4992, 1, x_4990);
return x_4992;
}
}
else
{
lean_object* x_4993; lean_object* x_4994; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_4993 = lean_box(0);
x_4994 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4994, 0, x_4993);
lean_ctor_set(x_4994, 1, x_2735);
return x_4994;
}
}
}
}
default: 
{
lean_dec(x_2738);
lean_dec(x_2737);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_2736) == 7)
{
lean_object* x_4995; lean_object* x_4996; lean_object* x_4997; uint8_t x_4998; lean_object* x_4999; 
x_4995 = lean_ctor_get(x_2736, 0);
lean_inc(x_4995);
x_4996 = lean_ctor_get(x_2736, 1);
lean_inc(x_4996);
x_4997 = lean_ctor_get(x_2736, 2);
lean_inc(x_4997);
x_4998 = lean_ctor_get_uint8(x_2736, sizeof(void*)*3 + 8);
lean_dec(x_2736);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4996);
x_4999 = l_Lean_Meta_isProp(x_4996, x_5, x_6, x_7, x_8, x_2735);
if (lean_obj_tag(x_4999) == 0)
{
lean_object* x_5000; lean_object* x_5001; lean_object* x_5002; uint8_t x_5033; 
x_5000 = lean_ctor_get(x_4999, 0);
lean_inc(x_5000);
x_5001 = lean_ctor_get(x_4999, 1);
lean_inc(x_5001);
lean_dec(x_4999);
x_5033 = lean_unbox(x_5000);
lean_dec(x_5000);
if (x_5033 == 0)
{
lean_object* x_5034; 
x_5034 = lean_box(0);
x_5002 = x_5034;
goto block_5032;
}
else
{
uint8_t x_5035; 
x_5035 = l_Lean_Expr_hasLooseBVars(x_4997);
if (x_5035 == 0)
{
lean_object* x_5036; lean_object* x_5037; lean_object* x_5038; lean_object* x_5039; lean_object* x_5040; lean_object* x_5041; 
lean_dec(x_4995);
lean_inc(x_4997);
x_5036 = l_Lean_mkNot(x_4997);
x_5037 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5038 = lean_array_push(x_5037, x_4996);
lean_inc(x_5038);
x_5039 = lean_array_push(x_5038, x_5036);
x_5040 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5041 = l_Lean_Meta_mkAppM(x_5040, x_5039, x_5, x_6, x_7, x_8, x_5001);
if (lean_obj_tag(x_5041) == 0)
{
lean_object* x_5042; lean_object* x_5043; lean_object* x_5044; lean_object* x_5045; lean_object* x_5046; 
x_5042 = lean_ctor_get(x_5041, 0);
lean_inc(x_5042);
x_5043 = lean_ctor_get(x_5041, 1);
lean_inc(x_5043);
lean_dec(x_5041);
x_5044 = lean_array_push(x_5038, x_4997);
x_5045 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5046 = l_Lean_Meta_mkAppM(x_5045, x_5044, x_5, x_6, x_7, x_8, x_5043);
if (lean_obj_tag(x_5046) == 0)
{
lean_object* x_5047; lean_object* x_5048; lean_object* x_5049; lean_object* x_5050; uint8_t x_5051; lean_object* x_5052; lean_object* x_5053; lean_object* x_5054; lean_object* x_5055; 
x_5047 = lean_ctor_get(x_5046, 0);
lean_inc(x_5047);
x_5048 = lean_ctor_get(x_5046, 1);
lean_inc(x_5048);
if (lean_is_exclusive(x_5046)) {
 lean_ctor_release(x_5046, 0);
 lean_ctor_release(x_5046, 1);
 x_5049 = x_5046;
} else {
 lean_dec_ref(x_5046);
 x_5049 = lean_box(0);
}
x_5050 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5050, 0, x_5047);
x_5051 = 1;
x_5052 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5052, 0, x_5042);
lean_ctor_set(x_5052, 1, x_5050);
lean_ctor_set_uint8(x_5052, sizeof(void*)*2, x_5051);
x_5053 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5053, 0, x_5052);
x_5054 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5054, 0, x_5053);
if (lean_is_scalar(x_5049)) {
 x_5055 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5055 = x_5049;
}
lean_ctor_set(x_5055, 0, x_5054);
lean_ctor_set(x_5055, 1, x_5048);
return x_5055;
}
else
{
lean_object* x_5056; lean_object* x_5057; lean_object* x_5058; lean_object* x_5059; 
lean_dec(x_5042);
x_5056 = lean_ctor_get(x_5046, 0);
lean_inc(x_5056);
x_5057 = lean_ctor_get(x_5046, 1);
lean_inc(x_5057);
if (lean_is_exclusive(x_5046)) {
 lean_ctor_release(x_5046, 0);
 lean_ctor_release(x_5046, 1);
 x_5058 = x_5046;
} else {
 lean_dec_ref(x_5046);
 x_5058 = lean_box(0);
}
if (lean_is_scalar(x_5058)) {
 x_5059 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5059 = x_5058;
}
lean_ctor_set(x_5059, 0, x_5056);
lean_ctor_set(x_5059, 1, x_5057);
return x_5059;
}
}
else
{
lean_object* x_5060; lean_object* x_5061; lean_object* x_5062; lean_object* x_5063; 
lean_dec(x_5038);
lean_dec(x_4997);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5060 = lean_ctor_get(x_5041, 0);
lean_inc(x_5060);
x_5061 = lean_ctor_get(x_5041, 1);
lean_inc(x_5061);
if (lean_is_exclusive(x_5041)) {
 lean_ctor_release(x_5041, 0);
 lean_ctor_release(x_5041, 1);
 x_5062 = x_5041;
} else {
 lean_dec_ref(x_5041);
 x_5062 = lean_box(0);
}
if (lean_is_scalar(x_5062)) {
 x_5063 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5063 = x_5062;
}
lean_ctor_set(x_5063, 0, x_5060);
lean_ctor_set(x_5063, 1, x_5061);
return x_5063;
}
}
else
{
lean_object* x_5064; 
x_5064 = lean_box(0);
x_5002 = x_5064;
goto block_5032;
}
}
block_5032:
{
lean_object* x_5003; lean_object* x_5004; lean_object* x_5005; lean_object* x_5006; lean_object* x_5007; lean_object* x_5008; lean_object* x_5009; 
lean_dec(x_5002);
lean_inc(x_4997);
x_5003 = l_Lean_mkNot(x_4997);
lean_inc(x_4996);
lean_inc(x_4995);
x_5004 = l_Lean_Expr_lam___override(x_4995, x_4996, x_5003, x_4998);
x_5005 = l_Lean_Expr_lam___override(x_4995, x_4996, x_4997, x_4998);
x_5006 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5007 = lean_array_push(x_5006, x_5004);
x_5008 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5009 = l_Lean_Meta_mkAppM(x_5008, x_5007, x_5, x_6, x_7, x_8, x_5001);
if (lean_obj_tag(x_5009) == 0)
{
lean_object* x_5010; lean_object* x_5011; lean_object* x_5012; lean_object* x_5013; lean_object* x_5014; 
x_5010 = lean_ctor_get(x_5009, 0);
lean_inc(x_5010);
x_5011 = lean_ctor_get(x_5009, 1);
lean_inc(x_5011);
lean_dec(x_5009);
x_5012 = lean_array_push(x_5006, x_5005);
x_5013 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5014 = l_Lean_Meta_mkAppM(x_5013, x_5012, x_5, x_6, x_7, x_8, x_5011);
if (lean_obj_tag(x_5014) == 0)
{
lean_object* x_5015; lean_object* x_5016; lean_object* x_5017; lean_object* x_5018; uint8_t x_5019; lean_object* x_5020; lean_object* x_5021; lean_object* x_5022; lean_object* x_5023; 
x_5015 = lean_ctor_get(x_5014, 0);
lean_inc(x_5015);
x_5016 = lean_ctor_get(x_5014, 1);
lean_inc(x_5016);
if (lean_is_exclusive(x_5014)) {
 lean_ctor_release(x_5014, 0);
 lean_ctor_release(x_5014, 1);
 x_5017 = x_5014;
} else {
 lean_dec_ref(x_5014);
 x_5017 = lean_box(0);
}
x_5018 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5018, 0, x_5015);
x_5019 = 1;
x_5020 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5020, 0, x_5010);
lean_ctor_set(x_5020, 1, x_5018);
lean_ctor_set_uint8(x_5020, sizeof(void*)*2, x_5019);
x_5021 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5021, 0, x_5020);
x_5022 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5022, 0, x_5021);
if (lean_is_scalar(x_5017)) {
 x_5023 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5023 = x_5017;
}
lean_ctor_set(x_5023, 0, x_5022);
lean_ctor_set(x_5023, 1, x_5016);
return x_5023;
}
else
{
lean_object* x_5024; lean_object* x_5025; lean_object* x_5026; lean_object* x_5027; 
lean_dec(x_5010);
x_5024 = lean_ctor_get(x_5014, 0);
lean_inc(x_5024);
x_5025 = lean_ctor_get(x_5014, 1);
lean_inc(x_5025);
if (lean_is_exclusive(x_5014)) {
 lean_ctor_release(x_5014, 0);
 lean_ctor_release(x_5014, 1);
 x_5026 = x_5014;
} else {
 lean_dec_ref(x_5014);
 x_5026 = lean_box(0);
}
if (lean_is_scalar(x_5026)) {
 x_5027 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5027 = x_5026;
}
lean_ctor_set(x_5027, 0, x_5024);
lean_ctor_set(x_5027, 1, x_5025);
return x_5027;
}
}
else
{
lean_object* x_5028; lean_object* x_5029; lean_object* x_5030; lean_object* x_5031; 
lean_dec(x_5005);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5028 = lean_ctor_get(x_5009, 0);
lean_inc(x_5028);
x_5029 = lean_ctor_get(x_5009, 1);
lean_inc(x_5029);
if (lean_is_exclusive(x_5009)) {
 lean_ctor_release(x_5009, 0);
 lean_ctor_release(x_5009, 1);
 x_5030 = x_5009;
} else {
 lean_dec_ref(x_5009);
 x_5030 = lean_box(0);
}
if (lean_is_scalar(x_5030)) {
 x_5031 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5031 = x_5030;
}
lean_ctor_set(x_5031, 0, x_5028);
lean_ctor_set(x_5031, 1, x_5029);
return x_5031;
}
}
}
else
{
lean_object* x_5065; lean_object* x_5066; lean_object* x_5067; lean_object* x_5068; 
lean_dec(x_4997);
lean_dec(x_4996);
lean_dec(x_4995);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5065 = lean_ctor_get(x_4999, 0);
lean_inc(x_5065);
x_5066 = lean_ctor_get(x_4999, 1);
lean_inc(x_5066);
if (lean_is_exclusive(x_4999)) {
 lean_ctor_release(x_4999, 0);
 lean_ctor_release(x_4999, 1);
 x_5067 = x_4999;
} else {
 lean_dec_ref(x_4999);
 x_5067 = lean_box(0);
}
if (lean_is_scalar(x_5067)) {
 x_5068 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5068 = x_5067;
}
lean_ctor_set(x_5068, 0, x_5065);
lean_ctor_set(x_5068, 1, x_5066);
return x_5068;
}
}
else
{
lean_object* x_5069; lean_object* x_5070; 
lean_dec(x_2736);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5069 = lean_box(0);
x_5070 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5070, 0, x_5069);
lean_ctor_set(x_5070, 1, x_2735);
return x_5070;
}
}
}
}
}
}
else
{
lean_object* x_5071; lean_object* x_5072; lean_object* x_5073; lean_object* x_5074; uint8_t x_5075; 
x_5071 = lean_ctor_get(x_19, 0);
x_5072 = lean_ctor_get(x_19, 1);
lean_inc(x_5072);
lean_inc(x_5071);
lean_dec(x_19);
x_5073 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2;
x_5074 = lean_unsigned_to_nat(1u);
x_5075 = l_Lean_Expr_isAppOfArity(x_5071, x_5073, x_5074);
if (x_5075 == 0)
{
lean_object* x_5076; lean_object* x_5077; 
lean_dec(x_5071);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_5076 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4;
x_5077 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5077, 0, x_5076);
lean_ctor_set(x_5077, 1, x_5072);
return x_5077;
}
else
{
lean_object* x_5078; lean_object* x_5079; lean_object* x_5080; lean_object* x_5081; lean_object* x_5082; lean_object* x_5083; lean_object* x_5084; lean_object* x_5085; 
x_5078 = l_Lean_Expr_appArg_x21(x_5071);
lean_dec(x_5071);
x_5079 = l_Lean_instantiateMVars___at_Lean_Meta_Simp_synthesizeArgs___spec__1(x_5078, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_5072);
x_5080 = lean_ctor_get(x_5079, 0);
lean_inc(x_5080);
x_5081 = lean_ctor_get(x_5079, 1);
lean_inc(x_5081);
if (lean_is_exclusive(x_5079)) {
 lean_ctor_release(x_5079, 0);
 lean_ctor_release(x_5079, 1);
 x_5082 = x_5079;
} else {
 lean_dec_ref(x_5079);
 x_5082 = lean_box(0);
}
x_5083 = l_Lean_Expr_cleanupAnnotations(x_5080);
lean_inc(x_5083);
x_5084 = l_Lean_Expr_getAppFnArgs(x_5083);
x_5085 = lean_ctor_get(x_5084, 0);
lean_inc(x_5085);
switch (lean_obj_tag(x_5085)) {
case 0:
{
lean_dec(x_5084);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5086; lean_object* x_5087; lean_object* x_5088; uint8_t x_5089; lean_object* x_5090; 
lean_dec(x_5082);
x_5086 = lean_ctor_get(x_5083, 0);
lean_inc(x_5086);
x_5087 = lean_ctor_get(x_5083, 1);
lean_inc(x_5087);
x_5088 = lean_ctor_get(x_5083, 2);
lean_inc(x_5088);
x_5089 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5087);
x_5090 = l_Lean_Meta_isProp(x_5087, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5090) == 0)
{
lean_object* x_5091; lean_object* x_5092; lean_object* x_5093; uint8_t x_5124; 
x_5091 = lean_ctor_get(x_5090, 0);
lean_inc(x_5091);
x_5092 = lean_ctor_get(x_5090, 1);
lean_inc(x_5092);
lean_dec(x_5090);
x_5124 = lean_unbox(x_5091);
lean_dec(x_5091);
if (x_5124 == 0)
{
lean_object* x_5125; 
x_5125 = lean_box(0);
x_5093 = x_5125;
goto block_5123;
}
else
{
uint8_t x_5126; 
x_5126 = l_Lean_Expr_hasLooseBVars(x_5088);
if (x_5126 == 0)
{
lean_object* x_5127; lean_object* x_5128; lean_object* x_5129; lean_object* x_5130; lean_object* x_5131; lean_object* x_5132; 
lean_dec(x_5086);
lean_inc(x_5088);
x_5127 = l_Lean_mkNot(x_5088);
x_5128 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5129 = lean_array_push(x_5128, x_5087);
lean_inc(x_5129);
x_5130 = lean_array_push(x_5129, x_5127);
x_5131 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5132 = l_Lean_Meta_mkAppM(x_5131, x_5130, x_5, x_6, x_7, x_8, x_5092);
if (lean_obj_tag(x_5132) == 0)
{
lean_object* x_5133; lean_object* x_5134; lean_object* x_5135; lean_object* x_5136; lean_object* x_5137; 
x_5133 = lean_ctor_get(x_5132, 0);
lean_inc(x_5133);
x_5134 = lean_ctor_get(x_5132, 1);
lean_inc(x_5134);
lean_dec(x_5132);
x_5135 = lean_array_push(x_5129, x_5088);
x_5136 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5137 = l_Lean_Meta_mkAppM(x_5136, x_5135, x_5, x_6, x_7, x_8, x_5134);
if (lean_obj_tag(x_5137) == 0)
{
lean_object* x_5138; lean_object* x_5139; lean_object* x_5140; lean_object* x_5141; uint8_t x_5142; lean_object* x_5143; lean_object* x_5144; lean_object* x_5145; lean_object* x_5146; 
x_5138 = lean_ctor_get(x_5137, 0);
lean_inc(x_5138);
x_5139 = lean_ctor_get(x_5137, 1);
lean_inc(x_5139);
if (lean_is_exclusive(x_5137)) {
 lean_ctor_release(x_5137, 0);
 lean_ctor_release(x_5137, 1);
 x_5140 = x_5137;
} else {
 lean_dec_ref(x_5137);
 x_5140 = lean_box(0);
}
x_5141 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5141, 0, x_5138);
x_5142 = 1;
x_5143 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5143, 0, x_5133);
lean_ctor_set(x_5143, 1, x_5141);
lean_ctor_set_uint8(x_5143, sizeof(void*)*2, x_5142);
x_5144 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5144, 0, x_5143);
x_5145 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5145, 0, x_5144);
if (lean_is_scalar(x_5140)) {
 x_5146 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5146 = x_5140;
}
lean_ctor_set(x_5146, 0, x_5145);
lean_ctor_set(x_5146, 1, x_5139);
return x_5146;
}
else
{
lean_object* x_5147; lean_object* x_5148; lean_object* x_5149; lean_object* x_5150; 
lean_dec(x_5133);
x_5147 = lean_ctor_get(x_5137, 0);
lean_inc(x_5147);
x_5148 = lean_ctor_get(x_5137, 1);
lean_inc(x_5148);
if (lean_is_exclusive(x_5137)) {
 lean_ctor_release(x_5137, 0);
 lean_ctor_release(x_5137, 1);
 x_5149 = x_5137;
} else {
 lean_dec_ref(x_5137);
 x_5149 = lean_box(0);
}
if (lean_is_scalar(x_5149)) {
 x_5150 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5150 = x_5149;
}
lean_ctor_set(x_5150, 0, x_5147);
lean_ctor_set(x_5150, 1, x_5148);
return x_5150;
}
}
else
{
lean_object* x_5151; lean_object* x_5152; lean_object* x_5153; lean_object* x_5154; 
lean_dec(x_5129);
lean_dec(x_5088);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5151 = lean_ctor_get(x_5132, 0);
lean_inc(x_5151);
x_5152 = lean_ctor_get(x_5132, 1);
lean_inc(x_5152);
if (lean_is_exclusive(x_5132)) {
 lean_ctor_release(x_5132, 0);
 lean_ctor_release(x_5132, 1);
 x_5153 = x_5132;
} else {
 lean_dec_ref(x_5132);
 x_5153 = lean_box(0);
}
if (lean_is_scalar(x_5153)) {
 x_5154 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5154 = x_5153;
}
lean_ctor_set(x_5154, 0, x_5151);
lean_ctor_set(x_5154, 1, x_5152);
return x_5154;
}
}
else
{
lean_object* x_5155; 
x_5155 = lean_box(0);
x_5093 = x_5155;
goto block_5123;
}
}
block_5123:
{
lean_object* x_5094; lean_object* x_5095; lean_object* x_5096; lean_object* x_5097; lean_object* x_5098; lean_object* x_5099; lean_object* x_5100; 
lean_dec(x_5093);
lean_inc(x_5088);
x_5094 = l_Lean_mkNot(x_5088);
lean_inc(x_5087);
lean_inc(x_5086);
x_5095 = l_Lean_Expr_lam___override(x_5086, x_5087, x_5094, x_5089);
x_5096 = l_Lean_Expr_lam___override(x_5086, x_5087, x_5088, x_5089);
x_5097 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5098 = lean_array_push(x_5097, x_5095);
x_5099 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5100 = l_Lean_Meta_mkAppM(x_5099, x_5098, x_5, x_6, x_7, x_8, x_5092);
if (lean_obj_tag(x_5100) == 0)
{
lean_object* x_5101; lean_object* x_5102; lean_object* x_5103; lean_object* x_5104; lean_object* x_5105; 
x_5101 = lean_ctor_get(x_5100, 0);
lean_inc(x_5101);
x_5102 = lean_ctor_get(x_5100, 1);
lean_inc(x_5102);
lean_dec(x_5100);
x_5103 = lean_array_push(x_5097, x_5096);
x_5104 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5105 = l_Lean_Meta_mkAppM(x_5104, x_5103, x_5, x_6, x_7, x_8, x_5102);
if (lean_obj_tag(x_5105) == 0)
{
lean_object* x_5106; lean_object* x_5107; lean_object* x_5108; lean_object* x_5109; uint8_t x_5110; lean_object* x_5111; lean_object* x_5112; lean_object* x_5113; lean_object* x_5114; 
x_5106 = lean_ctor_get(x_5105, 0);
lean_inc(x_5106);
x_5107 = lean_ctor_get(x_5105, 1);
lean_inc(x_5107);
if (lean_is_exclusive(x_5105)) {
 lean_ctor_release(x_5105, 0);
 lean_ctor_release(x_5105, 1);
 x_5108 = x_5105;
} else {
 lean_dec_ref(x_5105);
 x_5108 = lean_box(0);
}
x_5109 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5109, 0, x_5106);
x_5110 = 1;
x_5111 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5111, 0, x_5101);
lean_ctor_set(x_5111, 1, x_5109);
lean_ctor_set_uint8(x_5111, sizeof(void*)*2, x_5110);
x_5112 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5112, 0, x_5111);
x_5113 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5113, 0, x_5112);
if (lean_is_scalar(x_5108)) {
 x_5114 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5114 = x_5108;
}
lean_ctor_set(x_5114, 0, x_5113);
lean_ctor_set(x_5114, 1, x_5107);
return x_5114;
}
else
{
lean_object* x_5115; lean_object* x_5116; lean_object* x_5117; lean_object* x_5118; 
lean_dec(x_5101);
x_5115 = lean_ctor_get(x_5105, 0);
lean_inc(x_5115);
x_5116 = lean_ctor_get(x_5105, 1);
lean_inc(x_5116);
if (lean_is_exclusive(x_5105)) {
 lean_ctor_release(x_5105, 0);
 lean_ctor_release(x_5105, 1);
 x_5117 = x_5105;
} else {
 lean_dec_ref(x_5105);
 x_5117 = lean_box(0);
}
if (lean_is_scalar(x_5117)) {
 x_5118 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5118 = x_5117;
}
lean_ctor_set(x_5118, 0, x_5115);
lean_ctor_set(x_5118, 1, x_5116);
return x_5118;
}
}
else
{
lean_object* x_5119; lean_object* x_5120; lean_object* x_5121; lean_object* x_5122; 
lean_dec(x_5096);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5119 = lean_ctor_get(x_5100, 0);
lean_inc(x_5119);
x_5120 = lean_ctor_get(x_5100, 1);
lean_inc(x_5120);
if (lean_is_exclusive(x_5100)) {
 lean_ctor_release(x_5100, 0);
 lean_ctor_release(x_5100, 1);
 x_5121 = x_5100;
} else {
 lean_dec_ref(x_5100);
 x_5121 = lean_box(0);
}
if (lean_is_scalar(x_5121)) {
 x_5122 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5122 = x_5121;
}
lean_ctor_set(x_5122, 0, x_5119);
lean_ctor_set(x_5122, 1, x_5120);
return x_5122;
}
}
}
else
{
lean_object* x_5156; lean_object* x_5157; lean_object* x_5158; lean_object* x_5159; 
lean_dec(x_5088);
lean_dec(x_5087);
lean_dec(x_5086);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5156 = lean_ctor_get(x_5090, 0);
lean_inc(x_5156);
x_5157 = lean_ctor_get(x_5090, 1);
lean_inc(x_5157);
if (lean_is_exclusive(x_5090)) {
 lean_ctor_release(x_5090, 0);
 lean_ctor_release(x_5090, 1);
 x_5158 = x_5090;
} else {
 lean_dec_ref(x_5090);
 x_5158 = lean_box(0);
}
if (lean_is_scalar(x_5158)) {
 x_5159 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5159 = x_5158;
}
lean_ctor_set(x_5159, 0, x_5156);
lean_ctor_set(x_5159, 1, x_5157);
return x_5159;
}
}
else
{
lean_object* x_5160; lean_object* x_5161; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5160 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5161 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5161 = x_5082;
}
lean_ctor_set(x_5161, 0, x_5160);
lean_ctor_set(x_5161, 1, x_5081);
return x_5161;
}
}
case 1:
{
lean_object* x_5162; 
x_5162 = lean_ctor_get(x_5085, 0);
lean_inc(x_5162);
switch (lean_obj_tag(x_5162)) {
case 0:
{
lean_object* x_5163; lean_object* x_5164; lean_object* x_5165; uint8_t x_5166; 
lean_dec(x_1);
x_5163 = lean_ctor_get(x_5084, 1);
lean_inc(x_5163);
lean_dec(x_5084);
x_5164 = lean_ctor_get(x_5085, 1);
lean_inc(x_5164);
lean_dec(x_5085);
x_5165 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1;
x_5166 = lean_string_dec_eq(x_5164, x_5165);
if (x_5166 == 0)
{
lean_object* x_5167; uint8_t x_5168; 
x_5167 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9;
x_5168 = lean_string_dec_eq(x_5164, x_5167);
if (x_5168 == 0)
{
lean_object* x_5169; uint8_t x_5170; 
x_5169 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13;
x_5170 = lean_string_dec_eq(x_5164, x_5169);
if (x_5170 == 0)
{
lean_object* x_5171; uint8_t x_5172; 
x_5171 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14;
x_5172 = lean_string_dec_eq(x_5164, x_5171);
if (x_5172 == 0)
{
lean_object* x_5173; uint8_t x_5174; 
x_5173 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7;
x_5174 = lean_string_dec_eq(x_5164, x_5173);
if (x_5174 == 0)
{
lean_object* x_5175; uint8_t x_5176; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_5175 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1;
x_5176 = lean_string_dec_eq(x_5164, x_5175);
if (x_5176 == 0)
{
lean_object* x_5177; uint8_t x_5178; 
x_5177 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5;
x_5178 = lean_string_dec_eq(x_5164, x_5177);
lean_dec(x_5164);
if (x_5178 == 0)
{
lean_dec(x_5163);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5179; lean_object* x_5180; lean_object* x_5181; uint8_t x_5182; lean_object* x_5183; 
lean_dec(x_5082);
x_5179 = lean_ctor_get(x_5083, 0);
lean_inc(x_5179);
x_5180 = lean_ctor_get(x_5083, 1);
lean_inc(x_5180);
x_5181 = lean_ctor_get(x_5083, 2);
lean_inc(x_5181);
x_5182 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5180);
x_5183 = l_Lean_Meta_isProp(x_5180, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5183) == 0)
{
lean_object* x_5184; lean_object* x_5185; lean_object* x_5186; uint8_t x_5217; 
x_5184 = lean_ctor_get(x_5183, 0);
lean_inc(x_5184);
x_5185 = lean_ctor_get(x_5183, 1);
lean_inc(x_5185);
lean_dec(x_5183);
x_5217 = lean_unbox(x_5184);
lean_dec(x_5184);
if (x_5217 == 0)
{
lean_object* x_5218; 
x_5218 = lean_box(0);
x_5186 = x_5218;
goto block_5216;
}
else
{
uint8_t x_5219; 
x_5219 = l_Lean_Expr_hasLooseBVars(x_5181);
if (x_5219 == 0)
{
lean_object* x_5220; lean_object* x_5221; lean_object* x_5222; lean_object* x_5223; lean_object* x_5224; lean_object* x_5225; 
lean_dec(x_5179);
lean_inc(x_5181);
x_5220 = l_Lean_mkNot(x_5181);
x_5221 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5222 = lean_array_push(x_5221, x_5180);
lean_inc(x_5222);
x_5223 = lean_array_push(x_5222, x_5220);
x_5224 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5225 = l_Lean_Meta_mkAppM(x_5224, x_5223, x_5, x_6, x_7, x_8, x_5185);
if (lean_obj_tag(x_5225) == 0)
{
lean_object* x_5226; lean_object* x_5227; lean_object* x_5228; lean_object* x_5229; lean_object* x_5230; 
x_5226 = lean_ctor_get(x_5225, 0);
lean_inc(x_5226);
x_5227 = lean_ctor_get(x_5225, 1);
lean_inc(x_5227);
lean_dec(x_5225);
x_5228 = lean_array_push(x_5222, x_5181);
x_5229 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5230 = l_Lean_Meta_mkAppM(x_5229, x_5228, x_5, x_6, x_7, x_8, x_5227);
if (lean_obj_tag(x_5230) == 0)
{
lean_object* x_5231; lean_object* x_5232; lean_object* x_5233; lean_object* x_5234; uint8_t x_5235; lean_object* x_5236; lean_object* x_5237; lean_object* x_5238; lean_object* x_5239; 
x_5231 = lean_ctor_get(x_5230, 0);
lean_inc(x_5231);
x_5232 = lean_ctor_get(x_5230, 1);
lean_inc(x_5232);
if (lean_is_exclusive(x_5230)) {
 lean_ctor_release(x_5230, 0);
 lean_ctor_release(x_5230, 1);
 x_5233 = x_5230;
} else {
 lean_dec_ref(x_5230);
 x_5233 = lean_box(0);
}
x_5234 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5234, 0, x_5231);
x_5235 = 1;
x_5236 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5236, 0, x_5226);
lean_ctor_set(x_5236, 1, x_5234);
lean_ctor_set_uint8(x_5236, sizeof(void*)*2, x_5235);
x_5237 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5237, 0, x_5236);
x_5238 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5238, 0, x_5237);
if (lean_is_scalar(x_5233)) {
 x_5239 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5239 = x_5233;
}
lean_ctor_set(x_5239, 0, x_5238);
lean_ctor_set(x_5239, 1, x_5232);
return x_5239;
}
else
{
lean_object* x_5240; lean_object* x_5241; lean_object* x_5242; lean_object* x_5243; 
lean_dec(x_5226);
x_5240 = lean_ctor_get(x_5230, 0);
lean_inc(x_5240);
x_5241 = lean_ctor_get(x_5230, 1);
lean_inc(x_5241);
if (lean_is_exclusive(x_5230)) {
 lean_ctor_release(x_5230, 0);
 lean_ctor_release(x_5230, 1);
 x_5242 = x_5230;
} else {
 lean_dec_ref(x_5230);
 x_5242 = lean_box(0);
}
if (lean_is_scalar(x_5242)) {
 x_5243 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5243 = x_5242;
}
lean_ctor_set(x_5243, 0, x_5240);
lean_ctor_set(x_5243, 1, x_5241);
return x_5243;
}
}
else
{
lean_object* x_5244; lean_object* x_5245; lean_object* x_5246; lean_object* x_5247; 
lean_dec(x_5222);
lean_dec(x_5181);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5244 = lean_ctor_get(x_5225, 0);
lean_inc(x_5244);
x_5245 = lean_ctor_get(x_5225, 1);
lean_inc(x_5245);
if (lean_is_exclusive(x_5225)) {
 lean_ctor_release(x_5225, 0);
 lean_ctor_release(x_5225, 1);
 x_5246 = x_5225;
} else {
 lean_dec_ref(x_5225);
 x_5246 = lean_box(0);
}
if (lean_is_scalar(x_5246)) {
 x_5247 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5247 = x_5246;
}
lean_ctor_set(x_5247, 0, x_5244);
lean_ctor_set(x_5247, 1, x_5245);
return x_5247;
}
}
else
{
lean_object* x_5248; 
x_5248 = lean_box(0);
x_5186 = x_5248;
goto block_5216;
}
}
block_5216:
{
lean_object* x_5187; lean_object* x_5188; lean_object* x_5189; lean_object* x_5190; lean_object* x_5191; lean_object* x_5192; lean_object* x_5193; 
lean_dec(x_5186);
lean_inc(x_5181);
x_5187 = l_Lean_mkNot(x_5181);
lean_inc(x_5180);
lean_inc(x_5179);
x_5188 = l_Lean_Expr_lam___override(x_5179, x_5180, x_5187, x_5182);
x_5189 = l_Lean_Expr_lam___override(x_5179, x_5180, x_5181, x_5182);
x_5190 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5191 = lean_array_push(x_5190, x_5188);
x_5192 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5193 = l_Lean_Meta_mkAppM(x_5192, x_5191, x_5, x_6, x_7, x_8, x_5185);
if (lean_obj_tag(x_5193) == 0)
{
lean_object* x_5194; lean_object* x_5195; lean_object* x_5196; lean_object* x_5197; lean_object* x_5198; 
x_5194 = lean_ctor_get(x_5193, 0);
lean_inc(x_5194);
x_5195 = lean_ctor_get(x_5193, 1);
lean_inc(x_5195);
lean_dec(x_5193);
x_5196 = lean_array_push(x_5190, x_5189);
x_5197 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5198 = l_Lean_Meta_mkAppM(x_5197, x_5196, x_5, x_6, x_7, x_8, x_5195);
if (lean_obj_tag(x_5198) == 0)
{
lean_object* x_5199; lean_object* x_5200; lean_object* x_5201; lean_object* x_5202; uint8_t x_5203; lean_object* x_5204; lean_object* x_5205; lean_object* x_5206; lean_object* x_5207; 
x_5199 = lean_ctor_get(x_5198, 0);
lean_inc(x_5199);
x_5200 = lean_ctor_get(x_5198, 1);
lean_inc(x_5200);
if (lean_is_exclusive(x_5198)) {
 lean_ctor_release(x_5198, 0);
 lean_ctor_release(x_5198, 1);
 x_5201 = x_5198;
} else {
 lean_dec_ref(x_5198);
 x_5201 = lean_box(0);
}
x_5202 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5202, 0, x_5199);
x_5203 = 1;
x_5204 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5204, 0, x_5194);
lean_ctor_set(x_5204, 1, x_5202);
lean_ctor_set_uint8(x_5204, sizeof(void*)*2, x_5203);
x_5205 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5205, 0, x_5204);
x_5206 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5206, 0, x_5205);
if (lean_is_scalar(x_5201)) {
 x_5207 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5207 = x_5201;
}
lean_ctor_set(x_5207, 0, x_5206);
lean_ctor_set(x_5207, 1, x_5200);
return x_5207;
}
else
{
lean_object* x_5208; lean_object* x_5209; lean_object* x_5210; lean_object* x_5211; 
lean_dec(x_5194);
x_5208 = lean_ctor_get(x_5198, 0);
lean_inc(x_5208);
x_5209 = lean_ctor_get(x_5198, 1);
lean_inc(x_5209);
if (lean_is_exclusive(x_5198)) {
 lean_ctor_release(x_5198, 0);
 lean_ctor_release(x_5198, 1);
 x_5210 = x_5198;
} else {
 lean_dec_ref(x_5198);
 x_5210 = lean_box(0);
}
if (lean_is_scalar(x_5210)) {
 x_5211 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5211 = x_5210;
}
lean_ctor_set(x_5211, 0, x_5208);
lean_ctor_set(x_5211, 1, x_5209);
return x_5211;
}
}
else
{
lean_object* x_5212; lean_object* x_5213; lean_object* x_5214; lean_object* x_5215; 
lean_dec(x_5189);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5212 = lean_ctor_get(x_5193, 0);
lean_inc(x_5212);
x_5213 = lean_ctor_get(x_5193, 1);
lean_inc(x_5213);
if (lean_is_exclusive(x_5193)) {
 lean_ctor_release(x_5193, 0);
 lean_ctor_release(x_5193, 1);
 x_5214 = x_5193;
} else {
 lean_dec_ref(x_5193);
 x_5214 = lean_box(0);
}
if (lean_is_scalar(x_5214)) {
 x_5215 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5215 = x_5214;
}
lean_ctor_set(x_5215, 0, x_5212);
lean_ctor_set(x_5215, 1, x_5213);
return x_5215;
}
}
}
else
{
lean_object* x_5249; lean_object* x_5250; lean_object* x_5251; lean_object* x_5252; 
lean_dec(x_5181);
lean_dec(x_5180);
lean_dec(x_5179);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5249 = lean_ctor_get(x_5183, 0);
lean_inc(x_5249);
x_5250 = lean_ctor_get(x_5183, 1);
lean_inc(x_5250);
if (lean_is_exclusive(x_5183)) {
 lean_ctor_release(x_5183, 0);
 lean_ctor_release(x_5183, 1);
 x_5251 = x_5183;
} else {
 lean_dec_ref(x_5183);
 x_5251 = lean_box(0);
}
if (lean_is_scalar(x_5251)) {
 x_5252 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5252 = x_5251;
}
lean_ctor_set(x_5252, 0, x_5249);
lean_ctor_set(x_5252, 1, x_5250);
return x_5252;
}
}
else
{
lean_object* x_5253; lean_object* x_5254; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5253 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5254 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5254 = x_5082;
}
lean_ctor_set(x_5254, 0, x_5253);
lean_ctor_set(x_5254, 1, x_5081);
return x_5254;
}
}
else
{
lean_object* x_5255; lean_object* x_5256; uint8_t x_5257; 
x_5255 = lean_array_get_size(x_5163);
x_5256 = lean_unsigned_to_nat(2u);
x_5257 = lean_nat_dec_eq(x_5255, x_5256);
lean_dec(x_5255);
if (x_5257 == 0)
{
lean_dec(x_5163);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5258; lean_object* x_5259; lean_object* x_5260; uint8_t x_5261; lean_object* x_5262; 
lean_dec(x_5082);
x_5258 = lean_ctor_get(x_5083, 0);
lean_inc(x_5258);
x_5259 = lean_ctor_get(x_5083, 1);
lean_inc(x_5259);
x_5260 = lean_ctor_get(x_5083, 2);
lean_inc(x_5260);
x_5261 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5259);
x_5262 = l_Lean_Meta_isProp(x_5259, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5262) == 0)
{
lean_object* x_5263; lean_object* x_5264; lean_object* x_5265; uint8_t x_5296; 
x_5263 = lean_ctor_get(x_5262, 0);
lean_inc(x_5263);
x_5264 = lean_ctor_get(x_5262, 1);
lean_inc(x_5264);
lean_dec(x_5262);
x_5296 = lean_unbox(x_5263);
lean_dec(x_5263);
if (x_5296 == 0)
{
lean_object* x_5297; 
x_5297 = lean_box(0);
x_5265 = x_5297;
goto block_5295;
}
else
{
uint8_t x_5298; 
x_5298 = l_Lean_Expr_hasLooseBVars(x_5260);
if (x_5298 == 0)
{
lean_object* x_5299; lean_object* x_5300; lean_object* x_5301; lean_object* x_5302; lean_object* x_5303; lean_object* x_5304; 
lean_dec(x_5258);
lean_inc(x_5260);
x_5299 = l_Lean_mkNot(x_5260);
x_5300 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5301 = lean_array_push(x_5300, x_5259);
lean_inc(x_5301);
x_5302 = lean_array_push(x_5301, x_5299);
x_5303 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5304 = l_Lean_Meta_mkAppM(x_5303, x_5302, x_5, x_6, x_7, x_8, x_5264);
if (lean_obj_tag(x_5304) == 0)
{
lean_object* x_5305; lean_object* x_5306; lean_object* x_5307; lean_object* x_5308; lean_object* x_5309; 
x_5305 = lean_ctor_get(x_5304, 0);
lean_inc(x_5305);
x_5306 = lean_ctor_get(x_5304, 1);
lean_inc(x_5306);
lean_dec(x_5304);
x_5307 = lean_array_push(x_5301, x_5260);
x_5308 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5309 = l_Lean_Meta_mkAppM(x_5308, x_5307, x_5, x_6, x_7, x_8, x_5306);
if (lean_obj_tag(x_5309) == 0)
{
lean_object* x_5310; lean_object* x_5311; lean_object* x_5312; lean_object* x_5313; uint8_t x_5314; lean_object* x_5315; lean_object* x_5316; lean_object* x_5317; lean_object* x_5318; 
x_5310 = lean_ctor_get(x_5309, 0);
lean_inc(x_5310);
x_5311 = lean_ctor_get(x_5309, 1);
lean_inc(x_5311);
if (lean_is_exclusive(x_5309)) {
 lean_ctor_release(x_5309, 0);
 lean_ctor_release(x_5309, 1);
 x_5312 = x_5309;
} else {
 lean_dec_ref(x_5309);
 x_5312 = lean_box(0);
}
x_5313 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5313, 0, x_5310);
x_5314 = 1;
x_5315 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5315, 0, x_5305);
lean_ctor_set(x_5315, 1, x_5313);
lean_ctor_set_uint8(x_5315, sizeof(void*)*2, x_5314);
x_5316 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5316, 0, x_5315);
x_5317 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5317, 0, x_5316);
if (lean_is_scalar(x_5312)) {
 x_5318 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5318 = x_5312;
}
lean_ctor_set(x_5318, 0, x_5317);
lean_ctor_set(x_5318, 1, x_5311);
return x_5318;
}
else
{
lean_object* x_5319; lean_object* x_5320; lean_object* x_5321; lean_object* x_5322; 
lean_dec(x_5305);
x_5319 = lean_ctor_get(x_5309, 0);
lean_inc(x_5319);
x_5320 = lean_ctor_get(x_5309, 1);
lean_inc(x_5320);
if (lean_is_exclusive(x_5309)) {
 lean_ctor_release(x_5309, 0);
 lean_ctor_release(x_5309, 1);
 x_5321 = x_5309;
} else {
 lean_dec_ref(x_5309);
 x_5321 = lean_box(0);
}
if (lean_is_scalar(x_5321)) {
 x_5322 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5322 = x_5321;
}
lean_ctor_set(x_5322, 0, x_5319);
lean_ctor_set(x_5322, 1, x_5320);
return x_5322;
}
}
else
{
lean_object* x_5323; lean_object* x_5324; lean_object* x_5325; lean_object* x_5326; 
lean_dec(x_5301);
lean_dec(x_5260);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5323 = lean_ctor_get(x_5304, 0);
lean_inc(x_5323);
x_5324 = lean_ctor_get(x_5304, 1);
lean_inc(x_5324);
if (lean_is_exclusive(x_5304)) {
 lean_ctor_release(x_5304, 0);
 lean_ctor_release(x_5304, 1);
 x_5325 = x_5304;
} else {
 lean_dec_ref(x_5304);
 x_5325 = lean_box(0);
}
if (lean_is_scalar(x_5325)) {
 x_5326 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5326 = x_5325;
}
lean_ctor_set(x_5326, 0, x_5323);
lean_ctor_set(x_5326, 1, x_5324);
return x_5326;
}
}
else
{
lean_object* x_5327; 
x_5327 = lean_box(0);
x_5265 = x_5327;
goto block_5295;
}
}
block_5295:
{
lean_object* x_5266; lean_object* x_5267; lean_object* x_5268; lean_object* x_5269; lean_object* x_5270; lean_object* x_5271; lean_object* x_5272; 
lean_dec(x_5265);
lean_inc(x_5260);
x_5266 = l_Lean_mkNot(x_5260);
lean_inc(x_5259);
lean_inc(x_5258);
x_5267 = l_Lean_Expr_lam___override(x_5258, x_5259, x_5266, x_5261);
x_5268 = l_Lean_Expr_lam___override(x_5258, x_5259, x_5260, x_5261);
x_5269 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5270 = lean_array_push(x_5269, x_5267);
x_5271 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5272 = l_Lean_Meta_mkAppM(x_5271, x_5270, x_5, x_6, x_7, x_8, x_5264);
if (lean_obj_tag(x_5272) == 0)
{
lean_object* x_5273; lean_object* x_5274; lean_object* x_5275; lean_object* x_5276; lean_object* x_5277; 
x_5273 = lean_ctor_get(x_5272, 0);
lean_inc(x_5273);
x_5274 = lean_ctor_get(x_5272, 1);
lean_inc(x_5274);
lean_dec(x_5272);
x_5275 = lean_array_push(x_5269, x_5268);
x_5276 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5277 = l_Lean_Meta_mkAppM(x_5276, x_5275, x_5, x_6, x_7, x_8, x_5274);
if (lean_obj_tag(x_5277) == 0)
{
lean_object* x_5278; lean_object* x_5279; lean_object* x_5280; lean_object* x_5281; uint8_t x_5282; lean_object* x_5283; lean_object* x_5284; lean_object* x_5285; lean_object* x_5286; 
x_5278 = lean_ctor_get(x_5277, 0);
lean_inc(x_5278);
x_5279 = lean_ctor_get(x_5277, 1);
lean_inc(x_5279);
if (lean_is_exclusive(x_5277)) {
 lean_ctor_release(x_5277, 0);
 lean_ctor_release(x_5277, 1);
 x_5280 = x_5277;
} else {
 lean_dec_ref(x_5277);
 x_5280 = lean_box(0);
}
x_5281 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5281, 0, x_5278);
x_5282 = 1;
x_5283 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5283, 0, x_5273);
lean_ctor_set(x_5283, 1, x_5281);
lean_ctor_set_uint8(x_5283, sizeof(void*)*2, x_5282);
x_5284 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5284, 0, x_5283);
x_5285 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5285, 0, x_5284);
if (lean_is_scalar(x_5280)) {
 x_5286 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5286 = x_5280;
}
lean_ctor_set(x_5286, 0, x_5285);
lean_ctor_set(x_5286, 1, x_5279);
return x_5286;
}
else
{
lean_object* x_5287; lean_object* x_5288; lean_object* x_5289; lean_object* x_5290; 
lean_dec(x_5273);
x_5287 = lean_ctor_get(x_5277, 0);
lean_inc(x_5287);
x_5288 = lean_ctor_get(x_5277, 1);
lean_inc(x_5288);
if (lean_is_exclusive(x_5277)) {
 lean_ctor_release(x_5277, 0);
 lean_ctor_release(x_5277, 1);
 x_5289 = x_5277;
} else {
 lean_dec_ref(x_5277);
 x_5289 = lean_box(0);
}
if (lean_is_scalar(x_5289)) {
 x_5290 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5290 = x_5289;
}
lean_ctor_set(x_5290, 0, x_5287);
lean_ctor_set(x_5290, 1, x_5288);
return x_5290;
}
}
else
{
lean_object* x_5291; lean_object* x_5292; lean_object* x_5293; lean_object* x_5294; 
lean_dec(x_5268);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5291 = lean_ctor_get(x_5272, 0);
lean_inc(x_5291);
x_5292 = lean_ctor_get(x_5272, 1);
lean_inc(x_5292);
if (lean_is_exclusive(x_5272)) {
 lean_ctor_release(x_5272, 0);
 lean_ctor_release(x_5272, 1);
 x_5293 = x_5272;
} else {
 lean_dec_ref(x_5272);
 x_5293 = lean_box(0);
}
if (lean_is_scalar(x_5293)) {
 x_5294 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5294 = x_5293;
}
lean_ctor_set(x_5294, 0, x_5291);
lean_ctor_set(x_5294, 1, x_5292);
return x_5294;
}
}
}
else
{
lean_object* x_5328; lean_object* x_5329; lean_object* x_5330; lean_object* x_5331; 
lean_dec(x_5260);
lean_dec(x_5259);
lean_dec(x_5258);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5328 = lean_ctor_get(x_5262, 0);
lean_inc(x_5328);
x_5329 = lean_ctor_get(x_5262, 1);
lean_inc(x_5329);
if (lean_is_exclusive(x_5262)) {
 lean_ctor_release(x_5262, 0);
 lean_ctor_release(x_5262, 1);
 x_5330 = x_5262;
} else {
 lean_dec_ref(x_5262);
 x_5330 = lean_box(0);
}
if (lean_is_scalar(x_5330)) {
 x_5331 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5331 = x_5330;
}
lean_ctor_set(x_5331, 0, x_5328);
lean_ctor_set(x_5331, 1, x_5329);
return x_5331;
}
}
else
{
lean_object* x_5332; lean_object* x_5333; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5332 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5333 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5333 = x_5082;
}
lean_ctor_set(x_5333, 0, x_5332);
lean_ctor_set(x_5333, 1, x_5081);
return x_5333;
}
}
else
{
lean_object* x_5334; 
lean_dec(x_5083);
x_5334 = lean_array_fget(x_5163, x_5074);
lean_dec(x_5163);
if (lean_obj_tag(x_5334) == 6)
{
lean_object* x_5335; lean_object* x_5336; lean_object* x_5337; uint8_t x_5338; lean_object* x_5339; lean_object* x_5340; lean_object* x_5341; lean_object* x_5342; lean_object* x_5343; 
lean_dec(x_5082);
x_5335 = lean_ctor_get(x_5334, 0);
lean_inc(x_5335);
x_5336 = lean_ctor_get(x_5334, 1);
lean_inc(x_5336);
x_5337 = lean_ctor_get(x_5334, 2);
lean_inc(x_5337);
x_5338 = lean_ctor_get_uint8(x_5334, sizeof(void*)*3 + 8);
lean_dec(x_5334);
lean_inc(x_5337);
lean_inc(x_5336);
lean_inc(x_5335);
x_5339 = l_Lean_Expr_lam___override(x_5335, x_5336, x_5337, x_5338);
x_5340 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5341 = lean_array_push(x_5340, x_5339);
x_5342 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16;
x_5343 = l_Lean_Meta_mkAppM(x_5342, x_5341, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5343) == 0)
{
lean_object* x_5344; lean_object* x_5345; lean_object* x_5346; lean_object* x_5347; lean_object* x_5348; lean_object* x_5349; uint8_t x_5350; lean_object* x_5351; lean_object* x_5352; lean_object* x_5353; lean_object* x_5354; 
x_5344 = lean_ctor_get(x_5343, 0);
lean_inc(x_5344);
x_5345 = lean_ctor_get(x_5343, 1);
lean_inc(x_5345);
if (lean_is_exclusive(x_5343)) {
 lean_ctor_release(x_5343, 0);
 lean_ctor_release(x_5343, 1);
 x_5346 = x_5343;
} else {
 lean_dec_ref(x_5343);
 x_5346 = lean_box(0);
}
x_5347 = l_Lean_mkNot(x_5337);
x_5348 = l_Lean_Expr_forallE___override(x_5335, x_5336, x_5347, x_5338);
x_5349 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5349, 0, x_5344);
x_5350 = 1;
x_5351 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5351, 0, x_5348);
lean_ctor_set(x_5351, 1, x_5349);
lean_ctor_set_uint8(x_5351, sizeof(void*)*2, x_5350);
x_5352 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5352, 0, x_5351);
x_5353 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5353, 0, x_5352);
if (lean_is_scalar(x_5346)) {
 x_5354 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5354 = x_5346;
}
lean_ctor_set(x_5354, 0, x_5353);
lean_ctor_set(x_5354, 1, x_5345);
return x_5354;
}
else
{
lean_object* x_5355; lean_object* x_5356; lean_object* x_5357; lean_object* x_5358; 
lean_dec(x_5337);
lean_dec(x_5336);
lean_dec(x_5335);
x_5355 = lean_ctor_get(x_5343, 0);
lean_inc(x_5355);
x_5356 = lean_ctor_get(x_5343, 1);
lean_inc(x_5356);
if (lean_is_exclusive(x_5343)) {
 lean_ctor_release(x_5343, 0);
 lean_ctor_release(x_5343, 1);
 x_5357 = x_5343;
} else {
 lean_dec_ref(x_5343);
 x_5357 = lean_box(0);
}
if (lean_is_scalar(x_5357)) {
 x_5358 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5358 = x_5357;
}
lean_ctor_set(x_5358, 0, x_5355);
lean_ctor_set(x_5358, 1, x_5356);
return x_5358;
}
}
else
{
lean_object* x_5359; lean_object* x_5360; 
lean_dec(x_5334);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5359 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5360 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5360 = x_5082;
}
lean_ctor_set(x_5360, 0, x_5359);
lean_ctor_set(x_5360, 1, x_5081);
return x_5360;
}
}
}
}
else
{
lean_object* x_5361; lean_object* x_5362; uint8_t x_5363; 
lean_dec(x_5164);
x_5361 = lean_array_get_size(x_5163);
x_5362 = lean_unsigned_to_nat(3u);
x_5363 = lean_nat_dec_eq(x_5361, x_5362);
lean_dec(x_5361);
if (x_5363 == 0)
{
lean_dec(x_5163);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5364; lean_object* x_5365; lean_object* x_5366; uint8_t x_5367; lean_object* x_5368; 
lean_dec(x_5082);
x_5364 = lean_ctor_get(x_5083, 0);
lean_inc(x_5364);
x_5365 = lean_ctor_get(x_5083, 1);
lean_inc(x_5365);
x_5366 = lean_ctor_get(x_5083, 2);
lean_inc(x_5366);
x_5367 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5365);
x_5368 = l_Lean_Meta_isProp(x_5365, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5368) == 0)
{
lean_object* x_5369; lean_object* x_5370; lean_object* x_5371; uint8_t x_5402; 
x_5369 = lean_ctor_get(x_5368, 0);
lean_inc(x_5369);
x_5370 = lean_ctor_get(x_5368, 1);
lean_inc(x_5370);
lean_dec(x_5368);
x_5402 = lean_unbox(x_5369);
lean_dec(x_5369);
if (x_5402 == 0)
{
lean_object* x_5403; 
x_5403 = lean_box(0);
x_5371 = x_5403;
goto block_5401;
}
else
{
uint8_t x_5404; 
x_5404 = l_Lean_Expr_hasLooseBVars(x_5366);
if (x_5404 == 0)
{
lean_object* x_5405; lean_object* x_5406; lean_object* x_5407; lean_object* x_5408; lean_object* x_5409; lean_object* x_5410; 
lean_dec(x_5364);
lean_inc(x_5366);
x_5405 = l_Lean_mkNot(x_5366);
x_5406 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5407 = lean_array_push(x_5406, x_5365);
lean_inc(x_5407);
x_5408 = lean_array_push(x_5407, x_5405);
x_5409 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5410 = l_Lean_Meta_mkAppM(x_5409, x_5408, x_5, x_6, x_7, x_8, x_5370);
if (lean_obj_tag(x_5410) == 0)
{
lean_object* x_5411; lean_object* x_5412; lean_object* x_5413; lean_object* x_5414; lean_object* x_5415; 
x_5411 = lean_ctor_get(x_5410, 0);
lean_inc(x_5411);
x_5412 = lean_ctor_get(x_5410, 1);
lean_inc(x_5412);
lean_dec(x_5410);
x_5413 = lean_array_push(x_5407, x_5366);
x_5414 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5415 = l_Lean_Meta_mkAppM(x_5414, x_5413, x_5, x_6, x_7, x_8, x_5412);
if (lean_obj_tag(x_5415) == 0)
{
lean_object* x_5416; lean_object* x_5417; lean_object* x_5418; lean_object* x_5419; uint8_t x_5420; lean_object* x_5421; lean_object* x_5422; lean_object* x_5423; lean_object* x_5424; 
x_5416 = lean_ctor_get(x_5415, 0);
lean_inc(x_5416);
x_5417 = lean_ctor_get(x_5415, 1);
lean_inc(x_5417);
if (lean_is_exclusive(x_5415)) {
 lean_ctor_release(x_5415, 0);
 lean_ctor_release(x_5415, 1);
 x_5418 = x_5415;
} else {
 lean_dec_ref(x_5415);
 x_5418 = lean_box(0);
}
x_5419 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5419, 0, x_5416);
x_5420 = 1;
x_5421 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5421, 0, x_5411);
lean_ctor_set(x_5421, 1, x_5419);
lean_ctor_set_uint8(x_5421, sizeof(void*)*2, x_5420);
x_5422 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5422, 0, x_5421);
x_5423 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5423, 0, x_5422);
if (lean_is_scalar(x_5418)) {
 x_5424 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5424 = x_5418;
}
lean_ctor_set(x_5424, 0, x_5423);
lean_ctor_set(x_5424, 1, x_5417);
return x_5424;
}
else
{
lean_object* x_5425; lean_object* x_5426; lean_object* x_5427; lean_object* x_5428; 
lean_dec(x_5411);
x_5425 = lean_ctor_get(x_5415, 0);
lean_inc(x_5425);
x_5426 = lean_ctor_get(x_5415, 1);
lean_inc(x_5426);
if (lean_is_exclusive(x_5415)) {
 lean_ctor_release(x_5415, 0);
 lean_ctor_release(x_5415, 1);
 x_5427 = x_5415;
} else {
 lean_dec_ref(x_5415);
 x_5427 = lean_box(0);
}
if (lean_is_scalar(x_5427)) {
 x_5428 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5428 = x_5427;
}
lean_ctor_set(x_5428, 0, x_5425);
lean_ctor_set(x_5428, 1, x_5426);
return x_5428;
}
}
else
{
lean_object* x_5429; lean_object* x_5430; lean_object* x_5431; lean_object* x_5432; 
lean_dec(x_5407);
lean_dec(x_5366);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5429 = lean_ctor_get(x_5410, 0);
lean_inc(x_5429);
x_5430 = lean_ctor_get(x_5410, 1);
lean_inc(x_5430);
if (lean_is_exclusive(x_5410)) {
 lean_ctor_release(x_5410, 0);
 lean_ctor_release(x_5410, 1);
 x_5431 = x_5410;
} else {
 lean_dec_ref(x_5410);
 x_5431 = lean_box(0);
}
if (lean_is_scalar(x_5431)) {
 x_5432 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5432 = x_5431;
}
lean_ctor_set(x_5432, 0, x_5429);
lean_ctor_set(x_5432, 1, x_5430);
return x_5432;
}
}
else
{
lean_object* x_5433; 
x_5433 = lean_box(0);
x_5371 = x_5433;
goto block_5401;
}
}
block_5401:
{
lean_object* x_5372; lean_object* x_5373; lean_object* x_5374; lean_object* x_5375; lean_object* x_5376; lean_object* x_5377; lean_object* x_5378; 
lean_dec(x_5371);
lean_inc(x_5366);
x_5372 = l_Lean_mkNot(x_5366);
lean_inc(x_5365);
lean_inc(x_5364);
x_5373 = l_Lean_Expr_lam___override(x_5364, x_5365, x_5372, x_5367);
x_5374 = l_Lean_Expr_lam___override(x_5364, x_5365, x_5366, x_5367);
x_5375 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5376 = lean_array_push(x_5375, x_5373);
x_5377 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5378 = l_Lean_Meta_mkAppM(x_5377, x_5376, x_5, x_6, x_7, x_8, x_5370);
if (lean_obj_tag(x_5378) == 0)
{
lean_object* x_5379; lean_object* x_5380; lean_object* x_5381; lean_object* x_5382; lean_object* x_5383; 
x_5379 = lean_ctor_get(x_5378, 0);
lean_inc(x_5379);
x_5380 = lean_ctor_get(x_5378, 1);
lean_inc(x_5380);
lean_dec(x_5378);
x_5381 = lean_array_push(x_5375, x_5374);
x_5382 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5383 = l_Lean_Meta_mkAppM(x_5382, x_5381, x_5, x_6, x_7, x_8, x_5380);
if (lean_obj_tag(x_5383) == 0)
{
lean_object* x_5384; lean_object* x_5385; lean_object* x_5386; lean_object* x_5387; uint8_t x_5388; lean_object* x_5389; lean_object* x_5390; lean_object* x_5391; lean_object* x_5392; 
x_5384 = lean_ctor_get(x_5383, 0);
lean_inc(x_5384);
x_5385 = lean_ctor_get(x_5383, 1);
lean_inc(x_5385);
if (lean_is_exclusive(x_5383)) {
 lean_ctor_release(x_5383, 0);
 lean_ctor_release(x_5383, 1);
 x_5386 = x_5383;
} else {
 lean_dec_ref(x_5383);
 x_5386 = lean_box(0);
}
x_5387 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5387, 0, x_5384);
x_5388 = 1;
x_5389 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5389, 0, x_5379);
lean_ctor_set(x_5389, 1, x_5387);
lean_ctor_set_uint8(x_5389, sizeof(void*)*2, x_5388);
x_5390 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5390, 0, x_5389);
x_5391 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5391, 0, x_5390);
if (lean_is_scalar(x_5386)) {
 x_5392 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5392 = x_5386;
}
lean_ctor_set(x_5392, 0, x_5391);
lean_ctor_set(x_5392, 1, x_5385);
return x_5392;
}
else
{
lean_object* x_5393; lean_object* x_5394; lean_object* x_5395; lean_object* x_5396; 
lean_dec(x_5379);
x_5393 = lean_ctor_get(x_5383, 0);
lean_inc(x_5393);
x_5394 = lean_ctor_get(x_5383, 1);
lean_inc(x_5394);
if (lean_is_exclusive(x_5383)) {
 lean_ctor_release(x_5383, 0);
 lean_ctor_release(x_5383, 1);
 x_5395 = x_5383;
} else {
 lean_dec_ref(x_5383);
 x_5395 = lean_box(0);
}
if (lean_is_scalar(x_5395)) {
 x_5396 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5396 = x_5395;
}
lean_ctor_set(x_5396, 0, x_5393);
lean_ctor_set(x_5396, 1, x_5394);
return x_5396;
}
}
else
{
lean_object* x_5397; lean_object* x_5398; lean_object* x_5399; lean_object* x_5400; 
lean_dec(x_5374);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5397 = lean_ctor_get(x_5378, 0);
lean_inc(x_5397);
x_5398 = lean_ctor_get(x_5378, 1);
lean_inc(x_5398);
if (lean_is_exclusive(x_5378)) {
 lean_ctor_release(x_5378, 0);
 lean_ctor_release(x_5378, 1);
 x_5399 = x_5378;
} else {
 lean_dec_ref(x_5378);
 x_5399 = lean_box(0);
}
if (lean_is_scalar(x_5399)) {
 x_5400 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5400 = x_5399;
}
lean_ctor_set(x_5400, 0, x_5397);
lean_ctor_set(x_5400, 1, x_5398);
return x_5400;
}
}
}
else
{
lean_object* x_5434; lean_object* x_5435; lean_object* x_5436; lean_object* x_5437; 
lean_dec(x_5366);
lean_dec(x_5365);
lean_dec(x_5364);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5434 = lean_ctor_get(x_5368, 0);
lean_inc(x_5434);
x_5435 = lean_ctor_get(x_5368, 1);
lean_inc(x_5435);
if (lean_is_exclusive(x_5368)) {
 lean_ctor_release(x_5368, 0);
 lean_ctor_release(x_5368, 1);
 x_5436 = x_5368;
} else {
 lean_dec_ref(x_5368);
 x_5436 = lean_box(0);
}
if (lean_is_scalar(x_5436)) {
 x_5437 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5437 = x_5436;
}
lean_ctor_set(x_5437, 0, x_5434);
lean_ctor_set(x_5437, 1, x_5435);
return x_5437;
}
}
else
{
lean_object* x_5438; lean_object* x_5439; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5438 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5439 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5439 = x_5082;
}
lean_ctor_set(x_5439, 0, x_5438);
lean_ctor_set(x_5439, 1, x_5081);
return x_5439;
}
}
else
{
lean_object* x_5440; lean_object* x_5441; lean_object* x_5442; lean_object* x_5443; lean_object* x_5444; lean_object* x_5445; lean_object* x_5446; lean_object* x_5447; 
lean_dec(x_5083);
lean_dec(x_5082);
x_5440 = lean_array_fget(x_5163, x_5074);
x_5441 = lean_unsigned_to_nat(2u);
x_5442 = lean_array_fget(x_5163, x_5441);
lean_dec(x_5163);
x_5443 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5444 = lean_array_push(x_5443, x_5440);
x_5445 = lean_array_push(x_5444, x_5442);
x_5446 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5445);
x_5447 = l_Lean_Meta_mkAppM(x_5446, x_5445, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5447) == 0)
{
lean_object* x_5448; lean_object* x_5449; lean_object* x_5450; lean_object* x_5451; 
x_5448 = lean_ctor_get(x_5447, 0);
lean_inc(x_5448);
x_5449 = lean_ctor_get(x_5447, 1);
lean_inc(x_5449);
lean_dec(x_5447);
x_5450 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18;
x_5451 = l_Lean_Meta_mkAppM(x_5450, x_5445, x_5, x_6, x_7, x_8, x_5449);
if (lean_obj_tag(x_5451) == 0)
{
lean_object* x_5452; lean_object* x_5453; lean_object* x_5454; lean_object* x_5455; uint8_t x_5456; lean_object* x_5457; lean_object* x_5458; lean_object* x_5459; lean_object* x_5460; 
x_5452 = lean_ctor_get(x_5451, 0);
lean_inc(x_5452);
x_5453 = lean_ctor_get(x_5451, 1);
lean_inc(x_5453);
if (lean_is_exclusive(x_5451)) {
 lean_ctor_release(x_5451, 0);
 lean_ctor_release(x_5451, 1);
 x_5454 = x_5451;
} else {
 lean_dec_ref(x_5451);
 x_5454 = lean_box(0);
}
x_5455 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5455, 0, x_5452);
x_5456 = 1;
x_5457 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5457, 0, x_5448);
lean_ctor_set(x_5457, 1, x_5455);
lean_ctor_set_uint8(x_5457, sizeof(void*)*2, x_5456);
x_5458 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5458, 0, x_5457);
x_5459 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5459, 0, x_5458);
if (lean_is_scalar(x_5454)) {
 x_5460 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5460 = x_5454;
}
lean_ctor_set(x_5460, 0, x_5459);
lean_ctor_set(x_5460, 1, x_5453);
return x_5460;
}
else
{
lean_object* x_5461; lean_object* x_5462; lean_object* x_5463; lean_object* x_5464; 
lean_dec(x_5448);
x_5461 = lean_ctor_get(x_5451, 0);
lean_inc(x_5461);
x_5462 = lean_ctor_get(x_5451, 1);
lean_inc(x_5462);
if (lean_is_exclusive(x_5451)) {
 lean_ctor_release(x_5451, 0);
 lean_ctor_release(x_5451, 1);
 x_5463 = x_5451;
} else {
 lean_dec_ref(x_5451);
 x_5463 = lean_box(0);
}
if (lean_is_scalar(x_5463)) {
 x_5464 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5464 = x_5463;
}
lean_ctor_set(x_5464, 0, x_5461);
lean_ctor_set(x_5464, 1, x_5462);
return x_5464;
}
}
else
{
lean_object* x_5465; lean_object* x_5466; lean_object* x_5467; lean_object* x_5468; 
lean_dec(x_5445);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5465 = lean_ctor_get(x_5447, 0);
lean_inc(x_5465);
x_5466 = lean_ctor_get(x_5447, 1);
lean_inc(x_5466);
if (lean_is_exclusive(x_5447)) {
 lean_ctor_release(x_5447, 0);
 lean_ctor_release(x_5447, 1);
 x_5467 = x_5447;
} else {
 lean_dec_ref(x_5447);
 x_5467 = lean_box(0);
}
if (lean_is_scalar(x_5467)) {
 x_5468 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5468 = x_5467;
}
lean_ctor_set(x_5468, 0, x_5465);
lean_ctor_set(x_5468, 1, x_5466);
return x_5468;
}
}
}
}
else
{
lean_object* x_5469; lean_object* x_5470; uint8_t x_5471; 
lean_dec(x_5164);
x_5469 = lean_array_get_size(x_5163);
x_5470 = lean_unsigned_to_nat(3u);
x_5471 = lean_nat_dec_eq(x_5469, x_5470);
lean_dec(x_5469);
if (x_5471 == 0)
{
lean_dec(x_5163);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5472; lean_object* x_5473; lean_object* x_5474; uint8_t x_5475; lean_object* x_5476; 
lean_dec(x_5082);
x_5472 = lean_ctor_get(x_5083, 0);
lean_inc(x_5472);
x_5473 = lean_ctor_get(x_5083, 1);
lean_inc(x_5473);
x_5474 = lean_ctor_get(x_5083, 2);
lean_inc(x_5474);
x_5475 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5473);
x_5476 = l_Lean_Meta_isProp(x_5473, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5476) == 0)
{
lean_object* x_5477; lean_object* x_5478; lean_object* x_5479; uint8_t x_5510; 
x_5477 = lean_ctor_get(x_5476, 0);
lean_inc(x_5477);
x_5478 = lean_ctor_get(x_5476, 1);
lean_inc(x_5478);
lean_dec(x_5476);
x_5510 = lean_unbox(x_5477);
lean_dec(x_5477);
if (x_5510 == 0)
{
lean_object* x_5511; 
x_5511 = lean_box(0);
x_5479 = x_5511;
goto block_5509;
}
else
{
uint8_t x_5512; 
x_5512 = l_Lean_Expr_hasLooseBVars(x_5474);
if (x_5512 == 0)
{
lean_object* x_5513; lean_object* x_5514; lean_object* x_5515; lean_object* x_5516; lean_object* x_5517; lean_object* x_5518; 
lean_dec(x_5472);
lean_inc(x_5474);
x_5513 = l_Lean_mkNot(x_5474);
x_5514 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5515 = lean_array_push(x_5514, x_5473);
lean_inc(x_5515);
x_5516 = lean_array_push(x_5515, x_5513);
x_5517 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5518 = l_Lean_Meta_mkAppM(x_5517, x_5516, x_5, x_6, x_7, x_8, x_5478);
if (lean_obj_tag(x_5518) == 0)
{
lean_object* x_5519; lean_object* x_5520; lean_object* x_5521; lean_object* x_5522; lean_object* x_5523; 
x_5519 = lean_ctor_get(x_5518, 0);
lean_inc(x_5519);
x_5520 = lean_ctor_get(x_5518, 1);
lean_inc(x_5520);
lean_dec(x_5518);
x_5521 = lean_array_push(x_5515, x_5474);
x_5522 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5523 = l_Lean_Meta_mkAppM(x_5522, x_5521, x_5, x_6, x_7, x_8, x_5520);
if (lean_obj_tag(x_5523) == 0)
{
lean_object* x_5524; lean_object* x_5525; lean_object* x_5526; lean_object* x_5527; uint8_t x_5528; lean_object* x_5529; lean_object* x_5530; lean_object* x_5531; lean_object* x_5532; 
x_5524 = lean_ctor_get(x_5523, 0);
lean_inc(x_5524);
x_5525 = lean_ctor_get(x_5523, 1);
lean_inc(x_5525);
if (lean_is_exclusive(x_5523)) {
 lean_ctor_release(x_5523, 0);
 lean_ctor_release(x_5523, 1);
 x_5526 = x_5523;
} else {
 lean_dec_ref(x_5523);
 x_5526 = lean_box(0);
}
x_5527 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5527, 0, x_5524);
x_5528 = 1;
x_5529 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5529, 0, x_5519);
lean_ctor_set(x_5529, 1, x_5527);
lean_ctor_set_uint8(x_5529, sizeof(void*)*2, x_5528);
x_5530 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5530, 0, x_5529);
x_5531 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5531, 0, x_5530);
if (lean_is_scalar(x_5526)) {
 x_5532 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5532 = x_5526;
}
lean_ctor_set(x_5532, 0, x_5531);
lean_ctor_set(x_5532, 1, x_5525);
return x_5532;
}
else
{
lean_object* x_5533; lean_object* x_5534; lean_object* x_5535; lean_object* x_5536; 
lean_dec(x_5519);
x_5533 = lean_ctor_get(x_5523, 0);
lean_inc(x_5533);
x_5534 = lean_ctor_get(x_5523, 1);
lean_inc(x_5534);
if (lean_is_exclusive(x_5523)) {
 lean_ctor_release(x_5523, 0);
 lean_ctor_release(x_5523, 1);
 x_5535 = x_5523;
} else {
 lean_dec_ref(x_5523);
 x_5535 = lean_box(0);
}
if (lean_is_scalar(x_5535)) {
 x_5536 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5536 = x_5535;
}
lean_ctor_set(x_5536, 0, x_5533);
lean_ctor_set(x_5536, 1, x_5534);
return x_5536;
}
}
else
{
lean_object* x_5537; lean_object* x_5538; lean_object* x_5539; lean_object* x_5540; 
lean_dec(x_5515);
lean_dec(x_5474);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5537 = lean_ctor_get(x_5518, 0);
lean_inc(x_5537);
x_5538 = lean_ctor_get(x_5518, 1);
lean_inc(x_5538);
if (lean_is_exclusive(x_5518)) {
 lean_ctor_release(x_5518, 0);
 lean_ctor_release(x_5518, 1);
 x_5539 = x_5518;
} else {
 lean_dec_ref(x_5518);
 x_5539 = lean_box(0);
}
if (lean_is_scalar(x_5539)) {
 x_5540 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5540 = x_5539;
}
lean_ctor_set(x_5540, 0, x_5537);
lean_ctor_set(x_5540, 1, x_5538);
return x_5540;
}
}
else
{
lean_object* x_5541; 
x_5541 = lean_box(0);
x_5479 = x_5541;
goto block_5509;
}
}
block_5509:
{
lean_object* x_5480; lean_object* x_5481; lean_object* x_5482; lean_object* x_5483; lean_object* x_5484; lean_object* x_5485; lean_object* x_5486; 
lean_dec(x_5479);
lean_inc(x_5474);
x_5480 = l_Lean_mkNot(x_5474);
lean_inc(x_5473);
lean_inc(x_5472);
x_5481 = l_Lean_Expr_lam___override(x_5472, x_5473, x_5480, x_5475);
x_5482 = l_Lean_Expr_lam___override(x_5472, x_5473, x_5474, x_5475);
x_5483 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5484 = lean_array_push(x_5483, x_5481);
x_5485 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5486 = l_Lean_Meta_mkAppM(x_5485, x_5484, x_5, x_6, x_7, x_8, x_5478);
if (lean_obj_tag(x_5486) == 0)
{
lean_object* x_5487; lean_object* x_5488; lean_object* x_5489; lean_object* x_5490; lean_object* x_5491; 
x_5487 = lean_ctor_get(x_5486, 0);
lean_inc(x_5487);
x_5488 = lean_ctor_get(x_5486, 1);
lean_inc(x_5488);
lean_dec(x_5486);
x_5489 = lean_array_push(x_5483, x_5482);
x_5490 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5491 = l_Lean_Meta_mkAppM(x_5490, x_5489, x_5, x_6, x_7, x_8, x_5488);
if (lean_obj_tag(x_5491) == 0)
{
lean_object* x_5492; lean_object* x_5493; lean_object* x_5494; lean_object* x_5495; uint8_t x_5496; lean_object* x_5497; lean_object* x_5498; lean_object* x_5499; lean_object* x_5500; 
x_5492 = lean_ctor_get(x_5491, 0);
lean_inc(x_5492);
x_5493 = lean_ctor_get(x_5491, 1);
lean_inc(x_5493);
if (lean_is_exclusive(x_5491)) {
 lean_ctor_release(x_5491, 0);
 lean_ctor_release(x_5491, 1);
 x_5494 = x_5491;
} else {
 lean_dec_ref(x_5491);
 x_5494 = lean_box(0);
}
x_5495 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5495, 0, x_5492);
x_5496 = 1;
x_5497 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5497, 0, x_5487);
lean_ctor_set(x_5497, 1, x_5495);
lean_ctor_set_uint8(x_5497, sizeof(void*)*2, x_5496);
x_5498 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5498, 0, x_5497);
x_5499 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5499, 0, x_5498);
if (lean_is_scalar(x_5494)) {
 x_5500 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5500 = x_5494;
}
lean_ctor_set(x_5500, 0, x_5499);
lean_ctor_set(x_5500, 1, x_5493);
return x_5500;
}
else
{
lean_object* x_5501; lean_object* x_5502; lean_object* x_5503; lean_object* x_5504; 
lean_dec(x_5487);
x_5501 = lean_ctor_get(x_5491, 0);
lean_inc(x_5501);
x_5502 = lean_ctor_get(x_5491, 1);
lean_inc(x_5502);
if (lean_is_exclusive(x_5491)) {
 lean_ctor_release(x_5491, 0);
 lean_ctor_release(x_5491, 1);
 x_5503 = x_5491;
} else {
 lean_dec_ref(x_5491);
 x_5503 = lean_box(0);
}
if (lean_is_scalar(x_5503)) {
 x_5504 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5504 = x_5503;
}
lean_ctor_set(x_5504, 0, x_5501);
lean_ctor_set(x_5504, 1, x_5502);
return x_5504;
}
}
else
{
lean_object* x_5505; lean_object* x_5506; lean_object* x_5507; lean_object* x_5508; 
lean_dec(x_5482);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5505 = lean_ctor_get(x_5486, 0);
lean_inc(x_5505);
x_5506 = lean_ctor_get(x_5486, 1);
lean_inc(x_5506);
if (lean_is_exclusive(x_5486)) {
 lean_ctor_release(x_5486, 0);
 lean_ctor_release(x_5486, 1);
 x_5507 = x_5486;
} else {
 lean_dec_ref(x_5486);
 x_5507 = lean_box(0);
}
if (lean_is_scalar(x_5507)) {
 x_5508 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5508 = x_5507;
}
lean_ctor_set(x_5508, 0, x_5505);
lean_ctor_set(x_5508, 1, x_5506);
return x_5508;
}
}
}
else
{
lean_object* x_5542; lean_object* x_5543; lean_object* x_5544; lean_object* x_5545; 
lean_dec(x_5474);
lean_dec(x_5473);
lean_dec(x_5472);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5542 = lean_ctor_get(x_5476, 0);
lean_inc(x_5542);
x_5543 = lean_ctor_get(x_5476, 1);
lean_inc(x_5543);
if (lean_is_exclusive(x_5476)) {
 lean_ctor_release(x_5476, 0);
 lean_ctor_release(x_5476, 1);
 x_5544 = x_5476;
} else {
 lean_dec_ref(x_5476);
 x_5544 = lean_box(0);
}
if (lean_is_scalar(x_5544)) {
 x_5545 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5545 = x_5544;
}
lean_ctor_set(x_5545, 0, x_5542);
lean_ctor_set(x_5545, 1, x_5543);
return x_5545;
}
}
else
{
lean_object* x_5546; lean_object* x_5547; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5546 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5547 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5547 = x_5082;
}
lean_ctor_set(x_5547, 0, x_5546);
lean_ctor_set(x_5547, 1, x_5081);
return x_5547;
}
}
else
{
lean_object* x_5548; lean_object* x_5549; lean_object* x_5550; lean_object* x_5551; lean_object* x_5552; lean_object* x_5553; lean_object* x_5554; uint8_t x_5555; 
lean_dec(x_5083);
lean_dec(x_5082);
x_5548 = lean_unsigned_to_nat(0u);
x_5549 = lean_array_fget(x_5163, x_5548);
x_5550 = lean_array_fget(x_5163, x_5074);
x_5551 = lean_unsigned_to_nat(2u);
x_5552 = lean_array_fget(x_5163, x_5551);
lean_dec(x_5163);
lean_inc(x_5552);
lean_inc(x_5550);
x_5553 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___boxed), 11, 2);
lean_closure_set(x_5553, 0, x_5550);
lean_closure_set(x_5553, 1, x_5552);
x_5554 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20;
x_5555 = l_Lean_Expr_isAppOfArity(x_5549, x_5554, x_5074);
lean_dec(x_5549);
if (x_5555 == 0)
{
lean_object* x_5556; lean_object* x_5557; 
lean_dec(x_5553);
x_5556 = lean_box(0);
x_5557 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1(x_5550, x_5552, x_5556, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_5081);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_5557;
}
else
{
lean_object* x_5558; uint8_t x_5559; 
x_5558 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3;
x_5559 = l_Lean_Expr_isAppOfArity(x_5552, x_5558, x_5551);
if (x_5559 == 0)
{
lean_object* x_5560; lean_object* x_5561; 
x_5560 = lean_box(0);
x_5561 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2(x_5550, x_5553, x_5552, x_5560, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_5081);
lean_dec(x_5550);
return x_5561;
}
else
{
lean_object* x_5562; lean_object* x_5563; lean_object* x_5564; lean_object* x_5565; 
lean_dec(x_5553);
lean_dec(x_5552);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_5562 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5563 = lean_array_push(x_5562, x_5550);
x_5564 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5565 = l_Lean_Meta_mkAppM(x_5564, x_5563, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5565) == 0)
{
lean_object* x_5566; lean_object* x_5567; lean_object* x_5568; 
x_5566 = lean_ctor_get(x_5565, 0);
lean_inc(x_5566);
x_5567 = lean_ctor_get(x_5565, 1);
lean_inc(x_5567);
lean_dec(x_5565);
lean_inc(x_5566);
x_5568 = lean_infer_type(x_5566, x_5, x_6, x_7, x_8, x_5567);
if (lean_obj_tag(x_5568) == 0)
{
lean_object* x_5569; lean_object* x_5570; lean_object* x_5571; lean_object* x_5572; uint8_t x_5573; 
x_5569 = lean_ctor_get(x_5568, 0);
lean_inc(x_5569);
x_5570 = lean_ctor_get(x_5568, 1);
lean_inc(x_5570);
if (lean_is_exclusive(x_5568)) {
 lean_ctor_release(x_5568, 0);
 lean_ctor_release(x_5568, 1);
 x_5571 = x_5568;
} else {
 lean_dec_ref(x_5568);
 x_5571 = lean_box(0);
}
x_5572 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_5573 = l_Lean_Expr_isAppOfArity(x_5569, x_5572, x_5470);
if (x_5573 == 0)
{
lean_object* x_5574; lean_object* x_5575; 
lean_dec(x_5569);
lean_dec(x_5566);
x_5574 = lean_box(0);
if (lean_is_scalar(x_5571)) {
 x_5575 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5575 = x_5571;
}
lean_ctor_set(x_5575, 0, x_5574);
lean_ctor_set(x_5575, 1, x_5570);
return x_5575;
}
else
{
lean_object* x_5576; lean_object* x_5577; uint8_t x_5578; lean_object* x_5579; lean_object* x_5580; lean_object* x_5581; lean_object* x_5582; 
x_5576 = l_Lean_Expr_appArg_x21(x_5569);
lean_dec(x_5569);
x_5577 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5577, 0, x_5566);
x_5578 = 1;
x_5579 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5579, 0, x_5576);
lean_ctor_set(x_5579, 1, x_5577);
lean_ctor_set_uint8(x_5579, sizeof(void*)*2, x_5578);
x_5580 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5580, 0, x_5579);
x_5581 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5581, 0, x_5580);
if (lean_is_scalar(x_5571)) {
 x_5582 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5582 = x_5571;
}
lean_ctor_set(x_5582, 0, x_5581);
lean_ctor_set(x_5582, 1, x_5570);
return x_5582;
}
}
else
{
lean_object* x_5583; lean_object* x_5584; lean_object* x_5585; lean_object* x_5586; 
lean_dec(x_5566);
x_5583 = lean_ctor_get(x_5568, 0);
lean_inc(x_5583);
x_5584 = lean_ctor_get(x_5568, 1);
lean_inc(x_5584);
if (lean_is_exclusive(x_5568)) {
 lean_ctor_release(x_5568, 0);
 lean_ctor_release(x_5568, 1);
 x_5585 = x_5568;
} else {
 lean_dec_ref(x_5568);
 x_5585 = lean_box(0);
}
if (lean_is_scalar(x_5585)) {
 x_5586 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5586 = x_5585;
}
lean_ctor_set(x_5586, 0, x_5583);
lean_ctor_set(x_5586, 1, x_5584);
return x_5586;
}
}
else
{
lean_object* x_5587; lean_object* x_5588; lean_object* x_5589; lean_object* x_5590; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5587 = lean_ctor_get(x_5565, 0);
lean_inc(x_5587);
x_5588 = lean_ctor_get(x_5565, 1);
lean_inc(x_5588);
if (lean_is_exclusive(x_5565)) {
 lean_ctor_release(x_5565, 0);
 lean_ctor_release(x_5565, 1);
 x_5589 = x_5565;
} else {
 lean_dec_ref(x_5565);
 x_5589 = lean_box(0);
}
if (lean_is_scalar(x_5589)) {
 x_5590 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5590 = x_5589;
}
lean_ctor_set(x_5590, 0, x_5587);
lean_ctor_set(x_5590, 1, x_5588);
return x_5590;
}
}
}
}
}
}
else
{
lean_object* x_5591; lean_object* x_5592; uint8_t x_5593; 
lean_dec(x_5164);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_5591 = lean_array_get_size(x_5163);
x_5592 = lean_unsigned_to_nat(2u);
x_5593 = lean_nat_dec_eq(x_5591, x_5592);
lean_dec(x_5591);
if (x_5593 == 0)
{
lean_dec(x_5163);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5594; lean_object* x_5595; lean_object* x_5596; uint8_t x_5597; lean_object* x_5598; 
lean_dec(x_5082);
x_5594 = lean_ctor_get(x_5083, 0);
lean_inc(x_5594);
x_5595 = lean_ctor_get(x_5083, 1);
lean_inc(x_5595);
x_5596 = lean_ctor_get(x_5083, 2);
lean_inc(x_5596);
x_5597 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5595);
x_5598 = l_Lean_Meta_isProp(x_5595, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5598) == 0)
{
lean_object* x_5599; lean_object* x_5600; lean_object* x_5601; uint8_t x_5632; 
x_5599 = lean_ctor_get(x_5598, 0);
lean_inc(x_5599);
x_5600 = lean_ctor_get(x_5598, 1);
lean_inc(x_5600);
lean_dec(x_5598);
x_5632 = lean_unbox(x_5599);
lean_dec(x_5599);
if (x_5632 == 0)
{
lean_object* x_5633; 
x_5633 = lean_box(0);
x_5601 = x_5633;
goto block_5631;
}
else
{
uint8_t x_5634; 
x_5634 = l_Lean_Expr_hasLooseBVars(x_5596);
if (x_5634 == 0)
{
lean_object* x_5635; lean_object* x_5636; lean_object* x_5637; lean_object* x_5638; lean_object* x_5639; lean_object* x_5640; 
lean_dec(x_5594);
lean_inc(x_5596);
x_5635 = l_Lean_mkNot(x_5596);
x_5636 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5637 = lean_array_push(x_5636, x_5595);
lean_inc(x_5637);
x_5638 = lean_array_push(x_5637, x_5635);
x_5639 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5640 = l_Lean_Meta_mkAppM(x_5639, x_5638, x_5, x_6, x_7, x_8, x_5600);
if (lean_obj_tag(x_5640) == 0)
{
lean_object* x_5641; lean_object* x_5642; lean_object* x_5643; lean_object* x_5644; lean_object* x_5645; 
x_5641 = lean_ctor_get(x_5640, 0);
lean_inc(x_5641);
x_5642 = lean_ctor_get(x_5640, 1);
lean_inc(x_5642);
lean_dec(x_5640);
x_5643 = lean_array_push(x_5637, x_5596);
x_5644 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5645 = l_Lean_Meta_mkAppM(x_5644, x_5643, x_5, x_6, x_7, x_8, x_5642);
if (lean_obj_tag(x_5645) == 0)
{
lean_object* x_5646; lean_object* x_5647; lean_object* x_5648; lean_object* x_5649; uint8_t x_5650; lean_object* x_5651; lean_object* x_5652; lean_object* x_5653; lean_object* x_5654; 
x_5646 = lean_ctor_get(x_5645, 0);
lean_inc(x_5646);
x_5647 = lean_ctor_get(x_5645, 1);
lean_inc(x_5647);
if (lean_is_exclusive(x_5645)) {
 lean_ctor_release(x_5645, 0);
 lean_ctor_release(x_5645, 1);
 x_5648 = x_5645;
} else {
 lean_dec_ref(x_5645);
 x_5648 = lean_box(0);
}
x_5649 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5649, 0, x_5646);
x_5650 = 1;
x_5651 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5651, 0, x_5641);
lean_ctor_set(x_5651, 1, x_5649);
lean_ctor_set_uint8(x_5651, sizeof(void*)*2, x_5650);
x_5652 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5652, 0, x_5651);
x_5653 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5653, 0, x_5652);
if (lean_is_scalar(x_5648)) {
 x_5654 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5654 = x_5648;
}
lean_ctor_set(x_5654, 0, x_5653);
lean_ctor_set(x_5654, 1, x_5647);
return x_5654;
}
else
{
lean_object* x_5655; lean_object* x_5656; lean_object* x_5657; lean_object* x_5658; 
lean_dec(x_5641);
x_5655 = lean_ctor_get(x_5645, 0);
lean_inc(x_5655);
x_5656 = lean_ctor_get(x_5645, 1);
lean_inc(x_5656);
if (lean_is_exclusive(x_5645)) {
 lean_ctor_release(x_5645, 0);
 lean_ctor_release(x_5645, 1);
 x_5657 = x_5645;
} else {
 lean_dec_ref(x_5645);
 x_5657 = lean_box(0);
}
if (lean_is_scalar(x_5657)) {
 x_5658 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5658 = x_5657;
}
lean_ctor_set(x_5658, 0, x_5655);
lean_ctor_set(x_5658, 1, x_5656);
return x_5658;
}
}
else
{
lean_object* x_5659; lean_object* x_5660; lean_object* x_5661; lean_object* x_5662; 
lean_dec(x_5637);
lean_dec(x_5596);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5659 = lean_ctor_get(x_5640, 0);
lean_inc(x_5659);
x_5660 = lean_ctor_get(x_5640, 1);
lean_inc(x_5660);
if (lean_is_exclusive(x_5640)) {
 lean_ctor_release(x_5640, 0);
 lean_ctor_release(x_5640, 1);
 x_5661 = x_5640;
} else {
 lean_dec_ref(x_5640);
 x_5661 = lean_box(0);
}
if (lean_is_scalar(x_5661)) {
 x_5662 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5662 = x_5661;
}
lean_ctor_set(x_5662, 0, x_5659);
lean_ctor_set(x_5662, 1, x_5660);
return x_5662;
}
}
else
{
lean_object* x_5663; 
x_5663 = lean_box(0);
x_5601 = x_5663;
goto block_5631;
}
}
block_5631:
{
lean_object* x_5602; lean_object* x_5603; lean_object* x_5604; lean_object* x_5605; lean_object* x_5606; lean_object* x_5607; lean_object* x_5608; 
lean_dec(x_5601);
lean_inc(x_5596);
x_5602 = l_Lean_mkNot(x_5596);
lean_inc(x_5595);
lean_inc(x_5594);
x_5603 = l_Lean_Expr_lam___override(x_5594, x_5595, x_5602, x_5597);
x_5604 = l_Lean_Expr_lam___override(x_5594, x_5595, x_5596, x_5597);
x_5605 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5606 = lean_array_push(x_5605, x_5603);
x_5607 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5608 = l_Lean_Meta_mkAppM(x_5607, x_5606, x_5, x_6, x_7, x_8, x_5600);
if (lean_obj_tag(x_5608) == 0)
{
lean_object* x_5609; lean_object* x_5610; lean_object* x_5611; lean_object* x_5612; lean_object* x_5613; 
x_5609 = lean_ctor_get(x_5608, 0);
lean_inc(x_5609);
x_5610 = lean_ctor_get(x_5608, 1);
lean_inc(x_5610);
lean_dec(x_5608);
x_5611 = lean_array_push(x_5605, x_5604);
x_5612 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5613 = l_Lean_Meta_mkAppM(x_5612, x_5611, x_5, x_6, x_7, x_8, x_5610);
if (lean_obj_tag(x_5613) == 0)
{
lean_object* x_5614; lean_object* x_5615; lean_object* x_5616; lean_object* x_5617; uint8_t x_5618; lean_object* x_5619; lean_object* x_5620; lean_object* x_5621; lean_object* x_5622; 
x_5614 = lean_ctor_get(x_5613, 0);
lean_inc(x_5614);
x_5615 = lean_ctor_get(x_5613, 1);
lean_inc(x_5615);
if (lean_is_exclusive(x_5613)) {
 lean_ctor_release(x_5613, 0);
 lean_ctor_release(x_5613, 1);
 x_5616 = x_5613;
} else {
 lean_dec_ref(x_5613);
 x_5616 = lean_box(0);
}
x_5617 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5617, 0, x_5614);
x_5618 = 1;
x_5619 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5619, 0, x_5609);
lean_ctor_set(x_5619, 1, x_5617);
lean_ctor_set_uint8(x_5619, sizeof(void*)*2, x_5618);
x_5620 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5620, 0, x_5619);
x_5621 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5621, 0, x_5620);
if (lean_is_scalar(x_5616)) {
 x_5622 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5622 = x_5616;
}
lean_ctor_set(x_5622, 0, x_5621);
lean_ctor_set(x_5622, 1, x_5615);
return x_5622;
}
else
{
lean_object* x_5623; lean_object* x_5624; lean_object* x_5625; lean_object* x_5626; 
lean_dec(x_5609);
x_5623 = lean_ctor_get(x_5613, 0);
lean_inc(x_5623);
x_5624 = lean_ctor_get(x_5613, 1);
lean_inc(x_5624);
if (lean_is_exclusive(x_5613)) {
 lean_ctor_release(x_5613, 0);
 lean_ctor_release(x_5613, 1);
 x_5625 = x_5613;
} else {
 lean_dec_ref(x_5613);
 x_5625 = lean_box(0);
}
if (lean_is_scalar(x_5625)) {
 x_5626 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5626 = x_5625;
}
lean_ctor_set(x_5626, 0, x_5623);
lean_ctor_set(x_5626, 1, x_5624);
return x_5626;
}
}
else
{
lean_object* x_5627; lean_object* x_5628; lean_object* x_5629; lean_object* x_5630; 
lean_dec(x_5604);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5627 = lean_ctor_get(x_5608, 0);
lean_inc(x_5627);
x_5628 = lean_ctor_get(x_5608, 1);
lean_inc(x_5628);
if (lean_is_exclusive(x_5608)) {
 lean_ctor_release(x_5608, 0);
 lean_ctor_release(x_5608, 1);
 x_5629 = x_5608;
} else {
 lean_dec_ref(x_5608);
 x_5629 = lean_box(0);
}
if (lean_is_scalar(x_5629)) {
 x_5630 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5630 = x_5629;
}
lean_ctor_set(x_5630, 0, x_5627);
lean_ctor_set(x_5630, 1, x_5628);
return x_5630;
}
}
}
else
{
lean_object* x_5664; lean_object* x_5665; lean_object* x_5666; lean_object* x_5667; 
lean_dec(x_5596);
lean_dec(x_5595);
lean_dec(x_5594);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5664 = lean_ctor_get(x_5598, 0);
lean_inc(x_5664);
x_5665 = lean_ctor_get(x_5598, 1);
lean_inc(x_5665);
if (lean_is_exclusive(x_5598)) {
 lean_ctor_release(x_5598, 0);
 lean_ctor_release(x_5598, 1);
 x_5666 = x_5598;
} else {
 lean_dec_ref(x_5598);
 x_5666 = lean_box(0);
}
if (lean_is_scalar(x_5666)) {
 x_5667 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5667 = x_5666;
}
lean_ctor_set(x_5667, 0, x_5664);
lean_ctor_set(x_5667, 1, x_5665);
return x_5667;
}
}
else
{
lean_object* x_5668; lean_object* x_5669; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5668 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5669 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5669 = x_5082;
}
lean_ctor_set(x_5669, 0, x_5668);
lean_ctor_set(x_5669, 1, x_5081);
return x_5669;
}
}
else
{
lean_object* x_5670; lean_object* x_5671; lean_object* x_5672; lean_object* x_5673; lean_object* x_5674; lean_object* x_5675; lean_object* x_5676; lean_object* x_5677; 
lean_dec(x_5083);
lean_dec(x_5082);
x_5670 = lean_unsigned_to_nat(0u);
x_5671 = lean_array_fget(x_5163, x_5670);
x_5672 = lean_array_fget(x_5163, x_5074);
lean_dec(x_5163);
x_5673 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_5671);
x_5674 = lean_array_push(x_5673, x_5671);
lean_inc(x_5672);
x_5675 = lean_array_push(x_5674, x_5672);
x_5676 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24;
x_5677 = l_Lean_Meta_mkAppM(x_5676, x_5675, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5677) == 0)
{
lean_object* x_5678; lean_object* x_5679; lean_object* x_5680; lean_object* x_5681; lean_object* x_5682; lean_object* x_5683; lean_object* x_5684; lean_object* x_5685; lean_object* x_5686; uint8_t x_5687; lean_object* x_5688; lean_object* x_5689; lean_object* x_5690; lean_object* x_5691; 
x_5678 = lean_ctor_get(x_5677, 0);
lean_inc(x_5678);
x_5679 = lean_ctor_get(x_5677, 1);
lean_inc(x_5679);
if (lean_is_exclusive(x_5677)) {
 lean_ctor_release(x_5677, 0);
 lean_ctor_release(x_5677, 1);
 x_5680 = x_5677;
} else {
 lean_dec_ref(x_5677);
 x_5680 = lean_box(0);
}
lean_inc(x_5672);
x_5681 = l_Lean_mkNot(x_5672);
lean_inc(x_5671);
x_5682 = l_Lean_mkAnd(x_5671, x_5681);
x_5683 = l_Lean_mkNot(x_5671);
x_5684 = l_Lean_mkAnd(x_5683, x_5672);
x_5685 = l_Lean_mkOr(x_5682, x_5684);
x_5686 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5686, 0, x_5678);
x_5687 = 1;
x_5688 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5688, 0, x_5685);
lean_ctor_set(x_5688, 1, x_5686);
lean_ctor_set_uint8(x_5688, sizeof(void*)*2, x_5687);
x_5689 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5689, 0, x_5688);
x_5690 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5690, 0, x_5689);
if (lean_is_scalar(x_5680)) {
 x_5691 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5691 = x_5680;
}
lean_ctor_set(x_5691, 0, x_5690);
lean_ctor_set(x_5691, 1, x_5679);
return x_5691;
}
else
{
lean_object* x_5692; lean_object* x_5693; lean_object* x_5694; lean_object* x_5695; 
lean_dec(x_5672);
lean_dec(x_5671);
x_5692 = lean_ctor_get(x_5677, 0);
lean_inc(x_5692);
x_5693 = lean_ctor_get(x_5677, 1);
lean_inc(x_5693);
if (lean_is_exclusive(x_5677)) {
 lean_ctor_release(x_5677, 0);
 lean_ctor_release(x_5677, 1);
 x_5694 = x_5677;
} else {
 lean_dec_ref(x_5677);
 x_5694 = lean_box(0);
}
if (lean_is_scalar(x_5694)) {
 x_5695 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5695 = x_5694;
}
lean_ctor_set(x_5695, 0, x_5692);
lean_ctor_set(x_5695, 1, x_5693);
return x_5695;
}
}
}
}
else
{
lean_object* x_5696; lean_object* x_5697; uint8_t x_5698; 
lean_dec(x_5164);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_5696 = lean_array_get_size(x_5163);
x_5697 = lean_unsigned_to_nat(2u);
x_5698 = lean_nat_dec_eq(x_5696, x_5697);
lean_dec(x_5696);
if (x_5698 == 0)
{
lean_dec(x_5163);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5699; lean_object* x_5700; lean_object* x_5701; uint8_t x_5702; lean_object* x_5703; 
lean_dec(x_5082);
x_5699 = lean_ctor_get(x_5083, 0);
lean_inc(x_5699);
x_5700 = lean_ctor_get(x_5083, 1);
lean_inc(x_5700);
x_5701 = lean_ctor_get(x_5083, 2);
lean_inc(x_5701);
x_5702 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5700);
x_5703 = l_Lean_Meta_isProp(x_5700, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5703) == 0)
{
lean_object* x_5704; lean_object* x_5705; lean_object* x_5706; uint8_t x_5737; 
x_5704 = lean_ctor_get(x_5703, 0);
lean_inc(x_5704);
x_5705 = lean_ctor_get(x_5703, 1);
lean_inc(x_5705);
lean_dec(x_5703);
x_5737 = lean_unbox(x_5704);
lean_dec(x_5704);
if (x_5737 == 0)
{
lean_object* x_5738; 
x_5738 = lean_box(0);
x_5706 = x_5738;
goto block_5736;
}
else
{
uint8_t x_5739; 
x_5739 = l_Lean_Expr_hasLooseBVars(x_5701);
if (x_5739 == 0)
{
lean_object* x_5740; lean_object* x_5741; lean_object* x_5742; lean_object* x_5743; lean_object* x_5744; lean_object* x_5745; 
lean_dec(x_5699);
lean_inc(x_5701);
x_5740 = l_Lean_mkNot(x_5701);
x_5741 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5742 = lean_array_push(x_5741, x_5700);
lean_inc(x_5742);
x_5743 = lean_array_push(x_5742, x_5740);
x_5744 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5745 = l_Lean_Meta_mkAppM(x_5744, x_5743, x_5, x_6, x_7, x_8, x_5705);
if (lean_obj_tag(x_5745) == 0)
{
lean_object* x_5746; lean_object* x_5747; lean_object* x_5748; lean_object* x_5749; lean_object* x_5750; 
x_5746 = lean_ctor_get(x_5745, 0);
lean_inc(x_5746);
x_5747 = lean_ctor_get(x_5745, 1);
lean_inc(x_5747);
lean_dec(x_5745);
x_5748 = lean_array_push(x_5742, x_5701);
x_5749 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5750 = l_Lean_Meta_mkAppM(x_5749, x_5748, x_5, x_6, x_7, x_8, x_5747);
if (lean_obj_tag(x_5750) == 0)
{
lean_object* x_5751; lean_object* x_5752; lean_object* x_5753; lean_object* x_5754; uint8_t x_5755; lean_object* x_5756; lean_object* x_5757; lean_object* x_5758; lean_object* x_5759; 
x_5751 = lean_ctor_get(x_5750, 0);
lean_inc(x_5751);
x_5752 = lean_ctor_get(x_5750, 1);
lean_inc(x_5752);
if (lean_is_exclusive(x_5750)) {
 lean_ctor_release(x_5750, 0);
 lean_ctor_release(x_5750, 1);
 x_5753 = x_5750;
} else {
 lean_dec_ref(x_5750);
 x_5753 = lean_box(0);
}
x_5754 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5754, 0, x_5751);
x_5755 = 1;
x_5756 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5756, 0, x_5746);
lean_ctor_set(x_5756, 1, x_5754);
lean_ctor_set_uint8(x_5756, sizeof(void*)*2, x_5755);
x_5757 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5757, 0, x_5756);
x_5758 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5758, 0, x_5757);
if (lean_is_scalar(x_5753)) {
 x_5759 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5759 = x_5753;
}
lean_ctor_set(x_5759, 0, x_5758);
lean_ctor_set(x_5759, 1, x_5752);
return x_5759;
}
else
{
lean_object* x_5760; lean_object* x_5761; lean_object* x_5762; lean_object* x_5763; 
lean_dec(x_5746);
x_5760 = lean_ctor_get(x_5750, 0);
lean_inc(x_5760);
x_5761 = lean_ctor_get(x_5750, 1);
lean_inc(x_5761);
if (lean_is_exclusive(x_5750)) {
 lean_ctor_release(x_5750, 0);
 lean_ctor_release(x_5750, 1);
 x_5762 = x_5750;
} else {
 lean_dec_ref(x_5750);
 x_5762 = lean_box(0);
}
if (lean_is_scalar(x_5762)) {
 x_5763 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5763 = x_5762;
}
lean_ctor_set(x_5763, 0, x_5760);
lean_ctor_set(x_5763, 1, x_5761);
return x_5763;
}
}
else
{
lean_object* x_5764; lean_object* x_5765; lean_object* x_5766; lean_object* x_5767; 
lean_dec(x_5742);
lean_dec(x_5701);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5764 = lean_ctor_get(x_5745, 0);
lean_inc(x_5764);
x_5765 = lean_ctor_get(x_5745, 1);
lean_inc(x_5765);
if (lean_is_exclusive(x_5745)) {
 lean_ctor_release(x_5745, 0);
 lean_ctor_release(x_5745, 1);
 x_5766 = x_5745;
} else {
 lean_dec_ref(x_5745);
 x_5766 = lean_box(0);
}
if (lean_is_scalar(x_5766)) {
 x_5767 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5767 = x_5766;
}
lean_ctor_set(x_5767, 0, x_5764);
lean_ctor_set(x_5767, 1, x_5765);
return x_5767;
}
}
else
{
lean_object* x_5768; 
x_5768 = lean_box(0);
x_5706 = x_5768;
goto block_5736;
}
}
block_5736:
{
lean_object* x_5707; lean_object* x_5708; lean_object* x_5709; lean_object* x_5710; lean_object* x_5711; lean_object* x_5712; lean_object* x_5713; 
lean_dec(x_5706);
lean_inc(x_5701);
x_5707 = l_Lean_mkNot(x_5701);
lean_inc(x_5700);
lean_inc(x_5699);
x_5708 = l_Lean_Expr_lam___override(x_5699, x_5700, x_5707, x_5702);
x_5709 = l_Lean_Expr_lam___override(x_5699, x_5700, x_5701, x_5702);
x_5710 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5711 = lean_array_push(x_5710, x_5708);
x_5712 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5713 = l_Lean_Meta_mkAppM(x_5712, x_5711, x_5, x_6, x_7, x_8, x_5705);
if (lean_obj_tag(x_5713) == 0)
{
lean_object* x_5714; lean_object* x_5715; lean_object* x_5716; lean_object* x_5717; lean_object* x_5718; 
x_5714 = lean_ctor_get(x_5713, 0);
lean_inc(x_5714);
x_5715 = lean_ctor_get(x_5713, 1);
lean_inc(x_5715);
lean_dec(x_5713);
x_5716 = lean_array_push(x_5710, x_5709);
x_5717 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5718 = l_Lean_Meta_mkAppM(x_5717, x_5716, x_5, x_6, x_7, x_8, x_5715);
if (lean_obj_tag(x_5718) == 0)
{
lean_object* x_5719; lean_object* x_5720; lean_object* x_5721; lean_object* x_5722; uint8_t x_5723; lean_object* x_5724; lean_object* x_5725; lean_object* x_5726; lean_object* x_5727; 
x_5719 = lean_ctor_get(x_5718, 0);
lean_inc(x_5719);
x_5720 = lean_ctor_get(x_5718, 1);
lean_inc(x_5720);
if (lean_is_exclusive(x_5718)) {
 lean_ctor_release(x_5718, 0);
 lean_ctor_release(x_5718, 1);
 x_5721 = x_5718;
} else {
 lean_dec_ref(x_5718);
 x_5721 = lean_box(0);
}
x_5722 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5722, 0, x_5719);
x_5723 = 1;
x_5724 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5724, 0, x_5714);
lean_ctor_set(x_5724, 1, x_5722);
lean_ctor_set_uint8(x_5724, sizeof(void*)*2, x_5723);
x_5725 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5725, 0, x_5724);
x_5726 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5726, 0, x_5725);
if (lean_is_scalar(x_5721)) {
 x_5727 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5727 = x_5721;
}
lean_ctor_set(x_5727, 0, x_5726);
lean_ctor_set(x_5727, 1, x_5720);
return x_5727;
}
else
{
lean_object* x_5728; lean_object* x_5729; lean_object* x_5730; lean_object* x_5731; 
lean_dec(x_5714);
x_5728 = lean_ctor_get(x_5718, 0);
lean_inc(x_5728);
x_5729 = lean_ctor_get(x_5718, 1);
lean_inc(x_5729);
if (lean_is_exclusive(x_5718)) {
 lean_ctor_release(x_5718, 0);
 lean_ctor_release(x_5718, 1);
 x_5730 = x_5718;
} else {
 lean_dec_ref(x_5718);
 x_5730 = lean_box(0);
}
if (lean_is_scalar(x_5730)) {
 x_5731 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5731 = x_5730;
}
lean_ctor_set(x_5731, 0, x_5728);
lean_ctor_set(x_5731, 1, x_5729);
return x_5731;
}
}
else
{
lean_object* x_5732; lean_object* x_5733; lean_object* x_5734; lean_object* x_5735; 
lean_dec(x_5709);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5732 = lean_ctor_get(x_5713, 0);
lean_inc(x_5732);
x_5733 = lean_ctor_get(x_5713, 1);
lean_inc(x_5733);
if (lean_is_exclusive(x_5713)) {
 lean_ctor_release(x_5713, 0);
 lean_ctor_release(x_5713, 1);
 x_5734 = x_5713;
} else {
 lean_dec_ref(x_5713);
 x_5734 = lean_box(0);
}
if (lean_is_scalar(x_5734)) {
 x_5735 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5735 = x_5734;
}
lean_ctor_set(x_5735, 0, x_5732);
lean_ctor_set(x_5735, 1, x_5733);
return x_5735;
}
}
}
else
{
lean_object* x_5769; lean_object* x_5770; lean_object* x_5771; lean_object* x_5772; 
lean_dec(x_5701);
lean_dec(x_5700);
lean_dec(x_5699);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5769 = lean_ctor_get(x_5703, 0);
lean_inc(x_5769);
x_5770 = lean_ctor_get(x_5703, 1);
lean_inc(x_5770);
if (lean_is_exclusive(x_5703)) {
 lean_ctor_release(x_5703, 0);
 lean_ctor_release(x_5703, 1);
 x_5771 = x_5703;
} else {
 lean_dec_ref(x_5703);
 x_5771 = lean_box(0);
}
if (lean_is_scalar(x_5771)) {
 x_5772 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5772 = x_5771;
}
lean_ctor_set(x_5772, 0, x_5769);
lean_ctor_set(x_5772, 1, x_5770);
return x_5772;
}
}
else
{
lean_object* x_5773; lean_object* x_5774; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5773 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5774 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5774 = x_5082;
}
lean_ctor_set(x_5774, 0, x_5773);
lean_ctor_set(x_5774, 1, x_5081);
return x_5774;
}
}
else
{
lean_object* x_5775; lean_object* x_5776; lean_object* x_5777; lean_object* x_5778; lean_object* x_5779; lean_object* x_5780; lean_object* x_5781; lean_object* x_5782; 
lean_dec(x_5083);
lean_dec(x_5082);
x_5775 = lean_unsigned_to_nat(0u);
x_5776 = lean_array_fget(x_5163, x_5775);
x_5777 = lean_array_fget(x_5163, x_5074);
lean_dec(x_5163);
x_5778 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_5776);
x_5779 = lean_array_push(x_5778, x_5776);
lean_inc(x_5777);
x_5780 = lean_array_push(x_5779, x_5777);
x_5781 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26;
x_5782 = l_Lean_Meta_mkAppM(x_5781, x_5780, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5782) == 0)
{
lean_object* x_5783; lean_object* x_5784; lean_object* x_5785; lean_object* x_5786; lean_object* x_5787; lean_object* x_5788; lean_object* x_5789; uint8_t x_5790; lean_object* x_5791; lean_object* x_5792; lean_object* x_5793; lean_object* x_5794; 
x_5783 = lean_ctor_get(x_5782, 0);
lean_inc(x_5783);
x_5784 = lean_ctor_get(x_5782, 1);
lean_inc(x_5784);
if (lean_is_exclusive(x_5782)) {
 lean_ctor_release(x_5782, 0);
 lean_ctor_release(x_5782, 1);
 x_5785 = x_5782;
} else {
 lean_dec_ref(x_5782);
 x_5785 = lean_box(0);
}
x_5786 = l_Lean_mkNot(x_5776);
x_5787 = l_Lean_mkNot(x_5777);
x_5788 = l_Lean_mkAnd(x_5786, x_5787);
x_5789 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5789, 0, x_5783);
x_5790 = 1;
x_5791 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5791, 0, x_5788);
lean_ctor_set(x_5791, 1, x_5789);
lean_ctor_set_uint8(x_5791, sizeof(void*)*2, x_5790);
x_5792 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5792, 0, x_5791);
x_5793 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5793, 0, x_5792);
if (lean_is_scalar(x_5785)) {
 x_5794 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5794 = x_5785;
}
lean_ctor_set(x_5794, 0, x_5793);
lean_ctor_set(x_5794, 1, x_5784);
return x_5794;
}
else
{
lean_object* x_5795; lean_object* x_5796; lean_object* x_5797; lean_object* x_5798; 
lean_dec(x_5777);
lean_dec(x_5776);
x_5795 = lean_ctor_get(x_5782, 0);
lean_inc(x_5795);
x_5796 = lean_ctor_get(x_5782, 1);
lean_inc(x_5796);
if (lean_is_exclusive(x_5782)) {
 lean_ctor_release(x_5782, 0);
 lean_ctor_release(x_5782, 1);
 x_5797 = x_5782;
} else {
 lean_dec_ref(x_5782);
 x_5797 = lean_box(0);
}
if (lean_is_scalar(x_5797)) {
 x_5798 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5798 = x_5797;
}
lean_ctor_set(x_5798, 0, x_5795);
lean_ctor_set(x_5798, 1, x_5796);
return x_5798;
}
}
}
}
else
{
lean_object* x_5799; lean_object* x_5800; uint8_t x_5801; 
lean_dec(x_5164);
x_5799 = lean_array_get_size(x_5163);
x_5800 = lean_unsigned_to_nat(2u);
x_5801 = lean_nat_dec_eq(x_5799, x_5800);
lean_dec(x_5799);
if (x_5801 == 0)
{
lean_dec(x_5163);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5802; lean_object* x_5803; lean_object* x_5804; uint8_t x_5805; lean_object* x_5806; 
lean_dec(x_5082);
x_5802 = lean_ctor_get(x_5083, 0);
lean_inc(x_5802);
x_5803 = lean_ctor_get(x_5083, 1);
lean_inc(x_5803);
x_5804 = lean_ctor_get(x_5083, 2);
lean_inc(x_5804);
x_5805 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5803);
x_5806 = l_Lean_Meta_isProp(x_5803, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5806) == 0)
{
lean_object* x_5807; lean_object* x_5808; lean_object* x_5809; uint8_t x_5840; 
x_5807 = lean_ctor_get(x_5806, 0);
lean_inc(x_5807);
x_5808 = lean_ctor_get(x_5806, 1);
lean_inc(x_5808);
lean_dec(x_5806);
x_5840 = lean_unbox(x_5807);
lean_dec(x_5807);
if (x_5840 == 0)
{
lean_object* x_5841; 
x_5841 = lean_box(0);
x_5809 = x_5841;
goto block_5839;
}
else
{
uint8_t x_5842; 
x_5842 = l_Lean_Expr_hasLooseBVars(x_5804);
if (x_5842 == 0)
{
lean_object* x_5843; lean_object* x_5844; lean_object* x_5845; lean_object* x_5846; lean_object* x_5847; lean_object* x_5848; 
lean_dec(x_5802);
lean_inc(x_5804);
x_5843 = l_Lean_mkNot(x_5804);
x_5844 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5845 = lean_array_push(x_5844, x_5803);
lean_inc(x_5845);
x_5846 = lean_array_push(x_5845, x_5843);
x_5847 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5848 = l_Lean_Meta_mkAppM(x_5847, x_5846, x_5, x_6, x_7, x_8, x_5808);
if (lean_obj_tag(x_5848) == 0)
{
lean_object* x_5849; lean_object* x_5850; lean_object* x_5851; lean_object* x_5852; lean_object* x_5853; 
x_5849 = lean_ctor_get(x_5848, 0);
lean_inc(x_5849);
x_5850 = lean_ctor_get(x_5848, 1);
lean_inc(x_5850);
lean_dec(x_5848);
x_5851 = lean_array_push(x_5845, x_5804);
x_5852 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5853 = l_Lean_Meta_mkAppM(x_5852, x_5851, x_5, x_6, x_7, x_8, x_5850);
if (lean_obj_tag(x_5853) == 0)
{
lean_object* x_5854; lean_object* x_5855; lean_object* x_5856; lean_object* x_5857; uint8_t x_5858; lean_object* x_5859; lean_object* x_5860; lean_object* x_5861; lean_object* x_5862; 
x_5854 = lean_ctor_get(x_5853, 0);
lean_inc(x_5854);
x_5855 = lean_ctor_get(x_5853, 1);
lean_inc(x_5855);
if (lean_is_exclusive(x_5853)) {
 lean_ctor_release(x_5853, 0);
 lean_ctor_release(x_5853, 1);
 x_5856 = x_5853;
} else {
 lean_dec_ref(x_5853);
 x_5856 = lean_box(0);
}
x_5857 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5857, 0, x_5854);
x_5858 = 1;
x_5859 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5859, 0, x_5849);
lean_ctor_set(x_5859, 1, x_5857);
lean_ctor_set_uint8(x_5859, sizeof(void*)*2, x_5858);
x_5860 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5860, 0, x_5859);
x_5861 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5861, 0, x_5860);
if (lean_is_scalar(x_5856)) {
 x_5862 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5862 = x_5856;
}
lean_ctor_set(x_5862, 0, x_5861);
lean_ctor_set(x_5862, 1, x_5855);
return x_5862;
}
else
{
lean_object* x_5863; lean_object* x_5864; lean_object* x_5865; lean_object* x_5866; 
lean_dec(x_5849);
x_5863 = lean_ctor_get(x_5853, 0);
lean_inc(x_5863);
x_5864 = lean_ctor_get(x_5853, 1);
lean_inc(x_5864);
if (lean_is_exclusive(x_5853)) {
 lean_ctor_release(x_5853, 0);
 lean_ctor_release(x_5853, 1);
 x_5865 = x_5853;
} else {
 lean_dec_ref(x_5853);
 x_5865 = lean_box(0);
}
if (lean_is_scalar(x_5865)) {
 x_5866 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5866 = x_5865;
}
lean_ctor_set(x_5866, 0, x_5863);
lean_ctor_set(x_5866, 1, x_5864);
return x_5866;
}
}
else
{
lean_object* x_5867; lean_object* x_5868; lean_object* x_5869; lean_object* x_5870; 
lean_dec(x_5845);
lean_dec(x_5804);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5867 = lean_ctor_get(x_5848, 0);
lean_inc(x_5867);
x_5868 = lean_ctor_get(x_5848, 1);
lean_inc(x_5868);
if (lean_is_exclusive(x_5848)) {
 lean_ctor_release(x_5848, 0);
 lean_ctor_release(x_5848, 1);
 x_5869 = x_5848;
} else {
 lean_dec_ref(x_5848);
 x_5869 = lean_box(0);
}
if (lean_is_scalar(x_5869)) {
 x_5870 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5870 = x_5869;
}
lean_ctor_set(x_5870, 0, x_5867);
lean_ctor_set(x_5870, 1, x_5868);
return x_5870;
}
}
else
{
lean_object* x_5871; 
x_5871 = lean_box(0);
x_5809 = x_5871;
goto block_5839;
}
}
block_5839:
{
lean_object* x_5810; lean_object* x_5811; lean_object* x_5812; lean_object* x_5813; lean_object* x_5814; lean_object* x_5815; lean_object* x_5816; 
lean_dec(x_5809);
lean_inc(x_5804);
x_5810 = l_Lean_mkNot(x_5804);
lean_inc(x_5803);
lean_inc(x_5802);
x_5811 = l_Lean_Expr_lam___override(x_5802, x_5803, x_5810, x_5805);
x_5812 = l_Lean_Expr_lam___override(x_5802, x_5803, x_5804, x_5805);
x_5813 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5814 = lean_array_push(x_5813, x_5811);
x_5815 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5816 = l_Lean_Meta_mkAppM(x_5815, x_5814, x_5, x_6, x_7, x_8, x_5808);
if (lean_obj_tag(x_5816) == 0)
{
lean_object* x_5817; lean_object* x_5818; lean_object* x_5819; lean_object* x_5820; lean_object* x_5821; 
x_5817 = lean_ctor_get(x_5816, 0);
lean_inc(x_5817);
x_5818 = lean_ctor_get(x_5816, 1);
lean_inc(x_5818);
lean_dec(x_5816);
x_5819 = lean_array_push(x_5813, x_5812);
x_5820 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5821 = l_Lean_Meta_mkAppM(x_5820, x_5819, x_5, x_6, x_7, x_8, x_5818);
if (lean_obj_tag(x_5821) == 0)
{
lean_object* x_5822; lean_object* x_5823; lean_object* x_5824; lean_object* x_5825; uint8_t x_5826; lean_object* x_5827; lean_object* x_5828; lean_object* x_5829; lean_object* x_5830; 
x_5822 = lean_ctor_get(x_5821, 0);
lean_inc(x_5822);
x_5823 = lean_ctor_get(x_5821, 1);
lean_inc(x_5823);
if (lean_is_exclusive(x_5821)) {
 lean_ctor_release(x_5821, 0);
 lean_ctor_release(x_5821, 1);
 x_5824 = x_5821;
} else {
 lean_dec_ref(x_5821);
 x_5824 = lean_box(0);
}
x_5825 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5825, 0, x_5822);
x_5826 = 1;
x_5827 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5827, 0, x_5817);
lean_ctor_set(x_5827, 1, x_5825);
lean_ctor_set_uint8(x_5827, sizeof(void*)*2, x_5826);
x_5828 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5828, 0, x_5827);
x_5829 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5829, 0, x_5828);
if (lean_is_scalar(x_5824)) {
 x_5830 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5830 = x_5824;
}
lean_ctor_set(x_5830, 0, x_5829);
lean_ctor_set(x_5830, 1, x_5823);
return x_5830;
}
else
{
lean_object* x_5831; lean_object* x_5832; lean_object* x_5833; lean_object* x_5834; 
lean_dec(x_5817);
x_5831 = lean_ctor_get(x_5821, 0);
lean_inc(x_5831);
x_5832 = lean_ctor_get(x_5821, 1);
lean_inc(x_5832);
if (lean_is_exclusive(x_5821)) {
 lean_ctor_release(x_5821, 0);
 lean_ctor_release(x_5821, 1);
 x_5833 = x_5821;
} else {
 lean_dec_ref(x_5821);
 x_5833 = lean_box(0);
}
if (lean_is_scalar(x_5833)) {
 x_5834 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5834 = x_5833;
}
lean_ctor_set(x_5834, 0, x_5831);
lean_ctor_set(x_5834, 1, x_5832);
return x_5834;
}
}
else
{
lean_object* x_5835; lean_object* x_5836; lean_object* x_5837; lean_object* x_5838; 
lean_dec(x_5812);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5835 = lean_ctor_get(x_5816, 0);
lean_inc(x_5835);
x_5836 = lean_ctor_get(x_5816, 1);
lean_inc(x_5836);
if (lean_is_exclusive(x_5816)) {
 lean_ctor_release(x_5816, 0);
 lean_ctor_release(x_5816, 1);
 x_5837 = x_5816;
} else {
 lean_dec_ref(x_5816);
 x_5837 = lean_box(0);
}
if (lean_is_scalar(x_5837)) {
 x_5838 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5838 = x_5837;
}
lean_ctor_set(x_5838, 0, x_5835);
lean_ctor_set(x_5838, 1, x_5836);
return x_5838;
}
}
}
else
{
lean_object* x_5872; lean_object* x_5873; lean_object* x_5874; lean_object* x_5875; 
lean_dec(x_5804);
lean_dec(x_5803);
lean_dec(x_5802);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5872 = lean_ctor_get(x_5806, 0);
lean_inc(x_5872);
x_5873 = lean_ctor_get(x_5806, 1);
lean_inc(x_5873);
if (lean_is_exclusive(x_5806)) {
 lean_ctor_release(x_5806, 0);
 lean_ctor_release(x_5806, 1);
 x_5874 = x_5806;
} else {
 lean_dec_ref(x_5806);
 x_5874 = lean_box(0);
}
if (lean_is_scalar(x_5874)) {
 x_5875 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5875 = x_5874;
}
lean_ctor_set(x_5875, 0, x_5872);
lean_ctor_set(x_5875, 1, x_5873);
return x_5875;
}
}
else
{
lean_object* x_5876; lean_object* x_5877; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5876 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_5877 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5877 = x_5082;
}
lean_ctor_set(x_5877, 0, x_5876);
lean_ctor_set(x_5877, 1, x_5081);
return x_5877;
}
}
else
{
lean_object* x_5878; lean_object* x_5879; lean_object* x_5880; lean_object* x_5881; uint8_t x_5882; lean_object* x_5883; lean_object* x_5884; uint8_t x_5885; 
lean_dec(x_5083);
lean_dec(x_5082);
x_5878 = lean_unsigned_to_nat(0u);
x_5879 = lean_array_fget(x_5163, x_5878);
x_5880 = lean_array_fget(x_5163, x_5074);
lean_dec(x_5163);
x_5881 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3;
x_5882 = 0;
x_5883 = l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1(x_5881, x_5882, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_5081);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_5884 = lean_ctor_get(x_5883, 0);
lean_inc(x_5884);
x_5885 = lean_unbox(x_5884);
lean_dec(x_5884);
if (x_5885 == 0)
{
lean_object* x_5886; lean_object* x_5887; lean_object* x_5888; lean_object* x_5889; lean_object* x_5890; lean_object* x_5891; 
x_5886 = lean_ctor_get(x_5883, 1);
lean_inc(x_5886);
lean_dec(x_5883);
x_5887 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_5879);
x_5888 = lean_array_push(x_5887, x_5879);
lean_inc(x_5880);
x_5889 = lean_array_push(x_5888, x_5880);
x_5890 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28;
x_5891 = l_Lean_Meta_mkAppM(x_5890, x_5889, x_5, x_6, x_7, x_8, x_5886);
if (lean_obj_tag(x_5891) == 0)
{
lean_object* x_5892; lean_object* x_5893; lean_object* x_5894; lean_object* x_5895; lean_object* x_5896; uint8_t x_5897; lean_object* x_5898; lean_object* x_5899; uint8_t x_5900; lean_object* x_5901; lean_object* x_5902; lean_object* x_5903; lean_object* x_5904; 
x_5892 = lean_ctor_get(x_5891, 0);
lean_inc(x_5892);
x_5893 = lean_ctor_get(x_5891, 1);
lean_inc(x_5893);
if (lean_is_exclusive(x_5891)) {
 lean_ctor_release(x_5891, 0);
 lean_ctor_release(x_5891, 1);
 x_5894 = x_5891;
} else {
 lean_dec_ref(x_5891);
 x_5894 = lean_box(0);
}
x_5895 = l_Lean_mkNot(x_5880);
x_5896 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30;
x_5897 = 0;
x_5898 = l_Lean_Expr_forallE___override(x_5896, x_5879, x_5895, x_5897);
x_5899 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5899, 0, x_5892);
x_5900 = 1;
x_5901 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5901, 0, x_5898);
lean_ctor_set(x_5901, 1, x_5899);
lean_ctor_set_uint8(x_5901, sizeof(void*)*2, x_5900);
x_5902 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5902, 0, x_5901);
x_5903 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5903, 0, x_5902);
if (lean_is_scalar(x_5894)) {
 x_5904 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5904 = x_5894;
}
lean_ctor_set(x_5904, 0, x_5903);
lean_ctor_set(x_5904, 1, x_5893);
return x_5904;
}
else
{
lean_object* x_5905; lean_object* x_5906; lean_object* x_5907; lean_object* x_5908; 
lean_dec(x_5880);
lean_dec(x_5879);
x_5905 = lean_ctor_get(x_5891, 0);
lean_inc(x_5905);
x_5906 = lean_ctor_get(x_5891, 1);
lean_inc(x_5906);
if (lean_is_exclusive(x_5891)) {
 lean_ctor_release(x_5891, 0);
 lean_ctor_release(x_5891, 1);
 x_5907 = x_5891;
} else {
 lean_dec_ref(x_5891);
 x_5907 = lean_box(0);
}
if (lean_is_scalar(x_5907)) {
 x_5908 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5908 = x_5907;
}
lean_ctor_set(x_5908, 0, x_5905);
lean_ctor_set(x_5908, 1, x_5906);
return x_5908;
}
}
else
{
lean_object* x_5909; lean_object* x_5910; lean_object* x_5911; lean_object* x_5912; lean_object* x_5913; lean_object* x_5914; 
x_5909 = lean_ctor_get(x_5883, 1);
lean_inc(x_5909);
lean_dec(x_5883);
x_5910 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
lean_inc(x_5879);
x_5911 = lean_array_push(x_5910, x_5879);
lean_inc(x_5880);
x_5912 = lean_array_push(x_5911, x_5880);
x_5913 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32;
x_5914 = l_Lean_Meta_mkAppM(x_5913, x_5912, x_5, x_6, x_7, x_8, x_5909);
if (lean_obj_tag(x_5914) == 0)
{
lean_object* x_5915; lean_object* x_5916; lean_object* x_5917; lean_object* x_5918; lean_object* x_5919; lean_object* x_5920; lean_object* x_5921; uint8_t x_5922; lean_object* x_5923; lean_object* x_5924; lean_object* x_5925; lean_object* x_5926; 
x_5915 = lean_ctor_get(x_5914, 0);
lean_inc(x_5915);
x_5916 = lean_ctor_get(x_5914, 1);
lean_inc(x_5916);
if (lean_is_exclusive(x_5914)) {
 lean_ctor_release(x_5914, 0);
 lean_ctor_release(x_5914, 1);
 x_5917 = x_5914;
} else {
 lean_dec_ref(x_5914);
 x_5917 = lean_box(0);
}
x_5918 = l_Lean_mkNot(x_5879);
x_5919 = l_Lean_mkNot(x_5880);
x_5920 = l_Lean_mkOr(x_5918, x_5919);
x_5921 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5921, 0, x_5915);
x_5922 = 1;
x_5923 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5923, 0, x_5920);
lean_ctor_set(x_5923, 1, x_5921);
lean_ctor_set_uint8(x_5923, sizeof(void*)*2, x_5922);
x_5924 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5924, 0, x_5923);
x_5925 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5925, 0, x_5924);
if (lean_is_scalar(x_5917)) {
 x_5926 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5926 = x_5917;
}
lean_ctor_set(x_5926, 0, x_5925);
lean_ctor_set(x_5926, 1, x_5916);
return x_5926;
}
else
{
lean_object* x_5927; lean_object* x_5928; lean_object* x_5929; lean_object* x_5930; 
lean_dec(x_5880);
lean_dec(x_5879);
x_5927 = lean_ctor_get(x_5914, 0);
lean_inc(x_5927);
x_5928 = lean_ctor_get(x_5914, 1);
lean_inc(x_5928);
if (lean_is_exclusive(x_5914)) {
 lean_ctor_release(x_5914, 0);
 lean_ctor_release(x_5914, 1);
 x_5929 = x_5914;
} else {
 lean_dec_ref(x_5914);
 x_5929 = lean_box(0);
}
if (lean_is_scalar(x_5929)) {
 x_5930 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5930 = x_5929;
}
lean_ctor_set(x_5930, 0, x_5927);
lean_ctor_set(x_5930, 1, x_5928);
return x_5930;
}
}
}
}
}
else
{
lean_object* x_5931; uint8_t x_5932; 
lean_dec(x_5164);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_5931 = lean_array_get_size(x_5163);
x_5932 = lean_nat_dec_eq(x_5931, x_5074);
lean_dec(x_5931);
if (x_5932 == 0)
{
lean_dec(x_5163);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_5933; lean_object* x_5934; lean_object* x_5935; uint8_t x_5936; lean_object* x_5937; 
lean_dec(x_5082);
x_5933 = lean_ctor_get(x_5083, 0);
lean_inc(x_5933);
x_5934 = lean_ctor_get(x_5083, 1);
lean_inc(x_5934);
x_5935 = lean_ctor_get(x_5083, 2);
lean_inc(x_5935);
x_5936 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_5934);
x_5937 = l_Lean_Meta_isProp(x_5934, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_5937) == 0)
{
lean_object* x_5938; lean_object* x_5939; lean_object* x_5940; uint8_t x_5971; 
x_5938 = lean_ctor_get(x_5937, 0);
lean_inc(x_5938);
x_5939 = lean_ctor_get(x_5937, 1);
lean_inc(x_5939);
lean_dec(x_5937);
x_5971 = lean_unbox(x_5938);
lean_dec(x_5938);
if (x_5971 == 0)
{
lean_object* x_5972; 
x_5972 = lean_box(0);
x_5940 = x_5972;
goto block_5970;
}
else
{
uint8_t x_5973; 
x_5973 = l_Lean_Expr_hasLooseBVars(x_5935);
if (x_5973 == 0)
{
lean_object* x_5974; lean_object* x_5975; lean_object* x_5976; lean_object* x_5977; lean_object* x_5978; lean_object* x_5979; 
lean_dec(x_5933);
lean_inc(x_5935);
x_5974 = l_Lean_mkNot(x_5935);
x_5975 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_5976 = lean_array_push(x_5975, x_5934);
lean_inc(x_5976);
x_5977 = lean_array_push(x_5976, x_5974);
x_5978 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5979 = l_Lean_Meta_mkAppM(x_5978, x_5977, x_5, x_6, x_7, x_8, x_5939);
if (lean_obj_tag(x_5979) == 0)
{
lean_object* x_5980; lean_object* x_5981; lean_object* x_5982; lean_object* x_5983; lean_object* x_5984; 
x_5980 = lean_ctor_get(x_5979, 0);
lean_inc(x_5980);
x_5981 = lean_ctor_get(x_5979, 1);
lean_inc(x_5981);
lean_dec(x_5979);
x_5982 = lean_array_push(x_5976, x_5935);
x_5983 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_5984 = l_Lean_Meta_mkAppM(x_5983, x_5982, x_5, x_6, x_7, x_8, x_5981);
if (lean_obj_tag(x_5984) == 0)
{
lean_object* x_5985; lean_object* x_5986; lean_object* x_5987; lean_object* x_5988; uint8_t x_5989; lean_object* x_5990; lean_object* x_5991; lean_object* x_5992; lean_object* x_5993; 
x_5985 = lean_ctor_get(x_5984, 0);
lean_inc(x_5985);
x_5986 = lean_ctor_get(x_5984, 1);
lean_inc(x_5986);
if (lean_is_exclusive(x_5984)) {
 lean_ctor_release(x_5984, 0);
 lean_ctor_release(x_5984, 1);
 x_5987 = x_5984;
} else {
 lean_dec_ref(x_5984);
 x_5987 = lean_box(0);
}
x_5988 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5988, 0, x_5985);
x_5989 = 1;
x_5990 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5990, 0, x_5980);
lean_ctor_set(x_5990, 1, x_5988);
lean_ctor_set_uint8(x_5990, sizeof(void*)*2, x_5989);
x_5991 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5991, 0, x_5990);
x_5992 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5992, 0, x_5991);
if (lean_is_scalar(x_5987)) {
 x_5993 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5993 = x_5987;
}
lean_ctor_set(x_5993, 0, x_5992);
lean_ctor_set(x_5993, 1, x_5986);
return x_5993;
}
else
{
lean_object* x_5994; lean_object* x_5995; lean_object* x_5996; lean_object* x_5997; 
lean_dec(x_5980);
x_5994 = lean_ctor_get(x_5984, 0);
lean_inc(x_5994);
x_5995 = lean_ctor_get(x_5984, 1);
lean_inc(x_5995);
if (lean_is_exclusive(x_5984)) {
 lean_ctor_release(x_5984, 0);
 lean_ctor_release(x_5984, 1);
 x_5996 = x_5984;
} else {
 lean_dec_ref(x_5984);
 x_5996 = lean_box(0);
}
if (lean_is_scalar(x_5996)) {
 x_5997 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5997 = x_5996;
}
lean_ctor_set(x_5997, 0, x_5994);
lean_ctor_set(x_5997, 1, x_5995);
return x_5997;
}
}
else
{
lean_object* x_5998; lean_object* x_5999; lean_object* x_6000; lean_object* x_6001; 
lean_dec(x_5976);
lean_dec(x_5935);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5998 = lean_ctor_get(x_5979, 0);
lean_inc(x_5998);
x_5999 = lean_ctor_get(x_5979, 1);
lean_inc(x_5999);
if (lean_is_exclusive(x_5979)) {
 lean_ctor_release(x_5979, 0);
 lean_ctor_release(x_5979, 1);
 x_6000 = x_5979;
} else {
 lean_dec_ref(x_5979);
 x_6000 = lean_box(0);
}
if (lean_is_scalar(x_6000)) {
 x_6001 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6001 = x_6000;
}
lean_ctor_set(x_6001, 0, x_5998);
lean_ctor_set(x_6001, 1, x_5999);
return x_6001;
}
}
else
{
lean_object* x_6002; 
x_6002 = lean_box(0);
x_5940 = x_6002;
goto block_5970;
}
}
block_5970:
{
lean_object* x_5941; lean_object* x_5942; lean_object* x_5943; lean_object* x_5944; lean_object* x_5945; lean_object* x_5946; lean_object* x_5947; 
lean_dec(x_5940);
lean_inc(x_5935);
x_5941 = l_Lean_mkNot(x_5935);
lean_inc(x_5934);
lean_inc(x_5933);
x_5942 = l_Lean_Expr_lam___override(x_5933, x_5934, x_5941, x_5936);
x_5943 = l_Lean_Expr_lam___override(x_5933, x_5934, x_5935, x_5936);
x_5944 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_5945 = lean_array_push(x_5944, x_5942);
x_5946 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_5947 = l_Lean_Meta_mkAppM(x_5946, x_5945, x_5, x_6, x_7, x_8, x_5939);
if (lean_obj_tag(x_5947) == 0)
{
lean_object* x_5948; lean_object* x_5949; lean_object* x_5950; lean_object* x_5951; lean_object* x_5952; 
x_5948 = lean_ctor_get(x_5947, 0);
lean_inc(x_5948);
x_5949 = lean_ctor_get(x_5947, 1);
lean_inc(x_5949);
lean_dec(x_5947);
x_5950 = lean_array_push(x_5944, x_5943);
x_5951 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_5952 = l_Lean_Meta_mkAppM(x_5951, x_5950, x_5, x_6, x_7, x_8, x_5949);
if (lean_obj_tag(x_5952) == 0)
{
lean_object* x_5953; lean_object* x_5954; lean_object* x_5955; lean_object* x_5956; uint8_t x_5957; lean_object* x_5958; lean_object* x_5959; lean_object* x_5960; lean_object* x_5961; 
x_5953 = lean_ctor_get(x_5952, 0);
lean_inc(x_5953);
x_5954 = lean_ctor_get(x_5952, 1);
lean_inc(x_5954);
if (lean_is_exclusive(x_5952)) {
 lean_ctor_release(x_5952, 0);
 lean_ctor_release(x_5952, 1);
 x_5955 = x_5952;
} else {
 lean_dec_ref(x_5952);
 x_5955 = lean_box(0);
}
x_5956 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5956, 0, x_5953);
x_5957 = 1;
x_5958 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5958, 0, x_5948);
lean_ctor_set(x_5958, 1, x_5956);
lean_ctor_set_uint8(x_5958, sizeof(void*)*2, x_5957);
x_5959 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5959, 0, x_5958);
x_5960 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5960, 0, x_5959);
if (lean_is_scalar(x_5955)) {
 x_5961 = lean_alloc_ctor(0, 2, 0);
} else {
 x_5961 = x_5955;
}
lean_ctor_set(x_5961, 0, x_5960);
lean_ctor_set(x_5961, 1, x_5954);
return x_5961;
}
else
{
lean_object* x_5962; lean_object* x_5963; lean_object* x_5964; lean_object* x_5965; 
lean_dec(x_5948);
x_5962 = lean_ctor_get(x_5952, 0);
lean_inc(x_5962);
x_5963 = lean_ctor_get(x_5952, 1);
lean_inc(x_5963);
if (lean_is_exclusive(x_5952)) {
 lean_ctor_release(x_5952, 0);
 lean_ctor_release(x_5952, 1);
 x_5964 = x_5952;
} else {
 lean_dec_ref(x_5952);
 x_5964 = lean_box(0);
}
if (lean_is_scalar(x_5964)) {
 x_5965 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5965 = x_5964;
}
lean_ctor_set(x_5965, 0, x_5962);
lean_ctor_set(x_5965, 1, x_5963);
return x_5965;
}
}
else
{
lean_object* x_5966; lean_object* x_5967; lean_object* x_5968; lean_object* x_5969; 
lean_dec(x_5943);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_5966 = lean_ctor_get(x_5947, 0);
lean_inc(x_5966);
x_5967 = lean_ctor_get(x_5947, 1);
lean_inc(x_5967);
if (lean_is_exclusive(x_5947)) {
 lean_ctor_release(x_5947, 0);
 lean_ctor_release(x_5947, 1);
 x_5968 = x_5947;
} else {
 lean_dec_ref(x_5947);
 x_5968 = lean_box(0);
}
if (lean_is_scalar(x_5968)) {
 x_5969 = lean_alloc_ctor(1, 2, 0);
} else {
 x_5969 = x_5968;
}
lean_ctor_set(x_5969, 0, x_5966);
lean_ctor_set(x_5969, 1, x_5967);
return x_5969;
}
}
}
else
{
lean_object* x_6003; lean_object* x_6004; lean_object* x_6005; lean_object* x_6006; 
lean_dec(x_5935);
lean_dec(x_5934);
lean_dec(x_5933);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6003 = lean_ctor_get(x_5937, 0);
lean_inc(x_6003);
x_6004 = lean_ctor_get(x_5937, 1);
lean_inc(x_6004);
if (lean_is_exclusive(x_5937)) {
 lean_ctor_release(x_5937, 0);
 lean_ctor_release(x_5937, 1);
 x_6005 = x_5937;
} else {
 lean_dec_ref(x_5937);
 x_6005 = lean_box(0);
}
if (lean_is_scalar(x_6005)) {
 x_6006 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6006 = x_6005;
}
lean_ctor_set(x_6006, 0, x_6003);
lean_ctor_set(x_6006, 1, x_6004);
return x_6006;
}
}
else
{
lean_object* x_6007; lean_object* x_6008; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6007 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6008 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6008 = x_5082;
}
lean_ctor_set(x_6008, 0, x_6007);
lean_ctor_set(x_6008, 1, x_5081);
return x_6008;
}
}
else
{
lean_object* x_6009; lean_object* x_6010; lean_object* x_6011; lean_object* x_6012; lean_object* x_6013; lean_object* x_6014; 
lean_dec(x_5083);
lean_dec(x_5082);
x_6009 = lean_unsigned_to_nat(0u);
x_6010 = lean_array_fget(x_5163, x_6009);
lean_dec(x_5163);
x_6011 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
lean_inc(x_6010);
x_6012 = lean_array_push(x_6011, x_6010);
x_6013 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34;
x_6014 = l_Lean_Meta_mkAppM(x_6013, x_6012, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6014) == 0)
{
lean_object* x_6015; lean_object* x_6016; lean_object* x_6017; lean_object* x_6018; uint8_t x_6019; lean_object* x_6020; lean_object* x_6021; lean_object* x_6022; lean_object* x_6023; 
x_6015 = lean_ctor_get(x_6014, 0);
lean_inc(x_6015);
x_6016 = lean_ctor_get(x_6014, 1);
lean_inc(x_6016);
if (lean_is_exclusive(x_6014)) {
 lean_ctor_release(x_6014, 0);
 lean_ctor_release(x_6014, 1);
 x_6017 = x_6014;
} else {
 lean_dec_ref(x_6014);
 x_6017 = lean_box(0);
}
x_6018 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6018, 0, x_6015);
x_6019 = 1;
x_6020 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6020, 0, x_6010);
lean_ctor_set(x_6020, 1, x_6018);
lean_ctor_set_uint8(x_6020, sizeof(void*)*2, x_6019);
x_6021 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6021, 0, x_6020);
x_6022 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6022, 0, x_6021);
if (lean_is_scalar(x_6017)) {
 x_6023 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6023 = x_6017;
}
lean_ctor_set(x_6023, 0, x_6022);
lean_ctor_set(x_6023, 1, x_6016);
return x_6023;
}
else
{
lean_object* x_6024; lean_object* x_6025; lean_object* x_6026; lean_object* x_6027; 
lean_dec(x_6010);
x_6024 = lean_ctor_get(x_6014, 0);
lean_inc(x_6024);
x_6025 = lean_ctor_get(x_6014, 1);
lean_inc(x_6025);
if (lean_is_exclusive(x_6014)) {
 lean_ctor_release(x_6014, 0);
 lean_ctor_release(x_6014, 1);
 x_6026 = x_6014;
} else {
 lean_dec_ref(x_6014);
 x_6026 = lean_box(0);
}
if (lean_is_scalar(x_6026)) {
 x_6027 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6027 = x_6026;
}
lean_ctor_set(x_6027, 0, x_6024);
lean_ctor_set(x_6027, 1, x_6025);
return x_6027;
}
}
}
}
case 1:
{
lean_object* x_6028; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6028 = lean_ctor_get(x_5162, 0);
lean_inc(x_6028);
switch (lean_obj_tag(x_6028)) {
case 0:
{
lean_object* x_6029; lean_object* x_6030; lean_object* x_6031; lean_object* x_6032; uint8_t x_6033; 
x_6029 = lean_ctor_get(x_5084, 1);
lean_inc(x_6029);
lean_dec(x_5084);
x_6030 = lean_ctor_get(x_5085, 1);
lean_inc(x_6030);
lean_dec(x_5085);
x_6031 = lean_ctor_get(x_5162, 1);
lean_inc(x_6031);
lean_dec(x_5162);
x_6032 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35;
x_6033 = lean_string_dec_eq(x_6031, x_6032);
if (x_6033 == 0)
{
lean_object* x_6034; uint8_t x_6035; 
x_6034 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36;
x_6035 = lean_string_dec_eq(x_6031, x_6034);
if (x_6035 == 0)
{
lean_object* x_6036; uint8_t x_6037; 
x_6036 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37;
x_6037 = lean_string_dec_eq(x_6031, x_6036);
if (x_6037 == 0)
{
lean_object* x_6038; uint8_t x_6039; 
x_6038 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38;
x_6039 = lean_string_dec_eq(x_6031, x_6038);
if (x_6039 == 0)
{
lean_object* x_6040; uint8_t x_6041; 
lean_dec(x_1);
x_6040 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19;
x_6041 = lean_string_dec_eq(x_6031, x_6040);
lean_dec(x_6031);
if (x_6041 == 0)
{
lean_dec(x_6030);
lean_dec(x_6029);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6042; lean_object* x_6043; lean_object* x_6044; uint8_t x_6045; lean_object* x_6046; 
lean_dec(x_5082);
x_6042 = lean_ctor_get(x_5083, 0);
lean_inc(x_6042);
x_6043 = lean_ctor_get(x_5083, 1);
lean_inc(x_6043);
x_6044 = lean_ctor_get(x_5083, 2);
lean_inc(x_6044);
x_6045 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6043);
x_6046 = l_Lean_Meta_isProp(x_6043, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6046) == 0)
{
lean_object* x_6047; lean_object* x_6048; lean_object* x_6049; uint8_t x_6080; 
x_6047 = lean_ctor_get(x_6046, 0);
lean_inc(x_6047);
x_6048 = lean_ctor_get(x_6046, 1);
lean_inc(x_6048);
lean_dec(x_6046);
x_6080 = lean_unbox(x_6047);
lean_dec(x_6047);
if (x_6080 == 0)
{
lean_object* x_6081; 
x_6081 = lean_box(0);
x_6049 = x_6081;
goto block_6079;
}
else
{
uint8_t x_6082; 
x_6082 = l_Lean_Expr_hasLooseBVars(x_6044);
if (x_6082 == 0)
{
lean_object* x_6083; lean_object* x_6084; lean_object* x_6085; lean_object* x_6086; lean_object* x_6087; lean_object* x_6088; 
lean_dec(x_6042);
lean_inc(x_6044);
x_6083 = l_Lean_mkNot(x_6044);
x_6084 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6085 = lean_array_push(x_6084, x_6043);
lean_inc(x_6085);
x_6086 = lean_array_push(x_6085, x_6083);
x_6087 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6088 = l_Lean_Meta_mkAppM(x_6087, x_6086, x_5, x_6, x_7, x_8, x_6048);
if (lean_obj_tag(x_6088) == 0)
{
lean_object* x_6089; lean_object* x_6090; lean_object* x_6091; lean_object* x_6092; lean_object* x_6093; 
x_6089 = lean_ctor_get(x_6088, 0);
lean_inc(x_6089);
x_6090 = lean_ctor_get(x_6088, 1);
lean_inc(x_6090);
lean_dec(x_6088);
x_6091 = lean_array_push(x_6085, x_6044);
x_6092 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6093 = l_Lean_Meta_mkAppM(x_6092, x_6091, x_5, x_6, x_7, x_8, x_6090);
if (lean_obj_tag(x_6093) == 0)
{
lean_object* x_6094; lean_object* x_6095; lean_object* x_6096; lean_object* x_6097; uint8_t x_6098; lean_object* x_6099; lean_object* x_6100; lean_object* x_6101; lean_object* x_6102; 
x_6094 = lean_ctor_get(x_6093, 0);
lean_inc(x_6094);
x_6095 = lean_ctor_get(x_6093, 1);
lean_inc(x_6095);
if (lean_is_exclusive(x_6093)) {
 lean_ctor_release(x_6093, 0);
 lean_ctor_release(x_6093, 1);
 x_6096 = x_6093;
} else {
 lean_dec_ref(x_6093);
 x_6096 = lean_box(0);
}
x_6097 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6097, 0, x_6094);
x_6098 = 1;
x_6099 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6099, 0, x_6089);
lean_ctor_set(x_6099, 1, x_6097);
lean_ctor_set_uint8(x_6099, sizeof(void*)*2, x_6098);
x_6100 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6100, 0, x_6099);
x_6101 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6101, 0, x_6100);
if (lean_is_scalar(x_6096)) {
 x_6102 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6102 = x_6096;
}
lean_ctor_set(x_6102, 0, x_6101);
lean_ctor_set(x_6102, 1, x_6095);
return x_6102;
}
else
{
lean_object* x_6103; lean_object* x_6104; lean_object* x_6105; lean_object* x_6106; 
lean_dec(x_6089);
x_6103 = lean_ctor_get(x_6093, 0);
lean_inc(x_6103);
x_6104 = lean_ctor_get(x_6093, 1);
lean_inc(x_6104);
if (lean_is_exclusive(x_6093)) {
 lean_ctor_release(x_6093, 0);
 lean_ctor_release(x_6093, 1);
 x_6105 = x_6093;
} else {
 lean_dec_ref(x_6093);
 x_6105 = lean_box(0);
}
if (lean_is_scalar(x_6105)) {
 x_6106 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6106 = x_6105;
}
lean_ctor_set(x_6106, 0, x_6103);
lean_ctor_set(x_6106, 1, x_6104);
return x_6106;
}
}
else
{
lean_object* x_6107; lean_object* x_6108; lean_object* x_6109; lean_object* x_6110; 
lean_dec(x_6085);
lean_dec(x_6044);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6107 = lean_ctor_get(x_6088, 0);
lean_inc(x_6107);
x_6108 = lean_ctor_get(x_6088, 1);
lean_inc(x_6108);
if (lean_is_exclusive(x_6088)) {
 lean_ctor_release(x_6088, 0);
 lean_ctor_release(x_6088, 1);
 x_6109 = x_6088;
} else {
 lean_dec_ref(x_6088);
 x_6109 = lean_box(0);
}
if (lean_is_scalar(x_6109)) {
 x_6110 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6110 = x_6109;
}
lean_ctor_set(x_6110, 0, x_6107);
lean_ctor_set(x_6110, 1, x_6108);
return x_6110;
}
}
else
{
lean_object* x_6111; 
x_6111 = lean_box(0);
x_6049 = x_6111;
goto block_6079;
}
}
block_6079:
{
lean_object* x_6050; lean_object* x_6051; lean_object* x_6052; lean_object* x_6053; lean_object* x_6054; lean_object* x_6055; lean_object* x_6056; 
lean_dec(x_6049);
lean_inc(x_6044);
x_6050 = l_Lean_mkNot(x_6044);
lean_inc(x_6043);
lean_inc(x_6042);
x_6051 = l_Lean_Expr_lam___override(x_6042, x_6043, x_6050, x_6045);
x_6052 = l_Lean_Expr_lam___override(x_6042, x_6043, x_6044, x_6045);
x_6053 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6054 = lean_array_push(x_6053, x_6051);
x_6055 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6056 = l_Lean_Meta_mkAppM(x_6055, x_6054, x_5, x_6, x_7, x_8, x_6048);
if (lean_obj_tag(x_6056) == 0)
{
lean_object* x_6057; lean_object* x_6058; lean_object* x_6059; lean_object* x_6060; lean_object* x_6061; 
x_6057 = lean_ctor_get(x_6056, 0);
lean_inc(x_6057);
x_6058 = lean_ctor_get(x_6056, 1);
lean_inc(x_6058);
lean_dec(x_6056);
x_6059 = lean_array_push(x_6053, x_6052);
x_6060 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6061 = l_Lean_Meta_mkAppM(x_6060, x_6059, x_5, x_6, x_7, x_8, x_6058);
if (lean_obj_tag(x_6061) == 0)
{
lean_object* x_6062; lean_object* x_6063; lean_object* x_6064; lean_object* x_6065; uint8_t x_6066; lean_object* x_6067; lean_object* x_6068; lean_object* x_6069; lean_object* x_6070; 
x_6062 = lean_ctor_get(x_6061, 0);
lean_inc(x_6062);
x_6063 = lean_ctor_get(x_6061, 1);
lean_inc(x_6063);
if (lean_is_exclusive(x_6061)) {
 lean_ctor_release(x_6061, 0);
 lean_ctor_release(x_6061, 1);
 x_6064 = x_6061;
} else {
 lean_dec_ref(x_6061);
 x_6064 = lean_box(0);
}
x_6065 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6065, 0, x_6062);
x_6066 = 1;
x_6067 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6067, 0, x_6057);
lean_ctor_set(x_6067, 1, x_6065);
lean_ctor_set_uint8(x_6067, sizeof(void*)*2, x_6066);
x_6068 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6068, 0, x_6067);
x_6069 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6069, 0, x_6068);
if (lean_is_scalar(x_6064)) {
 x_6070 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6070 = x_6064;
}
lean_ctor_set(x_6070, 0, x_6069);
lean_ctor_set(x_6070, 1, x_6063);
return x_6070;
}
else
{
lean_object* x_6071; lean_object* x_6072; lean_object* x_6073; lean_object* x_6074; 
lean_dec(x_6057);
x_6071 = lean_ctor_get(x_6061, 0);
lean_inc(x_6071);
x_6072 = lean_ctor_get(x_6061, 1);
lean_inc(x_6072);
if (lean_is_exclusive(x_6061)) {
 lean_ctor_release(x_6061, 0);
 lean_ctor_release(x_6061, 1);
 x_6073 = x_6061;
} else {
 lean_dec_ref(x_6061);
 x_6073 = lean_box(0);
}
if (lean_is_scalar(x_6073)) {
 x_6074 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6074 = x_6073;
}
lean_ctor_set(x_6074, 0, x_6071);
lean_ctor_set(x_6074, 1, x_6072);
return x_6074;
}
}
else
{
lean_object* x_6075; lean_object* x_6076; lean_object* x_6077; lean_object* x_6078; 
lean_dec(x_6052);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6075 = lean_ctor_get(x_6056, 0);
lean_inc(x_6075);
x_6076 = lean_ctor_get(x_6056, 1);
lean_inc(x_6076);
if (lean_is_exclusive(x_6056)) {
 lean_ctor_release(x_6056, 0);
 lean_ctor_release(x_6056, 1);
 x_6077 = x_6056;
} else {
 lean_dec_ref(x_6056);
 x_6077 = lean_box(0);
}
if (lean_is_scalar(x_6077)) {
 x_6078 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6078 = x_6077;
}
lean_ctor_set(x_6078, 0, x_6075);
lean_ctor_set(x_6078, 1, x_6076);
return x_6078;
}
}
}
else
{
lean_object* x_6112; lean_object* x_6113; lean_object* x_6114; lean_object* x_6115; 
lean_dec(x_6044);
lean_dec(x_6043);
lean_dec(x_6042);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6112 = lean_ctor_get(x_6046, 0);
lean_inc(x_6112);
x_6113 = lean_ctor_get(x_6046, 1);
lean_inc(x_6113);
if (lean_is_exclusive(x_6046)) {
 lean_ctor_release(x_6046, 0);
 lean_ctor_release(x_6046, 1);
 x_6114 = x_6046;
} else {
 lean_dec_ref(x_6046);
 x_6114 = lean_box(0);
}
if (lean_is_scalar(x_6114)) {
 x_6115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6115 = x_6114;
}
lean_ctor_set(x_6115, 0, x_6112);
lean_ctor_set(x_6115, 1, x_6113);
return x_6115;
}
}
else
{
lean_object* x_6116; lean_object* x_6117; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6116 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6117 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6117 = x_5082;
}
lean_ctor_set(x_6117, 0, x_6116);
lean_ctor_set(x_6117, 1, x_5081);
return x_6117;
}
}
else
{
lean_object* x_6118; uint8_t x_6119; 
x_6118 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39;
x_6119 = lean_string_dec_eq(x_6030, x_6118);
lean_dec(x_6030);
if (x_6119 == 0)
{
lean_dec(x_6029);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6120; lean_object* x_6121; lean_object* x_6122; uint8_t x_6123; lean_object* x_6124; 
lean_dec(x_5082);
x_6120 = lean_ctor_get(x_5083, 0);
lean_inc(x_6120);
x_6121 = lean_ctor_get(x_5083, 1);
lean_inc(x_6121);
x_6122 = lean_ctor_get(x_5083, 2);
lean_inc(x_6122);
x_6123 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6121);
x_6124 = l_Lean_Meta_isProp(x_6121, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6124) == 0)
{
lean_object* x_6125; lean_object* x_6126; lean_object* x_6127; uint8_t x_6158; 
x_6125 = lean_ctor_get(x_6124, 0);
lean_inc(x_6125);
x_6126 = lean_ctor_get(x_6124, 1);
lean_inc(x_6126);
lean_dec(x_6124);
x_6158 = lean_unbox(x_6125);
lean_dec(x_6125);
if (x_6158 == 0)
{
lean_object* x_6159; 
x_6159 = lean_box(0);
x_6127 = x_6159;
goto block_6157;
}
else
{
uint8_t x_6160; 
x_6160 = l_Lean_Expr_hasLooseBVars(x_6122);
if (x_6160 == 0)
{
lean_object* x_6161; lean_object* x_6162; lean_object* x_6163; lean_object* x_6164; lean_object* x_6165; lean_object* x_6166; 
lean_dec(x_6120);
lean_inc(x_6122);
x_6161 = l_Lean_mkNot(x_6122);
x_6162 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6163 = lean_array_push(x_6162, x_6121);
lean_inc(x_6163);
x_6164 = lean_array_push(x_6163, x_6161);
x_6165 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6166 = l_Lean_Meta_mkAppM(x_6165, x_6164, x_5, x_6, x_7, x_8, x_6126);
if (lean_obj_tag(x_6166) == 0)
{
lean_object* x_6167; lean_object* x_6168; lean_object* x_6169; lean_object* x_6170; lean_object* x_6171; 
x_6167 = lean_ctor_get(x_6166, 0);
lean_inc(x_6167);
x_6168 = lean_ctor_get(x_6166, 1);
lean_inc(x_6168);
lean_dec(x_6166);
x_6169 = lean_array_push(x_6163, x_6122);
x_6170 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6171 = l_Lean_Meta_mkAppM(x_6170, x_6169, x_5, x_6, x_7, x_8, x_6168);
if (lean_obj_tag(x_6171) == 0)
{
lean_object* x_6172; lean_object* x_6173; lean_object* x_6174; lean_object* x_6175; uint8_t x_6176; lean_object* x_6177; lean_object* x_6178; lean_object* x_6179; lean_object* x_6180; 
x_6172 = lean_ctor_get(x_6171, 0);
lean_inc(x_6172);
x_6173 = lean_ctor_get(x_6171, 1);
lean_inc(x_6173);
if (lean_is_exclusive(x_6171)) {
 lean_ctor_release(x_6171, 0);
 lean_ctor_release(x_6171, 1);
 x_6174 = x_6171;
} else {
 lean_dec_ref(x_6171);
 x_6174 = lean_box(0);
}
x_6175 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6175, 0, x_6172);
x_6176 = 1;
x_6177 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6177, 0, x_6167);
lean_ctor_set(x_6177, 1, x_6175);
lean_ctor_set_uint8(x_6177, sizeof(void*)*2, x_6176);
x_6178 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6178, 0, x_6177);
x_6179 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6179, 0, x_6178);
if (lean_is_scalar(x_6174)) {
 x_6180 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6180 = x_6174;
}
lean_ctor_set(x_6180, 0, x_6179);
lean_ctor_set(x_6180, 1, x_6173);
return x_6180;
}
else
{
lean_object* x_6181; lean_object* x_6182; lean_object* x_6183; lean_object* x_6184; 
lean_dec(x_6167);
x_6181 = lean_ctor_get(x_6171, 0);
lean_inc(x_6181);
x_6182 = lean_ctor_get(x_6171, 1);
lean_inc(x_6182);
if (lean_is_exclusive(x_6171)) {
 lean_ctor_release(x_6171, 0);
 lean_ctor_release(x_6171, 1);
 x_6183 = x_6171;
} else {
 lean_dec_ref(x_6171);
 x_6183 = lean_box(0);
}
if (lean_is_scalar(x_6183)) {
 x_6184 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6184 = x_6183;
}
lean_ctor_set(x_6184, 0, x_6181);
lean_ctor_set(x_6184, 1, x_6182);
return x_6184;
}
}
else
{
lean_object* x_6185; lean_object* x_6186; lean_object* x_6187; lean_object* x_6188; 
lean_dec(x_6163);
lean_dec(x_6122);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6185 = lean_ctor_get(x_6166, 0);
lean_inc(x_6185);
x_6186 = lean_ctor_get(x_6166, 1);
lean_inc(x_6186);
if (lean_is_exclusive(x_6166)) {
 lean_ctor_release(x_6166, 0);
 lean_ctor_release(x_6166, 1);
 x_6187 = x_6166;
} else {
 lean_dec_ref(x_6166);
 x_6187 = lean_box(0);
}
if (lean_is_scalar(x_6187)) {
 x_6188 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6188 = x_6187;
}
lean_ctor_set(x_6188, 0, x_6185);
lean_ctor_set(x_6188, 1, x_6186);
return x_6188;
}
}
else
{
lean_object* x_6189; 
x_6189 = lean_box(0);
x_6127 = x_6189;
goto block_6157;
}
}
block_6157:
{
lean_object* x_6128; lean_object* x_6129; lean_object* x_6130; lean_object* x_6131; lean_object* x_6132; lean_object* x_6133; lean_object* x_6134; 
lean_dec(x_6127);
lean_inc(x_6122);
x_6128 = l_Lean_mkNot(x_6122);
lean_inc(x_6121);
lean_inc(x_6120);
x_6129 = l_Lean_Expr_lam___override(x_6120, x_6121, x_6128, x_6123);
x_6130 = l_Lean_Expr_lam___override(x_6120, x_6121, x_6122, x_6123);
x_6131 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6132 = lean_array_push(x_6131, x_6129);
x_6133 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6134 = l_Lean_Meta_mkAppM(x_6133, x_6132, x_5, x_6, x_7, x_8, x_6126);
if (lean_obj_tag(x_6134) == 0)
{
lean_object* x_6135; lean_object* x_6136; lean_object* x_6137; lean_object* x_6138; lean_object* x_6139; 
x_6135 = lean_ctor_get(x_6134, 0);
lean_inc(x_6135);
x_6136 = lean_ctor_get(x_6134, 1);
lean_inc(x_6136);
lean_dec(x_6134);
x_6137 = lean_array_push(x_6131, x_6130);
x_6138 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6139 = l_Lean_Meta_mkAppM(x_6138, x_6137, x_5, x_6, x_7, x_8, x_6136);
if (lean_obj_tag(x_6139) == 0)
{
lean_object* x_6140; lean_object* x_6141; lean_object* x_6142; lean_object* x_6143; uint8_t x_6144; lean_object* x_6145; lean_object* x_6146; lean_object* x_6147; lean_object* x_6148; 
x_6140 = lean_ctor_get(x_6139, 0);
lean_inc(x_6140);
x_6141 = lean_ctor_get(x_6139, 1);
lean_inc(x_6141);
if (lean_is_exclusive(x_6139)) {
 lean_ctor_release(x_6139, 0);
 lean_ctor_release(x_6139, 1);
 x_6142 = x_6139;
} else {
 lean_dec_ref(x_6139);
 x_6142 = lean_box(0);
}
x_6143 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6143, 0, x_6140);
x_6144 = 1;
x_6145 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6145, 0, x_6135);
lean_ctor_set(x_6145, 1, x_6143);
lean_ctor_set_uint8(x_6145, sizeof(void*)*2, x_6144);
x_6146 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6146, 0, x_6145);
x_6147 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6147, 0, x_6146);
if (lean_is_scalar(x_6142)) {
 x_6148 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6148 = x_6142;
}
lean_ctor_set(x_6148, 0, x_6147);
lean_ctor_set(x_6148, 1, x_6141);
return x_6148;
}
else
{
lean_object* x_6149; lean_object* x_6150; lean_object* x_6151; lean_object* x_6152; 
lean_dec(x_6135);
x_6149 = lean_ctor_get(x_6139, 0);
lean_inc(x_6149);
x_6150 = lean_ctor_get(x_6139, 1);
lean_inc(x_6150);
if (lean_is_exclusive(x_6139)) {
 lean_ctor_release(x_6139, 0);
 lean_ctor_release(x_6139, 1);
 x_6151 = x_6139;
} else {
 lean_dec_ref(x_6139);
 x_6151 = lean_box(0);
}
if (lean_is_scalar(x_6151)) {
 x_6152 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6152 = x_6151;
}
lean_ctor_set(x_6152, 0, x_6149);
lean_ctor_set(x_6152, 1, x_6150);
return x_6152;
}
}
else
{
lean_object* x_6153; lean_object* x_6154; lean_object* x_6155; lean_object* x_6156; 
lean_dec(x_6130);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6153 = lean_ctor_get(x_6134, 0);
lean_inc(x_6153);
x_6154 = lean_ctor_get(x_6134, 1);
lean_inc(x_6154);
if (lean_is_exclusive(x_6134)) {
 lean_ctor_release(x_6134, 0);
 lean_ctor_release(x_6134, 1);
 x_6155 = x_6134;
} else {
 lean_dec_ref(x_6134);
 x_6155 = lean_box(0);
}
if (lean_is_scalar(x_6155)) {
 x_6156 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6156 = x_6155;
}
lean_ctor_set(x_6156, 0, x_6153);
lean_ctor_set(x_6156, 1, x_6154);
return x_6156;
}
}
}
else
{
lean_object* x_6190; lean_object* x_6191; lean_object* x_6192; lean_object* x_6193; 
lean_dec(x_6122);
lean_dec(x_6121);
lean_dec(x_6120);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6190 = lean_ctor_get(x_6124, 0);
lean_inc(x_6190);
x_6191 = lean_ctor_get(x_6124, 1);
lean_inc(x_6191);
if (lean_is_exclusive(x_6124)) {
 lean_ctor_release(x_6124, 0);
 lean_ctor_release(x_6124, 1);
 x_6192 = x_6124;
} else {
 lean_dec_ref(x_6124);
 x_6192 = lean_box(0);
}
if (lean_is_scalar(x_6192)) {
 x_6193 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6193 = x_6192;
}
lean_ctor_set(x_6193, 0, x_6190);
lean_ctor_set(x_6193, 1, x_6191);
return x_6193;
}
}
else
{
lean_object* x_6194; lean_object* x_6195; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6194 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6195 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6195 = x_5082;
}
lean_ctor_set(x_6195, 0, x_6194);
lean_ctor_set(x_6195, 1, x_5081);
return x_6195;
}
}
else
{
lean_object* x_6196; lean_object* x_6197; uint8_t x_6198; 
x_6196 = lean_array_get_size(x_6029);
x_6197 = lean_unsigned_to_nat(2u);
x_6198 = lean_nat_dec_eq(x_6196, x_6197);
lean_dec(x_6196);
if (x_6198 == 0)
{
lean_dec(x_6029);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6199; lean_object* x_6200; lean_object* x_6201; uint8_t x_6202; lean_object* x_6203; 
lean_dec(x_5082);
x_6199 = lean_ctor_get(x_5083, 0);
lean_inc(x_6199);
x_6200 = lean_ctor_get(x_5083, 1);
lean_inc(x_6200);
x_6201 = lean_ctor_get(x_5083, 2);
lean_inc(x_6201);
x_6202 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6200);
x_6203 = l_Lean_Meta_isProp(x_6200, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6203) == 0)
{
lean_object* x_6204; lean_object* x_6205; lean_object* x_6206; uint8_t x_6237; 
x_6204 = lean_ctor_get(x_6203, 0);
lean_inc(x_6204);
x_6205 = lean_ctor_get(x_6203, 1);
lean_inc(x_6205);
lean_dec(x_6203);
x_6237 = lean_unbox(x_6204);
lean_dec(x_6204);
if (x_6237 == 0)
{
lean_object* x_6238; 
x_6238 = lean_box(0);
x_6206 = x_6238;
goto block_6236;
}
else
{
uint8_t x_6239; 
x_6239 = l_Lean_Expr_hasLooseBVars(x_6201);
if (x_6239 == 0)
{
lean_object* x_6240; lean_object* x_6241; lean_object* x_6242; lean_object* x_6243; lean_object* x_6244; lean_object* x_6245; 
lean_dec(x_6199);
lean_inc(x_6201);
x_6240 = l_Lean_mkNot(x_6201);
x_6241 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6242 = lean_array_push(x_6241, x_6200);
lean_inc(x_6242);
x_6243 = lean_array_push(x_6242, x_6240);
x_6244 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6245 = l_Lean_Meta_mkAppM(x_6244, x_6243, x_5, x_6, x_7, x_8, x_6205);
if (lean_obj_tag(x_6245) == 0)
{
lean_object* x_6246; lean_object* x_6247; lean_object* x_6248; lean_object* x_6249; lean_object* x_6250; 
x_6246 = lean_ctor_get(x_6245, 0);
lean_inc(x_6246);
x_6247 = lean_ctor_get(x_6245, 1);
lean_inc(x_6247);
lean_dec(x_6245);
x_6248 = lean_array_push(x_6242, x_6201);
x_6249 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6250 = l_Lean_Meta_mkAppM(x_6249, x_6248, x_5, x_6, x_7, x_8, x_6247);
if (lean_obj_tag(x_6250) == 0)
{
lean_object* x_6251; lean_object* x_6252; lean_object* x_6253; lean_object* x_6254; uint8_t x_6255; lean_object* x_6256; lean_object* x_6257; lean_object* x_6258; lean_object* x_6259; 
x_6251 = lean_ctor_get(x_6250, 0);
lean_inc(x_6251);
x_6252 = lean_ctor_get(x_6250, 1);
lean_inc(x_6252);
if (lean_is_exclusive(x_6250)) {
 lean_ctor_release(x_6250, 0);
 lean_ctor_release(x_6250, 1);
 x_6253 = x_6250;
} else {
 lean_dec_ref(x_6250);
 x_6253 = lean_box(0);
}
x_6254 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6254, 0, x_6251);
x_6255 = 1;
x_6256 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6256, 0, x_6246);
lean_ctor_set(x_6256, 1, x_6254);
lean_ctor_set_uint8(x_6256, sizeof(void*)*2, x_6255);
x_6257 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6257, 0, x_6256);
x_6258 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6258, 0, x_6257);
if (lean_is_scalar(x_6253)) {
 x_6259 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6259 = x_6253;
}
lean_ctor_set(x_6259, 0, x_6258);
lean_ctor_set(x_6259, 1, x_6252);
return x_6259;
}
else
{
lean_object* x_6260; lean_object* x_6261; lean_object* x_6262; lean_object* x_6263; 
lean_dec(x_6246);
x_6260 = lean_ctor_get(x_6250, 0);
lean_inc(x_6260);
x_6261 = lean_ctor_get(x_6250, 1);
lean_inc(x_6261);
if (lean_is_exclusive(x_6250)) {
 lean_ctor_release(x_6250, 0);
 lean_ctor_release(x_6250, 1);
 x_6262 = x_6250;
} else {
 lean_dec_ref(x_6250);
 x_6262 = lean_box(0);
}
if (lean_is_scalar(x_6262)) {
 x_6263 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6263 = x_6262;
}
lean_ctor_set(x_6263, 0, x_6260);
lean_ctor_set(x_6263, 1, x_6261);
return x_6263;
}
}
else
{
lean_object* x_6264; lean_object* x_6265; lean_object* x_6266; lean_object* x_6267; 
lean_dec(x_6242);
lean_dec(x_6201);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6264 = lean_ctor_get(x_6245, 0);
lean_inc(x_6264);
x_6265 = lean_ctor_get(x_6245, 1);
lean_inc(x_6265);
if (lean_is_exclusive(x_6245)) {
 lean_ctor_release(x_6245, 0);
 lean_ctor_release(x_6245, 1);
 x_6266 = x_6245;
} else {
 lean_dec_ref(x_6245);
 x_6266 = lean_box(0);
}
if (lean_is_scalar(x_6266)) {
 x_6267 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6267 = x_6266;
}
lean_ctor_set(x_6267, 0, x_6264);
lean_ctor_set(x_6267, 1, x_6265);
return x_6267;
}
}
else
{
lean_object* x_6268; 
x_6268 = lean_box(0);
x_6206 = x_6268;
goto block_6236;
}
}
block_6236:
{
lean_object* x_6207; lean_object* x_6208; lean_object* x_6209; lean_object* x_6210; lean_object* x_6211; lean_object* x_6212; lean_object* x_6213; 
lean_dec(x_6206);
lean_inc(x_6201);
x_6207 = l_Lean_mkNot(x_6201);
lean_inc(x_6200);
lean_inc(x_6199);
x_6208 = l_Lean_Expr_lam___override(x_6199, x_6200, x_6207, x_6202);
x_6209 = l_Lean_Expr_lam___override(x_6199, x_6200, x_6201, x_6202);
x_6210 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6211 = lean_array_push(x_6210, x_6208);
x_6212 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6213 = l_Lean_Meta_mkAppM(x_6212, x_6211, x_5, x_6, x_7, x_8, x_6205);
if (lean_obj_tag(x_6213) == 0)
{
lean_object* x_6214; lean_object* x_6215; lean_object* x_6216; lean_object* x_6217; lean_object* x_6218; 
x_6214 = lean_ctor_get(x_6213, 0);
lean_inc(x_6214);
x_6215 = lean_ctor_get(x_6213, 1);
lean_inc(x_6215);
lean_dec(x_6213);
x_6216 = lean_array_push(x_6210, x_6209);
x_6217 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6218 = l_Lean_Meta_mkAppM(x_6217, x_6216, x_5, x_6, x_7, x_8, x_6215);
if (lean_obj_tag(x_6218) == 0)
{
lean_object* x_6219; lean_object* x_6220; lean_object* x_6221; lean_object* x_6222; uint8_t x_6223; lean_object* x_6224; lean_object* x_6225; lean_object* x_6226; lean_object* x_6227; 
x_6219 = lean_ctor_get(x_6218, 0);
lean_inc(x_6219);
x_6220 = lean_ctor_get(x_6218, 1);
lean_inc(x_6220);
if (lean_is_exclusive(x_6218)) {
 lean_ctor_release(x_6218, 0);
 lean_ctor_release(x_6218, 1);
 x_6221 = x_6218;
} else {
 lean_dec_ref(x_6218);
 x_6221 = lean_box(0);
}
x_6222 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6222, 0, x_6219);
x_6223 = 1;
x_6224 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6224, 0, x_6214);
lean_ctor_set(x_6224, 1, x_6222);
lean_ctor_set_uint8(x_6224, sizeof(void*)*2, x_6223);
x_6225 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6225, 0, x_6224);
x_6226 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6226, 0, x_6225);
if (lean_is_scalar(x_6221)) {
 x_6227 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6227 = x_6221;
}
lean_ctor_set(x_6227, 0, x_6226);
lean_ctor_set(x_6227, 1, x_6220);
return x_6227;
}
else
{
lean_object* x_6228; lean_object* x_6229; lean_object* x_6230; lean_object* x_6231; 
lean_dec(x_6214);
x_6228 = lean_ctor_get(x_6218, 0);
lean_inc(x_6228);
x_6229 = lean_ctor_get(x_6218, 1);
lean_inc(x_6229);
if (lean_is_exclusive(x_6218)) {
 lean_ctor_release(x_6218, 0);
 lean_ctor_release(x_6218, 1);
 x_6230 = x_6218;
} else {
 lean_dec_ref(x_6218);
 x_6230 = lean_box(0);
}
if (lean_is_scalar(x_6230)) {
 x_6231 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6231 = x_6230;
}
lean_ctor_set(x_6231, 0, x_6228);
lean_ctor_set(x_6231, 1, x_6229);
return x_6231;
}
}
else
{
lean_object* x_6232; lean_object* x_6233; lean_object* x_6234; lean_object* x_6235; 
lean_dec(x_6209);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6232 = lean_ctor_get(x_6213, 0);
lean_inc(x_6232);
x_6233 = lean_ctor_get(x_6213, 1);
lean_inc(x_6233);
if (lean_is_exclusive(x_6213)) {
 lean_ctor_release(x_6213, 0);
 lean_ctor_release(x_6213, 1);
 x_6234 = x_6213;
} else {
 lean_dec_ref(x_6213);
 x_6234 = lean_box(0);
}
if (lean_is_scalar(x_6234)) {
 x_6235 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6235 = x_6234;
}
lean_ctor_set(x_6235, 0, x_6232);
lean_ctor_set(x_6235, 1, x_6233);
return x_6235;
}
}
}
else
{
lean_object* x_6269; lean_object* x_6270; lean_object* x_6271; lean_object* x_6272; 
lean_dec(x_6201);
lean_dec(x_6200);
lean_dec(x_6199);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6269 = lean_ctor_get(x_6203, 0);
lean_inc(x_6269);
x_6270 = lean_ctor_get(x_6203, 1);
lean_inc(x_6270);
if (lean_is_exclusive(x_6203)) {
 lean_ctor_release(x_6203, 0);
 lean_ctor_release(x_6203, 1);
 x_6271 = x_6203;
} else {
 lean_dec_ref(x_6203);
 x_6271 = lean_box(0);
}
if (lean_is_scalar(x_6271)) {
 x_6272 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6272 = x_6271;
}
lean_ctor_set(x_6272, 0, x_6269);
lean_ctor_set(x_6272, 1, x_6270);
return x_6272;
}
}
else
{
lean_object* x_6273; lean_object* x_6274; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6273 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6274 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6274 = x_5082;
}
lean_ctor_set(x_6274, 0, x_6273);
lean_ctor_set(x_6274, 1, x_5081);
return x_6274;
}
}
else
{
lean_object* x_6275; lean_object* x_6276; lean_object* x_6277; lean_object* x_6278; lean_object* x_6279; 
lean_dec(x_5083);
lean_dec(x_5082);
x_6275 = lean_array_fget(x_6029, x_5074);
lean_dec(x_6029);
x_6276 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6277 = lean_array_push(x_6276, x_6275);
x_6278 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6279 = l_Lean_Meta_mkAppM(x_6278, x_6277, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6279) == 0)
{
lean_object* x_6280; lean_object* x_6281; lean_object* x_6282; 
x_6280 = lean_ctor_get(x_6279, 0);
lean_inc(x_6280);
x_6281 = lean_ctor_get(x_6279, 1);
lean_inc(x_6281);
lean_dec(x_6279);
lean_inc(x_6280);
x_6282 = lean_infer_type(x_6280, x_5, x_6, x_7, x_8, x_6281);
if (lean_obj_tag(x_6282) == 0)
{
lean_object* x_6283; lean_object* x_6284; lean_object* x_6285; lean_object* x_6286; lean_object* x_6287; uint8_t x_6288; 
x_6283 = lean_ctor_get(x_6282, 0);
lean_inc(x_6283);
x_6284 = lean_ctor_get(x_6282, 1);
lean_inc(x_6284);
if (lean_is_exclusive(x_6282)) {
 lean_ctor_release(x_6282, 0);
 lean_ctor_release(x_6282, 1);
 x_6285 = x_6282;
} else {
 lean_dec_ref(x_6282);
 x_6285 = lean_box(0);
}
x_6286 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_6287 = lean_unsigned_to_nat(3u);
x_6288 = l_Lean_Expr_isAppOfArity(x_6283, x_6286, x_6287);
if (x_6288 == 0)
{
lean_object* x_6289; lean_object* x_6290; 
lean_dec(x_6283);
lean_dec(x_6280);
x_6289 = lean_box(0);
if (lean_is_scalar(x_6285)) {
 x_6290 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6290 = x_6285;
}
lean_ctor_set(x_6290, 0, x_6289);
lean_ctor_set(x_6290, 1, x_6284);
return x_6290;
}
else
{
lean_object* x_6291; lean_object* x_6292; uint8_t x_6293; lean_object* x_6294; lean_object* x_6295; lean_object* x_6296; lean_object* x_6297; 
x_6291 = l_Lean_Expr_appArg_x21(x_6283);
lean_dec(x_6283);
x_6292 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6292, 0, x_6280);
x_6293 = 1;
x_6294 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6294, 0, x_6291);
lean_ctor_set(x_6294, 1, x_6292);
lean_ctor_set_uint8(x_6294, sizeof(void*)*2, x_6293);
x_6295 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6295, 0, x_6294);
x_6296 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6296, 0, x_6295);
if (lean_is_scalar(x_6285)) {
 x_6297 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6297 = x_6285;
}
lean_ctor_set(x_6297, 0, x_6296);
lean_ctor_set(x_6297, 1, x_6284);
return x_6297;
}
}
else
{
lean_object* x_6298; lean_object* x_6299; lean_object* x_6300; lean_object* x_6301; 
lean_dec(x_6280);
x_6298 = lean_ctor_get(x_6282, 0);
lean_inc(x_6298);
x_6299 = lean_ctor_get(x_6282, 1);
lean_inc(x_6299);
if (lean_is_exclusive(x_6282)) {
 lean_ctor_release(x_6282, 0);
 lean_ctor_release(x_6282, 1);
 x_6300 = x_6282;
} else {
 lean_dec_ref(x_6282);
 x_6300 = lean_box(0);
}
if (lean_is_scalar(x_6300)) {
 x_6301 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6301 = x_6300;
}
lean_ctor_set(x_6301, 0, x_6298);
lean_ctor_set(x_6301, 1, x_6299);
return x_6301;
}
}
else
{
lean_object* x_6302; lean_object* x_6303; lean_object* x_6304; lean_object* x_6305; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6302 = lean_ctor_get(x_6279, 0);
lean_inc(x_6302);
x_6303 = lean_ctor_get(x_6279, 1);
lean_inc(x_6303);
if (lean_is_exclusive(x_6279)) {
 lean_ctor_release(x_6279, 0);
 lean_ctor_release(x_6279, 1);
 x_6304 = x_6279;
} else {
 lean_dec_ref(x_6279);
 x_6304 = lean_box(0);
}
if (lean_is_scalar(x_6304)) {
 x_6305 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6305 = x_6304;
}
lean_ctor_set(x_6305, 0, x_6302);
lean_ctor_set(x_6305, 1, x_6303);
return x_6305;
}
}
}
}
}
else
{
lean_object* x_6306; uint8_t x_6307; 
lean_dec(x_6031);
x_6306 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42;
x_6307 = lean_string_dec_eq(x_6030, x_6306);
lean_dec(x_6030);
if (x_6307 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6308; lean_object* x_6309; lean_object* x_6310; uint8_t x_6311; lean_object* x_6312; 
lean_dec(x_5082);
x_6308 = lean_ctor_get(x_5083, 0);
lean_inc(x_6308);
x_6309 = lean_ctor_get(x_5083, 1);
lean_inc(x_6309);
x_6310 = lean_ctor_get(x_5083, 2);
lean_inc(x_6310);
x_6311 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6309);
x_6312 = l_Lean_Meta_isProp(x_6309, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6312) == 0)
{
lean_object* x_6313; lean_object* x_6314; lean_object* x_6315; uint8_t x_6346; 
x_6313 = lean_ctor_get(x_6312, 0);
lean_inc(x_6313);
x_6314 = lean_ctor_get(x_6312, 1);
lean_inc(x_6314);
lean_dec(x_6312);
x_6346 = lean_unbox(x_6313);
lean_dec(x_6313);
if (x_6346 == 0)
{
lean_object* x_6347; 
x_6347 = lean_box(0);
x_6315 = x_6347;
goto block_6345;
}
else
{
uint8_t x_6348; 
x_6348 = l_Lean_Expr_hasLooseBVars(x_6310);
if (x_6348 == 0)
{
lean_object* x_6349; lean_object* x_6350; lean_object* x_6351; lean_object* x_6352; lean_object* x_6353; lean_object* x_6354; 
lean_dec(x_6308);
lean_inc(x_6310);
x_6349 = l_Lean_mkNot(x_6310);
x_6350 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6351 = lean_array_push(x_6350, x_6309);
lean_inc(x_6351);
x_6352 = lean_array_push(x_6351, x_6349);
x_6353 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6354 = l_Lean_Meta_mkAppM(x_6353, x_6352, x_5, x_6, x_7, x_8, x_6314);
if (lean_obj_tag(x_6354) == 0)
{
lean_object* x_6355; lean_object* x_6356; lean_object* x_6357; lean_object* x_6358; lean_object* x_6359; 
x_6355 = lean_ctor_get(x_6354, 0);
lean_inc(x_6355);
x_6356 = lean_ctor_get(x_6354, 1);
lean_inc(x_6356);
lean_dec(x_6354);
x_6357 = lean_array_push(x_6351, x_6310);
x_6358 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6359 = l_Lean_Meta_mkAppM(x_6358, x_6357, x_5, x_6, x_7, x_8, x_6356);
if (lean_obj_tag(x_6359) == 0)
{
lean_object* x_6360; lean_object* x_6361; lean_object* x_6362; lean_object* x_6363; uint8_t x_6364; lean_object* x_6365; lean_object* x_6366; lean_object* x_6367; lean_object* x_6368; 
x_6360 = lean_ctor_get(x_6359, 0);
lean_inc(x_6360);
x_6361 = lean_ctor_get(x_6359, 1);
lean_inc(x_6361);
if (lean_is_exclusive(x_6359)) {
 lean_ctor_release(x_6359, 0);
 lean_ctor_release(x_6359, 1);
 x_6362 = x_6359;
} else {
 lean_dec_ref(x_6359);
 x_6362 = lean_box(0);
}
x_6363 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6363, 0, x_6360);
x_6364 = 1;
x_6365 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6365, 0, x_6355);
lean_ctor_set(x_6365, 1, x_6363);
lean_ctor_set_uint8(x_6365, sizeof(void*)*2, x_6364);
x_6366 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6366, 0, x_6365);
x_6367 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6367, 0, x_6366);
if (lean_is_scalar(x_6362)) {
 x_6368 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6368 = x_6362;
}
lean_ctor_set(x_6368, 0, x_6367);
lean_ctor_set(x_6368, 1, x_6361);
return x_6368;
}
else
{
lean_object* x_6369; lean_object* x_6370; lean_object* x_6371; lean_object* x_6372; 
lean_dec(x_6355);
x_6369 = lean_ctor_get(x_6359, 0);
lean_inc(x_6369);
x_6370 = lean_ctor_get(x_6359, 1);
lean_inc(x_6370);
if (lean_is_exclusive(x_6359)) {
 lean_ctor_release(x_6359, 0);
 lean_ctor_release(x_6359, 1);
 x_6371 = x_6359;
} else {
 lean_dec_ref(x_6359);
 x_6371 = lean_box(0);
}
if (lean_is_scalar(x_6371)) {
 x_6372 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6372 = x_6371;
}
lean_ctor_set(x_6372, 0, x_6369);
lean_ctor_set(x_6372, 1, x_6370);
return x_6372;
}
}
else
{
lean_object* x_6373; lean_object* x_6374; lean_object* x_6375; lean_object* x_6376; 
lean_dec(x_6351);
lean_dec(x_6310);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6373 = lean_ctor_get(x_6354, 0);
lean_inc(x_6373);
x_6374 = lean_ctor_get(x_6354, 1);
lean_inc(x_6374);
if (lean_is_exclusive(x_6354)) {
 lean_ctor_release(x_6354, 0);
 lean_ctor_release(x_6354, 1);
 x_6375 = x_6354;
} else {
 lean_dec_ref(x_6354);
 x_6375 = lean_box(0);
}
if (lean_is_scalar(x_6375)) {
 x_6376 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6376 = x_6375;
}
lean_ctor_set(x_6376, 0, x_6373);
lean_ctor_set(x_6376, 1, x_6374);
return x_6376;
}
}
else
{
lean_object* x_6377; 
x_6377 = lean_box(0);
x_6315 = x_6377;
goto block_6345;
}
}
block_6345:
{
lean_object* x_6316; lean_object* x_6317; lean_object* x_6318; lean_object* x_6319; lean_object* x_6320; lean_object* x_6321; lean_object* x_6322; 
lean_dec(x_6315);
lean_inc(x_6310);
x_6316 = l_Lean_mkNot(x_6310);
lean_inc(x_6309);
lean_inc(x_6308);
x_6317 = l_Lean_Expr_lam___override(x_6308, x_6309, x_6316, x_6311);
x_6318 = l_Lean_Expr_lam___override(x_6308, x_6309, x_6310, x_6311);
x_6319 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6320 = lean_array_push(x_6319, x_6317);
x_6321 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6322 = l_Lean_Meta_mkAppM(x_6321, x_6320, x_5, x_6, x_7, x_8, x_6314);
if (lean_obj_tag(x_6322) == 0)
{
lean_object* x_6323; lean_object* x_6324; lean_object* x_6325; lean_object* x_6326; lean_object* x_6327; 
x_6323 = lean_ctor_get(x_6322, 0);
lean_inc(x_6323);
x_6324 = lean_ctor_get(x_6322, 1);
lean_inc(x_6324);
lean_dec(x_6322);
x_6325 = lean_array_push(x_6319, x_6318);
x_6326 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6327 = l_Lean_Meta_mkAppM(x_6326, x_6325, x_5, x_6, x_7, x_8, x_6324);
if (lean_obj_tag(x_6327) == 0)
{
lean_object* x_6328; lean_object* x_6329; lean_object* x_6330; lean_object* x_6331; uint8_t x_6332; lean_object* x_6333; lean_object* x_6334; lean_object* x_6335; lean_object* x_6336; 
x_6328 = lean_ctor_get(x_6327, 0);
lean_inc(x_6328);
x_6329 = lean_ctor_get(x_6327, 1);
lean_inc(x_6329);
if (lean_is_exclusive(x_6327)) {
 lean_ctor_release(x_6327, 0);
 lean_ctor_release(x_6327, 1);
 x_6330 = x_6327;
} else {
 lean_dec_ref(x_6327);
 x_6330 = lean_box(0);
}
x_6331 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6331, 0, x_6328);
x_6332 = 1;
x_6333 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6333, 0, x_6323);
lean_ctor_set(x_6333, 1, x_6331);
lean_ctor_set_uint8(x_6333, sizeof(void*)*2, x_6332);
x_6334 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6334, 0, x_6333);
x_6335 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6335, 0, x_6334);
if (lean_is_scalar(x_6330)) {
 x_6336 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6336 = x_6330;
}
lean_ctor_set(x_6336, 0, x_6335);
lean_ctor_set(x_6336, 1, x_6329);
return x_6336;
}
else
{
lean_object* x_6337; lean_object* x_6338; lean_object* x_6339; lean_object* x_6340; 
lean_dec(x_6323);
x_6337 = lean_ctor_get(x_6327, 0);
lean_inc(x_6337);
x_6338 = lean_ctor_get(x_6327, 1);
lean_inc(x_6338);
if (lean_is_exclusive(x_6327)) {
 lean_ctor_release(x_6327, 0);
 lean_ctor_release(x_6327, 1);
 x_6339 = x_6327;
} else {
 lean_dec_ref(x_6327);
 x_6339 = lean_box(0);
}
if (lean_is_scalar(x_6339)) {
 x_6340 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6340 = x_6339;
}
lean_ctor_set(x_6340, 0, x_6337);
lean_ctor_set(x_6340, 1, x_6338);
return x_6340;
}
}
else
{
lean_object* x_6341; lean_object* x_6342; lean_object* x_6343; lean_object* x_6344; 
lean_dec(x_6318);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6341 = lean_ctor_get(x_6322, 0);
lean_inc(x_6341);
x_6342 = lean_ctor_get(x_6322, 1);
lean_inc(x_6342);
if (lean_is_exclusive(x_6322)) {
 lean_ctor_release(x_6322, 0);
 lean_ctor_release(x_6322, 1);
 x_6343 = x_6322;
} else {
 lean_dec_ref(x_6322);
 x_6343 = lean_box(0);
}
if (lean_is_scalar(x_6343)) {
 x_6344 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6344 = x_6343;
}
lean_ctor_set(x_6344, 0, x_6341);
lean_ctor_set(x_6344, 1, x_6342);
return x_6344;
}
}
}
else
{
lean_object* x_6378; lean_object* x_6379; lean_object* x_6380; lean_object* x_6381; 
lean_dec(x_6310);
lean_dec(x_6309);
lean_dec(x_6308);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6378 = lean_ctor_get(x_6312, 0);
lean_inc(x_6378);
x_6379 = lean_ctor_get(x_6312, 1);
lean_inc(x_6379);
if (lean_is_exclusive(x_6312)) {
 lean_ctor_release(x_6312, 0);
 lean_ctor_release(x_6312, 1);
 x_6380 = x_6312;
} else {
 lean_dec_ref(x_6312);
 x_6380 = lean_box(0);
}
if (lean_is_scalar(x_6380)) {
 x_6381 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6381 = x_6380;
}
lean_ctor_set(x_6381, 0, x_6378);
lean_ctor_set(x_6381, 1, x_6379);
return x_6381;
}
}
else
{
lean_object* x_6382; lean_object* x_6383; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6382 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6383 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6383 = x_5082;
}
lean_ctor_set(x_6383, 0, x_6382);
lean_ctor_set(x_6383, 1, x_5081);
return x_6383;
}
}
else
{
lean_object* x_6384; lean_object* x_6385; uint8_t x_6386; 
x_6384 = lean_array_get_size(x_6029);
x_6385 = lean_unsigned_to_nat(4u);
x_6386 = lean_nat_dec_eq(x_6384, x_6385);
lean_dec(x_6384);
if (x_6386 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6387; lean_object* x_6388; lean_object* x_6389; uint8_t x_6390; lean_object* x_6391; 
lean_dec(x_5082);
x_6387 = lean_ctor_get(x_5083, 0);
lean_inc(x_6387);
x_6388 = lean_ctor_get(x_5083, 1);
lean_inc(x_6388);
x_6389 = lean_ctor_get(x_5083, 2);
lean_inc(x_6389);
x_6390 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6388);
x_6391 = l_Lean_Meta_isProp(x_6388, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6391) == 0)
{
lean_object* x_6392; lean_object* x_6393; lean_object* x_6394; uint8_t x_6425; 
x_6392 = lean_ctor_get(x_6391, 0);
lean_inc(x_6392);
x_6393 = lean_ctor_get(x_6391, 1);
lean_inc(x_6393);
lean_dec(x_6391);
x_6425 = lean_unbox(x_6392);
lean_dec(x_6392);
if (x_6425 == 0)
{
lean_object* x_6426; 
x_6426 = lean_box(0);
x_6394 = x_6426;
goto block_6424;
}
else
{
uint8_t x_6427; 
x_6427 = l_Lean_Expr_hasLooseBVars(x_6389);
if (x_6427 == 0)
{
lean_object* x_6428; lean_object* x_6429; lean_object* x_6430; lean_object* x_6431; lean_object* x_6432; lean_object* x_6433; 
lean_dec(x_6387);
lean_inc(x_6389);
x_6428 = l_Lean_mkNot(x_6389);
x_6429 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6430 = lean_array_push(x_6429, x_6388);
lean_inc(x_6430);
x_6431 = lean_array_push(x_6430, x_6428);
x_6432 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6433 = l_Lean_Meta_mkAppM(x_6432, x_6431, x_5, x_6, x_7, x_8, x_6393);
if (lean_obj_tag(x_6433) == 0)
{
lean_object* x_6434; lean_object* x_6435; lean_object* x_6436; lean_object* x_6437; lean_object* x_6438; 
x_6434 = lean_ctor_get(x_6433, 0);
lean_inc(x_6434);
x_6435 = lean_ctor_get(x_6433, 1);
lean_inc(x_6435);
lean_dec(x_6433);
x_6436 = lean_array_push(x_6430, x_6389);
x_6437 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6438 = l_Lean_Meta_mkAppM(x_6437, x_6436, x_5, x_6, x_7, x_8, x_6435);
if (lean_obj_tag(x_6438) == 0)
{
lean_object* x_6439; lean_object* x_6440; lean_object* x_6441; lean_object* x_6442; uint8_t x_6443; lean_object* x_6444; lean_object* x_6445; lean_object* x_6446; lean_object* x_6447; 
x_6439 = lean_ctor_get(x_6438, 0);
lean_inc(x_6439);
x_6440 = lean_ctor_get(x_6438, 1);
lean_inc(x_6440);
if (lean_is_exclusive(x_6438)) {
 lean_ctor_release(x_6438, 0);
 lean_ctor_release(x_6438, 1);
 x_6441 = x_6438;
} else {
 lean_dec_ref(x_6438);
 x_6441 = lean_box(0);
}
x_6442 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6442, 0, x_6439);
x_6443 = 1;
x_6444 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6444, 0, x_6434);
lean_ctor_set(x_6444, 1, x_6442);
lean_ctor_set_uint8(x_6444, sizeof(void*)*2, x_6443);
x_6445 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6445, 0, x_6444);
x_6446 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6446, 0, x_6445);
if (lean_is_scalar(x_6441)) {
 x_6447 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6447 = x_6441;
}
lean_ctor_set(x_6447, 0, x_6446);
lean_ctor_set(x_6447, 1, x_6440);
return x_6447;
}
else
{
lean_object* x_6448; lean_object* x_6449; lean_object* x_6450; lean_object* x_6451; 
lean_dec(x_6434);
x_6448 = lean_ctor_get(x_6438, 0);
lean_inc(x_6448);
x_6449 = lean_ctor_get(x_6438, 1);
lean_inc(x_6449);
if (lean_is_exclusive(x_6438)) {
 lean_ctor_release(x_6438, 0);
 lean_ctor_release(x_6438, 1);
 x_6450 = x_6438;
} else {
 lean_dec_ref(x_6438);
 x_6450 = lean_box(0);
}
if (lean_is_scalar(x_6450)) {
 x_6451 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6451 = x_6450;
}
lean_ctor_set(x_6451, 0, x_6448);
lean_ctor_set(x_6451, 1, x_6449);
return x_6451;
}
}
else
{
lean_object* x_6452; lean_object* x_6453; lean_object* x_6454; lean_object* x_6455; 
lean_dec(x_6430);
lean_dec(x_6389);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6452 = lean_ctor_get(x_6433, 0);
lean_inc(x_6452);
x_6453 = lean_ctor_get(x_6433, 1);
lean_inc(x_6453);
if (lean_is_exclusive(x_6433)) {
 lean_ctor_release(x_6433, 0);
 lean_ctor_release(x_6433, 1);
 x_6454 = x_6433;
} else {
 lean_dec_ref(x_6433);
 x_6454 = lean_box(0);
}
if (lean_is_scalar(x_6454)) {
 x_6455 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6455 = x_6454;
}
lean_ctor_set(x_6455, 0, x_6452);
lean_ctor_set(x_6455, 1, x_6453);
return x_6455;
}
}
else
{
lean_object* x_6456; 
x_6456 = lean_box(0);
x_6394 = x_6456;
goto block_6424;
}
}
block_6424:
{
lean_object* x_6395; lean_object* x_6396; lean_object* x_6397; lean_object* x_6398; lean_object* x_6399; lean_object* x_6400; lean_object* x_6401; 
lean_dec(x_6394);
lean_inc(x_6389);
x_6395 = l_Lean_mkNot(x_6389);
lean_inc(x_6388);
lean_inc(x_6387);
x_6396 = l_Lean_Expr_lam___override(x_6387, x_6388, x_6395, x_6390);
x_6397 = l_Lean_Expr_lam___override(x_6387, x_6388, x_6389, x_6390);
x_6398 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6399 = lean_array_push(x_6398, x_6396);
x_6400 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6401 = l_Lean_Meta_mkAppM(x_6400, x_6399, x_5, x_6, x_7, x_8, x_6393);
if (lean_obj_tag(x_6401) == 0)
{
lean_object* x_6402; lean_object* x_6403; lean_object* x_6404; lean_object* x_6405; lean_object* x_6406; 
x_6402 = lean_ctor_get(x_6401, 0);
lean_inc(x_6402);
x_6403 = lean_ctor_get(x_6401, 1);
lean_inc(x_6403);
lean_dec(x_6401);
x_6404 = lean_array_push(x_6398, x_6397);
x_6405 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6406 = l_Lean_Meta_mkAppM(x_6405, x_6404, x_5, x_6, x_7, x_8, x_6403);
if (lean_obj_tag(x_6406) == 0)
{
lean_object* x_6407; lean_object* x_6408; lean_object* x_6409; lean_object* x_6410; uint8_t x_6411; lean_object* x_6412; lean_object* x_6413; lean_object* x_6414; lean_object* x_6415; 
x_6407 = lean_ctor_get(x_6406, 0);
lean_inc(x_6407);
x_6408 = lean_ctor_get(x_6406, 1);
lean_inc(x_6408);
if (lean_is_exclusive(x_6406)) {
 lean_ctor_release(x_6406, 0);
 lean_ctor_release(x_6406, 1);
 x_6409 = x_6406;
} else {
 lean_dec_ref(x_6406);
 x_6409 = lean_box(0);
}
x_6410 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6410, 0, x_6407);
x_6411 = 1;
x_6412 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6412, 0, x_6402);
lean_ctor_set(x_6412, 1, x_6410);
lean_ctor_set_uint8(x_6412, sizeof(void*)*2, x_6411);
x_6413 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6413, 0, x_6412);
x_6414 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6414, 0, x_6413);
if (lean_is_scalar(x_6409)) {
 x_6415 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6415 = x_6409;
}
lean_ctor_set(x_6415, 0, x_6414);
lean_ctor_set(x_6415, 1, x_6408);
return x_6415;
}
else
{
lean_object* x_6416; lean_object* x_6417; lean_object* x_6418; lean_object* x_6419; 
lean_dec(x_6402);
x_6416 = lean_ctor_get(x_6406, 0);
lean_inc(x_6416);
x_6417 = lean_ctor_get(x_6406, 1);
lean_inc(x_6417);
if (lean_is_exclusive(x_6406)) {
 lean_ctor_release(x_6406, 0);
 lean_ctor_release(x_6406, 1);
 x_6418 = x_6406;
} else {
 lean_dec_ref(x_6406);
 x_6418 = lean_box(0);
}
if (lean_is_scalar(x_6418)) {
 x_6419 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6419 = x_6418;
}
lean_ctor_set(x_6419, 0, x_6416);
lean_ctor_set(x_6419, 1, x_6417);
return x_6419;
}
}
else
{
lean_object* x_6420; lean_object* x_6421; lean_object* x_6422; lean_object* x_6423; 
lean_dec(x_6397);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6420 = lean_ctor_get(x_6401, 0);
lean_inc(x_6420);
x_6421 = lean_ctor_get(x_6401, 1);
lean_inc(x_6421);
if (lean_is_exclusive(x_6401)) {
 lean_ctor_release(x_6401, 0);
 lean_ctor_release(x_6401, 1);
 x_6422 = x_6401;
} else {
 lean_dec_ref(x_6401);
 x_6422 = lean_box(0);
}
if (lean_is_scalar(x_6422)) {
 x_6423 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6423 = x_6422;
}
lean_ctor_set(x_6423, 0, x_6420);
lean_ctor_set(x_6423, 1, x_6421);
return x_6423;
}
}
}
else
{
lean_object* x_6457; lean_object* x_6458; lean_object* x_6459; lean_object* x_6460; 
lean_dec(x_6389);
lean_dec(x_6388);
lean_dec(x_6387);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6457 = lean_ctor_get(x_6391, 0);
lean_inc(x_6457);
x_6458 = lean_ctor_get(x_6391, 1);
lean_inc(x_6458);
if (lean_is_exclusive(x_6391)) {
 lean_ctor_release(x_6391, 0);
 lean_ctor_release(x_6391, 1);
 x_6459 = x_6391;
} else {
 lean_dec_ref(x_6391);
 x_6459 = lean_box(0);
}
if (lean_is_scalar(x_6459)) {
 x_6460 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6460 = x_6459;
}
lean_ctor_set(x_6460, 0, x_6457);
lean_ctor_set(x_6460, 1, x_6458);
return x_6460;
}
}
else
{
lean_object* x_6461; lean_object* x_6462; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6461 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6462 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6462 = x_5082;
}
lean_ctor_set(x_6462, 0, x_6461);
lean_ctor_set(x_6462, 1, x_5081);
return x_6462;
}
}
else
{
lean_object* x_6463; lean_object* x_6464; lean_object* x_6465; lean_object* x_6466; lean_object* x_6467; lean_object* x_6468; lean_object* x_6469; lean_object* x_6470; lean_object* x_6471; 
lean_dec(x_5083);
lean_dec(x_5082);
x_6463 = lean_unsigned_to_nat(2u);
x_6464 = lean_array_fget(x_6029, x_6463);
x_6465 = lean_unsigned_to_nat(3u);
x_6466 = lean_array_fget(x_6029, x_6465);
lean_dec(x_6029);
x_6467 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6468 = lean_array_push(x_6467, x_6464);
x_6469 = lean_array_push(x_6468, x_6466);
x_6470 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6471 = l_Lean_Meta_mkAppM(x_6470, x_6469, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6471) == 0)
{
lean_object* x_6472; lean_object* x_6473; lean_object* x_6474; 
x_6472 = lean_ctor_get(x_6471, 0);
lean_inc(x_6472);
x_6473 = lean_ctor_get(x_6471, 1);
lean_inc(x_6473);
lean_dec(x_6471);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6472);
x_6474 = lean_infer_type(x_6472, x_5, x_6, x_7, x_8, x_6473);
if (lean_obj_tag(x_6474) == 0)
{
lean_object* x_6475; lean_object* x_6476; lean_object* x_6477; uint8_t x_6478; 
x_6475 = lean_ctor_get(x_6474, 0);
lean_inc(x_6475);
x_6476 = lean_ctor_get(x_6474, 1);
lean_inc(x_6476);
lean_dec(x_6474);
x_6477 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_6478 = l_Lean_Expr_isAppOfArity(x_6475, x_6477, x_6465);
if (x_6478 == 0)
{
lean_object* x_6479; lean_object* x_6480; lean_object* x_6481; lean_object* x_6482; 
lean_dec(x_6475);
lean_dec(x_6472);
lean_dec(x_1);
x_6479 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_6480 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_6479, x_5, x_6, x_7, x_8, x_6476);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6481 = lean_ctor_get(x_6480, 0);
lean_inc(x_6481);
x_6482 = lean_ctor_get(x_6480, 1);
lean_inc(x_6482);
lean_dec(x_6480);
x_10 = x_6481;
x_11 = x_6482;
goto block_18;
}
else
{
lean_object* x_6483; lean_object* x_6484; lean_object* x_6485; lean_object* x_6486; 
x_6483 = l_Lean_Expr_appFn_x21(x_6475);
x_6484 = l_Lean_Expr_appArg_x21(x_6483);
lean_dec(x_6483);
x_6485 = l_Lean_Expr_appArg_x21(x_6475);
lean_dec(x_6475);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6486 = l_Lean_Meta_isExprDefEq(x_1, x_6484, x_5, x_6, x_7, x_8, x_6476);
if (lean_obj_tag(x_6486) == 0)
{
lean_object* x_6487; uint8_t x_6488; 
x_6487 = lean_ctor_get(x_6486, 0);
lean_inc(x_6487);
x_6488 = lean_unbox(x_6487);
lean_dec(x_6487);
if (x_6488 == 0)
{
lean_object* x_6489; lean_object* x_6490; lean_object* x_6491; lean_object* x_6492; lean_object* x_6493; 
lean_dec(x_6485);
lean_dec(x_6472);
x_6489 = lean_ctor_get(x_6486, 1);
lean_inc(x_6489);
lean_dec(x_6486);
x_6490 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_6491 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_6490, x_5, x_6, x_7, x_8, x_6489);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6492 = lean_ctor_get(x_6491, 0);
lean_inc(x_6492);
x_6493 = lean_ctor_get(x_6491, 1);
lean_inc(x_6493);
lean_dec(x_6491);
x_10 = x_6492;
x_11 = x_6493;
goto block_18;
}
else
{
lean_object* x_6494; lean_object* x_6495; lean_object* x_6496; uint8_t x_6497; lean_object* x_6498; lean_object* x_6499; lean_object* x_6500; lean_object* x_6501; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6494 = lean_ctor_get(x_6486, 1);
lean_inc(x_6494);
if (lean_is_exclusive(x_6486)) {
 lean_ctor_release(x_6486, 0);
 lean_ctor_release(x_6486, 1);
 x_6495 = x_6486;
} else {
 lean_dec_ref(x_6486);
 x_6495 = lean_box(0);
}
x_6496 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6496, 0, x_6472);
x_6497 = 1;
x_6498 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6498, 0, x_6485);
lean_ctor_set(x_6498, 1, x_6496);
lean_ctor_set_uint8(x_6498, sizeof(void*)*2, x_6497);
x_6499 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6499, 0, x_6498);
x_6500 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6500, 0, x_6499);
if (lean_is_scalar(x_6495)) {
 x_6501 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6501 = x_6495;
}
lean_ctor_set(x_6501, 0, x_6500);
lean_ctor_set(x_6501, 1, x_6494);
return x_6501;
}
}
else
{
lean_object* x_6502; lean_object* x_6503; 
lean_dec(x_6485);
lean_dec(x_6472);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6502 = lean_ctor_get(x_6486, 0);
lean_inc(x_6502);
x_6503 = lean_ctor_get(x_6486, 1);
lean_inc(x_6503);
lean_dec(x_6486);
x_10 = x_6502;
x_11 = x_6503;
goto block_18;
}
}
}
else
{
lean_object* x_6504; lean_object* x_6505; 
lean_dec(x_6472);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_6504 = lean_ctor_get(x_6474, 0);
lean_inc(x_6504);
x_6505 = lean_ctor_get(x_6474, 1);
lean_inc(x_6505);
lean_dec(x_6474);
x_10 = x_6504;
x_11 = x_6505;
goto block_18;
}
}
else
{
lean_object* x_6506; lean_object* x_6507; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_6506 = lean_ctor_get(x_6471, 0);
lean_inc(x_6506);
x_6507 = lean_ctor_get(x_6471, 1);
lean_inc(x_6507);
lean_dec(x_6471);
x_10 = x_6506;
x_11 = x_6507;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_6508; uint8_t x_6509; 
lean_dec(x_6031);
x_6508 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47;
x_6509 = lean_string_dec_eq(x_6030, x_6508);
lean_dec(x_6030);
if (x_6509 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6510; lean_object* x_6511; lean_object* x_6512; uint8_t x_6513; lean_object* x_6514; 
lean_dec(x_5082);
x_6510 = lean_ctor_get(x_5083, 0);
lean_inc(x_6510);
x_6511 = lean_ctor_get(x_5083, 1);
lean_inc(x_6511);
x_6512 = lean_ctor_get(x_5083, 2);
lean_inc(x_6512);
x_6513 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6511);
x_6514 = l_Lean_Meta_isProp(x_6511, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6514) == 0)
{
lean_object* x_6515; lean_object* x_6516; lean_object* x_6517; uint8_t x_6548; 
x_6515 = lean_ctor_get(x_6514, 0);
lean_inc(x_6515);
x_6516 = lean_ctor_get(x_6514, 1);
lean_inc(x_6516);
lean_dec(x_6514);
x_6548 = lean_unbox(x_6515);
lean_dec(x_6515);
if (x_6548 == 0)
{
lean_object* x_6549; 
x_6549 = lean_box(0);
x_6517 = x_6549;
goto block_6547;
}
else
{
uint8_t x_6550; 
x_6550 = l_Lean_Expr_hasLooseBVars(x_6512);
if (x_6550 == 0)
{
lean_object* x_6551; lean_object* x_6552; lean_object* x_6553; lean_object* x_6554; lean_object* x_6555; lean_object* x_6556; 
lean_dec(x_6510);
lean_inc(x_6512);
x_6551 = l_Lean_mkNot(x_6512);
x_6552 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6553 = lean_array_push(x_6552, x_6511);
lean_inc(x_6553);
x_6554 = lean_array_push(x_6553, x_6551);
x_6555 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6556 = l_Lean_Meta_mkAppM(x_6555, x_6554, x_5, x_6, x_7, x_8, x_6516);
if (lean_obj_tag(x_6556) == 0)
{
lean_object* x_6557; lean_object* x_6558; lean_object* x_6559; lean_object* x_6560; lean_object* x_6561; 
x_6557 = lean_ctor_get(x_6556, 0);
lean_inc(x_6557);
x_6558 = lean_ctor_get(x_6556, 1);
lean_inc(x_6558);
lean_dec(x_6556);
x_6559 = lean_array_push(x_6553, x_6512);
x_6560 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6561 = l_Lean_Meta_mkAppM(x_6560, x_6559, x_5, x_6, x_7, x_8, x_6558);
if (lean_obj_tag(x_6561) == 0)
{
lean_object* x_6562; lean_object* x_6563; lean_object* x_6564; lean_object* x_6565; uint8_t x_6566; lean_object* x_6567; lean_object* x_6568; lean_object* x_6569; lean_object* x_6570; 
x_6562 = lean_ctor_get(x_6561, 0);
lean_inc(x_6562);
x_6563 = lean_ctor_get(x_6561, 1);
lean_inc(x_6563);
if (lean_is_exclusive(x_6561)) {
 lean_ctor_release(x_6561, 0);
 lean_ctor_release(x_6561, 1);
 x_6564 = x_6561;
} else {
 lean_dec_ref(x_6561);
 x_6564 = lean_box(0);
}
x_6565 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6565, 0, x_6562);
x_6566 = 1;
x_6567 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6567, 0, x_6557);
lean_ctor_set(x_6567, 1, x_6565);
lean_ctor_set_uint8(x_6567, sizeof(void*)*2, x_6566);
x_6568 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6568, 0, x_6567);
x_6569 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6569, 0, x_6568);
if (lean_is_scalar(x_6564)) {
 x_6570 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6570 = x_6564;
}
lean_ctor_set(x_6570, 0, x_6569);
lean_ctor_set(x_6570, 1, x_6563);
return x_6570;
}
else
{
lean_object* x_6571; lean_object* x_6572; lean_object* x_6573; lean_object* x_6574; 
lean_dec(x_6557);
x_6571 = lean_ctor_get(x_6561, 0);
lean_inc(x_6571);
x_6572 = lean_ctor_get(x_6561, 1);
lean_inc(x_6572);
if (lean_is_exclusive(x_6561)) {
 lean_ctor_release(x_6561, 0);
 lean_ctor_release(x_6561, 1);
 x_6573 = x_6561;
} else {
 lean_dec_ref(x_6561);
 x_6573 = lean_box(0);
}
if (lean_is_scalar(x_6573)) {
 x_6574 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6574 = x_6573;
}
lean_ctor_set(x_6574, 0, x_6571);
lean_ctor_set(x_6574, 1, x_6572);
return x_6574;
}
}
else
{
lean_object* x_6575; lean_object* x_6576; lean_object* x_6577; lean_object* x_6578; 
lean_dec(x_6553);
lean_dec(x_6512);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6575 = lean_ctor_get(x_6556, 0);
lean_inc(x_6575);
x_6576 = lean_ctor_get(x_6556, 1);
lean_inc(x_6576);
if (lean_is_exclusive(x_6556)) {
 lean_ctor_release(x_6556, 0);
 lean_ctor_release(x_6556, 1);
 x_6577 = x_6556;
} else {
 lean_dec_ref(x_6556);
 x_6577 = lean_box(0);
}
if (lean_is_scalar(x_6577)) {
 x_6578 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6578 = x_6577;
}
lean_ctor_set(x_6578, 0, x_6575);
lean_ctor_set(x_6578, 1, x_6576);
return x_6578;
}
}
else
{
lean_object* x_6579; 
x_6579 = lean_box(0);
x_6517 = x_6579;
goto block_6547;
}
}
block_6547:
{
lean_object* x_6518; lean_object* x_6519; lean_object* x_6520; lean_object* x_6521; lean_object* x_6522; lean_object* x_6523; lean_object* x_6524; 
lean_dec(x_6517);
lean_inc(x_6512);
x_6518 = l_Lean_mkNot(x_6512);
lean_inc(x_6511);
lean_inc(x_6510);
x_6519 = l_Lean_Expr_lam___override(x_6510, x_6511, x_6518, x_6513);
x_6520 = l_Lean_Expr_lam___override(x_6510, x_6511, x_6512, x_6513);
x_6521 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6522 = lean_array_push(x_6521, x_6519);
x_6523 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6524 = l_Lean_Meta_mkAppM(x_6523, x_6522, x_5, x_6, x_7, x_8, x_6516);
if (lean_obj_tag(x_6524) == 0)
{
lean_object* x_6525; lean_object* x_6526; lean_object* x_6527; lean_object* x_6528; lean_object* x_6529; 
x_6525 = lean_ctor_get(x_6524, 0);
lean_inc(x_6525);
x_6526 = lean_ctor_get(x_6524, 1);
lean_inc(x_6526);
lean_dec(x_6524);
x_6527 = lean_array_push(x_6521, x_6520);
x_6528 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6529 = l_Lean_Meta_mkAppM(x_6528, x_6527, x_5, x_6, x_7, x_8, x_6526);
if (lean_obj_tag(x_6529) == 0)
{
lean_object* x_6530; lean_object* x_6531; lean_object* x_6532; lean_object* x_6533; uint8_t x_6534; lean_object* x_6535; lean_object* x_6536; lean_object* x_6537; lean_object* x_6538; 
x_6530 = lean_ctor_get(x_6529, 0);
lean_inc(x_6530);
x_6531 = lean_ctor_get(x_6529, 1);
lean_inc(x_6531);
if (lean_is_exclusive(x_6529)) {
 lean_ctor_release(x_6529, 0);
 lean_ctor_release(x_6529, 1);
 x_6532 = x_6529;
} else {
 lean_dec_ref(x_6529);
 x_6532 = lean_box(0);
}
x_6533 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6533, 0, x_6530);
x_6534 = 1;
x_6535 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6535, 0, x_6525);
lean_ctor_set(x_6535, 1, x_6533);
lean_ctor_set_uint8(x_6535, sizeof(void*)*2, x_6534);
x_6536 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6536, 0, x_6535);
x_6537 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6537, 0, x_6536);
if (lean_is_scalar(x_6532)) {
 x_6538 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6538 = x_6532;
}
lean_ctor_set(x_6538, 0, x_6537);
lean_ctor_set(x_6538, 1, x_6531);
return x_6538;
}
else
{
lean_object* x_6539; lean_object* x_6540; lean_object* x_6541; lean_object* x_6542; 
lean_dec(x_6525);
x_6539 = lean_ctor_get(x_6529, 0);
lean_inc(x_6539);
x_6540 = lean_ctor_get(x_6529, 1);
lean_inc(x_6540);
if (lean_is_exclusive(x_6529)) {
 lean_ctor_release(x_6529, 0);
 lean_ctor_release(x_6529, 1);
 x_6541 = x_6529;
} else {
 lean_dec_ref(x_6529);
 x_6541 = lean_box(0);
}
if (lean_is_scalar(x_6541)) {
 x_6542 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6542 = x_6541;
}
lean_ctor_set(x_6542, 0, x_6539);
lean_ctor_set(x_6542, 1, x_6540);
return x_6542;
}
}
else
{
lean_object* x_6543; lean_object* x_6544; lean_object* x_6545; lean_object* x_6546; 
lean_dec(x_6520);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6543 = lean_ctor_get(x_6524, 0);
lean_inc(x_6543);
x_6544 = lean_ctor_get(x_6524, 1);
lean_inc(x_6544);
if (lean_is_exclusive(x_6524)) {
 lean_ctor_release(x_6524, 0);
 lean_ctor_release(x_6524, 1);
 x_6545 = x_6524;
} else {
 lean_dec_ref(x_6524);
 x_6545 = lean_box(0);
}
if (lean_is_scalar(x_6545)) {
 x_6546 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6546 = x_6545;
}
lean_ctor_set(x_6546, 0, x_6543);
lean_ctor_set(x_6546, 1, x_6544);
return x_6546;
}
}
}
else
{
lean_object* x_6580; lean_object* x_6581; lean_object* x_6582; lean_object* x_6583; 
lean_dec(x_6512);
lean_dec(x_6511);
lean_dec(x_6510);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6580 = lean_ctor_get(x_6514, 0);
lean_inc(x_6580);
x_6581 = lean_ctor_get(x_6514, 1);
lean_inc(x_6581);
if (lean_is_exclusive(x_6514)) {
 lean_ctor_release(x_6514, 0);
 lean_ctor_release(x_6514, 1);
 x_6582 = x_6514;
} else {
 lean_dec_ref(x_6514);
 x_6582 = lean_box(0);
}
if (lean_is_scalar(x_6582)) {
 x_6583 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6583 = x_6582;
}
lean_ctor_set(x_6583, 0, x_6580);
lean_ctor_set(x_6583, 1, x_6581);
return x_6583;
}
}
else
{
lean_object* x_6584; lean_object* x_6585; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6584 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6585 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6585 = x_5082;
}
lean_ctor_set(x_6585, 0, x_6584);
lean_ctor_set(x_6585, 1, x_5081);
return x_6585;
}
}
else
{
lean_object* x_6586; lean_object* x_6587; uint8_t x_6588; 
x_6586 = lean_array_get_size(x_6029);
x_6587 = lean_unsigned_to_nat(4u);
x_6588 = lean_nat_dec_eq(x_6586, x_6587);
lean_dec(x_6586);
if (x_6588 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6589; lean_object* x_6590; lean_object* x_6591; uint8_t x_6592; lean_object* x_6593; 
lean_dec(x_5082);
x_6589 = lean_ctor_get(x_5083, 0);
lean_inc(x_6589);
x_6590 = lean_ctor_get(x_5083, 1);
lean_inc(x_6590);
x_6591 = lean_ctor_get(x_5083, 2);
lean_inc(x_6591);
x_6592 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6590);
x_6593 = l_Lean_Meta_isProp(x_6590, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6593) == 0)
{
lean_object* x_6594; lean_object* x_6595; lean_object* x_6596; uint8_t x_6627; 
x_6594 = lean_ctor_get(x_6593, 0);
lean_inc(x_6594);
x_6595 = lean_ctor_get(x_6593, 1);
lean_inc(x_6595);
lean_dec(x_6593);
x_6627 = lean_unbox(x_6594);
lean_dec(x_6594);
if (x_6627 == 0)
{
lean_object* x_6628; 
x_6628 = lean_box(0);
x_6596 = x_6628;
goto block_6626;
}
else
{
uint8_t x_6629; 
x_6629 = l_Lean_Expr_hasLooseBVars(x_6591);
if (x_6629 == 0)
{
lean_object* x_6630; lean_object* x_6631; lean_object* x_6632; lean_object* x_6633; lean_object* x_6634; lean_object* x_6635; 
lean_dec(x_6589);
lean_inc(x_6591);
x_6630 = l_Lean_mkNot(x_6591);
x_6631 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6632 = lean_array_push(x_6631, x_6590);
lean_inc(x_6632);
x_6633 = lean_array_push(x_6632, x_6630);
x_6634 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6635 = l_Lean_Meta_mkAppM(x_6634, x_6633, x_5, x_6, x_7, x_8, x_6595);
if (lean_obj_tag(x_6635) == 0)
{
lean_object* x_6636; lean_object* x_6637; lean_object* x_6638; lean_object* x_6639; lean_object* x_6640; 
x_6636 = lean_ctor_get(x_6635, 0);
lean_inc(x_6636);
x_6637 = lean_ctor_get(x_6635, 1);
lean_inc(x_6637);
lean_dec(x_6635);
x_6638 = lean_array_push(x_6632, x_6591);
x_6639 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6640 = l_Lean_Meta_mkAppM(x_6639, x_6638, x_5, x_6, x_7, x_8, x_6637);
if (lean_obj_tag(x_6640) == 0)
{
lean_object* x_6641; lean_object* x_6642; lean_object* x_6643; lean_object* x_6644; uint8_t x_6645; lean_object* x_6646; lean_object* x_6647; lean_object* x_6648; lean_object* x_6649; 
x_6641 = lean_ctor_get(x_6640, 0);
lean_inc(x_6641);
x_6642 = lean_ctor_get(x_6640, 1);
lean_inc(x_6642);
if (lean_is_exclusive(x_6640)) {
 lean_ctor_release(x_6640, 0);
 lean_ctor_release(x_6640, 1);
 x_6643 = x_6640;
} else {
 lean_dec_ref(x_6640);
 x_6643 = lean_box(0);
}
x_6644 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6644, 0, x_6641);
x_6645 = 1;
x_6646 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6646, 0, x_6636);
lean_ctor_set(x_6646, 1, x_6644);
lean_ctor_set_uint8(x_6646, sizeof(void*)*2, x_6645);
x_6647 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6647, 0, x_6646);
x_6648 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6648, 0, x_6647);
if (lean_is_scalar(x_6643)) {
 x_6649 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6649 = x_6643;
}
lean_ctor_set(x_6649, 0, x_6648);
lean_ctor_set(x_6649, 1, x_6642);
return x_6649;
}
else
{
lean_object* x_6650; lean_object* x_6651; lean_object* x_6652; lean_object* x_6653; 
lean_dec(x_6636);
x_6650 = lean_ctor_get(x_6640, 0);
lean_inc(x_6650);
x_6651 = lean_ctor_get(x_6640, 1);
lean_inc(x_6651);
if (lean_is_exclusive(x_6640)) {
 lean_ctor_release(x_6640, 0);
 lean_ctor_release(x_6640, 1);
 x_6652 = x_6640;
} else {
 lean_dec_ref(x_6640);
 x_6652 = lean_box(0);
}
if (lean_is_scalar(x_6652)) {
 x_6653 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6653 = x_6652;
}
lean_ctor_set(x_6653, 0, x_6650);
lean_ctor_set(x_6653, 1, x_6651);
return x_6653;
}
}
else
{
lean_object* x_6654; lean_object* x_6655; lean_object* x_6656; lean_object* x_6657; 
lean_dec(x_6632);
lean_dec(x_6591);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6654 = lean_ctor_get(x_6635, 0);
lean_inc(x_6654);
x_6655 = lean_ctor_get(x_6635, 1);
lean_inc(x_6655);
if (lean_is_exclusive(x_6635)) {
 lean_ctor_release(x_6635, 0);
 lean_ctor_release(x_6635, 1);
 x_6656 = x_6635;
} else {
 lean_dec_ref(x_6635);
 x_6656 = lean_box(0);
}
if (lean_is_scalar(x_6656)) {
 x_6657 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6657 = x_6656;
}
lean_ctor_set(x_6657, 0, x_6654);
lean_ctor_set(x_6657, 1, x_6655);
return x_6657;
}
}
else
{
lean_object* x_6658; 
x_6658 = lean_box(0);
x_6596 = x_6658;
goto block_6626;
}
}
block_6626:
{
lean_object* x_6597; lean_object* x_6598; lean_object* x_6599; lean_object* x_6600; lean_object* x_6601; lean_object* x_6602; lean_object* x_6603; 
lean_dec(x_6596);
lean_inc(x_6591);
x_6597 = l_Lean_mkNot(x_6591);
lean_inc(x_6590);
lean_inc(x_6589);
x_6598 = l_Lean_Expr_lam___override(x_6589, x_6590, x_6597, x_6592);
x_6599 = l_Lean_Expr_lam___override(x_6589, x_6590, x_6591, x_6592);
x_6600 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6601 = lean_array_push(x_6600, x_6598);
x_6602 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6603 = l_Lean_Meta_mkAppM(x_6602, x_6601, x_5, x_6, x_7, x_8, x_6595);
if (lean_obj_tag(x_6603) == 0)
{
lean_object* x_6604; lean_object* x_6605; lean_object* x_6606; lean_object* x_6607; lean_object* x_6608; 
x_6604 = lean_ctor_get(x_6603, 0);
lean_inc(x_6604);
x_6605 = lean_ctor_get(x_6603, 1);
lean_inc(x_6605);
lean_dec(x_6603);
x_6606 = lean_array_push(x_6600, x_6599);
x_6607 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6608 = l_Lean_Meta_mkAppM(x_6607, x_6606, x_5, x_6, x_7, x_8, x_6605);
if (lean_obj_tag(x_6608) == 0)
{
lean_object* x_6609; lean_object* x_6610; lean_object* x_6611; lean_object* x_6612; uint8_t x_6613; lean_object* x_6614; lean_object* x_6615; lean_object* x_6616; lean_object* x_6617; 
x_6609 = lean_ctor_get(x_6608, 0);
lean_inc(x_6609);
x_6610 = lean_ctor_get(x_6608, 1);
lean_inc(x_6610);
if (lean_is_exclusive(x_6608)) {
 lean_ctor_release(x_6608, 0);
 lean_ctor_release(x_6608, 1);
 x_6611 = x_6608;
} else {
 lean_dec_ref(x_6608);
 x_6611 = lean_box(0);
}
x_6612 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6612, 0, x_6609);
x_6613 = 1;
x_6614 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6614, 0, x_6604);
lean_ctor_set(x_6614, 1, x_6612);
lean_ctor_set_uint8(x_6614, sizeof(void*)*2, x_6613);
x_6615 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6615, 0, x_6614);
x_6616 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6616, 0, x_6615);
if (lean_is_scalar(x_6611)) {
 x_6617 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6617 = x_6611;
}
lean_ctor_set(x_6617, 0, x_6616);
lean_ctor_set(x_6617, 1, x_6610);
return x_6617;
}
else
{
lean_object* x_6618; lean_object* x_6619; lean_object* x_6620; lean_object* x_6621; 
lean_dec(x_6604);
x_6618 = lean_ctor_get(x_6608, 0);
lean_inc(x_6618);
x_6619 = lean_ctor_get(x_6608, 1);
lean_inc(x_6619);
if (lean_is_exclusive(x_6608)) {
 lean_ctor_release(x_6608, 0);
 lean_ctor_release(x_6608, 1);
 x_6620 = x_6608;
} else {
 lean_dec_ref(x_6608);
 x_6620 = lean_box(0);
}
if (lean_is_scalar(x_6620)) {
 x_6621 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6621 = x_6620;
}
lean_ctor_set(x_6621, 0, x_6618);
lean_ctor_set(x_6621, 1, x_6619);
return x_6621;
}
}
else
{
lean_object* x_6622; lean_object* x_6623; lean_object* x_6624; lean_object* x_6625; 
lean_dec(x_6599);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6622 = lean_ctor_get(x_6603, 0);
lean_inc(x_6622);
x_6623 = lean_ctor_get(x_6603, 1);
lean_inc(x_6623);
if (lean_is_exclusive(x_6603)) {
 lean_ctor_release(x_6603, 0);
 lean_ctor_release(x_6603, 1);
 x_6624 = x_6603;
} else {
 lean_dec_ref(x_6603);
 x_6624 = lean_box(0);
}
if (lean_is_scalar(x_6624)) {
 x_6625 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6625 = x_6624;
}
lean_ctor_set(x_6625, 0, x_6622);
lean_ctor_set(x_6625, 1, x_6623);
return x_6625;
}
}
}
else
{
lean_object* x_6659; lean_object* x_6660; lean_object* x_6661; lean_object* x_6662; 
lean_dec(x_6591);
lean_dec(x_6590);
lean_dec(x_6589);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6659 = lean_ctor_get(x_6593, 0);
lean_inc(x_6659);
x_6660 = lean_ctor_get(x_6593, 1);
lean_inc(x_6660);
if (lean_is_exclusive(x_6593)) {
 lean_ctor_release(x_6593, 0);
 lean_ctor_release(x_6593, 1);
 x_6661 = x_6593;
} else {
 lean_dec_ref(x_6593);
 x_6661 = lean_box(0);
}
if (lean_is_scalar(x_6661)) {
 x_6662 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6662 = x_6661;
}
lean_ctor_set(x_6662, 0, x_6659);
lean_ctor_set(x_6662, 1, x_6660);
return x_6662;
}
}
else
{
lean_object* x_6663; lean_object* x_6664; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6663 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6664 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6664 = x_5082;
}
lean_ctor_set(x_6664, 0, x_6663);
lean_ctor_set(x_6664, 1, x_5081);
return x_6664;
}
}
else
{
lean_object* x_6665; lean_object* x_6666; lean_object* x_6667; lean_object* x_6668; lean_object* x_6669; lean_object* x_6670; lean_object* x_6671; lean_object* x_6672; lean_object* x_6673; 
lean_dec(x_5083);
lean_dec(x_5082);
x_6665 = lean_unsigned_to_nat(2u);
x_6666 = lean_array_fget(x_6029, x_6665);
x_6667 = lean_unsigned_to_nat(3u);
x_6668 = lean_array_fget(x_6029, x_6667);
lean_dec(x_6029);
x_6669 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6670 = lean_array_push(x_6669, x_6666);
x_6671 = lean_array_push(x_6670, x_6668);
x_6672 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6673 = l_Lean_Meta_mkAppM(x_6672, x_6671, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6673) == 0)
{
lean_object* x_6674; lean_object* x_6675; lean_object* x_6676; 
x_6674 = lean_ctor_get(x_6673, 0);
lean_inc(x_6674);
x_6675 = lean_ctor_get(x_6673, 1);
lean_inc(x_6675);
lean_dec(x_6673);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6674);
x_6676 = lean_infer_type(x_6674, x_5, x_6, x_7, x_8, x_6675);
if (lean_obj_tag(x_6676) == 0)
{
lean_object* x_6677; lean_object* x_6678; lean_object* x_6679; uint8_t x_6680; 
x_6677 = lean_ctor_get(x_6676, 0);
lean_inc(x_6677);
x_6678 = lean_ctor_get(x_6676, 1);
lean_inc(x_6678);
lean_dec(x_6676);
x_6679 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_6680 = l_Lean_Expr_isAppOfArity(x_6677, x_6679, x_6667);
if (x_6680 == 0)
{
lean_object* x_6681; lean_object* x_6682; lean_object* x_6683; lean_object* x_6684; 
lean_dec(x_6677);
lean_dec(x_6674);
lean_dec(x_1);
x_6681 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_6682 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_6681, x_5, x_6, x_7, x_8, x_6678);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6683 = lean_ctor_get(x_6682, 0);
lean_inc(x_6683);
x_6684 = lean_ctor_get(x_6682, 1);
lean_inc(x_6684);
lean_dec(x_6682);
x_10 = x_6683;
x_11 = x_6684;
goto block_18;
}
else
{
lean_object* x_6685; lean_object* x_6686; lean_object* x_6687; lean_object* x_6688; 
x_6685 = l_Lean_Expr_appFn_x21(x_6677);
x_6686 = l_Lean_Expr_appArg_x21(x_6685);
lean_dec(x_6685);
x_6687 = l_Lean_Expr_appArg_x21(x_6677);
lean_dec(x_6677);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6688 = l_Lean_Meta_isExprDefEq(x_1, x_6686, x_5, x_6, x_7, x_8, x_6678);
if (lean_obj_tag(x_6688) == 0)
{
lean_object* x_6689; uint8_t x_6690; 
x_6689 = lean_ctor_get(x_6688, 0);
lean_inc(x_6689);
x_6690 = lean_unbox(x_6689);
lean_dec(x_6689);
if (x_6690 == 0)
{
lean_object* x_6691; lean_object* x_6692; lean_object* x_6693; lean_object* x_6694; lean_object* x_6695; 
lean_dec(x_6687);
lean_dec(x_6674);
x_6691 = lean_ctor_get(x_6688, 1);
lean_inc(x_6691);
lean_dec(x_6688);
x_6692 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_6693 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_6692, x_5, x_6, x_7, x_8, x_6691);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6694 = lean_ctor_get(x_6693, 0);
lean_inc(x_6694);
x_6695 = lean_ctor_get(x_6693, 1);
lean_inc(x_6695);
lean_dec(x_6693);
x_10 = x_6694;
x_11 = x_6695;
goto block_18;
}
else
{
lean_object* x_6696; lean_object* x_6697; lean_object* x_6698; uint8_t x_6699; lean_object* x_6700; lean_object* x_6701; lean_object* x_6702; lean_object* x_6703; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6696 = lean_ctor_get(x_6688, 1);
lean_inc(x_6696);
if (lean_is_exclusive(x_6688)) {
 lean_ctor_release(x_6688, 0);
 lean_ctor_release(x_6688, 1);
 x_6697 = x_6688;
} else {
 lean_dec_ref(x_6688);
 x_6697 = lean_box(0);
}
x_6698 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6698, 0, x_6674);
x_6699 = 1;
x_6700 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6700, 0, x_6687);
lean_ctor_set(x_6700, 1, x_6698);
lean_ctor_set_uint8(x_6700, sizeof(void*)*2, x_6699);
x_6701 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6701, 0, x_6700);
x_6702 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6702, 0, x_6701);
if (lean_is_scalar(x_6697)) {
 x_6703 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6703 = x_6697;
}
lean_ctor_set(x_6703, 0, x_6702);
lean_ctor_set(x_6703, 1, x_6696);
return x_6703;
}
}
else
{
lean_object* x_6704; lean_object* x_6705; 
lean_dec(x_6687);
lean_dec(x_6674);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6704 = lean_ctor_get(x_6688, 0);
lean_inc(x_6704);
x_6705 = lean_ctor_get(x_6688, 1);
lean_inc(x_6705);
lean_dec(x_6688);
x_10 = x_6704;
x_11 = x_6705;
goto block_18;
}
}
}
else
{
lean_object* x_6706; lean_object* x_6707; 
lean_dec(x_6674);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_6706 = lean_ctor_get(x_6676, 0);
lean_inc(x_6706);
x_6707 = lean_ctor_get(x_6676, 1);
lean_inc(x_6707);
lean_dec(x_6676);
x_10 = x_6706;
x_11 = x_6707;
goto block_18;
}
}
else
{
lean_object* x_6708; lean_object* x_6709; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_6708 = lean_ctor_get(x_6673, 0);
lean_inc(x_6708);
x_6709 = lean_ctor_get(x_6673, 1);
lean_inc(x_6709);
lean_dec(x_6673);
x_10 = x_6708;
x_11 = x_6709;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_6710; uint8_t x_6711; 
lean_dec(x_6031);
x_6710 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50;
x_6711 = lean_string_dec_eq(x_6030, x_6710);
lean_dec(x_6030);
if (x_6711 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6712; lean_object* x_6713; lean_object* x_6714; uint8_t x_6715; lean_object* x_6716; 
lean_dec(x_5082);
x_6712 = lean_ctor_get(x_5083, 0);
lean_inc(x_6712);
x_6713 = lean_ctor_get(x_5083, 1);
lean_inc(x_6713);
x_6714 = lean_ctor_get(x_5083, 2);
lean_inc(x_6714);
x_6715 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6713);
x_6716 = l_Lean_Meta_isProp(x_6713, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6716) == 0)
{
lean_object* x_6717; lean_object* x_6718; lean_object* x_6719; uint8_t x_6750; 
x_6717 = lean_ctor_get(x_6716, 0);
lean_inc(x_6717);
x_6718 = lean_ctor_get(x_6716, 1);
lean_inc(x_6718);
lean_dec(x_6716);
x_6750 = lean_unbox(x_6717);
lean_dec(x_6717);
if (x_6750 == 0)
{
lean_object* x_6751; 
x_6751 = lean_box(0);
x_6719 = x_6751;
goto block_6749;
}
else
{
uint8_t x_6752; 
x_6752 = l_Lean_Expr_hasLooseBVars(x_6714);
if (x_6752 == 0)
{
lean_object* x_6753; lean_object* x_6754; lean_object* x_6755; lean_object* x_6756; lean_object* x_6757; lean_object* x_6758; 
lean_dec(x_6712);
lean_inc(x_6714);
x_6753 = l_Lean_mkNot(x_6714);
x_6754 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6755 = lean_array_push(x_6754, x_6713);
lean_inc(x_6755);
x_6756 = lean_array_push(x_6755, x_6753);
x_6757 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6758 = l_Lean_Meta_mkAppM(x_6757, x_6756, x_5, x_6, x_7, x_8, x_6718);
if (lean_obj_tag(x_6758) == 0)
{
lean_object* x_6759; lean_object* x_6760; lean_object* x_6761; lean_object* x_6762; lean_object* x_6763; 
x_6759 = lean_ctor_get(x_6758, 0);
lean_inc(x_6759);
x_6760 = lean_ctor_get(x_6758, 1);
lean_inc(x_6760);
lean_dec(x_6758);
x_6761 = lean_array_push(x_6755, x_6714);
x_6762 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6763 = l_Lean_Meta_mkAppM(x_6762, x_6761, x_5, x_6, x_7, x_8, x_6760);
if (lean_obj_tag(x_6763) == 0)
{
lean_object* x_6764; lean_object* x_6765; lean_object* x_6766; lean_object* x_6767; uint8_t x_6768; lean_object* x_6769; lean_object* x_6770; lean_object* x_6771; lean_object* x_6772; 
x_6764 = lean_ctor_get(x_6763, 0);
lean_inc(x_6764);
x_6765 = lean_ctor_get(x_6763, 1);
lean_inc(x_6765);
if (lean_is_exclusive(x_6763)) {
 lean_ctor_release(x_6763, 0);
 lean_ctor_release(x_6763, 1);
 x_6766 = x_6763;
} else {
 lean_dec_ref(x_6763);
 x_6766 = lean_box(0);
}
x_6767 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6767, 0, x_6764);
x_6768 = 1;
x_6769 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6769, 0, x_6759);
lean_ctor_set(x_6769, 1, x_6767);
lean_ctor_set_uint8(x_6769, sizeof(void*)*2, x_6768);
x_6770 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6770, 0, x_6769);
x_6771 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6771, 0, x_6770);
if (lean_is_scalar(x_6766)) {
 x_6772 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6772 = x_6766;
}
lean_ctor_set(x_6772, 0, x_6771);
lean_ctor_set(x_6772, 1, x_6765);
return x_6772;
}
else
{
lean_object* x_6773; lean_object* x_6774; lean_object* x_6775; lean_object* x_6776; 
lean_dec(x_6759);
x_6773 = lean_ctor_get(x_6763, 0);
lean_inc(x_6773);
x_6774 = lean_ctor_get(x_6763, 1);
lean_inc(x_6774);
if (lean_is_exclusive(x_6763)) {
 lean_ctor_release(x_6763, 0);
 lean_ctor_release(x_6763, 1);
 x_6775 = x_6763;
} else {
 lean_dec_ref(x_6763);
 x_6775 = lean_box(0);
}
if (lean_is_scalar(x_6775)) {
 x_6776 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6776 = x_6775;
}
lean_ctor_set(x_6776, 0, x_6773);
lean_ctor_set(x_6776, 1, x_6774);
return x_6776;
}
}
else
{
lean_object* x_6777; lean_object* x_6778; lean_object* x_6779; lean_object* x_6780; 
lean_dec(x_6755);
lean_dec(x_6714);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6777 = lean_ctor_get(x_6758, 0);
lean_inc(x_6777);
x_6778 = lean_ctor_get(x_6758, 1);
lean_inc(x_6778);
if (lean_is_exclusive(x_6758)) {
 lean_ctor_release(x_6758, 0);
 lean_ctor_release(x_6758, 1);
 x_6779 = x_6758;
} else {
 lean_dec_ref(x_6758);
 x_6779 = lean_box(0);
}
if (lean_is_scalar(x_6779)) {
 x_6780 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6780 = x_6779;
}
lean_ctor_set(x_6780, 0, x_6777);
lean_ctor_set(x_6780, 1, x_6778);
return x_6780;
}
}
else
{
lean_object* x_6781; 
x_6781 = lean_box(0);
x_6719 = x_6781;
goto block_6749;
}
}
block_6749:
{
lean_object* x_6720; lean_object* x_6721; lean_object* x_6722; lean_object* x_6723; lean_object* x_6724; lean_object* x_6725; lean_object* x_6726; 
lean_dec(x_6719);
lean_inc(x_6714);
x_6720 = l_Lean_mkNot(x_6714);
lean_inc(x_6713);
lean_inc(x_6712);
x_6721 = l_Lean_Expr_lam___override(x_6712, x_6713, x_6720, x_6715);
x_6722 = l_Lean_Expr_lam___override(x_6712, x_6713, x_6714, x_6715);
x_6723 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6724 = lean_array_push(x_6723, x_6721);
x_6725 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6726 = l_Lean_Meta_mkAppM(x_6725, x_6724, x_5, x_6, x_7, x_8, x_6718);
if (lean_obj_tag(x_6726) == 0)
{
lean_object* x_6727; lean_object* x_6728; lean_object* x_6729; lean_object* x_6730; lean_object* x_6731; 
x_6727 = lean_ctor_get(x_6726, 0);
lean_inc(x_6727);
x_6728 = lean_ctor_get(x_6726, 1);
lean_inc(x_6728);
lean_dec(x_6726);
x_6729 = lean_array_push(x_6723, x_6722);
x_6730 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6731 = l_Lean_Meta_mkAppM(x_6730, x_6729, x_5, x_6, x_7, x_8, x_6728);
if (lean_obj_tag(x_6731) == 0)
{
lean_object* x_6732; lean_object* x_6733; lean_object* x_6734; lean_object* x_6735; uint8_t x_6736; lean_object* x_6737; lean_object* x_6738; lean_object* x_6739; lean_object* x_6740; 
x_6732 = lean_ctor_get(x_6731, 0);
lean_inc(x_6732);
x_6733 = lean_ctor_get(x_6731, 1);
lean_inc(x_6733);
if (lean_is_exclusive(x_6731)) {
 lean_ctor_release(x_6731, 0);
 lean_ctor_release(x_6731, 1);
 x_6734 = x_6731;
} else {
 lean_dec_ref(x_6731);
 x_6734 = lean_box(0);
}
x_6735 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6735, 0, x_6732);
x_6736 = 1;
x_6737 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6737, 0, x_6727);
lean_ctor_set(x_6737, 1, x_6735);
lean_ctor_set_uint8(x_6737, sizeof(void*)*2, x_6736);
x_6738 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6738, 0, x_6737);
x_6739 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6739, 0, x_6738);
if (lean_is_scalar(x_6734)) {
 x_6740 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6740 = x_6734;
}
lean_ctor_set(x_6740, 0, x_6739);
lean_ctor_set(x_6740, 1, x_6733);
return x_6740;
}
else
{
lean_object* x_6741; lean_object* x_6742; lean_object* x_6743; lean_object* x_6744; 
lean_dec(x_6727);
x_6741 = lean_ctor_get(x_6731, 0);
lean_inc(x_6741);
x_6742 = lean_ctor_get(x_6731, 1);
lean_inc(x_6742);
if (lean_is_exclusive(x_6731)) {
 lean_ctor_release(x_6731, 0);
 lean_ctor_release(x_6731, 1);
 x_6743 = x_6731;
} else {
 lean_dec_ref(x_6731);
 x_6743 = lean_box(0);
}
if (lean_is_scalar(x_6743)) {
 x_6744 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6744 = x_6743;
}
lean_ctor_set(x_6744, 0, x_6741);
lean_ctor_set(x_6744, 1, x_6742);
return x_6744;
}
}
else
{
lean_object* x_6745; lean_object* x_6746; lean_object* x_6747; lean_object* x_6748; 
lean_dec(x_6722);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6745 = lean_ctor_get(x_6726, 0);
lean_inc(x_6745);
x_6746 = lean_ctor_get(x_6726, 1);
lean_inc(x_6746);
if (lean_is_exclusive(x_6726)) {
 lean_ctor_release(x_6726, 0);
 lean_ctor_release(x_6726, 1);
 x_6747 = x_6726;
} else {
 lean_dec_ref(x_6726);
 x_6747 = lean_box(0);
}
if (lean_is_scalar(x_6747)) {
 x_6748 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6748 = x_6747;
}
lean_ctor_set(x_6748, 0, x_6745);
lean_ctor_set(x_6748, 1, x_6746);
return x_6748;
}
}
}
else
{
lean_object* x_6782; lean_object* x_6783; lean_object* x_6784; lean_object* x_6785; 
lean_dec(x_6714);
lean_dec(x_6713);
lean_dec(x_6712);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6782 = lean_ctor_get(x_6716, 0);
lean_inc(x_6782);
x_6783 = lean_ctor_get(x_6716, 1);
lean_inc(x_6783);
if (lean_is_exclusive(x_6716)) {
 lean_ctor_release(x_6716, 0);
 lean_ctor_release(x_6716, 1);
 x_6784 = x_6716;
} else {
 lean_dec_ref(x_6716);
 x_6784 = lean_box(0);
}
if (lean_is_scalar(x_6784)) {
 x_6785 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6785 = x_6784;
}
lean_ctor_set(x_6785, 0, x_6782);
lean_ctor_set(x_6785, 1, x_6783);
return x_6785;
}
}
else
{
lean_object* x_6786; lean_object* x_6787; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6786 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6787 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6787 = x_5082;
}
lean_ctor_set(x_6787, 0, x_6786);
lean_ctor_set(x_6787, 1, x_5081);
return x_6787;
}
}
else
{
lean_object* x_6788; lean_object* x_6789; uint8_t x_6790; 
x_6788 = lean_array_get_size(x_6029);
x_6789 = lean_unsigned_to_nat(4u);
x_6790 = lean_nat_dec_eq(x_6788, x_6789);
lean_dec(x_6788);
if (x_6790 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6791; lean_object* x_6792; lean_object* x_6793; uint8_t x_6794; lean_object* x_6795; 
lean_dec(x_5082);
x_6791 = lean_ctor_get(x_5083, 0);
lean_inc(x_6791);
x_6792 = lean_ctor_get(x_5083, 1);
lean_inc(x_6792);
x_6793 = lean_ctor_get(x_5083, 2);
lean_inc(x_6793);
x_6794 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6792);
x_6795 = l_Lean_Meta_isProp(x_6792, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6795) == 0)
{
lean_object* x_6796; lean_object* x_6797; lean_object* x_6798; uint8_t x_6829; 
x_6796 = lean_ctor_get(x_6795, 0);
lean_inc(x_6796);
x_6797 = lean_ctor_get(x_6795, 1);
lean_inc(x_6797);
lean_dec(x_6795);
x_6829 = lean_unbox(x_6796);
lean_dec(x_6796);
if (x_6829 == 0)
{
lean_object* x_6830; 
x_6830 = lean_box(0);
x_6798 = x_6830;
goto block_6828;
}
else
{
uint8_t x_6831; 
x_6831 = l_Lean_Expr_hasLooseBVars(x_6793);
if (x_6831 == 0)
{
lean_object* x_6832; lean_object* x_6833; lean_object* x_6834; lean_object* x_6835; lean_object* x_6836; lean_object* x_6837; 
lean_dec(x_6791);
lean_inc(x_6793);
x_6832 = l_Lean_mkNot(x_6793);
x_6833 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6834 = lean_array_push(x_6833, x_6792);
lean_inc(x_6834);
x_6835 = lean_array_push(x_6834, x_6832);
x_6836 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6837 = l_Lean_Meta_mkAppM(x_6836, x_6835, x_5, x_6, x_7, x_8, x_6797);
if (lean_obj_tag(x_6837) == 0)
{
lean_object* x_6838; lean_object* x_6839; lean_object* x_6840; lean_object* x_6841; lean_object* x_6842; 
x_6838 = lean_ctor_get(x_6837, 0);
lean_inc(x_6838);
x_6839 = lean_ctor_get(x_6837, 1);
lean_inc(x_6839);
lean_dec(x_6837);
x_6840 = lean_array_push(x_6834, x_6793);
x_6841 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6842 = l_Lean_Meta_mkAppM(x_6841, x_6840, x_5, x_6, x_7, x_8, x_6839);
if (lean_obj_tag(x_6842) == 0)
{
lean_object* x_6843; lean_object* x_6844; lean_object* x_6845; lean_object* x_6846; uint8_t x_6847; lean_object* x_6848; lean_object* x_6849; lean_object* x_6850; lean_object* x_6851; 
x_6843 = lean_ctor_get(x_6842, 0);
lean_inc(x_6843);
x_6844 = lean_ctor_get(x_6842, 1);
lean_inc(x_6844);
if (lean_is_exclusive(x_6842)) {
 lean_ctor_release(x_6842, 0);
 lean_ctor_release(x_6842, 1);
 x_6845 = x_6842;
} else {
 lean_dec_ref(x_6842);
 x_6845 = lean_box(0);
}
x_6846 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6846, 0, x_6843);
x_6847 = 1;
x_6848 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6848, 0, x_6838);
lean_ctor_set(x_6848, 1, x_6846);
lean_ctor_set_uint8(x_6848, sizeof(void*)*2, x_6847);
x_6849 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6849, 0, x_6848);
x_6850 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6850, 0, x_6849);
if (lean_is_scalar(x_6845)) {
 x_6851 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6851 = x_6845;
}
lean_ctor_set(x_6851, 0, x_6850);
lean_ctor_set(x_6851, 1, x_6844);
return x_6851;
}
else
{
lean_object* x_6852; lean_object* x_6853; lean_object* x_6854; lean_object* x_6855; 
lean_dec(x_6838);
x_6852 = lean_ctor_get(x_6842, 0);
lean_inc(x_6852);
x_6853 = lean_ctor_get(x_6842, 1);
lean_inc(x_6853);
if (lean_is_exclusive(x_6842)) {
 lean_ctor_release(x_6842, 0);
 lean_ctor_release(x_6842, 1);
 x_6854 = x_6842;
} else {
 lean_dec_ref(x_6842);
 x_6854 = lean_box(0);
}
if (lean_is_scalar(x_6854)) {
 x_6855 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6855 = x_6854;
}
lean_ctor_set(x_6855, 0, x_6852);
lean_ctor_set(x_6855, 1, x_6853);
return x_6855;
}
}
else
{
lean_object* x_6856; lean_object* x_6857; lean_object* x_6858; lean_object* x_6859; 
lean_dec(x_6834);
lean_dec(x_6793);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6856 = lean_ctor_get(x_6837, 0);
lean_inc(x_6856);
x_6857 = lean_ctor_get(x_6837, 1);
lean_inc(x_6857);
if (lean_is_exclusive(x_6837)) {
 lean_ctor_release(x_6837, 0);
 lean_ctor_release(x_6837, 1);
 x_6858 = x_6837;
} else {
 lean_dec_ref(x_6837);
 x_6858 = lean_box(0);
}
if (lean_is_scalar(x_6858)) {
 x_6859 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6859 = x_6858;
}
lean_ctor_set(x_6859, 0, x_6856);
lean_ctor_set(x_6859, 1, x_6857);
return x_6859;
}
}
else
{
lean_object* x_6860; 
x_6860 = lean_box(0);
x_6798 = x_6860;
goto block_6828;
}
}
block_6828:
{
lean_object* x_6799; lean_object* x_6800; lean_object* x_6801; lean_object* x_6802; lean_object* x_6803; lean_object* x_6804; lean_object* x_6805; 
lean_dec(x_6798);
lean_inc(x_6793);
x_6799 = l_Lean_mkNot(x_6793);
lean_inc(x_6792);
lean_inc(x_6791);
x_6800 = l_Lean_Expr_lam___override(x_6791, x_6792, x_6799, x_6794);
x_6801 = l_Lean_Expr_lam___override(x_6791, x_6792, x_6793, x_6794);
x_6802 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6803 = lean_array_push(x_6802, x_6800);
x_6804 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6805 = l_Lean_Meta_mkAppM(x_6804, x_6803, x_5, x_6, x_7, x_8, x_6797);
if (lean_obj_tag(x_6805) == 0)
{
lean_object* x_6806; lean_object* x_6807; lean_object* x_6808; lean_object* x_6809; lean_object* x_6810; 
x_6806 = lean_ctor_get(x_6805, 0);
lean_inc(x_6806);
x_6807 = lean_ctor_get(x_6805, 1);
lean_inc(x_6807);
lean_dec(x_6805);
x_6808 = lean_array_push(x_6802, x_6801);
x_6809 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6810 = l_Lean_Meta_mkAppM(x_6809, x_6808, x_5, x_6, x_7, x_8, x_6807);
if (lean_obj_tag(x_6810) == 0)
{
lean_object* x_6811; lean_object* x_6812; lean_object* x_6813; lean_object* x_6814; uint8_t x_6815; lean_object* x_6816; lean_object* x_6817; lean_object* x_6818; lean_object* x_6819; 
x_6811 = lean_ctor_get(x_6810, 0);
lean_inc(x_6811);
x_6812 = lean_ctor_get(x_6810, 1);
lean_inc(x_6812);
if (lean_is_exclusive(x_6810)) {
 lean_ctor_release(x_6810, 0);
 lean_ctor_release(x_6810, 1);
 x_6813 = x_6810;
} else {
 lean_dec_ref(x_6810);
 x_6813 = lean_box(0);
}
x_6814 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6814, 0, x_6811);
x_6815 = 1;
x_6816 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6816, 0, x_6806);
lean_ctor_set(x_6816, 1, x_6814);
lean_ctor_set_uint8(x_6816, sizeof(void*)*2, x_6815);
x_6817 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6817, 0, x_6816);
x_6818 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6818, 0, x_6817);
if (lean_is_scalar(x_6813)) {
 x_6819 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6819 = x_6813;
}
lean_ctor_set(x_6819, 0, x_6818);
lean_ctor_set(x_6819, 1, x_6812);
return x_6819;
}
else
{
lean_object* x_6820; lean_object* x_6821; lean_object* x_6822; lean_object* x_6823; 
lean_dec(x_6806);
x_6820 = lean_ctor_get(x_6810, 0);
lean_inc(x_6820);
x_6821 = lean_ctor_get(x_6810, 1);
lean_inc(x_6821);
if (lean_is_exclusive(x_6810)) {
 lean_ctor_release(x_6810, 0);
 lean_ctor_release(x_6810, 1);
 x_6822 = x_6810;
} else {
 lean_dec_ref(x_6810);
 x_6822 = lean_box(0);
}
if (lean_is_scalar(x_6822)) {
 x_6823 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6823 = x_6822;
}
lean_ctor_set(x_6823, 0, x_6820);
lean_ctor_set(x_6823, 1, x_6821);
return x_6823;
}
}
else
{
lean_object* x_6824; lean_object* x_6825; lean_object* x_6826; lean_object* x_6827; 
lean_dec(x_6801);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6824 = lean_ctor_get(x_6805, 0);
lean_inc(x_6824);
x_6825 = lean_ctor_get(x_6805, 1);
lean_inc(x_6825);
if (lean_is_exclusive(x_6805)) {
 lean_ctor_release(x_6805, 0);
 lean_ctor_release(x_6805, 1);
 x_6826 = x_6805;
} else {
 lean_dec_ref(x_6805);
 x_6826 = lean_box(0);
}
if (lean_is_scalar(x_6826)) {
 x_6827 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6827 = x_6826;
}
lean_ctor_set(x_6827, 0, x_6824);
lean_ctor_set(x_6827, 1, x_6825);
return x_6827;
}
}
}
else
{
lean_object* x_6861; lean_object* x_6862; lean_object* x_6863; lean_object* x_6864; 
lean_dec(x_6793);
lean_dec(x_6792);
lean_dec(x_6791);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6861 = lean_ctor_get(x_6795, 0);
lean_inc(x_6861);
x_6862 = lean_ctor_get(x_6795, 1);
lean_inc(x_6862);
if (lean_is_exclusive(x_6795)) {
 lean_ctor_release(x_6795, 0);
 lean_ctor_release(x_6795, 1);
 x_6863 = x_6795;
} else {
 lean_dec_ref(x_6795);
 x_6863 = lean_box(0);
}
if (lean_is_scalar(x_6863)) {
 x_6864 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6864 = x_6863;
}
lean_ctor_set(x_6864, 0, x_6861);
lean_ctor_set(x_6864, 1, x_6862);
return x_6864;
}
}
else
{
lean_object* x_6865; lean_object* x_6866; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6865 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6866 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6866 = x_5082;
}
lean_ctor_set(x_6866, 0, x_6865);
lean_ctor_set(x_6866, 1, x_5081);
return x_6866;
}
}
else
{
lean_object* x_6867; lean_object* x_6868; lean_object* x_6869; lean_object* x_6870; lean_object* x_6871; lean_object* x_6872; lean_object* x_6873; lean_object* x_6874; lean_object* x_6875; 
lean_dec(x_5083);
lean_dec(x_5082);
x_6867 = lean_unsigned_to_nat(2u);
x_6868 = lean_array_fget(x_6029, x_6867);
x_6869 = lean_unsigned_to_nat(3u);
x_6870 = lean_array_fget(x_6029, x_6869);
lean_dec(x_6029);
x_6871 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6872 = lean_array_push(x_6871, x_6868);
x_6873 = lean_array_push(x_6872, x_6870);
x_6874 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6875 = l_Lean_Meta_mkAppM(x_6874, x_6873, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6875) == 0)
{
lean_object* x_6876; lean_object* x_6877; lean_object* x_6878; 
x_6876 = lean_ctor_get(x_6875, 0);
lean_inc(x_6876);
x_6877 = lean_ctor_get(x_6875, 1);
lean_inc(x_6877);
lean_dec(x_6875);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6876);
x_6878 = lean_infer_type(x_6876, x_5, x_6, x_7, x_8, x_6877);
if (lean_obj_tag(x_6878) == 0)
{
lean_object* x_6879; lean_object* x_6880; lean_object* x_6881; uint8_t x_6882; 
x_6879 = lean_ctor_get(x_6878, 0);
lean_inc(x_6879);
x_6880 = lean_ctor_get(x_6878, 1);
lean_inc(x_6880);
lean_dec(x_6878);
x_6881 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_6882 = l_Lean_Expr_isAppOfArity(x_6879, x_6881, x_6869);
if (x_6882 == 0)
{
lean_object* x_6883; lean_object* x_6884; lean_object* x_6885; lean_object* x_6886; 
lean_dec(x_6879);
lean_dec(x_6876);
lean_dec(x_1);
x_6883 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_6884 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_6883, x_5, x_6, x_7, x_8, x_6880);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6885 = lean_ctor_get(x_6884, 0);
lean_inc(x_6885);
x_6886 = lean_ctor_get(x_6884, 1);
lean_inc(x_6886);
lean_dec(x_6884);
x_10 = x_6885;
x_11 = x_6886;
goto block_18;
}
else
{
lean_object* x_6887; lean_object* x_6888; lean_object* x_6889; lean_object* x_6890; 
x_6887 = l_Lean_Expr_appFn_x21(x_6879);
x_6888 = l_Lean_Expr_appArg_x21(x_6887);
lean_dec(x_6887);
x_6889 = l_Lean_Expr_appArg_x21(x_6879);
lean_dec(x_6879);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6890 = l_Lean_Meta_isExprDefEq(x_1, x_6888, x_5, x_6, x_7, x_8, x_6880);
if (lean_obj_tag(x_6890) == 0)
{
lean_object* x_6891; uint8_t x_6892; 
x_6891 = lean_ctor_get(x_6890, 0);
lean_inc(x_6891);
x_6892 = lean_unbox(x_6891);
lean_dec(x_6891);
if (x_6892 == 0)
{
lean_object* x_6893; lean_object* x_6894; lean_object* x_6895; lean_object* x_6896; lean_object* x_6897; 
lean_dec(x_6889);
lean_dec(x_6876);
x_6893 = lean_ctor_get(x_6890, 1);
lean_inc(x_6893);
lean_dec(x_6890);
x_6894 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_6895 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_6894, x_5, x_6, x_7, x_8, x_6893);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6896 = lean_ctor_get(x_6895, 0);
lean_inc(x_6896);
x_6897 = lean_ctor_get(x_6895, 1);
lean_inc(x_6897);
lean_dec(x_6895);
x_10 = x_6896;
x_11 = x_6897;
goto block_18;
}
else
{
lean_object* x_6898; lean_object* x_6899; lean_object* x_6900; uint8_t x_6901; lean_object* x_6902; lean_object* x_6903; lean_object* x_6904; lean_object* x_6905; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6898 = lean_ctor_get(x_6890, 1);
lean_inc(x_6898);
if (lean_is_exclusive(x_6890)) {
 lean_ctor_release(x_6890, 0);
 lean_ctor_release(x_6890, 1);
 x_6899 = x_6890;
} else {
 lean_dec_ref(x_6890);
 x_6899 = lean_box(0);
}
x_6900 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6900, 0, x_6876);
x_6901 = 1;
x_6902 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6902, 0, x_6889);
lean_ctor_set(x_6902, 1, x_6900);
lean_ctor_set_uint8(x_6902, sizeof(void*)*2, x_6901);
x_6903 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6903, 0, x_6902);
x_6904 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6904, 0, x_6903);
if (lean_is_scalar(x_6899)) {
 x_6905 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6905 = x_6899;
}
lean_ctor_set(x_6905, 0, x_6904);
lean_ctor_set(x_6905, 1, x_6898);
return x_6905;
}
}
else
{
lean_object* x_6906; lean_object* x_6907; 
lean_dec(x_6889);
lean_dec(x_6876);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6906 = lean_ctor_get(x_6890, 0);
lean_inc(x_6906);
x_6907 = lean_ctor_get(x_6890, 1);
lean_inc(x_6907);
lean_dec(x_6890);
x_10 = x_6906;
x_11 = x_6907;
goto block_18;
}
}
}
else
{
lean_object* x_6908; lean_object* x_6909; 
lean_dec(x_6876);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_6908 = lean_ctor_get(x_6878, 0);
lean_inc(x_6908);
x_6909 = lean_ctor_get(x_6878, 1);
lean_inc(x_6909);
lean_dec(x_6878);
x_10 = x_6908;
x_11 = x_6909;
goto block_18;
}
}
else
{
lean_object* x_6910; lean_object* x_6911; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_6910 = lean_ctor_get(x_6875, 0);
lean_inc(x_6910);
x_6911 = lean_ctor_get(x_6875, 1);
lean_inc(x_6911);
lean_dec(x_6875);
x_10 = x_6910;
x_11 = x_6911;
goto block_18;
}
}
}
}
}
else
{
lean_object* x_6912; uint8_t x_6913; 
lean_dec(x_6031);
x_6912 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53;
x_6913 = lean_string_dec_eq(x_6030, x_6912);
lean_dec(x_6030);
if (x_6913 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6914; lean_object* x_6915; lean_object* x_6916; uint8_t x_6917; lean_object* x_6918; 
lean_dec(x_5082);
x_6914 = lean_ctor_get(x_5083, 0);
lean_inc(x_6914);
x_6915 = lean_ctor_get(x_5083, 1);
lean_inc(x_6915);
x_6916 = lean_ctor_get(x_5083, 2);
lean_inc(x_6916);
x_6917 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6915);
x_6918 = l_Lean_Meta_isProp(x_6915, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6918) == 0)
{
lean_object* x_6919; lean_object* x_6920; lean_object* x_6921; uint8_t x_6952; 
x_6919 = lean_ctor_get(x_6918, 0);
lean_inc(x_6919);
x_6920 = lean_ctor_get(x_6918, 1);
lean_inc(x_6920);
lean_dec(x_6918);
x_6952 = lean_unbox(x_6919);
lean_dec(x_6919);
if (x_6952 == 0)
{
lean_object* x_6953; 
x_6953 = lean_box(0);
x_6921 = x_6953;
goto block_6951;
}
else
{
uint8_t x_6954; 
x_6954 = l_Lean_Expr_hasLooseBVars(x_6916);
if (x_6954 == 0)
{
lean_object* x_6955; lean_object* x_6956; lean_object* x_6957; lean_object* x_6958; lean_object* x_6959; lean_object* x_6960; 
lean_dec(x_6914);
lean_inc(x_6916);
x_6955 = l_Lean_mkNot(x_6916);
x_6956 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_6957 = lean_array_push(x_6956, x_6915);
lean_inc(x_6957);
x_6958 = lean_array_push(x_6957, x_6955);
x_6959 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6960 = l_Lean_Meta_mkAppM(x_6959, x_6958, x_5, x_6, x_7, x_8, x_6920);
if (lean_obj_tag(x_6960) == 0)
{
lean_object* x_6961; lean_object* x_6962; lean_object* x_6963; lean_object* x_6964; lean_object* x_6965; 
x_6961 = lean_ctor_get(x_6960, 0);
lean_inc(x_6961);
x_6962 = lean_ctor_get(x_6960, 1);
lean_inc(x_6962);
lean_dec(x_6960);
x_6963 = lean_array_push(x_6957, x_6916);
x_6964 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_6965 = l_Lean_Meta_mkAppM(x_6964, x_6963, x_5, x_6, x_7, x_8, x_6962);
if (lean_obj_tag(x_6965) == 0)
{
lean_object* x_6966; lean_object* x_6967; lean_object* x_6968; lean_object* x_6969; uint8_t x_6970; lean_object* x_6971; lean_object* x_6972; lean_object* x_6973; lean_object* x_6974; 
x_6966 = lean_ctor_get(x_6965, 0);
lean_inc(x_6966);
x_6967 = lean_ctor_get(x_6965, 1);
lean_inc(x_6967);
if (lean_is_exclusive(x_6965)) {
 lean_ctor_release(x_6965, 0);
 lean_ctor_release(x_6965, 1);
 x_6968 = x_6965;
} else {
 lean_dec_ref(x_6965);
 x_6968 = lean_box(0);
}
x_6969 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6969, 0, x_6966);
x_6970 = 1;
x_6971 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6971, 0, x_6961);
lean_ctor_set(x_6971, 1, x_6969);
lean_ctor_set_uint8(x_6971, sizeof(void*)*2, x_6970);
x_6972 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6972, 0, x_6971);
x_6973 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6973, 0, x_6972);
if (lean_is_scalar(x_6968)) {
 x_6974 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6974 = x_6968;
}
lean_ctor_set(x_6974, 0, x_6973);
lean_ctor_set(x_6974, 1, x_6967);
return x_6974;
}
else
{
lean_object* x_6975; lean_object* x_6976; lean_object* x_6977; lean_object* x_6978; 
lean_dec(x_6961);
x_6975 = lean_ctor_get(x_6965, 0);
lean_inc(x_6975);
x_6976 = lean_ctor_get(x_6965, 1);
lean_inc(x_6976);
if (lean_is_exclusive(x_6965)) {
 lean_ctor_release(x_6965, 0);
 lean_ctor_release(x_6965, 1);
 x_6977 = x_6965;
} else {
 lean_dec_ref(x_6965);
 x_6977 = lean_box(0);
}
if (lean_is_scalar(x_6977)) {
 x_6978 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6978 = x_6977;
}
lean_ctor_set(x_6978, 0, x_6975);
lean_ctor_set(x_6978, 1, x_6976);
return x_6978;
}
}
else
{
lean_object* x_6979; lean_object* x_6980; lean_object* x_6981; lean_object* x_6982; 
lean_dec(x_6957);
lean_dec(x_6916);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6979 = lean_ctor_get(x_6960, 0);
lean_inc(x_6979);
x_6980 = lean_ctor_get(x_6960, 1);
lean_inc(x_6980);
if (lean_is_exclusive(x_6960)) {
 lean_ctor_release(x_6960, 0);
 lean_ctor_release(x_6960, 1);
 x_6981 = x_6960;
} else {
 lean_dec_ref(x_6960);
 x_6981 = lean_box(0);
}
if (lean_is_scalar(x_6981)) {
 x_6982 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6982 = x_6981;
}
lean_ctor_set(x_6982, 0, x_6979);
lean_ctor_set(x_6982, 1, x_6980);
return x_6982;
}
}
else
{
lean_object* x_6983; 
x_6983 = lean_box(0);
x_6921 = x_6983;
goto block_6951;
}
}
block_6951:
{
lean_object* x_6922; lean_object* x_6923; lean_object* x_6924; lean_object* x_6925; lean_object* x_6926; lean_object* x_6927; lean_object* x_6928; 
lean_dec(x_6921);
lean_inc(x_6916);
x_6922 = l_Lean_mkNot(x_6916);
lean_inc(x_6915);
lean_inc(x_6914);
x_6923 = l_Lean_Expr_lam___override(x_6914, x_6915, x_6922, x_6917);
x_6924 = l_Lean_Expr_lam___override(x_6914, x_6915, x_6916, x_6917);
x_6925 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_6926 = lean_array_push(x_6925, x_6923);
x_6927 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_6928 = l_Lean_Meta_mkAppM(x_6927, x_6926, x_5, x_6, x_7, x_8, x_6920);
if (lean_obj_tag(x_6928) == 0)
{
lean_object* x_6929; lean_object* x_6930; lean_object* x_6931; lean_object* x_6932; lean_object* x_6933; 
x_6929 = lean_ctor_get(x_6928, 0);
lean_inc(x_6929);
x_6930 = lean_ctor_get(x_6928, 1);
lean_inc(x_6930);
lean_dec(x_6928);
x_6931 = lean_array_push(x_6925, x_6924);
x_6932 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_6933 = l_Lean_Meta_mkAppM(x_6932, x_6931, x_5, x_6, x_7, x_8, x_6930);
if (lean_obj_tag(x_6933) == 0)
{
lean_object* x_6934; lean_object* x_6935; lean_object* x_6936; lean_object* x_6937; uint8_t x_6938; lean_object* x_6939; lean_object* x_6940; lean_object* x_6941; lean_object* x_6942; 
x_6934 = lean_ctor_get(x_6933, 0);
lean_inc(x_6934);
x_6935 = lean_ctor_get(x_6933, 1);
lean_inc(x_6935);
if (lean_is_exclusive(x_6933)) {
 lean_ctor_release(x_6933, 0);
 lean_ctor_release(x_6933, 1);
 x_6936 = x_6933;
} else {
 lean_dec_ref(x_6933);
 x_6936 = lean_box(0);
}
x_6937 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6937, 0, x_6934);
x_6938 = 1;
x_6939 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_6939, 0, x_6929);
lean_ctor_set(x_6939, 1, x_6937);
lean_ctor_set_uint8(x_6939, sizeof(void*)*2, x_6938);
x_6940 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6940, 0, x_6939);
x_6941 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6941, 0, x_6940);
if (lean_is_scalar(x_6936)) {
 x_6942 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6942 = x_6936;
}
lean_ctor_set(x_6942, 0, x_6941);
lean_ctor_set(x_6942, 1, x_6935);
return x_6942;
}
else
{
lean_object* x_6943; lean_object* x_6944; lean_object* x_6945; lean_object* x_6946; 
lean_dec(x_6929);
x_6943 = lean_ctor_get(x_6933, 0);
lean_inc(x_6943);
x_6944 = lean_ctor_get(x_6933, 1);
lean_inc(x_6944);
if (lean_is_exclusive(x_6933)) {
 lean_ctor_release(x_6933, 0);
 lean_ctor_release(x_6933, 1);
 x_6945 = x_6933;
} else {
 lean_dec_ref(x_6933);
 x_6945 = lean_box(0);
}
if (lean_is_scalar(x_6945)) {
 x_6946 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6946 = x_6945;
}
lean_ctor_set(x_6946, 0, x_6943);
lean_ctor_set(x_6946, 1, x_6944);
return x_6946;
}
}
else
{
lean_object* x_6947; lean_object* x_6948; lean_object* x_6949; lean_object* x_6950; 
lean_dec(x_6924);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6947 = lean_ctor_get(x_6928, 0);
lean_inc(x_6947);
x_6948 = lean_ctor_get(x_6928, 1);
lean_inc(x_6948);
if (lean_is_exclusive(x_6928)) {
 lean_ctor_release(x_6928, 0);
 lean_ctor_release(x_6928, 1);
 x_6949 = x_6928;
} else {
 lean_dec_ref(x_6928);
 x_6949 = lean_box(0);
}
if (lean_is_scalar(x_6949)) {
 x_6950 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6950 = x_6949;
}
lean_ctor_set(x_6950, 0, x_6947);
lean_ctor_set(x_6950, 1, x_6948);
return x_6950;
}
}
}
else
{
lean_object* x_6984; lean_object* x_6985; lean_object* x_6986; lean_object* x_6987; 
lean_dec(x_6916);
lean_dec(x_6915);
lean_dec(x_6914);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6984 = lean_ctor_get(x_6918, 0);
lean_inc(x_6984);
x_6985 = lean_ctor_get(x_6918, 1);
lean_inc(x_6985);
if (lean_is_exclusive(x_6918)) {
 lean_ctor_release(x_6918, 0);
 lean_ctor_release(x_6918, 1);
 x_6986 = x_6918;
} else {
 lean_dec_ref(x_6918);
 x_6986 = lean_box(0);
}
if (lean_is_scalar(x_6986)) {
 x_6987 = lean_alloc_ctor(1, 2, 0);
} else {
 x_6987 = x_6986;
}
lean_ctor_set(x_6987, 0, x_6984);
lean_ctor_set(x_6987, 1, x_6985);
return x_6987;
}
}
else
{
lean_object* x_6988; lean_object* x_6989; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_6988 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_6989 = lean_alloc_ctor(0, 2, 0);
} else {
 x_6989 = x_5082;
}
lean_ctor_set(x_6989, 0, x_6988);
lean_ctor_set(x_6989, 1, x_5081);
return x_6989;
}
}
else
{
lean_object* x_6990; lean_object* x_6991; uint8_t x_6992; 
x_6990 = lean_array_get_size(x_6029);
x_6991 = lean_unsigned_to_nat(4u);
x_6992 = lean_nat_dec_eq(x_6990, x_6991);
lean_dec(x_6990);
if (x_6992 == 0)
{
lean_dec(x_6029);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_6993; lean_object* x_6994; lean_object* x_6995; uint8_t x_6996; lean_object* x_6997; 
lean_dec(x_5082);
x_6993 = lean_ctor_get(x_5083, 0);
lean_inc(x_6993);
x_6994 = lean_ctor_get(x_5083, 1);
lean_inc(x_6994);
x_6995 = lean_ctor_get(x_5083, 2);
lean_inc(x_6995);
x_6996 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_6994);
x_6997 = l_Lean_Meta_isProp(x_6994, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_6997) == 0)
{
lean_object* x_6998; lean_object* x_6999; lean_object* x_7000; uint8_t x_7031; 
x_6998 = lean_ctor_get(x_6997, 0);
lean_inc(x_6998);
x_6999 = lean_ctor_get(x_6997, 1);
lean_inc(x_6999);
lean_dec(x_6997);
x_7031 = lean_unbox(x_6998);
lean_dec(x_6998);
if (x_7031 == 0)
{
lean_object* x_7032; 
x_7032 = lean_box(0);
x_7000 = x_7032;
goto block_7030;
}
else
{
uint8_t x_7033; 
x_7033 = l_Lean_Expr_hasLooseBVars(x_6995);
if (x_7033 == 0)
{
lean_object* x_7034; lean_object* x_7035; lean_object* x_7036; lean_object* x_7037; lean_object* x_7038; lean_object* x_7039; 
lean_dec(x_6993);
lean_inc(x_6995);
x_7034 = l_Lean_mkNot(x_6995);
x_7035 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_7036 = lean_array_push(x_7035, x_6994);
lean_inc(x_7036);
x_7037 = lean_array_push(x_7036, x_7034);
x_7038 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7039 = l_Lean_Meta_mkAppM(x_7038, x_7037, x_5, x_6, x_7, x_8, x_6999);
if (lean_obj_tag(x_7039) == 0)
{
lean_object* x_7040; lean_object* x_7041; lean_object* x_7042; lean_object* x_7043; lean_object* x_7044; 
x_7040 = lean_ctor_get(x_7039, 0);
lean_inc(x_7040);
x_7041 = lean_ctor_get(x_7039, 1);
lean_inc(x_7041);
lean_dec(x_7039);
x_7042 = lean_array_push(x_7036, x_6995);
x_7043 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_7044 = l_Lean_Meta_mkAppM(x_7043, x_7042, x_5, x_6, x_7, x_8, x_7041);
if (lean_obj_tag(x_7044) == 0)
{
lean_object* x_7045; lean_object* x_7046; lean_object* x_7047; lean_object* x_7048; uint8_t x_7049; lean_object* x_7050; lean_object* x_7051; lean_object* x_7052; lean_object* x_7053; 
x_7045 = lean_ctor_get(x_7044, 0);
lean_inc(x_7045);
x_7046 = lean_ctor_get(x_7044, 1);
lean_inc(x_7046);
if (lean_is_exclusive(x_7044)) {
 lean_ctor_release(x_7044, 0);
 lean_ctor_release(x_7044, 1);
 x_7047 = x_7044;
} else {
 lean_dec_ref(x_7044);
 x_7047 = lean_box(0);
}
x_7048 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7048, 0, x_7045);
x_7049 = 1;
x_7050 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7050, 0, x_7040);
lean_ctor_set(x_7050, 1, x_7048);
lean_ctor_set_uint8(x_7050, sizeof(void*)*2, x_7049);
x_7051 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7051, 0, x_7050);
x_7052 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7052, 0, x_7051);
if (lean_is_scalar(x_7047)) {
 x_7053 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7053 = x_7047;
}
lean_ctor_set(x_7053, 0, x_7052);
lean_ctor_set(x_7053, 1, x_7046);
return x_7053;
}
else
{
lean_object* x_7054; lean_object* x_7055; lean_object* x_7056; lean_object* x_7057; 
lean_dec(x_7040);
x_7054 = lean_ctor_get(x_7044, 0);
lean_inc(x_7054);
x_7055 = lean_ctor_get(x_7044, 1);
lean_inc(x_7055);
if (lean_is_exclusive(x_7044)) {
 lean_ctor_release(x_7044, 0);
 lean_ctor_release(x_7044, 1);
 x_7056 = x_7044;
} else {
 lean_dec_ref(x_7044);
 x_7056 = lean_box(0);
}
if (lean_is_scalar(x_7056)) {
 x_7057 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7057 = x_7056;
}
lean_ctor_set(x_7057, 0, x_7054);
lean_ctor_set(x_7057, 1, x_7055);
return x_7057;
}
}
else
{
lean_object* x_7058; lean_object* x_7059; lean_object* x_7060; lean_object* x_7061; 
lean_dec(x_7036);
lean_dec(x_6995);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7058 = lean_ctor_get(x_7039, 0);
lean_inc(x_7058);
x_7059 = lean_ctor_get(x_7039, 1);
lean_inc(x_7059);
if (lean_is_exclusive(x_7039)) {
 lean_ctor_release(x_7039, 0);
 lean_ctor_release(x_7039, 1);
 x_7060 = x_7039;
} else {
 lean_dec_ref(x_7039);
 x_7060 = lean_box(0);
}
if (lean_is_scalar(x_7060)) {
 x_7061 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7061 = x_7060;
}
lean_ctor_set(x_7061, 0, x_7058);
lean_ctor_set(x_7061, 1, x_7059);
return x_7061;
}
}
else
{
lean_object* x_7062; 
x_7062 = lean_box(0);
x_7000 = x_7062;
goto block_7030;
}
}
block_7030:
{
lean_object* x_7001; lean_object* x_7002; lean_object* x_7003; lean_object* x_7004; lean_object* x_7005; lean_object* x_7006; lean_object* x_7007; 
lean_dec(x_7000);
lean_inc(x_6995);
x_7001 = l_Lean_mkNot(x_6995);
lean_inc(x_6994);
lean_inc(x_6993);
x_7002 = l_Lean_Expr_lam___override(x_6993, x_6994, x_7001, x_6996);
x_7003 = l_Lean_Expr_lam___override(x_6993, x_6994, x_6995, x_6996);
x_7004 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_7005 = lean_array_push(x_7004, x_7002);
x_7006 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7007 = l_Lean_Meta_mkAppM(x_7006, x_7005, x_5, x_6, x_7, x_8, x_6999);
if (lean_obj_tag(x_7007) == 0)
{
lean_object* x_7008; lean_object* x_7009; lean_object* x_7010; lean_object* x_7011; lean_object* x_7012; 
x_7008 = lean_ctor_get(x_7007, 0);
lean_inc(x_7008);
x_7009 = lean_ctor_get(x_7007, 1);
lean_inc(x_7009);
lean_dec(x_7007);
x_7010 = lean_array_push(x_7004, x_7003);
x_7011 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_7012 = l_Lean_Meta_mkAppM(x_7011, x_7010, x_5, x_6, x_7, x_8, x_7009);
if (lean_obj_tag(x_7012) == 0)
{
lean_object* x_7013; lean_object* x_7014; lean_object* x_7015; lean_object* x_7016; uint8_t x_7017; lean_object* x_7018; lean_object* x_7019; lean_object* x_7020; lean_object* x_7021; 
x_7013 = lean_ctor_get(x_7012, 0);
lean_inc(x_7013);
x_7014 = lean_ctor_get(x_7012, 1);
lean_inc(x_7014);
if (lean_is_exclusive(x_7012)) {
 lean_ctor_release(x_7012, 0);
 lean_ctor_release(x_7012, 1);
 x_7015 = x_7012;
} else {
 lean_dec_ref(x_7012);
 x_7015 = lean_box(0);
}
x_7016 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7016, 0, x_7013);
x_7017 = 1;
x_7018 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7018, 0, x_7008);
lean_ctor_set(x_7018, 1, x_7016);
lean_ctor_set_uint8(x_7018, sizeof(void*)*2, x_7017);
x_7019 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7019, 0, x_7018);
x_7020 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7020, 0, x_7019);
if (lean_is_scalar(x_7015)) {
 x_7021 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7021 = x_7015;
}
lean_ctor_set(x_7021, 0, x_7020);
lean_ctor_set(x_7021, 1, x_7014);
return x_7021;
}
else
{
lean_object* x_7022; lean_object* x_7023; lean_object* x_7024; lean_object* x_7025; 
lean_dec(x_7008);
x_7022 = lean_ctor_get(x_7012, 0);
lean_inc(x_7022);
x_7023 = lean_ctor_get(x_7012, 1);
lean_inc(x_7023);
if (lean_is_exclusive(x_7012)) {
 lean_ctor_release(x_7012, 0);
 lean_ctor_release(x_7012, 1);
 x_7024 = x_7012;
} else {
 lean_dec_ref(x_7012);
 x_7024 = lean_box(0);
}
if (lean_is_scalar(x_7024)) {
 x_7025 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7025 = x_7024;
}
lean_ctor_set(x_7025, 0, x_7022);
lean_ctor_set(x_7025, 1, x_7023);
return x_7025;
}
}
else
{
lean_object* x_7026; lean_object* x_7027; lean_object* x_7028; lean_object* x_7029; 
lean_dec(x_7003);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7026 = lean_ctor_get(x_7007, 0);
lean_inc(x_7026);
x_7027 = lean_ctor_get(x_7007, 1);
lean_inc(x_7027);
if (lean_is_exclusive(x_7007)) {
 lean_ctor_release(x_7007, 0);
 lean_ctor_release(x_7007, 1);
 x_7028 = x_7007;
} else {
 lean_dec_ref(x_7007);
 x_7028 = lean_box(0);
}
if (lean_is_scalar(x_7028)) {
 x_7029 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7029 = x_7028;
}
lean_ctor_set(x_7029, 0, x_7026);
lean_ctor_set(x_7029, 1, x_7027);
return x_7029;
}
}
}
else
{
lean_object* x_7063; lean_object* x_7064; lean_object* x_7065; lean_object* x_7066; 
lean_dec(x_6995);
lean_dec(x_6994);
lean_dec(x_6993);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7063 = lean_ctor_get(x_6997, 0);
lean_inc(x_7063);
x_7064 = lean_ctor_get(x_6997, 1);
lean_inc(x_7064);
if (lean_is_exclusive(x_6997)) {
 lean_ctor_release(x_6997, 0);
 lean_ctor_release(x_6997, 1);
 x_7065 = x_6997;
} else {
 lean_dec_ref(x_6997);
 x_7065 = lean_box(0);
}
if (lean_is_scalar(x_7065)) {
 x_7066 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7066 = x_7065;
}
lean_ctor_set(x_7066, 0, x_7063);
lean_ctor_set(x_7066, 1, x_7064);
return x_7066;
}
}
else
{
lean_object* x_7067; lean_object* x_7068; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7067 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_7068 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7068 = x_5082;
}
lean_ctor_set(x_7068, 0, x_7067);
lean_ctor_set(x_7068, 1, x_5081);
return x_7068;
}
}
else
{
lean_object* x_7069; lean_object* x_7070; lean_object* x_7071; lean_object* x_7072; lean_object* x_7073; lean_object* x_7074; lean_object* x_7075; lean_object* x_7076; lean_object* x_7077; 
lean_dec(x_5083);
lean_dec(x_5082);
x_7069 = lean_unsigned_to_nat(2u);
x_7070 = lean_array_fget(x_6029, x_7069);
x_7071 = lean_unsigned_to_nat(3u);
x_7072 = lean_array_fget(x_6029, x_7071);
lean_dec(x_6029);
x_7073 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_7074 = lean_array_push(x_7073, x_7070);
x_7075 = lean_array_push(x_7074, x_7072);
x_7076 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7077 = l_Lean_Meta_mkAppM(x_7076, x_7075, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_7077) == 0)
{
lean_object* x_7078; lean_object* x_7079; lean_object* x_7080; 
x_7078 = lean_ctor_get(x_7077, 0);
lean_inc(x_7078);
x_7079 = lean_ctor_get(x_7077, 1);
lean_inc(x_7079);
lean_dec(x_7077);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_7078);
x_7080 = lean_infer_type(x_7078, x_5, x_6, x_7, x_8, x_7079);
if (lean_obj_tag(x_7080) == 0)
{
lean_object* x_7081; lean_object* x_7082; lean_object* x_7083; uint8_t x_7084; 
x_7081 = lean_ctor_get(x_7080, 0);
lean_inc(x_7081);
x_7082 = lean_ctor_get(x_7080, 1);
lean_inc(x_7082);
lean_dec(x_7080);
x_7083 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8;
x_7084 = l_Lean_Expr_isAppOfArity(x_7081, x_7083, x_7071);
if (x_7084 == 0)
{
lean_object* x_7085; lean_object* x_7086; lean_object* x_7087; lean_object* x_7088; 
lean_dec(x_7081);
lean_dec(x_7078);
lean_dec(x_1);
x_7085 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_7086 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_7085, x_5, x_6, x_7, x_8, x_7082);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7087 = lean_ctor_get(x_7086, 0);
lean_inc(x_7087);
x_7088 = lean_ctor_get(x_7086, 1);
lean_inc(x_7088);
lean_dec(x_7086);
x_10 = x_7087;
x_11 = x_7088;
goto block_18;
}
else
{
lean_object* x_7089; lean_object* x_7090; lean_object* x_7091; lean_object* x_7092; 
x_7089 = l_Lean_Expr_appFn_x21(x_7081);
x_7090 = l_Lean_Expr_appArg_x21(x_7089);
lean_dec(x_7089);
x_7091 = l_Lean_Expr_appArg_x21(x_7081);
lean_dec(x_7081);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7092 = l_Lean_Meta_isExprDefEq(x_1, x_7090, x_5, x_6, x_7, x_8, x_7082);
if (lean_obj_tag(x_7092) == 0)
{
lean_object* x_7093; uint8_t x_7094; 
x_7093 = lean_ctor_get(x_7092, 0);
lean_inc(x_7093);
x_7094 = lean_unbox(x_7093);
lean_dec(x_7093);
if (x_7094 == 0)
{
lean_object* x_7095; lean_object* x_7096; lean_object* x_7097; lean_object* x_7098; lean_object* x_7099; 
lean_dec(x_7091);
lean_dec(x_7078);
x_7095 = lean_ctor_get(x_7092, 1);
lean_inc(x_7095);
lean_dec(x_7092);
x_7096 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_7097 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_7096, x_5, x_6, x_7, x_8, x_7095);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7098 = lean_ctor_get(x_7097, 0);
lean_inc(x_7098);
x_7099 = lean_ctor_get(x_7097, 1);
lean_inc(x_7099);
lean_dec(x_7097);
x_10 = x_7098;
x_11 = x_7099;
goto block_18;
}
else
{
lean_object* x_7100; lean_object* x_7101; lean_object* x_7102; uint8_t x_7103; lean_object* x_7104; lean_object* x_7105; lean_object* x_7106; lean_object* x_7107; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7100 = lean_ctor_get(x_7092, 1);
lean_inc(x_7100);
if (lean_is_exclusive(x_7092)) {
 lean_ctor_release(x_7092, 0);
 lean_ctor_release(x_7092, 1);
 x_7101 = x_7092;
} else {
 lean_dec_ref(x_7092);
 x_7101 = lean_box(0);
}
x_7102 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7102, 0, x_7078);
x_7103 = 1;
x_7104 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7104, 0, x_7091);
lean_ctor_set(x_7104, 1, x_7102);
lean_ctor_set_uint8(x_7104, sizeof(void*)*2, x_7103);
x_7105 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7105, 0, x_7104);
x_7106 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7106, 0, x_7105);
if (lean_is_scalar(x_7101)) {
 x_7107 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7107 = x_7101;
}
lean_ctor_set(x_7107, 0, x_7106);
lean_ctor_set(x_7107, 1, x_7100);
return x_7107;
}
}
else
{
lean_object* x_7108; lean_object* x_7109; 
lean_dec(x_7091);
lean_dec(x_7078);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7108 = lean_ctor_get(x_7092, 0);
lean_inc(x_7108);
x_7109 = lean_ctor_get(x_7092, 1);
lean_inc(x_7109);
lean_dec(x_7092);
x_10 = x_7108;
x_11 = x_7109;
goto block_18;
}
}
}
else
{
lean_object* x_7110; lean_object* x_7111; 
lean_dec(x_7078);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_7110 = lean_ctor_get(x_7080, 0);
lean_inc(x_7110);
x_7111 = lean_ctor_get(x_7080, 1);
lean_inc(x_7111);
lean_dec(x_7080);
x_10 = x_7110;
x_11 = x_7111;
goto block_18;
}
}
else
{
lean_object* x_7112; lean_object* x_7113; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_7112 = lean_ctor_get(x_7077, 0);
lean_inc(x_7112);
x_7113 = lean_ctor_get(x_7077, 1);
lean_inc(x_7113);
lean_dec(x_7077);
x_10 = x_7112;
x_11 = x_7113;
goto block_18;
}
}
}
}
}
case 1:
{
lean_dec(x_6028);
lean_dec(x_5162);
lean_dec(x_5085);
lean_dec(x_5084);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_7114; lean_object* x_7115; lean_object* x_7116; uint8_t x_7117; lean_object* x_7118; 
lean_dec(x_5082);
x_7114 = lean_ctor_get(x_5083, 0);
lean_inc(x_7114);
x_7115 = lean_ctor_get(x_5083, 1);
lean_inc(x_7115);
x_7116 = lean_ctor_get(x_5083, 2);
lean_inc(x_7116);
x_7117 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_7115);
x_7118 = l_Lean_Meta_isProp(x_7115, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_7118) == 0)
{
lean_object* x_7119; lean_object* x_7120; lean_object* x_7121; uint8_t x_7152; 
x_7119 = lean_ctor_get(x_7118, 0);
lean_inc(x_7119);
x_7120 = lean_ctor_get(x_7118, 1);
lean_inc(x_7120);
lean_dec(x_7118);
x_7152 = lean_unbox(x_7119);
lean_dec(x_7119);
if (x_7152 == 0)
{
lean_object* x_7153; 
x_7153 = lean_box(0);
x_7121 = x_7153;
goto block_7151;
}
else
{
uint8_t x_7154; 
x_7154 = l_Lean_Expr_hasLooseBVars(x_7116);
if (x_7154 == 0)
{
lean_object* x_7155; lean_object* x_7156; lean_object* x_7157; lean_object* x_7158; lean_object* x_7159; lean_object* x_7160; 
lean_dec(x_7114);
lean_inc(x_7116);
x_7155 = l_Lean_mkNot(x_7116);
x_7156 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_7157 = lean_array_push(x_7156, x_7115);
lean_inc(x_7157);
x_7158 = lean_array_push(x_7157, x_7155);
x_7159 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7160 = l_Lean_Meta_mkAppM(x_7159, x_7158, x_5, x_6, x_7, x_8, x_7120);
if (lean_obj_tag(x_7160) == 0)
{
lean_object* x_7161; lean_object* x_7162; lean_object* x_7163; lean_object* x_7164; lean_object* x_7165; 
x_7161 = lean_ctor_get(x_7160, 0);
lean_inc(x_7161);
x_7162 = lean_ctor_get(x_7160, 1);
lean_inc(x_7162);
lean_dec(x_7160);
x_7163 = lean_array_push(x_7157, x_7116);
x_7164 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_7165 = l_Lean_Meta_mkAppM(x_7164, x_7163, x_5, x_6, x_7, x_8, x_7162);
if (lean_obj_tag(x_7165) == 0)
{
lean_object* x_7166; lean_object* x_7167; lean_object* x_7168; lean_object* x_7169; uint8_t x_7170; lean_object* x_7171; lean_object* x_7172; lean_object* x_7173; lean_object* x_7174; 
x_7166 = lean_ctor_get(x_7165, 0);
lean_inc(x_7166);
x_7167 = lean_ctor_get(x_7165, 1);
lean_inc(x_7167);
if (lean_is_exclusive(x_7165)) {
 lean_ctor_release(x_7165, 0);
 lean_ctor_release(x_7165, 1);
 x_7168 = x_7165;
} else {
 lean_dec_ref(x_7165);
 x_7168 = lean_box(0);
}
x_7169 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7169, 0, x_7166);
x_7170 = 1;
x_7171 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7171, 0, x_7161);
lean_ctor_set(x_7171, 1, x_7169);
lean_ctor_set_uint8(x_7171, sizeof(void*)*2, x_7170);
x_7172 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7172, 0, x_7171);
x_7173 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7173, 0, x_7172);
if (lean_is_scalar(x_7168)) {
 x_7174 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7174 = x_7168;
}
lean_ctor_set(x_7174, 0, x_7173);
lean_ctor_set(x_7174, 1, x_7167);
return x_7174;
}
else
{
lean_object* x_7175; lean_object* x_7176; lean_object* x_7177; lean_object* x_7178; 
lean_dec(x_7161);
x_7175 = lean_ctor_get(x_7165, 0);
lean_inc(x_7175);
x_7176 = lean_ctor_get(x_7165, 1);
lean_inc(x_7176);
if (lean_is_exclusive(x_7165)) {
 lean_ctor_release(x_7165, 0);
 lean_ctor_release(x_7165, 1);
 x_7177 = x_7165;
} else {
 lean_dec_ref(x_7165);
 x_7177 = lean_box(0);
}
if (lean_is_scalar(x_7177)) {
 x_7178 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7178 = x_7177;
}
lean_ctor_set(x_7178, 0, x_7175);
lean_ctor_set(x_7178, 1, x_7176);
return x_7178;
}
}
else
{
lean_object* x_7179; lean_object* x_7180; lean_object* x_7181; lean_object* x_7182; 
lean_dec(x_7157);
lean_dec(x_7116);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7179 = lean_ctor_get(x_7160, 0);
lean_inc(x_7179);
x_7180 = lean_ctor_get(x_7160, 1);
lean_inc(x_7180);
if (lean_is_exclusive(x_7160)) {
 lean_ctor_release(x_7160, 0);
 lean_ctor_release(x_7160, 1);
 x_7181 = x_7160;
} else {
 lean_dec_ref(x_7160);
 x_7181 = lean_box(0);
}
if (lean_is_scalar(x_7181)) {
 x_7182 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7182 = x_7181;
}
lean_ctor_set(x_7182, 0, x_7179);
lean_ctor_set(x_7182, 1, x_7180);
return x_7182;
}
}
else
{
lean_object* x_7183; 
x_7183 = lean_box(0);
x_7121 = x_7183;
goto block_7151;
}
}
block_7151:
{
lean_object* x_7122; lean_object* x_7123; lean_object* x_7124; lean_object* x_7125; lean_object* x_7126; lean_object* x_7127; lean_object* x_7128; 
lean_dec(x_7121);
lean_inc(x_7116);
x_7122 = l_Lean_mkNot(x_7116);
lean_inc(x_7115);
lean_inc(x_7114);
x_7123 = l_Lean_Expr_lam___override(x_7114, x_7115, x_7122, x_7117);
x_7124 = l_Lean_Expr_lam___override(x_7114, x_7115, x_7116, x_7117);
x_7125 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_7126 = lean_array_push(x_7125, x_7123);
x_7127 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7128 = l_Lean_Meta_mkAppM(x_7127, x_7126, x_5, x_6, x_7, x_8, x_7120);
if (lean_obj_tag(x_7128) == 0)
{
lean_object* x_7129; lean_object* x_7130; lean_object* x_7131; lean_object* x_7132; lean_object* x_7133; 
x_7129 = lean_ctor_get(x_7128, 0);
lean_inc(x_7129);
x_7130 = lean_ctor_get(x_7128, 1);
lean_inc(x_7130);
lean_dec(x_7128);
x_7131 = lean_array_push(x_7125, x_7124);
x_7132 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_7133 = l_Lean_Meta_mkAppM(x_7132, x_7131, x_5, x_6, x_7, x_8, x_7130);
if (lean_obj_tag(x_7133) == 0)
{
lean_object* x_7134; lean_object* x_7135; lean_object* x_7136; lean_object* x_7137; uint8_t x_7138; lean_object* x_7139; lean_object* x_7140; lean_object* x_7141; lean_object* x_7142; 
x_7134 = lean_ctor_get(x_7133, 0);
lean_inc(x_7134);
x_7135 = lean_ctor_get(x_7133, 1);
lean_inc(x_7135);
if (lean_is_exclusive(x_7133)) {
 lean_ctor_release(x_7133, 0);
 lean_ctor_release(x_7133, 1);
 x_7136 = x_7133;
} else {
 lean_dec_ref(x_7133);
 x_7136 = lean_box(0);
}
x_7137 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7137, 0, x_7134);
x_7138 = 1;
x_7139 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7139, 0, x_7129);
lean_ctor_set(x_7139, 1, x_7137);
lean_ctor_set_uint8(x_7139, sizeof(void*)*2, x_7138);
x_7140 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7140, 0, x_7139);
x_7141 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7141, 0, x_7140);
if (lean_is_scalar(x_7136)) {
 x_7142 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7142 = x_7136;
}
lean_ctor_set(x_7142, 0, x_7141);
lean_ctor_set(x_7142, 1, x_7135);
return x_7142;
}
else
{
lean_object* x_7143; lean_object* x_7144; lean_object* x_7145; lean_object* x_7146; 
lean_dec(x_7129);
x_7143 = lean_ctor_get(x_7133, 0);
lean_inc(x_7143);
x_7144 = lean_ctor_get(x_7133, 1);
lean_inc(x_7144);
if (lean_is_exclusive(x_7133)) {
 lean_ctor_release(x_7133, 0);
 lean_ctor_release(x_7133, 1);
 x_7145 = x_7133;
} else {
 lean_dec_ref(x_7133);
 x_7145 = lean_box(0);
}
if (lean_is_scalar(x_7145)) {
 x_7146 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7146 = x_7145;
}
lean_ctor_set(x_7146, 0, x_7143);
lean_ctor_set(x_7146, 1, x_7144);
return x_7146;
}
}
else
{
lean_object* x_7147; lean_object* x_7148; lean_object* x_7149; lean_object* x_7150; 
lean_dec(x_7124);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7147 = lean_ctor_get(x_7128, 0);
lean_inc(x_7147);
x_7148 = lean_ctor_get(x_7128, 1);
lean_inc(x_7148);
if (lean_is_exclusive(x_7128)) {
 lean_ctor_release(x_7128, 0);
 lean_ctor_release(x_7128, 1);
 x_7149 = x_7128;
} else {
 lean_dec_ref(x_7128);
 x_7149 = lean_box(0);
}
if (lean_is_scalar(x_7149)) {
 x_7150 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7150 = x_7149;
}
lean_ctor_set(x_7150, 0, x_7147);
lean_ctor_set(x_7150, 1, x_7148);
return x_7150;
}
}
}
else
{
lean_object* x_7184; lean_object* x_7185; lean_object* x_7186; lean_object* x_7187; 
lean_dec(x_7116);
lean_dec(x_7115);
lean_dec(x_7114);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7184 = lean_ctor_get(x_7118, 0);
lean_inc(x_7184);
x_7185 = lean_ctor_get(x_7118, 1);
lean_inc(x_7185);
if (lean_is_exclusive(x_7118)) {
 lean_ctor_release(x_7118, 0);
 lean_ctor_release(x_7118, 1);
 x_7186 = x_7118;
} else {
 lean_dec_ref(x_7118);
 x_7186 = lean_box(0);
}
if (lean_is_scalar(x_7186)) {
 x_7187 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7187 = x_7186;
}
lean_ctor_set(x_7187, 0, x_7184);
lean_ctor_set(x_7187, 1, x_7185);
return x_7187;
}
}
else
{
lean_object* x_7188; lean_object* x_7189; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7188 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_7189 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7189 = x_5082;
}
lean_ctor_set(x_7189, 0, x_7188);
lean_ctor_set(x_7189, 1, x_5081);
return x_7189;
}
}
default: 
{
lean_dec(x_6028);
lean_dec(x_5162);
lean_dec(x_5085);
lean_dec(x_5084);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_7190; lean_object* x_7191; lean_object* x_7192; uint8_t x_7193; lean_object* x_7194; 
lean_dec(x_5082);
x_7190 = lean_ctor_get(x_5083, 0);
lean_inc(x_7190);
x_7191 = lean_ctor_get(x_5083, 1);
lean_inc(x_7191);
x_7192 = lean_ctor_get(x_5083, 2);
lean_inc(x_7192);
x_7193 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_7191);
x_7194 = l_Lean_Meta_isProp(x_7191, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_7194) == 0)
{
lean_object* x_7195; lean_object* x_7196; lean_object* x_7197; uint8_t x_7228; 
x_7195 = lean_ctor_get(x_7194, 0);
lean_inc(x_7195);
x_7196 = lean_ctor_get(x_7194, 1);
lean_inc(x_7196);
lean_dec(x_7194);
x_7228 = lean_unbox(x_7195);
lean_dec(x_7195);
if (x_7228 == 0)
{
lean_object* x_7229; 
x_7229 = lean_box(0);
x_7197 = x_7229;
goto block_7227;
}
else
{
uint8_t x_7230; 
x_7230 = l_Lean_Expr_hasLooseBVars(x_7192);
if (x_7230 == 0)
{
lean_object* x_7231; lean_object* x_7232; lean_object* x_7233; lean_object* x_7234; lean_object* x_7235; lean_object* x_7236; 
lean_dec(x_7190);
lean_inc(x_7192);
x_7231 = l_Lean_mkNot(x_7192);
x_7232 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_7233 = lean_array_push(x_7232, x_7191);
lean_inc(x_7233);
x_7234 = lean_array_push(x_7233, x_7231);
x_7235 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7236 = l_Lean_Meta_mkAppM(x_7235, x_7234, x_5, x_6, x_7, x_8, x_7196);
if (lean_obj_tag(x_7236) == 0)
{
lean_object* x_7237; lean_object* x_7238; lean_object* x_7239; lean_object* x_7240; lean_object* x_7241; 
x_7237 = lean_ctor_get(x_7236, 0);
lean_inc(x_7237);
x_7238 = lean_ctor_get(x_7236, 1);
lean_inc(x_7238);
lean_dec(x_7236);
x_7239 = lean_array_push(x_7233, x_7192);
x_7240 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_7241 = l_Lean_Meta_mkAppM(x_7240, x_7239, x_5, x_6, x_7, x_8, x_7238);
if (lean_obj_tag(x_7241) == 0)
{
lean_object* x_7242; lean_object* x_7243; lean_object* x_7244; lean_object* x_7245; uint8_t x_7246; lean_object* x_7247; lean_object* x_7248; lean_object* x_7249; lean_object* x_7250; 
x_7242 = lean_ctor_get(x_7241, 0);
lean_inc(x_7242);
x_7243 = lean_ctor_get(x_7241, 1);
lean_inc(x_7243);
if (lean_is_exclusive(x_7241)) {
 lean_ctor_release(x_7241, 0);
 lean_ctor_release(x_7241, 1);
 x_7244 = x_7241;
} else {
 lean_dec_ref(x_7241);
 x_7244 = lean_box(0);
}
x_7245 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7245, 0, x_7242);
x_7246 = 1;
x_7247 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7247, 0, x_7237);
lean_ctor_set(x_7247, 1, x_7245);
lean_ctor_set_uint8(x_7247, sizeof(void*)*2, x_7246);
x_7248 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7248, 0, x_7247);
x_7249 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7249, 0, x_7248);
if (lean_is_scalar(x_7244)) {
 x_7250 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7250 = x_7244;
}
lean_ctor_set(x_7250, 0, x_7249);
lean_ctor_set(x_7250, 1, x_7243);
return x_7250;
}
else
{
lean_object* x_7251; lean_object* x_7252; lean_object* x_7253; lean_object* x_7254; 
lean_dec(x_7237);
x_7251 = lean_ctor_get(x_7241, 0);
lean_inc(x_7251);
x_7252 = lean_ctor_get(x_7241, 1);
lean_inc(x_7252);
if (lean_is_exclusive(x_7241)) {
 lean_ctor_release(x_7241, 0);
 lean_ctor_release(x_7241, 1);
 x_7253 = x_7241;
} else {
 lean_dec_ref(x_7241);
 x_7253 = lean_box(0);
}
if (lean_is_scalar(x_7253)) {
 x_7254 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7254 = x_7253;
}
lean_ctor_set(x_7254, 0, x_7251);
lean_ctor_set(x_7254, 1, x_7252);
return x_7254;
}
}
else
{
lean_object* x_7255; lean_object* x_7256; lean_object* x_7257; lean_object* x_7258; 
lean_dec(x_7233);
lean_dec(x_7192);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7255 = lean_ctor_get(x_7236, 0);
lean_inc(x_7255);
x_7256 = lean_ctor_get(x_7236, 1);
lean_inc(x_7256);
if (lean_is_exclusive(x_7236)) {
 lean_ctor_release(x_7236, 0);
 lean_ctor_release(x_7236, 1);
 x_7257 = x_7236;
} else {
 lean_dec_ref(x_7236);
 x_7257 = lean_box(0);
}
if (lean_is_scalar(x_7257)) {
 x_7258 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7258 = x_7257;
}
lean_ctor_set(x_7258, 0, x_7255);
lean_ctor_set(x_7258, 1, x_7256);
return x_7258;
}
}
else
{
lean_object* x_7259; 
x_7259 = lean_box(0);
x_7197 = x_7259;
goto block_7227;
}
}
block_7227:
{
lean_object* x_7198; lean_object* x_7199; lean_object* x_7200; lean_object* x_7201; lean_object* x_7202; lean_object* x_7203; lean_object* x_7204; 
lean_dec(x_7197);
lean_inc(x_7192);
x_7198 = l_Lean_mkNot(x_7192);
lean_inc(x_7191);
lean_inc(x_7190);
x_7199 = l_Lean_Expr_lam___override(x_7190, x_7191, x_7198, x_7193);
x_7200 = l_Lean_Expr_lam___override(x_7190, x_7191, x_7192, x_7193);
x_7201 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_7202 = lean_array_push(x_7201, x_7199);
x_7203 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7204 = l_Lean_Meta_mkAppM(x_7203, x_7202, x_5, x_6, x_7, x_8, x_7196);
if (lean_obj_tag(x_7204) == 0)
{
lean_object* x_7205; lean_object* x_7206; lean_object* x_7207; lean_object* x_7208; lean_object* x_7209; 
x_7205 = lean_ctor_get(x_7204, 0);
lean_inc(x_7205);
x_7206 = lean_ctor_get(x_7204, 1);
lean_inc(x_7206);
lean_dec(x_7204);
x_7207 = lean_array_push(x_7201, x_7200);
x_7208 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_7209 = l_Lean_Meta_mkAppM(x_7208, x_7207, x_5, x_6, x_7, x_8, x_7206);
if (lean_obj_tag(x_7209) == 0)
{
lean_object* x_7210; lean_object* x_7211; lean_object* x_7212; lean_object* x_7213; uint8_t x_7214; lean_object* x_7215; lean_object* x_7216; lean_object* x_7217; lean_object* x_7218; 
x_7210 = lean_ctor_get(x_7209, 0);
lean_inc(x_7210);
x_7211 = lean_ctor_get(x_7209, 1);
lean_inc(x_7211);
if (lean_is_exclusive(x_7209)) {
 lean_ctor_release(x_7209, 0);
 lean_ctor_release(x_7209, 1);
 x_7212 = x_7209;
} else {
 lean_dec_ref(x_7209);
 x_7212 = lean_box(0);
}
x_7213 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7213, 0, x_7210);
x_7214 = 1;
x_7215 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7215, 0, x_7205);
lean_ctor_set(x_7215, 1, x_7213);
lean_ctor_set_uint8(x_7215, sizeof(void*)*2, x_7214);
x_7216 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7216, 0, x_7215);
x_7217 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7217, 0, x_7216);
if (lean_is_scalar(x_7212)) {
 x_7218 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7218 = x_7212;
}
lean_ctor_set(x_7218, 0, x_7217);
lean_ctor_set(x_7218, 1, x_7211);
return x_7218;
}
else
{
lean_object* x_7219; lean_object* x_7220; lean_object* x_7221; lean_object* x_7222; 
lean_dec(x_7205);
x_7219 = lean_ctor_get(x_7209, 0);
lean_inc(x_7219);
x_7220 = lean_ctor_get(x_7209, 1);
lean_inc(x_7220);
if (lean_is_exclusive(x_7209)) {
 lean_ctor_release(x_7209, 0);
 lean_ctor_release(x_7209, 1);
 x_7221 = x_7209;
} else {
 lean_dec_ref(x_7209);
 x_7221 = lean_box(0);
}
if (lean_is_scalar(x_7221)) {
 x_7222 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7222 = x_7221;
}
lean_ctor_set(x_7222, 0, x_7219);
lean_ctor_set(x_7222, 1, x_7220);
return x_7222;
}
}
else
{
lean_object* x_7223; lean_object* x_7224; lean_object* x_7225; lean_object* x_7226; 
lean_dec(x_7200);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7223 = lean_ctor_get(x_7204, 0);
lean_inc(x_7223);
x_7224 = lean_ctor_get(x_7204, 1);
lean_inc(x_7224);
if (lean_is_exclusive(x_7204)) {
 lean_ctor_release(x_7204, 0);
 lean_ctor_release(x_7204, 1);
 x_7225 = x_7204;
} else {
 lean_dec_ref(x_7204);
 x_7225 = lean_box(0);
}
if (lean_is_scalar(x_7225)) {
 x_7226 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7226 = x_7225;
}
lean_ctor_set(x_7226, 0, x_7223);
lean_ctor_set(x_7226, 1, x_7224);
return x_7226;
}
}
}
else
{
lean_object* x_7260; lean_object* x_7261; lean_object* x_7262; lean_object* x_7263; 
lean_dec(x_7192);
lean_dec(x_7191);
lean_dec(x_7190);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7260 = lean_ctor_get(x_7194, 0);
lean_inc(x_7260);
x_7261 = lean_ctor_get(x_7194, 1);
lean_inc(x_7261);
if (lean_is_exclusive(x_7194)) {
 lean_ctor_release(x_7194, 0);
 lean_ctor_release(x_7194, 1);
 x_7262 = x_7194;
} else {
 lean_dec_ref(x_7194);
 x_7262 = lean_box(0);
}
if (lean_is_scalar(x_7262)) {
 x_7263 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7263 = x_7262;
}
lean_ctor_set(x_7263, 0, x_7260);
lean_ctor_set(x_7263, 1, x_7261);
return x_7263;
}
}
else
{
lean_object* x_7264; lean_object* x_7265; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7264 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_7265 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7265 = x_5082;
}
lean_ctor_set(x_7265, 0, x_7264);
lean_ctor_set(x_7265, 1, x_5081);
return x_7265;
}
}
}
}
default: 
{
lean_dec(x_5162);
lean_dec(x_5085);
lean_dec(x_5084);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_7266; lean_object* x_7267; lean_object* x_7268; uint8_t x_7269; lean_object* x_7270; 
lean_dec(x_5082);
x_7266 = lean_ctor_get(x_5083, 0);
lean_inc(x_7266);
x_7267 = lean_ctor_get(x_5083, 1);
lean_inc(x_7267);
x_7268 = lean_ctor_get(x_5083, 2);
lean_inc(x_7268);
x_7269 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_7267);
x_7270 = l_Lean_Meta_isProp(x_7267, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_7270) == 0)
{
lean_object* x_7271; lean_object* x_7272; lean_object* x_7273; uint8_t x_7304; 
x_7271 = lean_ctor_get(x_7270, 0);
lean_inc(x_7271);
x_7272 = lean_ctor_get(x_7270, 1);
lean_inc(x_7272);
lean_dec(x_7270);
x_7304 = lean_unbox(x_7271);
lean_dec(x_7271);
if (x_7304 == 0)
{
lean_object* x_7305; 
x_7305 = lean_box(0);
x_7273 = x_7305;
goto block_7303;
}
else
{
uint8_t x_7306; 
x_7306 = l_Lean_Expr_hasLooseBVars(x_7268);
if (x_7306 == 0)
{
lean_object* x_7307; lean_object* x_7308; lean_object* x_7309; lean_object* x_7310; lean_object* x_7311; lean_object* x_7312; 
lean_dec(x_7266);
lean_inc(x_7268);
x_7307 = l_Lean_mkNot(x_7268);
x_7308 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_7309 = lean_array_push(x_7308, x_7267);
lean_inc(x_7309);
x_7310 = lean_array_push(x_7309, x_7307);
x_7311 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7312 = l_Lean_Meta_mkAppM(x_7311, x_7310, x_5, x_6, x_7, x_8, x_7272);
if (lean_obj_tag(x_7312) == 0)
{
lean_object* x_7313; lean_object* x_7314; lean_object* x_7315; lean_object* x_7316; lean_object* x_7317; 
x_7313 = lean_ctor_get(x_7312, 0);
lean_inc(x_7313);
x_7314 = lean_ctor_get(x_7312, 1);
lean_inc(x_7314);
lean_dec(x_7312);
x_7315 = lean_array_push(x_7309, x_7268);
x_7316 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_7317 = l_Lean_Meta_mkAppM(x_7316, x_7315, x_5, x_6, x_7, x_8, x_7314);
if (lean_obj_tag(x_7317) == 0)
{
lean_object* x_7318; lean_object* x_7319; lean_object* x_7320; lean_object* x_7321; uint8_t x_7322; lean_object* x_7323; lean_object* x_7324; lean_object* x_7325; lean_object* x_7326; 
x_7318 = lean_ctor_get(x_7317, 0);
lean_inc(x_7318);
x_7319 = lean_ctor_get(x_7317, 1);
lean_inc(x_7319);
if (lean_is_exclusive(x_7317)) {
 lean_ctor_release(x_7317, 0);
 lean_ctor_release(x_7317, 1);
 x_7320 = x_7317;
} else {
 lean_dec_ref(x_7317);
 x_7320 = lean_box(0);
}
x_7321 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7321, 0, x_7318);
x_7322 = 1;
x_7323 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7323, 0, x_7313);
lean_ctor_set(x_7323, 1, x_7321);
lean_ctor_set_uint8(x_7323, sizeof(void*)*2, x_7322);
x_7324 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7324, 0, x_7323);
x_7325 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7325, 0, x_7324);
if (lean_is_scalar(x_7320)) {
 x_7326 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7326 = x_7320;
}
lean_ctor_set(x_7326, 0, x_7325);
lean_ctor_set(x_7326, 1, x_7319);
return x_7326;
}
else
{
lean_object* x_7327; lean_object* x_7328; lean_object* x_7329; lean_object* x_7330; 
lean_dec(x_7313);
x_7327 = lean_ctor_get(x_7317, 0);
lean_inc(x_7327);
x_7328 = lean_ctor_get(x_7317, 1);
lean_inc(x_7328);
if (lean_is_exclusive(x_7317)) {
 lean_ctor_release(x_7317, 0);
 lean_ctor_release(x_7317, 1);
 x_7329 = x_7317;
} else {
 lean_dec_ref(x_7317);
 x_7329 = lean_box(0);
}
if (lean_is_scalar(x_7329)) {
 x_7330 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7330 = x_7329;
}
lean_ctor_set(x_7330, 0, x_7327);
lean_ctor_set(x_7330, 1, x_7328);
return x_7330;
}
}
else
{
lean_object* x_7331; lean_object* x_7332; lean_object* x_7333; lean_object* x_7334; 
lean_dec(x_7309);
lean_dec(x_7268);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7331 = lean_ctor_get(x_7312, 0);
lean_inc(x_7331);
x_7332 = lean_ctor_get(x_7312, 1);
lean_inc(x_7332);
if (lean_is_exclusive(x_7312)) {
 lean_ctor_release(x_7312, 0);
 lean_ctor_release(x_7312, 1);
 x_7333 = x_7312;
} else {
 lean_dec_ref(x_7312);
 x_7333 = lean_box(0);
}
if (lean_is_scalar(x_7333)) {
 x_7334 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7334 = x_7333;
}
lean_ctor_set(x_7334, 0, x_7331);
lean_ctor_set(x_7334, 1, x_7332);
return x_7334;
}
}
else
{
lean_object* x_7335; 
x_7335 = lean_box(0);
x_7273 = x_7335;
goto block_7303;
}
}
block_7303:
{
lean_object* x_7274; lean_object* x_7275; lean_object* x_7276; lean_object* x_7277; lean_object* x_7278; lean_object* x_7279; lean_object* x_7280; 
lean_dec(x_7273);
lean_inc(x_7268);
x_7274 = l_Lean_mkNot(x_7268);
lean_inc(x_7267);
lean_inc(x_7266);
x_7275 = l_Lean_Expr_lam___override(x_7266, x_7267, x_7274, x_7269);
x_7276 = l_Lean_Expr_lam___override(x_7266, x_7267, x_7268, x_7269);
x_7277 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_7278 = lean_array_push(x_7277, x_7275);
x_7279 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7280 = l_Lean_Meta_mkAppM(x_7279, x_7278, x_5, x_6, x_7, x_8, x_7272);
if (lean_obj_tag(x_7280) == 0)
{
lean_object* x_7281; lean_object* x_7282; lean_object* x_7283; lean_object* x_7284; lean_object* x_7285; 
x_7281 = lean_ctor_get(x_7280, 0);
lean_inc(x_7281);
x_7282 = lean_ctor_get(x_7280, 1);
lean_inc(x_7282);
lean_dec(x_7280);
x_7283 = lean_array_push(x_7277, x_7276);
x_7284 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_7285 = l_Lean_Meta_mkAppM(x_7284, x_7283, x_5, x_6, x_7, x_8, x_7282);
if (lean_obj_tag(x_7285) == 0)
{
lean_object* x_7286; lean_object* x_7287; lean_object* x_7288; lean_object* x_7289; uint8_t x_7290; lean_object* x_7291; lean_object* x_7292; lean_object* x_7293; lean_object* x_7294; 
x_7286 = lean_ctor_get(x_7285, 0);
lean_inc(x_7286);
x_7287 = lean_ctor_get(x_7285, 1);
lean_inc(x_7287);
if (lean_is_exclusive(x_7285)) {
 lean_ctor_release(x_7285, 0);
 lean_ctor_release(x_7285, 1);
 x_7288 = x_7285;
} else {
 lean_dec_ref(x_7285);
 x_7288 = lean_box(0);
}
x_7289 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7289, 0, x_7286);
x_7290 = 1;
x_7291 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7291, 0, x_7281);
lean_ctor_set(x_7291, 1, x_7289);
lean_ctor_set_uint8(x_7291, sizeof(void*)*2, x_7290);
x_7292 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7292, 0, x_7291);
x_7293 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7293, 0, x_7292);
if (lean_is_scalar(x_7288)) {
 x_7294 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7294 = x_7288;
}
lean_ctor_set(x_7294, 0, x_7293);
lean_ctor_set(x_7294, 1, x_7287);
return x_7294;
}
else
{
lean_object* x_7295; lean_object* x_7296; lean_object* x_7297; lean_object* x_7298; 
lean_dec(x_7281);
x_7295 = lean_ctor_get(x_7285, 0);
lean_inc(x_7295);
x_7296 = lean_ctor_get(x_7285, 1);
lean_inc(x_7296);
if (lean_is_exclusive(x_7285)) {
 lean_ctor_release(x_7285, 0);
 lean_ctor_release(x_7285, 1);
 x_7297 = x_7285;
} else {
 lean_dec_ref(x_7285);
 x_7297 = lean_box(0);
}
if (lean_is_scalar(x_7297)) {
 x_7298 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7298 = x_7297;
}
lean_ctor_set(x_7298, 0, x_7295);
lean_ctor_set(x_7298, 1, x_7296);
return x_7298;
}
}
else
{
lean_object* x_7299; lean_object* x_7300; lean_object* x_7301; lean_object* x_7302; 
lean_dec(x_7276);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7299 = lean_ctor_get(x_7280, 0);
lean_inc(x_7299);
x_7300 = lean_ctor_get(x_7280, 1);
lean_inc(x_7300);
if (lean_is_exclusive(x_7280)) {
 lean_ctor_release(x_7280, 0);
 lean_ctor_release(x_7280, 1);
 x_7301 = x_7280;
} else {
 lean_dec_ref(x_7280);
 x_7301 = lean_box(0);
}
if (lean_is_scalar(x_7301)) {
 x_7302 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7302 = x_7301;
}
lean_ctor_set(x_7302, 0, x_7299);
lean_ctor_set(x_7302, 1, x_7300);
return x_7302;
}
}
}
else
{
lean_object* x_7336; lean_object* x_7337; lean_object* x_7338; lean_object* x_7339; 
lean_dec(x_7268);
lean_dec(x_7267);
lean_dec(x_7266);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7336 = lean_ctor_get(x_7270, 0);
lean_inc(x_7336);
x_7337 = lean_ctor_get(x_7270, 1);
lean_inc(x_7337);
if (lean_is_exclusive(x_7270)) {
 lean_ctor_release(x_7270, 0);
 lean_ctor_release(x_7270, 1);
 x_7338 = x_7270;
} else {
 lean_dec_ref(x_7270);
 x_7338 = lean_box(0);
}
if (lean_is_scalar(x_7338)) {
 x_7339 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7339 = x_7338;
}
lean_ctor_set(x_7339, 0, x_7336);
lean_ctor_set(x_7339, 1, x_7337);
return x_7339;
}
}
else
{
lean_object* x_7340; lean_object* x_7341; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7340 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_7341 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7341 = x_5082;
}
lean_ctor_set(x_7341, 0, x_7340);
lean_ctor_set(x_7341, 1, x_5081);
return x_7341;
}
}
}
}
default: 
{
lean_dec(x_5085);
lean_dec(x_5084);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_5083) == 7)
{
lean_object* x_7342; lean_object* x_7343; lean_object* x_7344; uint8_t x_7345; lean_object* x_7346; 
lean_dec(x_5082);
x_7342 = lean_ctor_get(x_5083, 0);
lean_inc(x_7342);
x_7343 = lean_ctor_get(x_5083, 1);
lean_inc(x_7343);
x_7344 = lean_ctor_get(x_5083, 2);
lean_inc(x_7344);
x_7345 = lean_ctor_get_uint8(x_5083, sizeof(void*)*3 + 8);
lean_dec(x_5083);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_7343);
x_7346 = l_Lean_Meta_isProp(x_7343, x_5, x_6, x_7, x_8, x_5081);
if (lean_obj_tag(x_7346) == 0)
{
lean_object* x_7347; lean_object* x_7348; lean_object* x_7349; uint8_t x_7380; 
x_7347 = lean_ctor_get(x_7346, 0);
lean_inc(x_7347);
x_7348 = lean_ctor_get(x_7346, 1);
lean_inc(x_7348);
lean_dec(x_7346);
x_7380 = lean_unbox(x_7347);
lean_dec(x_7347);
if (x_7380 == 0)
{
lean_object* x_7381; 
x_7381 = lean_box(0);
x_7349 = x_7381;
goto block_7379;
}
else
{
uint8_t x_7382; 
x_7382 = l_Lean_Expr_hasLooseBVars(x_7344);
if (x_7382 == 0)
{
lean_object* x_7383; lean_object* x_7384; lean_object* x_7385; lean_object* x_7386; lean_object* x_7387; lean_object* x_7388; 
lean_dec(x_7342);
lean_inc(x_7344);
x_7383 = l_Lean_mkNot(x_7344);
x_7384 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3;
x_7385 = lean_array_push(x_7384, x_7343);
lean_inc(x_7385);
x_7386 = lean_array_push(x_7385, x_7383);
x_7387 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7388 = l_Lean_Meta_mkAppM(x_7387, x_7386, x_5, x_6, x_7, x_8, x_7348);
if (lean_obj_tag(x_7388) == 0)
{
lean_object* x_7389; lean_object* x_7390; lean_object* x_7391; lean_object* x_7392; lean_object* x_7393; 
x_7389 = lean_ctor_get(x_7388, 0);
lean_inc(x_7389);
x_7390 = lean_ctor_get(x_7388, 1);
lean_inc(x_7390);
lean_dec(x_7388);
x_7391 = lean_array_push(x_7385, x_7344);
x_7392 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12;
x_7393 = l_Lean_Meta_mkAppM(x_7392, x_7391, x_5, x_6, x_7, x_8, x_7390);
if (lean_obj_tag(x_7393) == 0)
{
lean_object* x_7394; lean_object* x_7395; lean_object* x_7396; lean_object* x_7397; uint8_t x_7398; lean_object* x_7399; lean_object* x_7400; lean_object* x_7401; lean_object* x_7402; 
x_7394 = lean_ctor_get(x_7393, 0);
lean_inc(x_7394);
x_7395 = lean_ctor_get(x_7393, 1);
lean_inc(x_7395);
if (lean_is_exclusive(x_7393)) {
 lean_ctor_release(x_7393, 0);
 lean_ctor_release(x_7393, 1);
 x_7396 = x_7393;
} else {
 lean_dec_ref(x_7393);
 x_7396 = lean_box(0);
}
x_7397 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7397, 0, x_7394);
x_7398 = 1;
x_7399 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7399, 0, x_7389);
lean_ctor_set(x_7399, 1, x_7397);
lean_ctor_set_uint8(x_7399, sizeof(void*)*2, x_7398);
x_7400 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7400, 0, x_7399);
x_7401 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7401, 0, x_7400);
if (lean_is_scalar(x_7396)) {
 x_7402 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7402 = x_7396;
}
lean_ctor_set(x_7402, 0, x_7401);
lean_ctor_set(x_7402, 1, x_7395);
return x_7402;
}
else
{
lean_object* x_7403; lean_object* x_7404; lean_object* x_7405; lean_object* x_7406; 
lean_dec(x_7389);
x_7403 = lean_ctor_get(x_7393, 0);
lean_inc(x_7403);
x_7404 = lean_ctor_get(x_7393, 1);
lean_inc(x_7404);
if (lean_is_exclusive(x_7393)) {
 lean_ctor_release(x_7393, 0);
 lean_ctor_release(x_7393, 1);
 x_7405 = x_7393;
} else {
 lean_dec_ref(x_7393);
 x_7405 = lean_box(0);
}
if (lean_is_scalar(x_7405)) {
 x_7406 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7406 = x_7405;
}
lean_ctor_set(x_7406, 0, x_7403);
lean_ctor_set(x_7406, 1, x_7404);
return x_7406;
}
}
else
{
lean_object* x_7407; lean_object* x_7408; lean_object* x_7409; lean_object* x_7410; 
lean_dec(x_7385);
lean_dec(x_7344);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7407 = lean_ctor_get(x_7388, 0);
lean_inc(x_7407);
x_7408 = lean_ctor_get(x_7388, 1);
lean_inc(x_7408);
if (lean_is_exclusive(x_7388)) {
 lean_ctor_release(x_7388, 0);
 lean_ctor_release(x_7388, 1);
 x_7409 = x_7388;
} else {
 lean_dec_ref(x_7388);
 x_7409 = lean_box(0);
}
if (lean_is_scalar(x_7409)) {
 x_7410 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7410 = x_7409;
}
lean_ctor_set(x_7410, 0, x_7407);
lean_ctor_set(x_7410, 1, x_7408);
return x_7410;
}
}
else
{
lean_object* x_7411; 
x_7411 = lean_box(0);
x_7349 = x_7411;
goto block_7379;
}
}
block_7379:
{
lean_object* x_7350; lean_object* x_7351; lean_object* x_7352; lean_object* x_7353; lean_object* x_7354; lean_object* x_7355; lean_object* x_7356; 
lean_dec(x_7349);
lean_inc(x_7344);
x_7350 = l_Lean_mkNot(x_7344);
lean_inc(x_7343);
lean_inc(x_7342);
x_7351 = l_Lean_Expr_lam___override(x_7342, x_7343, x_7350, x_7345);
x_7352 = l_Lean_Expr_lam___override(x_7342, x_7343, x_7344, x_7345);
x_7353 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6;
x_7354 = lean_array_push(x_7353, x_7351);
x_7355 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_7356 = l_Lean_Meta_mkAppM(x_7355, x_7354, x_5, x_6, x_7, x_8, x_7348);
if (lean_obj_tag(x_7356) == 0)
{
lean_object* x_7357; lean_object* x_7358; lean_object* x_7359; lean_object* x_7360; lean_object* x_7361; 
x_7357 = lean_ctor_get(x_7356, 0);
lean_inc(x_7357);
x_7358 = lean_ctor_get(x_7356, 1);
lean_inc(x_7358);
lean_dec(x_7356);
x_7359 = lean_array_push(x_7353, x_7352);
x_7360 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8;
x_7361 = l_Lean_Meta_mkAppM(x_7360, x_7359, x_5, x_6, x_7, x_8, x_7358);
if (lean_obj_tag(x_7361) == 0)
{
lean_object* x_7362; lean_object* x_7363; lean_object* x_7364; lean_object* x_7365; uint8_t x_7366; lean_object* x_7367; lean_object* x_7368; lean_object* x_7369; lean_object* x_7370; 
x_7362 = lean_ctor_get(x_7361, 0);
lean_inc(x_7362);
x_7363 = lean_ctor_get(x_7361, 1);
lean_inc(x_7363);
if (lean_is_exclusive(x_7361)) {
 lean_ctor_release(x_7361, 0);
 lean_ctor_release(x_7361, 1);
 x_7364 = x_7361;
} else {
 lean_dec_ref(x_7361);
 x_7364 = lean_box(0);
}
x_7365 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7365, 0, x_7362);
x_7366 = 1;
x_7367 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_7367, 0, x_7357);
lean_ctor_set(x_7367, 1, x_7365);
lean_ctor_set_uint8(x_7367, sizeof(void*)*2, x_7366);
x_7368 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7368, 0, x_7367);
x_7369 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7369, 0, x_7368);
if (lean_is_scalar(x_7364)) {
 x_7370 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7370 = x_7364;
}
lean_ctor_set(x_7370, 0, x_7369);
lean_ctor_set(x_7370, 1, x_7363);
return x_7370;
}
else
{
lean_object* x_7371; lean_object* x_7372; lean_object* x_7373; lean_object* x_7374; 
lean_dec(x_7357);
x_7371 = lean_ctor_get(x_7361, 0);
lean_inc(x_7371);
x_7372 = lean_ctor_get(x_7361, 1);
lean_inc(x_7372);
if (lean_is_exclusive(x_7361)) {
 lean_ctor_release(x_7361, 0);
 lean_ctor_release(x_7361, 1);
 x_7373 = x_7361;
} else {
 lean_dec_ref(x_7361);
 x_7373 = lean_box(0);
}
if (lean_is_scalar(x_7373)) {
 x_7374 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7374 = x_7373;
}
lean_ctor_set(x_7374, 0, x_7371);
lean_ctor_set(x_7374, 1, x_7372);
return x_7374;
}
}
else
{
lean_object* x_7375; lean_object* x_7376; lean_object* x_7377; lean_object* x_7378; 
lean_dec(x_7352);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7375 = lean_ctor_get(x_7356, 0);
lean_inc(x_7375);
x_7376 = lean_ctor_get(x_7356, 1);
lean_inc(x_7376);
if (lean_is_exclusive(x_7356)) {
 lean_ctor_release(x_7356, 0);
 lean_ctor_release(x_7356, 1);
 x_7377 = x_7356;
} else {
 lean_dec_ref(x_7356);
 x_7377 = lean_box(0);
}
if (lean_is_scalar(x_7377)) {
 x_7378 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7378 = x_7377;
}
lean_ctor_set(x_7378, 0, x_7375);
lean_ctor_set(x_7378, 1, x_7376);
return x_7378;
}
}
}
else
{
lean_object* x_7412; lean_object* x_7413; lean_object* x_7414; lean_object* x_7415; 
lean_dec(x_7344);
lean_dec(x_7343);
lean_dec(x_7342);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7412 = lean_ctor_get(x_7346, 0);
lean_inc(x_7412);
x_7413 = lean_ctor_get(x_7346, 1);
lean_inc(x_7413);
if (lean_is_exclusive(x_7346)) {
 lean_ctor_release(x_7346, 0);
 lean_ctor_release(x_7346, 1);
 x_7414 = x_7346;
} else {
 lean_dec_ref(x_7346);
 x_7414 = lean_box(0);
}
if (lean_is_scalar(x_7414)) {
 x_7415 = lean_alloc_ctor(1, 2, 0);
} else {
 x_7415 = x_7414;
}
lean_ctor_set(x_7415, 0, x_7412);
lean_ctor_set(x_7415, 1, x_7413);
return x_7415;
}
}
else
{
lean_object* x_7416; lean_object* x_7417; 
lean_dec(x_5083);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_7416 = lean_box(0);
if (lean_is_scalar(x_5082)) {
 x_7417 = lean_alloc_ctor(0, 2, 0);
} else {
 x_7417 = x_5082;
}
lean_ctor_set(x_7417, 0, x_7416);
lean_ctor_set(x_7417, 1, x_5081);
return x_7417;
}
}
}
}
}
}
else
{
uint8_t x_7418; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_7418 = !lean_is_exclusive(x_19);
if (x_7418 == 0)
{
return x_19;
}
else
{
lean_object* x_7419; lean_object* x_7420; lean_object* x_7421; 
x_7419 = lean_ctor_get(x_19, 0);
x_7420 = lean_ctor_get(x_19, 1);
lean_inc(x_7420);
lean_inc(x_7419);
lean_dec(x_19);
x_7421 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7421, 0, x_7419);
lean_ctor_set(x_7421, 1, x_7420);
return x_7421;
}
}
block_18:
{
uint8_t x_12; 
x_12 = l_Lean_Exception_isInterrupt(x_10);
if (x_12 == 0)
{
uint8_t x_13; 
x_13 = l_Lean_Exception_isRuntime(x_10);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_10);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_11);
return x_15;
}
else
{
lean_object* x_16; 
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_10);
lean_ctor_set(x_16, 1, x_11);
return x_16;
}
}
else
{
lean_object* x_17; 
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_11);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = lean_unbox(x_2);
lean_dec(x_2);
x_12 = l_Lean_getBoolOption___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__1(x_1, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
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
LEAN_EXPORT lean_object* l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Mathlib_Tactic_PushNeg_transformNegationStep___spec__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_4);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_transformNegation(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
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
x_10 = l_Mathlib_Tactic_PushNeg_transformNegationStep(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_12 = !lean_is_exclusive(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_10, 0);
lean_dec(x_13);
x_14 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
lean_ctor_set(x_10, 0, x_14);
return x_10;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_10, 1);
lean_inc(x_15);
lean_dec(x_10);
x_16 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
return x_17;
}
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_11);
if (x_18 == 0)
{
lean_object* x_19; 
x_19 = lean_ctor_get(x_11, 0);
if (lean_obj_tag(x_19) == 1)
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
if (lean_obj_tag(x_22) == 0)
{
uint8_t x_23; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_23 = !lean_is_exclusive(x_10);
if (x_23 == 0)
{
lean_object* x_24; 
x_24 = lean_ctor_get(x_10, 0);
lean_dec(x_24);
lean_ctor_set(x_11, 0, x_21);
lean_ctor_set_tag(x_19, 2);
lean_ctor_set(x_19, 0, x_11);
lean_ctor_set(x_10, 0, x_19);
return x_10;
}
else
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_10, 1);
lean_inc(x_25);
lean_dec(x_10);
lean_ctor_set(x_11, 0, x_21);
lean_ctor_set_tag(x_19, 2);
lean_ctor_set(x_19, 0, x_11);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_19);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_22);
lean_free_object(x_19);
lean_free_object(x_11);
x_27 = lean_ctor_get(x_10, 1);
lean_inc(x_27);
lean_dec(x_10);
x_28 = lean_ctor_get(x_21, 0);
lean_inc(x_28);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_29 = l_Mathlib_Tactic_PushNeg_transformNegation(x_28, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_27);
if (lean_obj_tag(x_29) == 0)
{
lean_object* x_30; 
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
if (lean_obj_tag(x_30) == 1)
{
lean_object* x_31; uint8_t x_32; 
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = !lean_is_exclusive(x_30);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_30, 0);
x_34 = l_Lean_Meta_Simp_Result_mkEqTrans(x_21, x_33, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_34) == 0)
{
uint8_t x_35; 
x_35 = !lean_is_exclusive(x_34);
if (x_35 == 0)
{
lean_object* x_36; 
x_36 = lean_ctor_get(x_34, 0);
lean_ctor_set(x_30, 0, x_36);
lean_ctor_set(x_34, 0, x_30);
return x_34;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_34, 0);
x_38 = lean_ctor_get(x_34, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_34);
lean_ctor_set(x_30, 0, x_37);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_30);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
else
{
uint8_t x_40; 
lean_free_object(x_30);
x_40 = !lean_is_exclusive(x_34);
if (x_40 == 0)
{
return x_34;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_34, 0);
x_42 = lean_ctor_get(x_34, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_34);
x_43 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
}
else
{
lean_object* x_44; lean_object* x_45; 
x_44 = lean_ctor_get(x_30, 0);
lean_inc(x_44);
lean_dec(x_30);
x_45 = l_Lean_Meta_Simp_Result_mkEqTrans(x_21, x_44, x_5, x_6, x_7, x_8, x_31);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
x_47 = lean_ctor_get(x_45, 1);
lean_inc(x_47);
if (lean_is_exclusive(x_45)) {
 lean_ctor_release(x_45, 0);
 lean_ctor_release(x_45, 1);
 x_48 = x_45;
} else {
 lean_dec_ref(x_45);
 x_48 = lean_box(0);
}
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_46);
if (lean_is_scalar(x_48)) {
 x_50 = lean_alloc_ctor(0, 2, 0);
} else {
 x_50 = x_48;
}
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_47);
return x_50;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; 
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
if (lean_is_scalar(x_53)) {
 x_54 = lean_alloc_ctor(1, 2, 0);
} else {
 x_54 = x_53;
}
lean_ctor_set(x_54, 0, x_51);
lean_ctor_set(x_54, 1, x_52);
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
x_55 = !lean_is_exclusive(x_30);
if (x_55 == 0)
{
lean_object* x_56; uint8_t x_57; 
x_56 = lean_ctor_get(x_30, 0);
lean_dec(x_56);
x_57 = !lean_is_exclusive(x_29);
if (x_57 == 0)
{
lean_object* x_58; 
x_58 = lean_ctor_get(x_29, 0);
lean_dec(x_58);
lean_ctor_set_tag(x_30, 1);
lean_ctor_set(x_30, 0, x_21);
return x_29;
}
else
{
lean_object* x_59; lean_object* x_60; 
x_59 = lean_ctor_get(x_29, 1);
lean_inc(x_59);
lean_dec(x_29);
lean_ctor_set_tag(x_30, 1);
lean_ctor_set(x_30, 0, x_21);
x_60 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_60, 0, x_30);
lean_ctor_set(x_60, 1, x_59);
return x_60;
}
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
lean_dec(x_30);
x_61 = lean_ctor_get(x_29, 1);
lean_inc(x_61);
if (lean_is_exclusive(x_29)) {
 lean_ctor_release(x_29, 0);
 lean_ctor_release(x_29, 1);
 x_62 = x_29;
} else {
 lean_dec_ref(x_29);
 x_62 = lean_box(0);
}
x_63 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_63, 0, x_21);
if (lean_is_scalar(x_62)) {
 x_64 = lean_alloc_ctor(0, 2, 0);
} else {
 x_64 = x_62;
}
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_61);
return x_64;
}
}
}
else
{
uint8_t x_65; 
lean_dec(x_21);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_65 = !lean_is_exclusive(x_29);
if (x_65 == 0)
{
return x_29;
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; 
x_66 = lean_ctor_get(x_29, 0);
x_67 = lean_ctor_get(x_29, 1);
lean_inc(x_67);
lean_inc(x_66);
lean_dec(x_29);
x_68 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_68, 0, x_66);
lean_ctor_set(x_68, 1, x_67);
return x_68;
}
}
}
}
else
{
lean_object* x_69; lean_object* x_70; 
x_69 = lean_ctor_get(x_19, 0);
lean_inc(x_69);
lean_dec(x_19);
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
if (lean_obj_tag(x_70) == 0)
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_71 = lean_ctor_get(x_10, 1);
lean_inc(x_71);
if (lean_is_exclusive(x_10)) {
 lean_ctor_release(x_10, 0);
 lean_ctor_release(x_10, 1);
 x_72 = x_10;
} else {
 lean_dec_ref(x_10);
 x_72 = lean_box(0);
}
lean_ctor_set(x_11, 0, x_69);
x_73 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_73, 0, x_11);
if (lean_is_scalar(x_72)) {
 x_74 = lean_alloc_ctor(0, 2, 0);
} else {
 x_74 = x_72;
}
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_71);
return x_74;
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; 
lean_dec(x_70);
lean_free_object(x_11);
x_75 = lean_ctor_get(x_10, 1);
lean_inc(x_75);
lean_dec(x_10);
x_76 = lean_ctor_get(x_69, 0);
lean_inc(x_76);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_77 = l_Mathlib_Tactic_PushNeg_transformNegation(x_76, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_75);
if (lean_obj_tag(x_77) == 0)
{
lean_object* x_78; 
x_78 = lean_ctor_get(x_77, 0);
lean_inc(x_78);
if (lean_obj_tag(x_78) == 1)
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_79 = lean_ctor_get(x_77, 1);
lean_inc(x_79);
lean_dec(x_77);
x_80 = lean_ctor_get(x_78, 0);
lean_inc(x_80);
if (lean_is_exclusive(x_78)) {
 lean_ctor_release(x_78, 0);
 x_81 = x_78;
} else {
 lean_dec_ref(x_78);
 x_81 = lean_box(0);
}
x_82 = l_Lean_Meta_Simp_Result_mkEqTrans(x_69, x_80, x_5, x_6, x_7, x_8, x_79);
if (lean_obj_tag(x_82) == 0)
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_83 = lean_ctor_get(x_82, 0);
lean_inc(x_83);
x_84 = lean_ctor_get(x_82, 1);
lean_inc(x_84);
if (lean_is_exclusive(x_82)) {
 lean_ctor_release(x_82, 0);
 lean_ctor_release(x_82, 1);
 x_85 = x_82;
} else {
 lean_dec_ref(x_82);
 x_85 = lean_box(0);
}
if (lean_is_scalar(x_81)) {
 x_86 = lean_alloc_ctor(1, 1, 0);
} else {
 x_86 = x_81;
}
lean_ctor_set(x_86, 0, x_83);
if (lean_is_scalar(x_85)) {
 x_87 = lean_alloc_ctor(0, 2, 0);
} else {
 x_87 = x_85;
}
lean_ctor_set(x_87, 0, x_86);
lean_ctor_set(x_87, 1, x_84);
return x_87;
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; 
lean_dec(x_81);
x_88 = lean_ctor_get(x_82, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_82, 1);
lean_inc(x_89);
if (lean_is_exclusive(x_82)) {
 lean_ctor_release(x_82, 0);
 lean_ctor_release(x_82, 1);
 x_90 = x_82;
} else {
 lean_dec_ref(x_82);
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
lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
if (lean_is_exclusive(x_78)) {
 lean_ctor_release(x_78, 0);
 x_92 = x_78;
} else {
 lean_dec_ref(x_78);
 x_92 = lean_box(0);
}
x_93 = lean_ctor_get(x_77, 1);
lean_inc(x_93);
if (lean_is_exclusive(x_77)) {
 lean_ctor_release(x_77, 0);
 lean_ctor_release(x_77, 1);
 x_94 = x_77;
} else {
 lean_dec_ref(x_77);
 x_94 = lean_box(0);
}
if (lean_is_scalar(x_92)) {
 x_95 = lean_alloc_ctor(1, 1, 0);
} else {
 x_95 = x_92;
 lean_ctor_set_tag(x_95, 1);
}
lean_ctor_set(x_95, 0, x_69);
if (lean_is_scalar(x_94)) {
 x_96 = lean_alloc_ctor(0, 2, 0);
} else {
 x_96 = x_94;
}
lean_ctor_set(x_96, 0, x_95);
lean_ctor_set(x_96, 1, x_93);
return x_96;
}
}
else
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; 
lean_dec(x_69);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_97 = lean_ctor_get(x_77, 0);
lean_inc(x_97);
x_98 = lean_ctor_get(x_77, 1);
lean_inc(x_98);
if (lean_is_exclusive(x_77)) {
 lean_ctor_release(x_77, 0);
 lean_ctor_release(x_77, 1);
 x_99 = x_77;
} else {
 lean_dec_ref(x_77);
 x_99 = lean_box(0);
}
if (lean_is_scalar(x_99)) {
 x_100 = lean_alloc_ctor(1, 2, 0);
} else {
 x_100 = x_99;
}
lean_ctor_set(x_100, 0, x_97);
lean_ctor_set(x_100, 1, x_98);
return x_100;
}
}
}
}
else
{
uint8_t x_101; 
lean_free_object(x_11);
lean_dec(x_19);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_101 = !lean_is_exclusive(x_10);
if (x_101 == 0)
{
lean_object* x_102; lean_object* x_103; 
x_102 = lean_ctor_get(x_10, 0);
lean_dec(x_102);
x_103 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
lean_ctor_set(x_10, 0, x_103);
return x_10;
}
else
{
lean_object* x_104; lean_object* x_105; lean_object* x_106; 
x_104 = lean_ctor_get(x_10, 1);
lean_inc(x_104);
lean_dec(x_10);
x_105 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
x_106 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_106, 0, x_105);
lean_ctor_set(x_106, 1, x_104);
return x_106;
}
}
}
else
{
lean_object* x_107; 
x_107 = lean_ctor_get(x_11, 0);
lean_inc(x_107);
lean_dec(x_11);
if (lean_obj_tag(x_107) == 1)
{
lean_object* x_108; lean_object* x_109; lean_object* x_110; 
x_108 = lean_ctor_get(x_107, 0);
lean_inc(x_108);
if (lean_is_exclusive(x_107)) {
 lean_ctor_release(x_107, 0);
 x_109 = x_107;
} else {
 lean_dec_ref(x_107);
 x_109 = lean_box(0);
}
x_110 = lean_ctor_get(x_108, 1);
lean_inc(x_110);
if (lean_obj_tag(x_110) == 0)
{
lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_111 = lean_ctor_get(x_10, 1);
lean_inc(x_111);
if (lean_is_exclusive(x_10)) {
 lean_ctor_release(x_10, 0);
 lean_ctor_release(x_10, 1);
 x_112 = x_10;
} else {
 lean_dec_ref(x_10);
 x_112 = lean_box(0);
}
x_113 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_113, 0, x_108);
if (lean_is_scalar(x_109)) {
 x_114 = lean_alloc_ctor(2, 1, 0);
} else {
 x_114 = x_109;
 lean_ctor_set_tag(x_114, 2);
}
lean_ctor_set(x_114, 0, x_113);
if (lean_is_scalar(x_112)) {
 x_115 = lean_alloc_ctor(0, 2, 0);
} else {
 x_115 = x_112;
}
lean_ctor_set(x_115, 0, x_114);
lean_ctor_set(x_115, 1, x_111);
return x_115;
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; 
lean_dec(x_110);
lean_dec(x_109);
x_116 = lean_ctor_get(x_10, 1);
lean_inc(x_116);
lean_dec(x_10);
x_117 = lean_ctor_get(x_108, 0);
lean_inc(x_117);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_118 = l_Mathlib_Tactic_PushNeg_transformNegation(x_117, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_116);
if (lean_obj_tag(x_118) == 0)
{
lean_object* x_119; 
x_119 = lean_ctor_get(x_118, 0);
lean_inc(x_119);
if (lean_obj_tag(x_119) == 1)
{
lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; 
x_120 = lean_ctor_get(x_118, 1);
lean_inc(x_120);
lean_dec(x_118);
x_121 = lean_ctor_get(x_119, 0);
lean_inc(x_121);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 x_122 = x_119;
} else {
 lean_dec_ref(x_119);
 x_122 = lean_box(0);
}
x_123 = l_Lean_Meta_Simp_Result_mkEqTrans(x_108, x_121, x_5, x_6, x_7, x_8, x_120);
if (lean_obj_tag(x_123) == 0)
{
lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; 
x_124 = lean_ctor_get(x_123, 0);
lean_inc(x_124);
x_125 = lean_ctor_get(x_123, 1);
lean_inc(x_125);
if (lean_is_exclusive(x_123)) {
 lean_ctor_release(x_123, 0);
 lean_ctor_release(x_123, 1);
 x_126 = x_123;
} else {
 lean_dec_ref(x_123);
 x_126 = lean_box(0);
}
if (lean_is_scalar(x_122)) {
 x_127 = lean_alloc_ctor(1, 1, 0);
} else {
 x_127 = x_122;
}
lean_ctor_set(x_127, 0, x_124);
if (lean_is_scalar(x_126)) {
 x_128 = lean_alloc_ctor(0, 2, 0);
} else {
 x_128 = x_126;
}
lean_ctor_set(x_128, 0, x_127);
lean_ctor_set(x_128, 1, x_125);
return x_128;
}
else
{
lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; 
lean_dec(x_122);
x_129 = lean_ctor_get(x_123, 0);
lean_inc(x_129);
x_130 = lean_ctor_get(x_123, 1);
lean_inc(x_130);
if (lean_is_exclusive(x_123)) {
 lean_ctor_release(x_123, 0);
 lean_ctor_release(x_123, 1);
 x_131 = x_123;
} else {
 lean_dec_ref(x_123);
 x_131 = lean_box(0);
}
if (lean_is_scalar(x_131)) {
 x_132 = lean_alloc_ctor(1, 2, 0);
} else {
 x_132 = x_131;
}
lean_ctor_set(x_132, 0, x_129);
lean_ctor_set(x_132, 1, x_130);
return x_132;
}
}
else
{
lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
if (lean_is_exclusive(x_119)) {
 lean_ctor_release(x_119, 0);
 x_133 = x_119;
} else {
 lean_dec_ref(x_119);
 x_133 = lean_box(0);
}
x_134 = lean_ctor_get(x_118, 1);
lean_inc(x_134);
if (lean_is_exclusive(x_118)) {
 lean_ctor_release(x_118, 0);
 lean_ctor_release(x_118, 1);
 x_135 = x_118;
} else {
 lean_dec_ref(x_118);
 x_135 = lean_box(0);
}
if (lean_is_scalar(x_133)) {
 x_136 = lean_alloc_ctor(1, 1, 0);
} else {
 x_136 = x_133;
 lean_ctor_set_tag(x_136, 1);
}
lean_ctor_set(x_136, 0, x_108);
if (lean_is_scalar(x_135)) {
 x_137 = lean_alloc_ctor(0, 2, 0);
} else {
 x_137 = x_135;
}
lean_ctor_set(x_137, 0, x_136);
lean_ctor_set(x_137, 1, x_134);
return x_137;
}
}
else
{
lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; 
lean_dec(x_108);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_138 = lean_ctor_get(x_118, 0);
lean_inc(x_138);
x_139 = lean_ctor_get(x_118, 1);
lean_inc(x_139);
if (lean_is_exclusive(x_118)) {
 lean_ctor_release(x_118, 0);
 lean_ctor_release(x_118, 1);
 x_140 = x_118;
} else {
 lean_dec_ref(x_118);
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
lean_dec(x_107);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_142 = lean_ctor_get(x_10, 1);
lean_inc(x_142);
if (lean_is_exclusive(x_10)) {
 lean_ctor_release(x_10, 0);
 lean_ctor_release(x_10, 1);
 x_143 = x_10;
} else {
 lean_dec_ref(x_10);
 x_143 = lean_box(0);
}
x_144 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3;
if (lean_is_scalar(x_143)) {
 x_145 = lean_alloc_ctor(0, 2, 0);
} else {
 x_145 = x_143;
}
lean_ctor_set(x_145, 0, x_144);
lean_ctor_set(x_145, 1, x_142);
return x_145;
}
}
}
}
else
{
uint8_t x_146; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_146 = !lean_is_exclusive(x_10);
if (x_146 == 0)
{
return x_10;
}
else
{
lean_object* x_147; lean_object* x_148; lean_object* x_149; 
x_147 = lean_ctor_get(x_10, 0);
x_148 = lean_ctor_get(x_10, 1);
lean_inc(x_148);
lean_inc(x_147);
lean_dec(x_10);
x_149 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_149, 0, x_147);
lean_ctor_set(x_149, 1, x_148);
return x_149;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = 1;
x_12 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_12, 0, x_2);
lean_ctor_set(x_12, 1, x_1);
lean_ctor_set_uint8(x_12, sizeof(void*)*2, x_11);
x_13 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_13, 0, x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_10);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_11, 0, x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_10, 0, x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_1 = l_Lean_Meta_Simp_defaultMaxSteps;
x_2 = lean_unsigned_to_nat(2u);
x_3 = 0;
x_4 = 1;
x_5 = 0;
x_6 = lean_alloc_ctor(0, 2, 19);
lean_ctor_set(x_6, 0, x_1);
lean_ctor_set(x_6, 1, x_2);
lean_ctor_set_uint8(x_6, sizeof(void*)*2, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 1, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 2, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 3, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 4, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 5, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 6, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 7, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 8, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 9, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 10, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 11, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 12, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 13, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 14, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 15, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 16, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 17, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*2 + 18, x_4);
return x_6;
}
}
static uint32_t _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__2() {
_start:
{
lean_object* x_1; uint32_t x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = l_UInt32_ofNatTruncate(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__4;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__9() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7;
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
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5;
x_2 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__9;
x_3 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_1);
lean_ctor_set(x_3, 3, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__6;
x_2 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__10;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_transformNegation), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__3___boxed), 9, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint32_t x_11; lean_object* x_12; uint32_t x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_7 = l_Lean_Meta_getSimpCongrTheorems___rarg(x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_box(0);
x_11 = 0;
x_12 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__1;
x_13 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__2;
x_14 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3;
x_15 = lean_unsigned_to_nat(0u);
x_16 = 0;
x_17 = lean_alloc_ctor(0, 5, 9);
lean_ctor_set(x_17, 0, x_12);
lean_ctor_set(x_17, 1, x_14);
lean_ctor_set(x_17, 2, x_8);
lean_ctor_set(x_17, 3, x_10);
lean_ctor_set(x_17, 4, x_15);
lean_ctor_set_uint32(x_17, sizeof(void*)*5, x_13);
lean_ctor_set_uint32(x_17, sizeof(void*)*5 + 4, x_11);
lean_ctor_set_uint8(x_17, sizeof(void*)*5 + 8, x_16);
x_18 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__1___boxed), 10, 1);
lean_closure_set(x_18, 0, x_10);
x_19 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__2___boxed), 10, 1);
lean_closure_set(x_19, 0, x_10);
x_20 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__4___boxed), 10, 1);
lean_closure_set(x_20, 0, x_10);
x_21 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__12;
x_22 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__13;
x_23 = 1;
x_24 = lean_alloc_ctor(0, 5, 1);
lean_ctor_set(x_24, 0, x_21);
lean_ctor_set(x_24, 1, x_18);
lean_ctor_set(x_24, 2, x_19);
lean_ctor_set(x_24, 3, x_22);
lean_ctor_set(x_24, 4, x_20);
lean_ctor_set_uint8(x_24, sizeof(void*)*5, x_23);
x_25 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__11;
x_26 = l_Lean_Meta_Simp_main(x_1, x_17, x_25, x_24, x_2, x_3, x_4, x_5, x_9);
if (lean_obj_tag(x_26) == 0)
{
uint8_t x_27; 
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
lean_dec(x_28);
lean_ctor_set(x_26, 0, x_29);
return x_26;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_30 = lean_ctor_get(x_26, 0);
x_31 = lean_ctor_get(x_26, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_26);
x_32 = lean_ctor_get(x_30, 0);
lean_inc(x_32);
lean_dec(x_30);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_31);
return x_33;
}
}
else
{
uint8_t x_34; 
x_34 = !lean_is_exclusive(x_26);
if (x_34 == 0)
{
return x_26;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_26, 0);
x_36 = lean_ctor_get(x_26, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_26);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic_PushNeg_pushNegCore___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
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
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("pushNegConv", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_pushNegConv___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegConv() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegConv___closed__4;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_10 = l_Lean_Elab_Tactic_Conv_getLhs(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Lean_instantiateMVars___at_Lean_Elab_Tactic_getMainTarget___spec__1(x_11, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_16 = l_Mathlib_Tactic_PushNeg_pushNegCore(x_14, x_5, x_6, x_7, x_8, x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = l_Lean_Elab_Tactic_Conv_applySimpResult(x_17, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_18);
return x_19;
}
else
{
uint8_t x_20; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_20 = !lean_is_exclusive(x_16);
if (x_20 == 0)
{
return x_16;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_16, 0);
x_22 = lean_ctor_get(x_16, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_16);
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
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_24 = !lean_is_exclusive(x_10);
if (x_24 == 0)
{
return x_10;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_10, 0);
x_26 = lean_ctor_get(x_10, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_10);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___lambda__1), 9, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___closed__1;
x_11 = l_Lean_Elab_Tactic_withMainContext___rarg(x_10, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_elabPushNegConv___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Mathlib_Tactic_PushNeg_elabPushNegConv(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("pushNeg", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("#push_neg ", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__5;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__8;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__4;
x_2 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__6;
x_3 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__10;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNeg() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__11;
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Conv", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("command#conv_=>_", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__1;
x_4 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__2;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("#conv", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("=>", 2, 2);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__2;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_1);
x_6 = lean_box(1);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = lean_unsigned_to_nat(1u);
x_11 = l_Lean_Syntax_getArg(x_1, x_10);
lean_dec(x_1);
x_12 = lean_ctor_get(x_2, 5);
x_13 = 0;
x_14 = l_Lean_SourceInfo_fromRef(x_12, x_13);
x_15 = 1;
x_16 = l_Lean_SourceInfo_fromRef(x_9, x_15);
lean_dec(x_9);
x_17 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__4;
x_18 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
x_19 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1;
lean_inc(x_14);
x_20 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_20, 0, x_14);
lean_ctor_set(x_20, 1, x_19);
x_21 = l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2;
lean_inc(x_14);
x_22 = l_Lean_Syntax_node1(x_14, x_21, x_20);
x_23 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__5;
lean_inc(x_14);
x_24 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_24, 0, x_14);
lean_ctor_set(x_24, 1, x_23);
x_25 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__3;
x_26 = l_Lean_Syntax_node4(x_14, x_25, x_18, x_22, x_24, x_11);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_3);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_box(0);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_1);
lean_ctor_set(x_13, 1, x_12);
x_14 = l_Lean_Elab_Tactic_replaceMainGoal(x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("push_neg made no progress", 25, 25);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_Elab_Tactic_getMainGoal(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
lean_inc(x_11);
x_13 = l_Lean_MVarId_getType(x_11, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_instantiateMVars___at_Lean_Elab_Tactic_getMainTarget___spec__1(x_14, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_15);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_17);
x_19 = l_Mathlib_Tactic_PushNeg_pushNegCore(x_17, x_5, x_6, x_7, x_8, x_18);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_11);
x_22 = l_Lean_Meta_applySimpResultToTarget(x_11, x_17, x_20, x_5, x_6, x_7, x_8, x_21);
lean_dec(x_17);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = lean_name_eq(x_23, x_11);
lean_dec(x_11);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_box(0);
x_27 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1(x_23, x_26, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_27;
}
else
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
lean_dec(x_23);
x_28 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2;
x_29 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic___spec__2(x_28, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_30 = !lean_is_exclusive(x_29);
if (x_30 == 0)
{
return x_29;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_29, 0);
x_32 = lean_ctor_get(x_29, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_29);
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
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_34 = !lean_is_exclusive(x_22);
if (x_34 == 0)
{
return x_22;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_22, 0);
x_36 = lean_ctor_get(x_22, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_22);
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
lean_dec(x_17);
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_38 = !lean_is_exclusive(x_19);
if (x_38 == 0)
{
return x_19;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_19, 0);
x_40 = lean_ctor_get(x_19, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_19);
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
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_42 = !lean_is_exclusive(x_13);
if (x_42 == 0)
{
return x_13;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_13, 0);
x_44 = lean_ctor_get(x_13, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_13);
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
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_46 = !lean_is_exclusive(x_10);
if (x_46 == 0)
{
return x_10;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_10, 0);
x_48 = lean_ctor_get(x_10, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_10);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_pushNegTarget___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___boxed), 9, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Mathlib_Tactic_PushNeg_pushNegTarget___closed__1;
x_11 = l_Lean_Elab_Tactic_withMainContext___rarg(x_10, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_13 = l_Lean_LocalDecl_type(x_1);
x_14 = l_Lean_instantiateMVars___at_Lean_Elab_Tactic_getMainTarget___spec__1(x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Lean_Elab_Tactic_getMainGoal(x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_16);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_20 = l_Mathlib_Tactic_PushNeg_pushNegCore(x_15, x_8, x_9, x_10, x_11, x_19);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = l_instDecidableFalse;
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_18);
x_24 = l_Lean_Meta_applySimpResultToLocalDecl(x_18, x_2, x_21, x_23, x_8, x_9, x_10, x_11, x_22);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
lean_dec(x_18);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46;
x_28 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_27, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_26);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
return x_28;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_29 = lean_ctor_get(x_25, 0);
lean_inc(x_29);
lean_dec(x_25);
x_30 = lean_ctor_get(x_24, 1);
lean_inc(x_30);
lean_dec(x_24);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
lean_dec(x_29);
x_32 = lean_name_eq(x_31, x_18);
lean_dec(x_18);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_box(0);
x_34 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__1(x_31, x_33, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_30);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
return x_34;
}
else
{
lean_object* x_35; lean_object* x_36; uint8_t x_37; 
lean_dec(x_31);
x_35 = l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2;
x_36 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic___spec__2(x_35, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_30);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
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
}
else
{
uint8_t x_41; 
lean_dec(x_18);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_41 = !lean_is_exclusive(x_24);
if (x_41 == 0)
{
return x_24;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_24, 0);
x_43 = lean_ctor_get(x_24, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_24);
x_44 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
}
}
else
{
uint8_t x_45; 
lean_dec(x_18);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_2);
x_45 = !lean_is_exclusive(x_20);
if (x_45 == 0)
{
return x_20;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_46 = lean_ctor_get(x_20, 0);
x_47 = lean_ctor_get(x_20, 1);
lean_inc(x_47);
lean_inc(x_46);
lean_dec(x_20);
x_48 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
return x_48;
}
}
}
else
{
uint8_t x_49; 
lean_dec(x_15);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_2);
x_49 = !lean_is_exclusive(x_17);
if (x_49 == 0)
{
return x_17;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_17, 0);
x_51 = lean_ctor_get(x_17, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_17);
x_52 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
return x_52;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_6);
lean_inc(x_1);
x_11 = l_Lean_FVarId_getDecl(x_1, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
x_15 = l_Lean_LocalDecl_isAuxDecl(x_13);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
lean_free_object(x_11);
x_16 = lean_box(0);
x_17 = l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1(x_13, x_1, x_16, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_14);
lean_dec(x_13);
return x_17;
}
else
{
lean_object* x_18; 
lean_dec(x_13);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_18 = lean_box(0);
lean_ctor_set(x_11, 0, x_18);
return x_11;
}
}
else
{
lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_19 = lean_ctor_get(x_11, 0);
x_20 = lean_ctor_get(x_11, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_11);
x_21 = l_Lean_LocalDecl_isAuxDecl(x_19);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; 
x_22 = lean_box(0);
x_23 = l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1(x_19, x_1, x_22, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_20);
lean_dec(x_19);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; 
lean_dec(x_19);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_24 = lean_box(0);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_20);
return x_25;
}
}
}
else
{
uint8_t x_26; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_26 = !lean_is_exclusive(x_11);
if (x_26 == 0)
{
return x_11;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_11, 0);
x_28 = lean_ctor_get(x_11, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_11);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__2___boxed), 10, 1);
lean_closure_set(x_11, 0, x_1);
x_12 = l_Lean_Elab_Tactic_withMainContext___rarg(x_11, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic_PushNeg_pushNegLocalDecl___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tacticPush_neg_", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7;
x_2 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8;
x_3 = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9;
x_4 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("optional", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__4;
x_2 = l_Lean_Parser_Tactic_location;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNeg___closed__4;
x_2 = l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3;
x_3 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__5;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__6;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg__() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__7;
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("push_neg couldn't find a negation to push", 41, 41);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; lean_object* x_13; 
x_11 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__3;
x_12 = 0;
x_13 = l_Lean_log___at_Lean_Elab_Tactic_closeUsingOrAdmit___spec__3(x_11, x_12, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_13;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3;
x_2 = 1;
x_3 = lean_alloc_ctor(1, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegLocalDecl), 10, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg_pushNegTarget), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___boxed), 10, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2;
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
x_13 = l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__SeqFocus______elabRules__Batteries__Tactic__tacticMap__tacs_x5b___x3b_x5d__1___spec__1___rarg(x_10);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
lean_dec(x_1);
x_16 = l_Lean_Syntax_getOptional_x3f(x_15);
lean_dec(x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__1;
x_18 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2;
x_19 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3;
x_20 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4;
x_21 = l_Lean_Elab_Tactic_withLocation(x_17, x_18, x_19, x_20, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_21;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_22 = lean_ctor_get(x_16, 0);
lean_inc(x_22);
lean_dec(x_16);
x_23 = l_Lean_Elab_Tactic_expandLocation(x_22);
lean_dec(x_22);
x_24 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2;
x_25 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3;
x_26 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4;
x_27 = l_Lean_Elab_Tactic_withLocation(x_23, x_24, x_25, x_26, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_23);
return x_27;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
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
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_Tactic_Location(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Set_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Conv(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_PushNeg(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_Tactic_Location(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Set_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Conv(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__1);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__2);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__3);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__4 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__4);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__5 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__5);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__6 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__6();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__6);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__7);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__8);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__9);
l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__10 = _init_l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__10();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718____closed__10);
res = l_Mathlib_Tactic_PushNeg_initFn____x40_Mathlib_Tactic_PushNeg___hyg_718_(lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
l_Mathlib_Tactic_PushNeg_push__neg_use__distrib = lean_io_result_get_value(res);
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_push__neg_use__distrib);
lean_dec_ref(res);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__1);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__2 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__2);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__1___closed__3);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__1 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__1);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__2 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__2);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__3);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__4 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__4);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__5 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__5);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__6);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__7);
l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___lambda__2___closed__8);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__1);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__2);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__3);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__4);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__5);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__6);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__7 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__7);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__8);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__9);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__10);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__11 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__11);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__12);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__13);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__14);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__15 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__15();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__15);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__16);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__17 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__17();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__17);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__18);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__19);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__20);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__21 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__21();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__21);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__22);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__23 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__23();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__23);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__24);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__25 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__25();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__25);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__26);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__27 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__27();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__27);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__28);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__29 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__29();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__29);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__30);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__31 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__31();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__31);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__32);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__33 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__33();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__33);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__34);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__35);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__36);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__37);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__38);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__39);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__40 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__40();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__40);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__41);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__42);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__43 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__43();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__43);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__44);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__45 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__45();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__45);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__46);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__47);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__48 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__48();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__48);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__49);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__50);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__51 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__51();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__51);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__52);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__53);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__54 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__54();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__54);
l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55 = _init_l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_transformNegationStep___closed__55);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__1 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__1);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__2 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__2();
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__3);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__4 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__4);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__5);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__6 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__6);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__7);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__8 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__8);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__9 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__9);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__10 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__10);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__11 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__11);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__12 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__12();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__12);
l_Mathlib_Tactic_PushNeg_pushNegCore___closed__13 = _init_l_Mathlib_Tactic_PushNeg_pushNegCore___closed__13();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegCore___closed__13);
l_Mathlib_Tactic_PushNeg_pushNegConv___closed__1 = _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegConv___closed__1);
l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2 = _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegConv___closed__2);
l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3 = _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegConv___closed__3);
l_Mathlib_Tactic_PushNeg_pushNegConv___closed__4 = _init_l_Mathlib_Tactic_PushNeg_pushNegConv___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegConv___closed__4);
l_Mathlib_Tactic_PushNeg_pushNegConv = _init_l_Mathlib_Tactic_PushNeg_pushNegConv();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegConv);
l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___closed__1 = _init_l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_elabPushNegConv___rarg___closed__1);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__1 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__1);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__2 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__2);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__3 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__3);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__4 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__4);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__5 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__5);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__6 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__6();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__6);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__7 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__7();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__7);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__8 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__8();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__8);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__9 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__9();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__9);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__10 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__10();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__10);
l_Mathlib_Tactic_PushNeg_pushNeg___closed__11 = _init_l_Mathlib_Tactic_PushNeg_pushNeg___closed__11();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg___closed__11);
l_Mathlib_Tactic_PushNeg_pushNeg = _init_l_Mathlib_Tactic_PushNeg_pushNeg();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNeg);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__1 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__1);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__2 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__2);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__3 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__3);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__4 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__4);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__5 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______macroRules__Mathlib__Tactic__PushNeg__pushNeg__1___closed__5);
l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__1 = _init_l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__1);
l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2 = _init_l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegTarget___lambda__2___closed__2);
l_Mathlib_Tactic_PushNeg_pushNegTarget___closed__1 = _init_l_Mathlib_Tactic_PushNeg_pushNegTarget___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_pushNegTarget___closed__1);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__1 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__1);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__2);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__3 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__3);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__4 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__4);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__5 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__5();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__5);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__6 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__6();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__6);
l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__7 = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__7();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg_____closed__7);
l_Mathlib_Tactic_PushNeg_tacticPush__neg__ = _init_l_Mathlib_Tactic_PushNeg_tacticPush__neg__();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg_tacticPush__neg__);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__1 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__1);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__2 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__2);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__3 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___lambda__1___closed__3);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__1 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__1);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__2);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__3);
l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4 = _init_l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4();
lean_mark_persistent(l_Mathlib_Tactic_PushNeg___aux__Mathlib__Tactic__PushNeg______elabRules__Mathlib__Tactic__PushNeg__tacticPush__neg____1___closed__4);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
