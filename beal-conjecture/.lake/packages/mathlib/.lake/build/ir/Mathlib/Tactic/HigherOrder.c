// Lean compiler output
// Module: Mathlib.Tactic.HigherOrder
// Imports: Init Lean.Elab.Term Lean.Meta.Tactic.Apply Lean.Meta.Tactic.Assumption Lean.Meta.MatchUtil Lean.Meta.Tactic.Intro Lean.Elab.DeclarationRange Mathlib.Tactic.Attr.Register
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
lean_object* l_Lean_Expr_bindingName_x21(lean_object*);
lean_object* l_Lean_Expr_const___override(lean_object*, lean_object*);
lean_object* l_Lean_Meta_ppExpr(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MapDeclarationExtension_insert___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkAppOptM(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkHigherOrderType___closed__2;
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__6;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__5;
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_declRangeExt;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__12;
lean_object* lean_name_append_after(lean_object*, lean_object*);
static lean_object* l_Tactic_mkHigherOrderType___lambda__1___closed__2;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__19;
lean_object* l_Lean_ConstantInfo_levelParams(lean_object*);
static lean_object* l_Tactic_mkComp___closed__7;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__1;
static lean_object* l_Tactic_mkHigherOrderType___lambda__1___closed__4;
lean_object* l_Lean_FileMap_toPosition(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forM___at_Tactic_higherOrderGetParam___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4;
lean_object* l_Lean_Syntax_getId(lean_object*);
static lean_object* l_Tactic_mkComp___closed__6;
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__3;
static lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__2;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__10;
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__2___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Tactic_higherOrderGetParam___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___lambda__1___closed__3;
lean_object* l_Lean_Syntax_getPos_x3f(lean_object*, uint8_t);
static lean_object* l_Tactic_mkComp___lambda__1___closed__2;
lean_object* l_Lean_Syntax_getTailPos_x3f(lean_object*, uint8_t);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__7;
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__13;
static lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__2;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__15;
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1;
LEAN_EXPORT uint8_t l_Tactic_higherOrderGetParam___lambda__1(lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__8;
lean_object* l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__16;
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__12;
LEAN_EXPORT lean_object* l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_mapTR_loop___at_Lean_mkConstWithLevelParams___spec__1(lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__6;
static lean_object* l_Tactic_mkHigherOrderType___lambda__1___closed__3;
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__11;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__1___boxed(lean_object*);
lean_object* l_Lean_throwError___at_Lean_Expr_abstractRangeM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___closed__4;
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__3;
lean_object* l_Lean_getConstInfo___at_Lean_Elab_Term_mkConst___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_Name_getPrefix(lean_object*);
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__4;
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__10;
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__11;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__20;
static lean_object* l_Tactic_higherOrderGetParam___lambda__4___closed__1;
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__1;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkAppM(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__2;
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__3;
LEAN_EXPORT lean_object* l_Tactic_mkComp___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__7;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___boxed(lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__14;
lean_object* l_Lean_throwError___at_Lean_Elab_Term_tryPostponeIfHasMVars___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Attr_higherOrder;
static lean_object* l_Tactic_mkHigherOrderType___lambda__1___closed__1;
static lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__5;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
uint8_t lean_expr_equal(lean_object*, lean_object*);
extern lean_object* l_Lean_Meta_simpExtension;
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
uint8_t l_Lean_Syntax_matchesNull(lean_object*, lean_object*);
lean_object* l_Lean_MVarId_assumption(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_higherOrderAttr;
lean_object* l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__5___closed__1;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___lambda__1___closed__1;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__17;
static lean_object* l_Tactic_higherOrderGetParam___lambda__5___closed__2;
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461_(lean_object*);
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__1(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__8;
uint8_t l_Lean_Expr_binderInfo(lean_object*);
lean_object* l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_addSimpTheorem(lean_object*, lean_object*, uint8_t, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__13;
static lean_object* l_Tactic_mkHigherOrderType___closed__1;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__18;
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__5;
static lean_object* l_Tactic_mkComp___closed__3;
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__8;
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__21;
lean_object* l_Lean_FileMap_leanPosToLspPos(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_bindingDomain_x21(lean_object*);
static lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__9;
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__7;
lean_object* l_Lean_Name_updatePrefix(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Term_TermElabM_run___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__9;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
extern lean_object* l_Lean_Meta_instInhabitedSimpTheorems;
lean_object* l_Lean_Meta_getSimpExtension_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Tactic_higherOrderGetParam___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkForallFVars(lean_object*, lean_object*, uint8_t, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__5___closed__3;
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__4;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_isNone(lean_object*);
lean_object* l_Lean_ScopedEnvExtension_getState___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__6;
LEAN_EXPORT lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___closed__2;
lean_object* l_Lean_Elab_Term_mkConst(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__4;
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg(lean_object*);
lean_object* l_Lean_MVarId_apply(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_registerParametricAttribute___rarg(lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___closed__1;
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__9;
uint8_t l_Lean_Expr_occurs(lean_object*, lean_object*);
lean_object* l_Lean_Meta_withLocalDecl___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_SynthInstance_removeUnusedArguments_x3f___spec__2___rarg(lean_object*, uint8_t, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__14;
lean_object* l_Lean_Elab_Term_addTermInfo(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__5;
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__3___closed__1;
lean_object* l_Lean_Expr_bindingBody_x21(lean_object*);
LEAN_EXPORT lean_object* l_Tactic_mkComp___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(lean_object*, lean_object*);
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__2;
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___closed__5;
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Elab_unsupportedSyntaxExceptionId;
lean_object* l_Lean_Meta_intro1Core(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_intros(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_mkConstWithLevelParams___at_Lean_Elab_Term_expandDeclId___spec__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Parser_Attr_higherOrder___closed__2;
uint8_t l_Lean_Expr_isForall(lean_object*);
static lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__10;
lean_object* l_Lean_Expr_mvarId_x21(lean_object*);
static lean_object* l_Tactic_higherOrderGetParam___lambda__6___closed__1;
lean_object* lean_expr_instantiate1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forM___at_Tactic_higherOrderGetParam___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__1;
lean_object* l_Lean_addDecl(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_matchEq_x3f(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Tactic_mkComp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Tactic_mkComp___lambda__1___closed__4;
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Attr", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("higherOrder", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__1;
x_2 = l_Lean_Parser_Attr_higherOrder___closed__2;
x_3 = l_Lean_Parser_Attr_higherOrder___closed__3;
x_4 = l_Lean_Parser_Attr_higherOrder___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Parser_Attr_higherOrder___closed__6;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("higher_order", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__9() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__8;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("optional", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Parser_Attr_higherOrder___closed__10;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ppSpace", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Parser_Attr_higherOrder___closed__12;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__13;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Parser_Attr_higherOrder___closed__15;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__16;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__7;
x_2 = l_Lean_Parser_Attr_higherOrder___closed__14;
x_3 = l_Lean_Parser_Attr_higherOrder___closed__17;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__11;
x_2 = l_Lean_Parser_Attr_higherOrder___closed__18;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__7;
x_2 = l_Lean_Parser_Attr_higherOrder___closed__9;
x_3 = l_Lean_Parser_Attr_higherOrder___closed__19;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__5;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Lean_Parser_Attr_higherOrder___closed__20;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_Parser_Attr_higherOrder() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Parser_Attr_higherOrder___closed__21;
return x_1;
}
}
static lean_object* _init_l_Tactic_mkComp___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Function", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkComp___lambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("comp", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkComp___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Tactic_mkComp___lambda__1___closed__1;
x_2 = l_Tactic_mkComp___lambda__1___closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_mkComp___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Tactic_mkComp___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_10 = l_Tactic_mkComp(x_1, x_2, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Tactic_mkComp___lambda__1___closed__4;
x_14 = lean_array_push(x_13, x_3);
x_15 = lean_array_push(x_14, x_11);
x_16 = l_Tactic_mkComp___lambda__1___closed__3;
x_17 = l_Lean_Meta_mkAppM(x_16, x_15, x_5, x_6, x_7, x_8, x_12);
return x_17;
}
else
{
uint8_t x_18; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
x_18 = !lean_is_exclusive(x_10);
if (x_18 == 0)
{
return x_10;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_10, 0);
x_20 = lean_ctor_get(x_10, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_10);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
static lean_object* _init_l_Tactic_mkComp___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkComp___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Tactic_mkComp___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_mkComp___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("id", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkComp___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Tactic_mkComp___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_mkComp___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_mkComp___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("mkComp failed occurs check", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkComp___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Tactic_mkComp___closed__6;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Tactic_mkComp(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 0:
{
uint8_t x_8; uint8_t x_9; 
x_8 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_8 == 0)
{
uint8_t x_29; 
x_29 = 0;
x_9 = x_29;
goto block_28;
}
else
{
uint8_t x_30; 
x_30 = 1;
x_9 = x_30;
goto block_28;
}
block_28:
{
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
lean_dec(x_2);
x_10 = l_Tactic_mkComp___closed__2;
x_11 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_10, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
return x_11;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_11);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
else
{
lean_object* x_16; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_16 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_17);
x_20 = l_Tactic_mkComp___closed__5;
x_21 = lean_array_push(x_20, x_19);
x_22 = l_Tactic_mkComp___closed__4;
x_23 = l_Lean_Meta_mkAppOptM(x_22, x_21, x_3, x_4, x_5, x_6, x_18);
return x_23;
}
else
{
uint8_t x_24; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_24 = !lean_is_exclusive(x_16);
if (x_24 == 0)
{
return x_16;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_16, 0);
x_26 = lean_ctor_get(x_16, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_16);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
case 1:
{
uint8_t x_31; uint8_t x_32; 
x_31 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_31 == 0)
{
uint8_t x_52; 
x_52 = 0;
x_32 = x_52;
goto block_51;
}
else
{
uint8_t x_53; 
x_53 = 1;
x_32 = x_53;
goto block_51;
}
block_51:
{
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; uint8_t x_35; 
lean_dec(x_2);
x_33 = l_Tactic_mkComp___closed__2;
x_34 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_33, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_35 = !lean_is_exclusive(x_34);
if (x_35 == 0)
{
return x_34;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_34, 0);
x_37 = lean_ctor_get(x_34, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_34);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
return x_38;
}
}
else
{
lean_object* x_39; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_39 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_39) == 0)
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_ctor_get(x_39, 1);
lean_inc(x_41);
lean_dec(x_39);
x_42 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_42, 0, x_40);
x_43 = l_Tactic_mkComp___closed__5;
x_44 = lean_array_push(x_43, x_42);
x_45 = l_Tactic_mkComp___closed__4;
x_46 = l_Lean_Meta_mkAppOptM(x_45, x_44, x_3, x_4, x_5, x_6, x_41);
return x_46;
}
else
{
uint8_t x_47; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_47 = !lean_is_exclusive(x_39);
if (x_47 == 0)
{
return x_39;
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_39, 0);
x_49 = lean_ctor_get(x_39, 1);
lean_inc(x_49);
lean_inc(x_48);
lean_dec(x_39);
x_50 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_50, 0, x_48);
lean_ctor_set(x_50, 1, x_49);
return x_50;
}
}
}
}
}
case 2:
{
uint8_t x_54; uint8_t x_55; 
x_54 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_54 == 0)
{
uint8_t x_75; 
x_75 = 0;
x_55 = x_75;
goto block_74;
}
else
{
uint8_t x_76; 
x_76 = 1;
x_55 = x_76;
goto block_74;
}
block_74:
{
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; uint8_t x_58; 
lean_dec(x_2);
x_56 = l_Tactic_mkComp___closed__2;
x_57 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_56, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_58 = !lean_is_exclusive(x_57);
if (x_58 == 0)
{
return x_57;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_59 = lean_ctor_get(x_57, 0);
x_60 = lean_ctor_get(x_57, 1);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_57);
x_61 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
return x_61;
}
}
else
{
lean_object* x_62; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_62 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
lean_dec(x_62);
x_65 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_65, 0, x_63);
x_66 = l_Tactic_mkComp___closed__5;
x_67 = lean_array_push(x_66, x_65);
x_68 = l_Tactic_mkComp___closed__4;
x_69 = l_Lean_Meta_mkAppOptM(x_68, x_67, x_3, x_4, x_5, x_6, x_64);
return x_69;
}
else
{
uint8_t x_70; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_70 = !lean_is_exclusive(x_62);
if (x_70 == 0)
{
return x_62;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_62, 0);
x_72 = lean_ctor_get(x_62, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_62);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
}
}
case 3:
{
uint8_t x_77; uint8_t x_78; 
x_77 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_77 == 0)
{
uint8_t x_98; 
x_98 = 0;
x_78 = x_98;
goto block_97;
}
else
{
uint8_t x_99; 
x_99 = 1;
x_78 = x_99;
goto block_97;
}
block_97:
{
if (x_78 == 0)
{
lean_object* x_79; lean_object* x_80; uint8_t x_81; 
lean_dec(x_2);
x_79 = l_Tactic_mkComp___closed__2;
x_80 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_79, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_81 = !lean_is_exclusive(x_80);
if (x_81 == 0)
{
return x_80;
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_82 = lean_ctor_get(x_80, 0);
x_83 = lean_ctor_get(x_80, 1);
lean_inc(x_83);
lean_inc(x_82);
lean_dec(x_80);
x_84 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_84, 0, x_82);
lean_ctor_set(x_84, 1, x_83);
return x_84;
}
}
else
{
lean_object* x_85; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_85 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_85) == 0)
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; 
x_86 = lean_ctor_get(x_85, 0);
lean_inc(x_86);
x_87 = lean_ctor_get(x_85, 1);
lean_inc(x_87);
lean_dec(x_85);
x_88 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_88, 0, x_86);
x_89 = l_Tactic_mkComp___closed__5;
x_90 = lean_array_push(x_89, x_88);
x_91 = l_Tactic_mkComp___closed__4;
x_92 = l_Lean_Meta_mkAppOptM(x_91, x_90, x_3, x_4, x_5, x_6, x_87);
return x_92;
}
else
{
uint8_t x_93; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_93 = !lean_is_exclusive(x_85);
if (x_93 == 0)
{
return x_85;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; 
x_94 = lean_ctor_get(x_85, 0);
x_95 = lean_ctor_get(x_85, 1);
lean_inc(x_95);
lean_inc(x_94);
lean_dec(x_85);
x_96 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_96, 0, x_94);
lean_ctor_set(x_96, 1, x_95);
return x_96;
}
}
}
}
}
case 4:
{
uint8_t x_100; uint8_t x_101; 
x_100 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_100 == 0)
{
uint8_t x_121; 
x_121 = 0;
x_101 = x_121;
goto block_120;
}
else
{
uint8_t x_122; 
x_122 = 1;
x_101 = x_122;
goto block_120;
}
block_120:
{
if (x_101 == 0)
{
lean_object* x_102; lean_object* x_103; uint8_t x_104; 
lean_dec(x_2);
x_102 = l_Tactic_mkComp___closed__2;
x_103 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_102, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_104 = !lean_is_exclusive(x_103);
if (x_104 == 0)
{
return x_103;
}
else
{
lean_object* x_105; lean_object* x_106; lean_object* x_107; 
x_105 = lean_ctor_get(x_103, 0);
x_106 = lean_ctor_get(x_103, 1);
lean_inc(x_106);
lean_inc(x_105);
lean_dec(x_103);
x_107 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_107, 0, x_105);
lean_ctor_set(x_107, 1, x_106);
return x_107;
}
}
else
{
lean_object* x_108; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_108 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_108) == 0)
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
x_109 = lean_ctor_get(x_108, 0);
lean_inc(x_109);
x_110 = lean_ctor_get(x_108, 1);
lean_inc(x_110);
lean_dec(x_108);
x_111 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_111, 0, x_109);
x_112 = l_Tactic_mkComp___closed__5;
x_113 = lean_array_push(x_112, x_111);
x_114 = l_Tactic_mkComp___closed__4;
x_115 = l_Lean_Meta_mkAppOptM(x_114, x_113, x_3, x_4, x_5, x_6, x_110);
return x_115;
}
else
{
uint8_t x_116; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_116 = !lean_is_exclusive(x_108);
if (x_116 == 0)
{
return x_108;
}
else
{
lean_object* x_117; lean_object* x_118; lean_object* x_119; 
x_117 = lean_ctor_get(x_108, 0);
x_118 = lean_ctor_get(x_108, 1);
lean_inc(x_118);
lean_inc(x_117);
lean_dec(x_108);
x_119 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_119, 0, x_117);
lean_ctor_set(x_119, 1, x_118);
return x_119;
}
}
}
}
}
case 5:
{
lean_object* x_123; lean_object* x_124; uint8_t x_125; 
x_123 = lean_ctor_get(x_2, 0);
lean_inc(x_123);
x_124 = lean_ctor_get(x_2, 1);
lean_inc(x_124);
lean_dec(x_2);
x_125 = lean_expr_equal(x_124, x_1);
if (x_125 == 0)
{
uint8_t x_126; 
lean_inc(x_1);
x_126 = l_Lean_Expr_occurs(x_1, x_123);
if (x_126 == 0)
{
lean_object* x_127; lean_object* x_128; 
x_127 = lean_box(0);
x_128 = l_Tactic_mkComp___lambda__1(x_1, x_124, x_123, x_127, x_3, x_4, x_5, x_6, x_7);
return x_128;
}
else
{
lean_object* x_129; lean_object* x_130; uint8_t x_131; 
lean_dec(x_124);
lean_dec(x_123);
lean_dec(x_1);
x_129 = l_Tactic_mkComp___closed__7;
x_130 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_129, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_131 = !lean_is_exclusive(x_130);
if (x_131 == 0)
{
return x_130;
}
else
{
lean_object* x_132; lean_object* x_133; lean_object* x_134; 
x_132 = lean_ctor_get(x_130, 0);
x_133 = lean_ctor_get(x_130, 1);
lean_inc(x_133);
lean_inc(x_132);
lean_dec(x_130);
x_134 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_134, 0, x_132);
lean_ctor_set(x_134, 1, x_133);
return x_134;
}
}
}
else
{
lean_object* x_135; 
lean_dec(x_124);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_135 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_135, 0, x_123);
lean_ctor_set(x_135, 1, x_7);
return x_135;
}
}
case 6:
{
uint8_t x_136; uint8_t x_137; 
x_136 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_136 == 0)
{
uint8_t x_157; 
x_157 = 0;
x_137 = x_157;
goto block_156;
}
else
{
uint8_t x_158; 
x_158 = 1;
x_137 = x_158;
goto block_156;
}
block_156:
{
if (x_137 == 0)
{
lean_object* x_138; lean_object* x_139; uint8_t x_140; 
lean_dec(x_2);
x_138 = l_Tactic_mkComp___closed__2;
x_139 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_138, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_140 = !lean_is_exclusive(x_139);
if (x_140 == 0)
{
return x_139;
}
else
{
lean_object* x_141; lean_object* x_142; lean_object* x_143; 
x_141 = lean_ctor_get(x_139, 0);
x_142 = lean_ctor_get(x_139, 1);
lean_inc(x_142);
lean_inc(x_141);
lean_dec(x_139);
x_143 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_143, 0, x_141);
lean_ctor_set(x_143, 1, x_142);
return x_143;
}
}
else
{
lean_object* x_144; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_144 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_144) == 0)
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; 
x_145 = lean_ctor_get(x_144, 0);
lean_inc(x_145);
x_146 = lean_ctor_get(x_144, 1);
lean_inc(x_146);
lean_dec(x_144);
x_147 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_147, 0, x_145);
x_148 = l_Tactic_mkComp___closed__5;
x_149 = lean_array_push(x_148, x_147);
x_150 = l_Tactic_mkComp___closed__4;
x_151 = l_Lean_Meta_mkAppOptM(x_150, x_149, x_3, x_4, x_5, x_6, x_146);
return x_151;
}
else
{
uint8_t x_152; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_152 = !lean_is_exclusive(x_144);
if (x_152 == 0)
{
return x_144;
}
else
{
lean_object* x_153; lean_object* x_154; lean_object* x_155; 
x_153 = lean_ctor_get(x_144, 0);
x_154 = lean_ctor_get(x_144, 1);
lean_inc(x_154);
lean_inc(x_153);
lean_dec(x_144);
x_155 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_155, 0, x_153);
lean_ctor_set(x_155, 1, x_154);
return x_155;
}
}
}
}
}
case 7:
{
uint8_t x_159; uint8_t x_160; 
x_159 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_159 == 0)
{
uint8_t x_180; 
x_180 = 0;
x_160 = x_180;
goto block_179;
}
else
{
uint8_t x_181; 
x_181 = 1;
x_160 = x_181;
goto block_179;
}
block_179:
{
if (x_160 == 0)
{
lean_object* x_161; lean_object* x_162; uint8_t x_163; 
lean_dec(x_2);
x_161 = l_Tactic_mkComp___closed__2;
x_162 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_161, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_163 = !lean_is_exclusive(x_162);
if (x_163 == 0)
{
return x_162;
}
else
{
lean_object* x_164; lean_object* x_165; lean_object* x_166; 
x_164 = lean_ctor_get(x_162, 0);
x_165 = lean_ctor_get(x_162, 1);
lean_inc(x_165);
lean_inc(x_164);
lean_dec(x_162);
x_166 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_166, 0, x_164);
lean_ctor_set(x_166, 1, x_165);
return x_166;
}
}
else
{
lean_object* x_167; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_167 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_167) == 0)
{
lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; 
x_168 = lean_ctor_get(x_167, 0);
lean_inc(x_168);
x_169 = lean_ctor_get(x_167, 1);
lean_inc(x_169);
lean_dec(x_167);
x_170 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_170, 0, x_168);
x_171 = l_Tactic_mkComp___closed__5;
x_172 = lean_array_push(x_171, x_170);
x_173 = l_Tactic_mkComp___closed__4;
x_174 = l_Lean_Meta_mkAppOptM(x_173, x_172, x_3, x_4, x_5, x_6, x_169);
return x_174;
}
else
{
uint8_t x_175; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_175 = !lean_is_exclusive(x_167);
if (x_175 == 0)
{
return x_167;
}
else
{
lean_object* x_176; lean_object* x_177; lean_object* x_178; 
x_176 = lean_ctor_get(x_167, 0);
x_177 = lean_ctor_get(x_167, 1);
lean_inc(x_177);
lean_inc(x_176);
lean_dec(x_167);
x_178 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_178, 0, x_176);
lean_ctor_set(x_178, 1, x_177);
return x_178;
}
}
}
}
}
case 8:
{
uint8_t x_182; uint8_t x_183; 
x_182 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_182 == 0)
{
uint8_t x_203; 
x_203 = 0;
x_183 = x_203;
goto block_202;
}
else
{
uint8_t x_204; 
x_204 = 1;
x_183 = x_204;
goto block_202;
}
block_202:
{
if (x_183 == 0)
{
lean_object* x_184; lean_object* x_185; uint8_t x_186; 
lean_dec(x_2);
x_184 = l_Tactic_mkComp___closed__2;
x_185 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_184, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_186 = !lean_is_exclusive(x_185);
if (x_186 == 0)
{
return x_185;
}
else
{
lean_object* x_187; lean_object* x_188; lean_object* x_189; 
x_187 = lean_ctor_get(x_185, 0);
x_188 = lean_ctor_get(x_185, 1);
lean_inc(x_188);
lean_inc(x_187);
lean_dec(x_185);
x_189 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_189, 0, x_187);
lean_ctor_set(x_189, 1, x_188);
return x_189;
}
}
else
{
lean_object* x_190; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_190 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_190) == 0)
{
lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; 
x_191 = lean_ctor_get(x_190, 0);
lean_inc(x_191);
x_192 = lean_ctor_get(x_190, 1);
lean_inc(x_192);
lean_dec(x_190);
x_193 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_193, 0, x_191);
x_194 = l_Tactic_mkComp___closed__5;
x_195 = lean_array_push(x_194, x_193);
x_196 = l_Tactic_mkComp___closed__4;
x_197 = l_Lean_Meta_mkAppOptM(x_196, x_195, x_3, x_4, x_5, x_6, x_192);
return x_197;
}
else
{
uint8_t x_198; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_198 = !lean_is_exclusive(x_190);
if (x_198 == 0)
{
return x_190;
}
else
{
lean_object* x_199; lean_object* x_200; lean_object* x_201; 
x_199 = lean_ctor_get(x_190, 0);
x_200 = lean_ctor_get(x_190, 1);
lean_inc(x_200);
lean_inc(x_199);
lean_dec(x_190);
x_201 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_201, 0, x_199);
lean_ctor_set(x_201, 1, x_200);
return x_201;
}
}
}
}
}
case 9:
{
uint8_t x_205; uint8_t x_206; 
x_205 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_205 == 0)
{
uint8_t x_226; 
x_226 = 0;
x_206 = x_226;
goto block_225;
}
else
{
uint8_t x_227; 
x_227 = 1;
x_206 = x_227;
goto block_225;
}
block_225:
{
if (x_206 == 0)
{
lean_object* x_207; lean_object* x_208; uint8_t x_209; 
lean_dec(x_2);
x_207 = l_Tactic_mkComp___closed__2;
x_208 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_207, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_209 = !lean_is_exclusive(x_208);
if (x_209 == 0)
{
return x_208;
}
else
{
lean_object* x_210; lean_object* x_211; lean_object* x_212; 
x_210 = lean_ctor_get(x_208, 0);
x_211 = lean_ctor_get(x_208, 1);
lean_inc(x_211);
lean_inc(x_210);
lean_dec(x_208);
x_212 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_212, 0, x_210);
lean_ctor_set(x_212, 1, x_211);
return x_212;
}
}
else
{
lean_object* x_213; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_213 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_213) == 0)
{
lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; 
x_214 = lean_ctor_get(x_213, 0);
lean_inc(x_214);
x_215 = lean_ctor_get(x_213, 1);
lean_inc(x_215);
lean_dec(x_213);
x_216 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_216, 0, x_214);
x_217 = l_Tactic_mkComp___closed__5;
x_218 = lean_array_push(x_217, x_216);
x_219 = l_Tactic_mkComp___closed__4;
x_220 = l_Lean_Meta_mkAppOptM(x_219, x_218, x_3, x_4, x_5, x_6, x_215);
return x_220;
}
else
{
uint8_t x_221; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_221 = !lean_is_exclusive(x_213);
if (x_221 == 0)
{
return x_213;
}
else
{
lean_object* x_222; lean_object* x_223; lean_object* x_224; 
x_222 = lean_ctor_get(x_213, 0);
x_223 = lean_ctor_get(x_213, 1);
lean_inc(x_223);
lean_inc(x_222);
lean_dec(x_213);
x_224 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_224, 0, x_222);
lean_ctor_set(x_224, 1, x_223);
return x_224;
}
}
}
}
}
case 10:
{
uint8_t x_228; uint8_t x_229; 
x_228 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_228 == 0)
{
uint8_t x_249; 
x_249 = 0;
x_229 = x_249;
goto block_248;
}
else
{
uint8_t x_250; 
x_250 = 1;
x_229 = x_250;
goto block_248;
}
block_248:
{
if (x_229 == 0)
{
lean_object* x_230; lean_object* x_231; uint8_t x_232; 
lean_dec(x_2);
x_230 = l_Tactic_mkComp___closed__2;
x_231 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_230, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_232 = !lean_is_exclusive(x_231);
if (x_232 == 0)
{
return x_231;
}
else
{
lean_object* x_233; lean_object* x_234; lean_object* x_235; 
x_233 = lean_ctor_get(x_231, 0);
x_234 = lean_ctor_get(x_231, 1);
lean_inc(x_234);
lean_inc(x_233);
lean_dec(x_231);
x_235 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_235, 0, x_233);
lean_ctor_set(x_235, 1, x_234);
return x_235;
}
}
else
{
lean_object* x_236; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_236 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_236) == 0)
{
lean_object* x_237; lean_object* x_238; lean_object* x_239; lean_object* x_240; lean_object* x_241; lean_object* x_242; lean_object* x_243; 
x_237 = lean_ctor_get(x_236, 0);
lean_inc(x_237);
x_238 = lean_ctor_get(x_236, 1);
lean_inc(x_238);
lean_dec(x_236);
x_239 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_239, 0, x_237);
x_240 = l_Tactic_mkComp___closed__5;
x_241 = lean_array_push(x_240, x_239);
x_242 = l_Tactic_mkComp___closed__4;
x_243 = l_Lean_Meta_mkAppOptM(x_242, x_241, x_3, x_4, x_5, x_6, x_238);
return x_243;
}
else
{
uint8_t x_244; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_244 = !lean_is_exclusive(x_236);
if (x_244 == 0)
{
return x_236;
}
else
{
lean_object* x_245; lean_object* x_246; lean_object* x_247; 
x_245 = lean_ctor_get(x_236, 0);
x_246 = lean_ctor_get(x_236, 1);
lean_inc(x_246);
lean_inc(x_245);
lean_dec(x_236);
x_247 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_247, 0, x_245);
lean_ctor_set(x_247, 1, x_246);
return x_247;
}
}
}
}
}
default: 
{
uint8_t x_251; uint8_t x_252; 
x_251 = lean_expr_equal(x_2, x_1);
lean_dec(x_1);
if (x_251 == 0)
{
uint8_t x_272; 
x_272 = 0;
x_252 = x_272;
goto block_271;
}
else
{
uint8_t x_273; 
x_273 = 1;
x_252 = x_273;
goto block_271;
}
block_271:
{
if (x_252 == 0)
{
lean_object* x_253; lean_object* x_254; uint8_t x_255; 
lean_dec(x_2);
x_253 = l_Tactic_mkComp___closed__2;
x_254 = l_Lean_throwError___at_Lean_Meta_setInlineAttribute___spec__1(x_253, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_255 = !lean_is_exclusive(x_254);
if (x_255 == 0)
{
return x_254;
}
else
{
lean_object* x_256; lean_object* x_257; lean_object* x_258; 
x_256 = lean_ctor_get(x_254, 0);
x_257 = lean_ctor_get(x_254, 1);
lean_inc(x_257);
lean_inc(x_256);
lean_dec(x_254);
x_258 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_258, 0, x_256);
lean_ctor_set(x_258, 1, x_257);
return x_258;
}
}
else
{
lean_object* x_259; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_259 = lean_infer_type(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_259) == 0)
{
lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; 
x_260 = lean_ctor_get(x_259, 0);
lean_inc(x_260);
x_261 = lean_ctor_get(x_259, 1);
lean_inc(x_261);
lean_dec(x_259);
x_262 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_262, 0, x_260);
x_263 = l_Tactic_mkComp___closed__5;
x_264 = lean_array_push(x_263, x_262);
x_265 = l_Tactic_mkComp___closed__4;
x_266 = l_Lean_Meta_mkAppOptM(x_265, x_264, x_3, x_4, x_5, x_6, x_261);
return x_266;
}
else
{
uint8_t x_267; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_267 = !lean_is_exclusive(x_259);
if (x_267 == 0)
{
return x_259;
}
else
{
lean_object* x_268; lean_object* x_269; lean_object* x_270; 
x_268 = lean_ctor_get(x_259, 0);
x_269 = lean_ctor_get(x_259, 1);
lean_inc(x_269);
lean_inc(x_268);
lean_dec(x_259);
x_270 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_270, 0, x_268);
lean_ctor_set(x_270, 1, x_269);
return x_270;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Tactic_mkComp___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Tactic_mkComp___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_4);
return x_10;
}
}
static lean_object* _init_l_Tactic_mkHigherOrderType___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not an equality ", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkHigherOrderType___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Tactic_mkHigherOrderType___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_mkHigherOrderType___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkHigherOrderType___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Tactic_mkHigherOrderType___lambda__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__1(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = l_Lean_Expr_bindingBody_x21(x_1);
x_10 = lean_expr_instantiate1(x_9, x_3);
lean_dec(x_9);
x_11 = l_Lean_Expr_isForall(x_10);
if (x_11 == 0)
{
lean_object* x_12; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_10);
x_12 = l_Lean_Meta_matchEq_x3f(x_10, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_3);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = l_Lean_Meta_ppExpr(x_10, x_4, x_5, x_6, x_7, x_14);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_MessageData_ofFormat(x_16);
x_19 = l_Tactic_mkHigherOrderType___lambda__1___closed__2;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
x_21 = l_Tactic_mkHigherOrderType___lambda__1___closed__4;
x_22 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
x_23 = l_Lean_throwError___at_Lean_Expr_abstractRangeM___spec__1(x_22, x_4, x_5, x_6, x_7, x_17);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_23;
}
else
{
uint8_t x_24; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
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
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
lean_dec(x_10);
x_28 = lean_ctor_get(x_13, 0);
lean_inc(x_28);
lean_dec(x_13);
x_29 = lean_ctor_get(x_28, 1);
lean_inc(x_29);
lean_dec(x_28);
x_30 = lean_ctor_get(x_12, 1);
lean_inc(x_30);
lean_dec(x_12);
x_31 = lean_ctor_get(x_29, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_29, 1);
lean_inc(x_32);
lean_dec(x_29);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_33 = l_Tactic_mkComp(x_3, x_31, x_4, x_5, x_6, x_7, x_30);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
x_35 = lean_ctor_get(x_33, 1);
lean_inc(x_35);
lean_dec(x_33);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_36 = l_Tactic_mkComp(x_3, x_32, x_4, x_5, x_6, x_7, x_35);
if (lean_obj_tag(x_36) == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 0);
lean_inc(x_37);
x_38 = lean_ctor_get(x_36, 1);
lean_inc(x_38);
lean_dec(x_36);
x_39 = l_Lean_Meta_mkEq(x_34, x_37, x_4, x_5, x_6, x_7, x_38);
return x_39;
}
else
{
uint8_t x_40; 
lean_dec(x_34);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_40 = !lean_is_exclusive(x_36);
if (x_40 == 0)
{
return x_36;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_36, 0);
x_42 = lean_ctor_get(x_36, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_36);
x_43 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
}
else
{
uint8_t x_44; 
lean_dec(x_32);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_44 = !lean_is_exclusive(x_33);
if (x_44 == 0)
{
return x_33;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_33, 0);
x_46 = lean_ctor_get(x_33, 1);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_33);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
}
}
else
{
uint8_t x_48; 
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_48 = !lean_is_exclusive(x_12);
if (x_48 == 0)
{
return x_12;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_12, 0);
x_50 = lean_ctor_get(x_12, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_12);
x_51 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_51, 0, x_49);
lean_ctor_set(x_51, 1, x_50);
return x_51;
}
}
}
else
{
lean_object* x_52; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_52 = l_Tactic_mkHigherOrderType(x_10, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_52) == 0)
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; uint8_t x_57; uint8_t x_58; lean_object* x_59; 
x_53 = lean_ctor_get(x_52, 0);
lean_inc(x_53);
x_54 = lean_ctor_get(x_52, 1);
lean_inc(x_54);
lean_dec(x_52);
x_55 = l_Tactic_mkComp___closed__5;
x_56 = lean_array_push(x_55, x_3);
x_57 = 0;
x_58 = 1;
x_59 = l_Lean_Meta_mkForallFVars(x_56, x_53, x_57, x_58, x_2, x_4, x_5, x_6, x_7, x_54);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_59;
}
else
{
uint8_t x_60; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_60 = !lean_is_exclusive(x_52);
if (x_60 == 0)
{
return x_52;
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_61 = lean_ctor_get(x_52, 0);
x_62 = lean_ctor_get(x_52, 1);
lean_inc(x_62);
lean_inc(x_61);
lean_dec(x_52);
x_63 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_63, 0, x_61);
lean_ctor_set(x_63, 1, x_62);
return x_63;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_8 = l_Lean_Expr_bindingName_x21(x_1);
x_9 = l_Lean_Expr_binderInfo(x_1);
x_10 = l_Lean_Expr_bindingDomain_x21(x_1);
x_11 = lean_box(x_9);
x_12 = lean_alloc_closure((void*)(l_Tactic_mkHigherOrderType___lambda__1___boxed), 8, 2);
lean_closure_set(x_12, 0, x_1);
lean_closure_set(x_12, 1, x_11);
x_13 = 0;
x_14 = l_Lean_Meta_withLocalDecl___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_SynthInstance_removeUnusedArguments_x3f___spec__2___rarg(x_8, x_9, x_10, x_12, x_13, x_3, x_4, x_5, x_6, x_7);
return x_14;
}
}
static lean_object* _init_l_Tactic_mkHigherOrderType___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not a forall", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Tactic_mkHigherOrderType___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Tactic_mkHigherOrderType___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = l_Lean_Expr_isForall(x_1);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_dec(x_1);
x_8 = l_Tactic_mkHigherOrderType___closed__2;
x_9 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_8, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
return x_9;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_9);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_box(0);
x_15 = l_Tactic_mkHigherOrderType___lambda__2(x_1, x_14, x_2, x_3, x_4, x_5, x_6);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; 
x_9 = lean_unbox(x_2);
lean_dec(x_2);
x_10 = l_Tactic_mkHigherOrderType___lambda__1(x_1, x_9, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Tactic_mkHigherOrderType___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Tactic_mkHigherOrderType___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Elab_unsupportedSyntaxExceptionId;
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__1;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_6, 1);
lean_inc(x_9);
lean_dec(x_6);
x_10 = 0;
x_11 = l_Lean_Syntax_getPos_x3f(x_1, x_10);
x_12 = l_Lean_Syntax_getTailPos_x3f(x_1, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_unsigned_to_nat(0u);
lean_inc(x_9);
x_14 = l_Lean_FileMap_toPosition(x_9, x_13);
lean_inc(x_14);
x_15 = l_Lean_FileMap_leanPosToLspPos(x_9, x_14);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_16; 
lean_dec(x_9);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_15, 1);
x_18 = lean_ctor_get(x_15, 0);
lean_dec(x_18);
lean_inc(x_17);
lean_inc(x_14);
x_19 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_19, 0, x_14);
lean_ctor_set(x_19, 1, x_17);
lean_ctor_set(x_19, 2, x_14);
lean_ctor_set(x_19, 3, x_17);
lean_ctor_set(x_15, 1, x_8);
lean_ctor_set(x_15, 0, x_19);
return x_15;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_dec(x_15);
lean_inc(x_20);
lean_inc(x_14);
x_21 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_21, 0, x_14);
lean_ctor_set(x_21, 1, x_20);
lean_ctor_set(x_21, 2, x_14);
lean_ctor_set(x_21, 3, x_20);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_8);
return x_22;
}
}
else
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_15);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_24 = lean_ctor_get(x_15, 1);
x_25 = lean_ctor_get(x_15, 0);
lean_dec(x_25);
x_26 = lean_ctor_get(x_12, 0);
lean_inc(x_26);
lean_dec(x_12);
lean_inc(x_9);
x_27 = l_Lean_FileMap_toPosition(x_9, x_26);
lean_dec(x_26);
lean_inc(x_27);
x_28 = l_Lean_FileMap_leanPosToLspPos(x_9, x_27);
lean_dec(x_9);
x_29 = lean_ctor_get(x_28, 1);
lean_inc(x_29);
lean_dec(x_28);
x_30 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_30, 0, x_14);
lean_ctor_set(x_30, 1, x_24);
lean_ctor_set(x_30, 2, x_27);
lean_ctor_set(x_30, 3, x_29);
lean_ctor_set(x_15, 1, x_8);
lean_ctor_set(x_15, 0, x_30);
return x_15;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_31 = lean_ctor_get(x_15, 1);
lean_inc(x_31);
lean_dec(x_15);
x_32 = lean_ctor_get(x_12, 0);
lean_inc(x_32);
lean_dec(x_12);
lean_inc(x_9);
x_33 = l_Lean_FileMap_toPosition(x_9, x_32);
lean_dec(x_32);
lean_inc(x_33);
x_34 = l_Lean_FileMap_leanPosToLspPos(x_9, x_33);
lean_dec(x_9);
x_35 = lean_ctor_get(x_34, 1);
lean_inc(x_35);
lean_dec(x_34);
x_36 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_36, 0, x_14);
lean_ctor_set(x_36, 1, x_31);
lean_ctor_set(x_36, 2, x_33);
lean_ctor_set(x_36, 3, x_35);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_8);
return x_37;
}
}
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_11, 0);
lean_inc(x_38);
lean_dec(x_11);
lean_inc(x_9);
x_39 = l_Lean_FileMap_toPosition(x_9, x_38);
lean_dec(x_38);
lean_inc(x_39);
x_40 = l_Lean_FileMap_leanPosToLspPos(x_9, x_39);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_41; 
lean_dec(x_9);
x_41 = !lean_is_exclusive(x_40);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_40, 1);
x_43 = lean_ctor_get(x_40, 0);
lean_dec(x_43);
lean_inc(x_42);
lean_inc(x_39);
x_44 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_44, 0, x_39);
lean_ctor_set(x_44, 1, x_42);
lean_ctor_set(x_44, 2, x_39);
lean_ctor_set(x_44, 3, x_42);
lean_ctor_set(x_40, 1, x_8);
lean_ctor_set(x_40, 0, x_44);
return x_40;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_40, 1);
lean_inc(x_45);
lean_dec(x_40);
lean_inc(x_45);
lean_inc(x_39);
x_46 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_46, 0, x_39);
lean_ctor_set(x_46, 1, x_45);
lean_ctor_set(x_46, 2, x_39);
lean_ctor_set(x_46, 3, x_45);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_8);
return x_47;
}
}
else
{
uint8_t x_48; 
x_48 = !lean_is_exclusive(x_40);
if (x_48 == 0)
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_49 = lean_ctor_get(x_40, 1);
x_50 = lean_ctor_get(x_40, 0);
lean_dec(x_50);
x_51 = lean_ctor_get(x_12, 0);
lean_inc(x_51);
lean_dec(x_12);
lean_inc(x_9);
x_52 = l_Lean_FileMap_toPosition(x_9, x_51);
lean_dec(x_51);
lean_inc(x_52);
x_53 = l_Lean_FileMap_leanPosToLspPos(x_9, x_52);
lean_dec(x_9);
x_54 = lean_ctor_get(x_53, 1);
lean_inc(x_54);
lean_dec(x_53);
x_55 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_55, 0, x_39);
lean_ctor_set(x_55, 1, x_49);
lean_ctor_set(x_55, 2, x_52);
lean_ctor_set(x_55, 3, x_54);
lean_ctor_set(x_40, 1, x_8);
lean_ctor_set(x_40, 0, x_55);
return x_40;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_56 = lean_ctor_get(x_40, 1);
lean_inc(x_56);
lean_dec(x_40);
x_57 = lean_ctor_get(x_12, 0);
lean_inc(x_57);
lean_dec(x_12);
lean_inc(x_9);
x_58 = l_Lean_FileMap_toPosition(x_9, x_57);
lean_dec(x_57);
lean_inc(x_58);
x_59 = l_Lean_FileMap_leanPosToLspPos(x_9, x_58);
lean_dec(x_9);
x_60 = lean_ctor_get(x_59, 1);
lean_inc(x_60);
lean_dec(x_59);
x_61 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_61, 0, x_39);
lean_ctor_set(x_61, 1, x_56);
lean_ctor_set(x_61, 2, x_58);
lean_ctor_set(x_61, 3, x_60);
x_62 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_8);
return x_62;
}
}
}
}
}
static lean_object* _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_declRangeExt;
return x_1;
}
}
static lean_object* _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__2;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
x_2 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
lean_ctor_set(x_2, 2, x_1);
lean_ctor_set(x_2, 3, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
x_2 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__5;
x_3 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_1);
lean_ctor_set(x_3, 3, x_1);
lean_ctor_set(x_3, 4, x_1);
lean_ctor_set(x_3, 5, x_2);
lean_ctor_set(x_3, 6, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_st_ref_take(x_8, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = !lean_is_exclusive(x_11);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_14 = lean_ctor_get(x_11, 0);
x_15 = lean_ctor_get(x_11, 4);
lean_dec(x_15);
x_16 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1;
x_17 = l_Lean_MapDeclarationExtension_insert___rarg(x_16, x_14, x_1, x_2);
x_18 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4;
lean_ctor_set(x_11, 4, x_18);
lean_ctor_set(x_11, 0, x_17);
x_19 = lean_st_ref_set(x_8, x_11, x_12);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_st_ref_take(x_6, x_20);
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_21, 1);
lean_inc(x_23);
lean_dec(x_21);
x_24 = !lean_is_exclusive(x_22);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_25 = lean_ctor_get(x_22, 1);
lean_dec(x_25);
x_26 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6;
lean_ctor_set(x_22, 1, x_26);
x_27 = lean_st_ref_set(x_6, x_22, x_23);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_ctor_get(x_27, 0);
lean_dec(x_29);
x_30 = lean_box(0);
lean_ctor_set(x_27, 0, x_30);
return x_27;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_27, 1);
lean_inc(x_31);
lean_dec(x_27);
x_32 = lean_box(0);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_31);
return x_33;
}
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_34 = lean_ctor_get(x_22, 0);
x_35 = lean_ctor_get(x_22, 2);
x_36 = lean_ctor_get(x_22, 3);
x_37 = lean_ctor_get(x_22, 4);
lean_inc(x_37);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_22);
x_38 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6;
x_39 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_39, 0, x_34);
lean_ctor_set(x_39, 1, x_38);
lean_ctor_set(x_39, 2, x_35);
lean_ctor_set(x_39, 3, x_36);
lean_ctor_set(x_39, 4, x_37);
x_40 = lean_st_ref_set(x_6, x_39, x_23);
x_41 = lean_ctor_get(x_40, 1);
lean_inc(x_41);
if (lean_is_exclusive(x_40)) {
 lean_ctor_release(x_40, 0);
 lean_ctor_release(x_40, 1);
 x_42 = x_40;
} else {
 lean_dec_ref(x_40);
 x_42 = lean_box(0);
}
x_43 = lean_box(0);
if (lean_is_scalar(x_42)) {
 x_44 = lean_alloc_ctor(0, 2, 0);
} else {
 x_44 = x_42;
}
lean_ctor_set(x_44, 0, x_43);
lean_ctor_set(x_44, 1, x_41);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; 
x_45 = lean_ctor_get(x_11, 0);
x_46 = lean_ctor_get(x_11, 1);
x_47 = lean_ctor_get(x_11, 2);
x_48 = lean_ctor_get(x_11, 3);
x_49 = lean_ctor_get(x_11, 5);
x_50 = lean_ctor_get(x_11, 6);
lean_inc(x_50);
lean_inc(x_49);
lean_inc(x_48);
lean_inc(x_47);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_11);
x_51 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1;
x_52 = l_Lean_MapDeclarationExtension_insert___rarg(x_51, x_45, x_1, x_2);
x_53 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4;
x_54 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_46);
lean_ctor_set(x_54, 2, x_47);
lean_ctor_set(x_54, 3, x_48);
lean_ctor_set(x_54, 4, x_53);
lean_ctor_set(x_54, 5, x_49);
lean_ctor_set(x_54, 6, x_50);
x_55 = lean_st_ref_set(x_8, x_54, x_12);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
lean_dec(x_55);
x_57 = lean_st_ref_take(x_6, x_56);
x_58 = lean_ctor_get(x_57, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 1);
lean_inc(x_59);
lean_dec(x_57);
x_60 = lean_ctor_get(x_58, 0);
lean_inc(x_60);
x_61 = lean_ctor_get(x_58, 2);
lean_inc(x_61);
x_62 = lean_ctor_get(x_58, 3);
lean_inc(x_62);
x_63 = lean_ctor_get(x_58, 4);
lean_inc(x_63);
if (lean_is_exclusive(x_58)) {
 lean_ctor_release(x_58, 0);
 lean_ctor_release(x_58, 1);
 lean_ctor_release(x_58, 2);
 lean_ctor_release(x_58, 3);
 lean_ctor_release(x_58, 4);
 x_64 = x_58;
} else {
 lean_dec_ref(x_58);
 x_64 = lean_box(0);
}
x_65 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6;
if (lean_is_scalar(x_64)) {
 x_66 = lean_alloc_ctor(0, 5, 0);
} else {
 x_66 = x_64;
}
lean_ctor_set(x_66, 0, x_60);
lean_ctor_set(x_66, 1, x_65);
lean_ctor_set(x_66, 2, x_61);
lean_ctor_set(x_66, 3, x_62);
lean_ctor_set(x_66, 4, x_63);
x_67 = lean_st_ref_set(x_6, x_66, x_59);
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
x_70 = lean_box(0);
if (lean_is_scalar(x_69)) {
 x_71 = lean_alloc_ctor(0, 2, 0);
} else {
 x_71 = x_69;
}
lean_ctor_set(x_71, 0, x_70);
lean_ctor_set(x_71, 1, x_68);
return x_71;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Tactic_higherOrderGetParam___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
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
LEAN_EXPORT lean_object* l_List_forM___at_Tactic_higherOrderGetParam___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_9; lean_object* x_10; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_9 = lean_box(0);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_1, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_1, 1);
lean_inc(x_12);
lean_dec(x_1);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_13 = l_Lean_MVarId_assumption(x_11, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; 
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_1 = x_12;
x_8 = x_14;
goto _start;
}
else
{
uint8_t x_16; 
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
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
}
}
LEAN_EXPORT uint8_t l_Tactic_higherOrderGetParam___lambda__1(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = 0;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_1);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("functor_norm", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Tactic_higherOrderGetParam___lambda__3___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = l_Tactic_higherOrderGetParam___lambda__3___closed__2;
x_12 = l_Lean_Meta_getSimpExtension_x3f(x_11, x_10);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_2);
lean_dec(x_1);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = l_Tactic_mkComp___closed__2;
x_16 = l_Lean_throwError___at_Tactic_higherOrderGetParam___spec__4(x_15, x_6, x_7, x_8, x_9, x_14);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_17 = lean_ctor_get(x_12, 1);
lean_inc(x_17);
lean_dec(x_12);
x_18 = lean_ctor_get(x_13, 0);
lean_inc(x_18);
lean_dec(x_13);
x_19 = lean_st_ref_get(x_9, x_17);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_19, 1);
x_23 = lean_ctor_get(x_21, 0);
lean_inc(x_23);
lean_dec(x_21);
x_24 = l_Lean_Meta_instInhabitedSimpTheorems;
x_25 = l_Lean_ScopedEnvExtension_getState___rarg(x_24, x_18, x_23);
lean_dec(x_23);
x_26 = lean_ctor_get(x_25, 2);
lean_inc(x_26);
lean_dec(x_25);
x_27 = l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(x_26, x_1);
if (x_27 == 0)
{
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_ctor_set(x_19, 0, x_2);
return x_19;
}
else
{
uint8_t x_28; uint8_t x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; 
lean_free_object(x_19);
x_28 = 1;
x_29 = 0;
x_30 = 0;
x_31 = lean_unsigned_to_nat(1000u);
lean_inc(x_2);
x_32 = l_Lean_Meta_addSimpTheorem(x_18, x_2, x_28, x_29, x_30, x_31, x_6, x_7, x_8, x_9, x_22);
if (lean_obj_tag(x_32) == 0)
{
uint8_t x_33; 
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; 
x_34 = lean_ctor_get(x_32, 0);
lean_dec(x_34);
lean_ctor_set(x_32, 0, x_2);
return x_32;
}
else
{
lean_object* x_35; lean_object* x_36; 
x_35 = lean_ctor_get(x_32, 1);
lean_inc(x_35);
lean_dec(x_32);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_2);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
else
{
uint8_t x_37; 
lean_dec(x_2);
x_37 = !lean_is_exclusive(x_32);
if (x_37 == 0)
{
return x_32;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_32, 0);
x_39 = lean_ctor_get(x_32, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_32);
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
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_41 = lean_ctor_get(x_19, 0);
x_42 = lean_ctor_get(x_19, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_19);
x_43 = lean_ctor_get(x_41, 0);
lean_inc(x_43);
lean_dec(x_41);
x_44 = l_Lean_Meta_instInhabitedSimpTheorems;
x_45 = l_Lean_ScopedEnvExtension_getState___rarg(x_44, x_18, x_43);
lean_dec(x_43);
x_46 = lean_ctor_get(x_45, 2);
lean_inc(x_46);
lean_dec(x_45);
x_47 = l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(x_46, x_1);
if (x_47 == 0)
{
lean_object* x_48; 
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_2);
lean_ctor_set(x_48, 1, x_42);
return x_48;
}
else
{
uint8_t x_49; uint8_t x_50; uint8_t x_51; lean_object* x_52; lean_object* x_53; 
x_49 = 1;
x_50 = 0;
x_51 = 0;
x_52 = lean_unsigned_to_nat(1000u);
lean_inc(x_2);
x_53 = l_Lean_Meta_addSimpTheorem(x_18, x_2, x_49, x_50, x_51, x_52, x_6, x_7, x_8, x_9, x_42);
if (lean_obj_tag(x_53) == 0)
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_53, 1);
lean_inc(x_54);
if (lean_is_exclusive(x_53)) {
 lean_ctor_release(x_53, 0);
 lean_ctor_release(x_53, 1);
 x_55 = x_53;
} else {
 lean_dec_ref(x_53);
 x_55 = lean_box(0);
}
if (lean_is_scalar(x_55)) {
 x_56 = lean_alloc_ctor(0, 2, 0);
} else {
 x_56 = x_55;
}
lean_ctor_set(x_56, 0, x_2);
lean_ctor_set(x_56, 1, x_54);
return x_56;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
lean_dec(x_2);
x_57 = lean_ctor_get(x_53, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_53, 1);
lean_inc(x_58);
if (lean_is_exclusive(x_53)) {
 lean_ctor_release(x_53, 0);
 lean_ctor_release(x_53, 1);
 x_59 = x_53;
} else {
 lean_dec_ref(x_53);
 x_59 = lean_box(0);
}
if (lean_is_scalar(x_59)) {
 x_60 = lean_alloc_ctor(1, 2, 0);
} else {
 x_60 = x_59;
}
lean_ctor_set(x_60, 0, x_57);
lean_ctor_set(x_60, 1, x_58);
return x_60;
}
}
}
}
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Meta_simpExtension;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15) {
_start:
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_inc(x_1);
x_16 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_16, 0, x_1);
lean_ctor_set(x_16, 1, x_2);
lean_ctor_set(x_16, 2, x_3);
lean_inc(x_1);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_1);
lean_ctor_set(x_17, 1, x_4);
x_18 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_8);
lean_ctor_set(x_18, 2, x_17);
x_19 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_19, 0, x_18);
lean_inc(x_14);
lean_inc(x_13);
x_20 = l_Lean_addDecl(x_19, x_13, x_14, x_15);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_21 = lean_ctor_get(x_20, 1);
lean_inc(x_21);
lean_dec(x_20);
x_22 = lean_ctor_get(x_13, 5);
lean_inc(x_22);
lean_inc(x_13);
x_23 = l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2(x_22, x_9, x_10, x_11, x_12, x_13, x_14, x_21);
lean_dec(x_22);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
lean_inc(x_13);
x_26 = l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2(x_5, x_9, x_10, x_11, x_12, x_13, x_14, x_25);
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = lean_ctor_get(x_26, 1);
lean_ctor_set(x_26, 1, x_28);
lean_ctor_set(x_26, 0, x_24);
lean_inc(x_1);
x_30 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3(x_1, x_26, x_9, x_10, x_11, x_12, x_13, x_14, x_29);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
lean_dec(x_30);
lean_inc(x_9);
lean_inc(x_1);
x_32 = l_Lean_mkConstWithLevelParams___at_Lean_Elab_Term_expandDeclId___spec__7(x_1, x_9, x_10, x_11, x_12, x_13, x_14, x_31);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; uint8_t x_36; uint8_t x_37; lean_object* x_38; 
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
x_34 = lean_ctor_get(x_32, 1);
lean_inc(x_34);
lean_dec(x_32);
x_35 = lean_box(0);
x_36 = 1;
x_37 = 0;
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_6);
x_38 = l_Lean_Elab_Term_addTermInfo(x_5, x_33, x_6, x_6, x_35, x_36, x_37, x_9, x_10, x_11, x_12, x_13, x_14, x_34);
if (lean_obj_tag(x_38) == 0)
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; uint8_t x_49; 
x_39 = lean_ctor_get(x_38, 1);
lean_inc(x_39);
lean_dec(x_38);
x_40 = lean_st_ref_get(x_14, x_39);
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
x_42 = lean_ctor_get(x_40, 1);
lean_inc(x_42);
lean_dec(x_40);
x_43 = lean_ctor_get(x_41, 0);
lean_inc(x_43);
lean_dec(x_41);
x_44 = l_Lean_Meta_instInhabitedSimpTheorems;
x_45 = l_Tactic_higherOrderGetParam___lambda__4___closed__1;
x_46 = l_Lean_ScopedEnvExtension_getState___rarg(x_44, x_45, x_43);
lean_dec(x_43);
x_47 = lean_ctor_get(x_46, 2);
lean_inc(x_47);
lean_dec(x_46);
x_48 = lean_alloc_ctor(0, 1, 2);
lean_ctor_set(x_48, 0, x_7);
lean_ctor_set_uint8(x_48, sizeof(void*)*1, x_36);
lean_ctor_set_uint8(x_48, sizeof(void*)*1 + 1, x_37);
lean_inc(x_48);
x_49 = l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(x_47, x_48);
if (x_49 == 0)
{
lean_object* x_50; lean_object* x_51; 
x_50 = lean_box(0);
x_51 = l_Tactic_higherOrderGetParam___lambda__3(x_48, x_1, x_50, x_9, x_10, x_11, x_12, x_13, x_14, x_42);
lean_dec(x_10);
lean_dec(x_9);
return x_51;
}
else
{
uint8_t x_52; lean_object* x_53; lean_object* x_54; 
x_52 = 0;
x_53 = lean_unsigned_to_nat(1000u);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_1);
x_54 = l_Lean_Meta_addSimpTheorem(x_45, x_1, x_36, x_37, x_52, x_53, x_11, x_12, x_13, x_14, x_42);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; lean_object* x_57; 
x_55 = lean_ctor_get(x_54, 0);
lean_inc(x_55);
x_56 = lean_ctor_get(x_54, 1);
lean_inc(x_56);
lean_dec(x_54);
x_57 = l_Tactic_higherOrderGetParam___lambda__3(x_48, x_1, x_55, x_9, x_10, x_11, x_12, x_13, x_14, x_56);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_55);
return x_57;
}
else
{
uint8_t x_58; 
lean_dec(x_48);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_1);
x_58 = !lean_is_exclusive(x_54);
if (x_58 == 0)
{
return x_54;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_59 = lean_ctor_get(x_54, 0);
x_60 = lean_ctor_get(x_54, 1);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_54);
x_61 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
return x_61;
}
}
}
}
else
{
uint8_t x_62; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_1);
x_62 = !lean_is_exclusive(x_38);
if (x_62 == 0)
{
return x_38;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_38, 0);
x_64 = lean_ctor_get(x_38, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_38);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
}
else
{
uint8_t x_66; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_66 = !lean_is_exclusive(x_32);
if (x_66 == 0)
{
return x_32;
}
else
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_67 = lean_ctor_get(x_32, 0);
x_68 = lean_ctor_get(x_32, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_32);
x_69 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_69, 0, x_67);
lean_ctor_set(x_69, 1, x_68);
return x_69;
}
}
}
else
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_70 = lean_ctor_get(x_26, 0);
x_71 = lean_ctor_get(x_26, 1);
lean_inc(x_71);
lean_inc(x_70);
lean_dec(x_26);
x_72 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_72, 0, x_24);
lean_ctor_set(x_72, 1, x_70);
lean_inc(x_1);
x_73 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3(x_1, x_72, x_9, x_10, x_11, x_12, x_13, x_14, x_71);
x_74 = lean_ctor_get(x_73, 1);
lean_inc(x_74);
lean_dec(x_73);
lean_inc(x_9);
lean_inc(x_1);
x_75 = l_Lean_mkConstWithLevelParams___at_Lean_Elab_Term_expandDeclId___spec__7(x_1, x_9, x_10, x_11, x_12, x_13, x_14, x_74);
if (lean_obj_tag(x_75) == 0)
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; uint8_t x_79; uint8_t x_80; lean_object* x_81; 
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_75, 1);
lean_inc(x_77);
lean_dec(x_75);
x_78 = lean_box(0);
x_79 = 1;
x_80 = 0;
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_6);
x_81 = l_Lean_Elab_Term_addTermInfo(x_5, x_76, x_6, x_6, x_78, x_79, x_80, x_9, x_10, x_11, x_12, x_13, x_14, x_77);
if (lean_obj_tag(x_81) == 0)
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; uint8_t x_92; 
x_82 = lean_ctor_get(x_81, 1);
lean_inc(x_82);
lean_dec(x_81);
x_83 = lean_st_ref_get(x_14, x_82);
x_84 = lean_ctor_get(x_83, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_83, 1);
lean_inc(x_85);
lean_dec(x_83);
x_86 = lean_ctor_get(x_84, 0);
lean_inc(x_86);
lean_dec(x_84);
x_87 = l_Lean_Meta_instInhabitedSimpTheorems;
x_88 = l_Tactic_higherOrderGetParam___lambda__4___closed__1;
x_89 = l_Lean_ScopedEnvExtension_getState___rarg(x_87, x_88, x_86);
lean_dec(x_86);
x_90 = lean_ctor_get(x_89, 2);
lean_inc(x_90);
lean_dec(x_89);
x_91 = lean_alloc_ctor(0, 1, 2);
lean_ctor_set(x_91, 0, x_7);
lean_ctor_set_uint8(x_91, sizeof(void*)*1, x_79);
lean_ctor_set_uint8(x_91, sizeof(void*)*1 + 1, x_80);
lean_inc(x_91);
x_92 = l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(x_90, x_91);
if (x_92 == 0)
{
lean_object* x_93; lean_object* x_94; 
x_93 = lean_box(0);
x_94 = l_Tactic_higherOrderGetParam___lambda__3(x_91, x_1, x_93, x_9, x_10, x_11, x_12, x_13, x_14, x_85);
lean_dec(x_10);
lean_dec(x_9);
return x_94;
}
else
{
uint8_t x_95; lean_object* x_96; lean_object* x_97; 
x_95 = 0;
x_96 = lean_unsigned_to_nat(1000u);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_1);
x_97 = l_Lean_Meta_addSimpTheorem(x_88, x_1, x_79, x_80, x_95, x_96, x_11, x_12, x_13, x_14, x_85);
if (lean_obj_tag(x_97) == 0)
{
lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
lean_dec(x_97);
x_100 = l_Tactic_higherOrderGetParam___lambda__3(x_91, x_1, x_98, x_9, x_10, x_11, x_12, x_13, x_14, x_99);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_98);
return x_100;
}
else
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; 
lean_dec(x_91);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_1);
x_101 = lean_ctor_get(x_97, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_97, 1);
lean_inc(x_102);
if (lean_is_exclusive(x_97)) {
 lean_ctor_release(x_97, 0);
 lean_ctor_release(x_97, 1);
 x_103 = x_97;
} else {
 lean_dec_ref(x_97);
 x_103 = lean_box(0);
}
if (lean_is_scalar(x_103)) {
 x_104 = lean_alloc_ctor(1, 2, 0);
} else {
 x_104 = x_103;
}
lean_ctor_set(x_104, 0, x_101);
lean_ctor_set(x_104, 1, x_102);
return x_104;
}
}
}
else
{
lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_1);
x_105 = lean_ctor_get(x_81, 0);
lean_inc(x_105);
x_106 = lean_ctor_get(x_81, 1);
lean_inc(x_106);
if (lean_is_exclusive(x_81)) {
 lean_ctor_release(x_81, 0);
 lean_ctor_release(x_81, 1);
 x_107 = x_81;
} else {
 lean_dec_ref(x_81);
 x_107 = lean_box(0);
}
if (lean_is_scalar(x_107)) {
 x_108 = lean_alloc_ctor(1, 2, 0);
} else {
 x_108 = x_107;
}
lean_ctor_set(x_108, 0, x_105);
lean_ctor_set(x_108, 1, x_106);
return x_108;
}
}
else
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_109 = lean_ctor_get(x_75, 0);
lean_inc(x_109);
x_110 = lean_ctor_get(x_75, 1);
lean_inc(x_110);
if (lean_is_exclusive(x_75)) {
 lean_ctor_release(x_75, 0);
 lean_ctor_release(x_75, 1);
 x_111 = x_75;
} else {
 lean_dec_ref(x_75);
 x_111 = lean_box(0);
}
if (lean_is_scalar(x_111)) {
 x_112 = lean_alloc_ctor(1, 2, 0);
} else {
 x_112 = x_111;
}
lean_ctor_set(x_112, 0, x_109);
lean_ctor_set(x_112, 1, x_110);
return x_112;
}
}
}
else
{
uint8_t x_113; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_113 = !lean_is_exclusive(x_20);
if (x_113 == 0)
{
return x_20;
}
else
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; 
x_114 = lean_ctor_get(x_20, 0);
x_115 = lean_ctor_get(x_20, 1);
lean_inc(x_115);
lean_inc(x_114);
lean_dec(x_20);
x_116 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_116, 0, x_114);
lean_ctor_set(x_116, 1, x_115);
return x_116;
}
}
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("funext", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__5___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Tactic_higherOrderGetParam___lambda__5___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__5___closed__3() {
_start:
{
uint8_t x_1; uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_1 = 0;
x_2 = 1;
x_3 = 0;
x_4 = lean_alloc_ctor(0, 0, 4);
lean_ctor_set_uint8(x_4, 0, x_1);
lean_ctor_set_uint8(x_4, 1, x_2);
lean_ctor_set_uint8(x_4, 2, x_3);
lean_ctor_set_uint8(x_4, 3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
lean_inc(x_6);
lean_inc(x_1);
x_13 = l_Lean_getConstInfo___at_Lean_Elab_Term_mkConst___spec__1(x_1, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_ConstantInfo_levelParams(x_14);
lean_dec(x_14);
lean_inc(x_2);
lean_inc(x_16);
x_17 = l_List_mapTR_loop___at_Lean_mkConstWithLevelParams___spec__1(x_16, x_2);
lean_inc(x_1);
x_18 = l_Lean_Expr_const___override(x_1, x_17);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_19 = lean_infer_type(x_18, x_8, x_9, x_10, x_11, x_15);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(x_20, x_6, x_7, x_8, x_9, x_10, x_11, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_25 = l_Tactic_mkHigherOrderType(x_23, x_8, x_9, x_10, x_11, x_24);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_25, 1);
lean_inc(x_27);
lean_dec(x_25);
lean_inc(x_26);
x_28 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_28, 0, x_26);
x_29 = 0;
x_30 = lean_box(0);
lean_inc(x_8);
x_31 = l___private_Lean_Meta_Basic_0__Lean_Meta_mkFreshExprMVarImpl(x_28, x_29, x_30, x_8, x_9, x_10, x_11, x_27);
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_31, 1);
lean_inc(x_33);
lean_dec(x_31);
x_34 = l_Lean_Expr_mvarId_x21(x_32);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_35 = l_Lean_MVarId_intros(x_34, x_8, x_9, x_10, x_11, x_33);
if (lean_obj_tag(x_35) == 0)
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; uint8_t x_40; lean_object* x_41; 
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_35, 1);
lean_inc(x_37);
lean_dec(x_35);
x_38 = lean_ctor_get(x_36, 1);
lean_inc(x_38);
lean_dec(x_36);
x_39 = l_Tactic_higherOrderGetParam___lambda__5___closed__2;
x_40 = 1;
lean_inc(x_10);
lean_inc(x_6);
lean_inc(x_2);
x_41 = l_Lean_Elab_Term_mkConst(x_39, x_2, x_40, x_6, x_7, x_8, x_9, x_10, x_11, x_37);
if (lean_obj_tag(x_41) == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_41, 1);
lean_inc(x_43);
lean_dec(x_41);
x_44 = l_Tactic_higherOrderGetParam___lambda__5___closed__3;
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_45 = l_Lean_MVarId_apply(x_38, x_42, x_44, x_8, x_9, x_10, x_11, x_43);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; 
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; uint8_t x_50; 
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_47 = lean_ctor_get(x_45, 1);
lean_inc(x_47);
lean_dec(x_45);
x_48 = l_Tactic_mkComp___closed__2;
x_49 = l_Lean_throwError___at_Lean_Elab_Term_tryPostponeIfHasMVars___spec__1(x_48, x_6, x_7, x_8, x_9, x_10, x_11, x_47);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
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
lean_object* x_54; 
x_54 = lean_ctor_get(x_46, 1);
lean_inc(x_54);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; lean_object* x_58; 
x_55 = lean_ctor_get(x_45, 1);
lean_inc(x_55);
lean_dec(x_45);
x_56 = lean_ctor_get(x_46, 0);
lean_inc(x_56);
lean_dec(x_46);
x_57 = 0;
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_58 = l_Lean_Meta_intro1Core(x_56, x_57, x_8, x_9, x_10, x_11, x_55);
if (lean_obj_tag(x_58) == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_58, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_58, 1);
lean_inc(x_60);
lean_dec(x_58);
x_61 = lean_ctor_get(x_59, 1);
lean_inc(x_61);
lean_dec(x_59);
lean_inc(x_10);
lean_inc(x_6);
lean_inc(x_2);
lean_inc(x_1);
x_62 = l_Lean_Elab_Term_mkConst(x_1, x_2, x_40, x_6, x_7, x_8, x_9, x_10, x_11, x_60);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
lean_dec(x_62);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_65 = l_Lean_MVarId_apply(x_61, x_63, x_44, x_8, x_9, x_10, x_11, x_64);
if (lean_obj_tag(x_65) == 0)
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; 
x_66 = lean_ctor_get(x_65, 0);
lean_inc(x_66);
x_67 = lean_ctor_get(x_65, 1);
lean_inc(x_67);
lean_dec(x_65);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
x_68 = l_List_forM___at_Tactic_higherOrderGetParam___spec__5(x_66, x_6, x_7, x_8, x_9, x_10, x_11, x_67);
if (lean_obj_tag(x_68) == 0)
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_69 = lean_ctor_get(x_68, 1);
lean_inc(x_69);
lean_dec(x_68);
x_70 = l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(x_32, x_6, x_7, x_8, x_9, x_10, x_11, x_69);
x_71 = lean_ctor_get(x_70, 0);
lean_inc(x_71);
x_72 = lean_ctor_get(x_70, 1);
lean_inc(x_72);
lean_dec(x_70);
x_73 = l_Tactic_higherOrderGetParam___lambda__4(x_3, x_16, x_26, x_2, x_4, x_5, x_1, x_71, x_6, x_7, x_8, x_9, x_10, x_11, x_72);
return x_73;
}
else
{
uint8_t x_74; 
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_74 = !lean_is_exclusive(x_68);
if (x_74 == 0)
{
return x_68;
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_75 = lean_ctor_get(x_68, 0);
x_76 = lean_ctor_get(x_68, 1);
lean_inc(x_76);
lean_inc(x_75);
lean_dec(x_68);
x_77 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_77, 0, x_75);
lean_ctor_set(x_77, 1, x_76);
return x_77;
}
}
}
else
{
uint8_t x_78; 
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_78 = !lean_is_exclusive(x_65);
if (x_78 == 0)
{
return x_65;
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_79 = lean_ctor_get(x_65, 0);
x_80 = lean_ctor_get(x_65, 1);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_65);
x_81 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_81, 0, x_79);
lean_ctor_set(x_81, 1, x_80);
return x_81;
}
}
}
else
{
uint8_t x_82; 
lean_dec(x_61);
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_82 = !lean_is_exclusive(x_62);
if (x_82 == 0)
{
return x_62;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_62, 0);
x_84 = lean_ctor_get(x_62, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_62);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
else
{
uint8_t x_86; 
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_86 = !lean_is_exclusive(x_58);
if (x_86 == 0)
{
return x_58;
}
else
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; 
x_87 = lean_ctor_get(x_58, 0);
x_88 = lean_ctor_get(x_58, 1);
lean_inc(x_88);
lean_inc(x_87);
lean_dec(x_58);
x_89 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_89, 0, x_87);
lean_ctor_set(x_89, 1, x_88);
return x_89;
}
}
}
else
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; uint8_t x_93; 
lean_dec(x_54);
lean_dec(x_46);
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_90 = lean_ctor_get(x_45, 1);
lean_inc(x_90);
lean_dec(x_45);
x_91 = l_Tactic_mkComp___closed__2;
x_92 = l_Lean_throwError___at_Lean_Elab_Term_tryPostponeIfHasMVars___spec__1(x_91, x_6, x_7, x_8, x_9, x_10, x_11, x_90);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
x_93 = !lean_is_exclusive(x_92);
if (x_93 == 0)
{
return x_92;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; 
x_94 = lean_ctor_get(x_92, 0);
x_95 = lean_ctor_get(x_92, 1);
lean_inc(x_95);
lean_inc(x_94);
lean_dec(x_92);
x_96 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_96, 0, x_94);
lean_ctor_set(x_96, 1, x_95);
return x_96;
}
}
}
}
else
{
uint8_t x_97; 
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_97 = !lean_is_exclusive(x_45);
if (x_97 == 0)
{
return x_45;
}
else
{
lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_98 = lean_ctor_get(x_45, 0);
x_99 = lean_ctor_get(x_45, 1);
lean_inc(x_99);
lean_inc(x_98);
lean_dec(x_45);
x_100 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_100, 0, x_98);
lean_ctor_set(x_100, 1, x_99);
return x_100;
}
}
}
else
{
uint8_t x_101; 
lean_dec(x_38);
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_101 = !lean_is_exclusive(x_41);
if (x_101 == 0)
{
return x_41;
}
else
{
lean_object* x_102; lean_object* x_103; lean_object* x_104; 
x_102 = lean_ctor_get(x_41, 0);
x_103 = lean_ctor_get(x_41, 1);
lean_inc(x_103);
lean_inc(x_102);
lean_dec(x_41);
x_104 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_104, 0, x_102);
lean_ctor_set(x_104, 1, x_103);
return x_104;
}
}
}
else
{
uint8_t x_105; 
lean_dec(x_32);
lean_dec(x_26);
lean_dec(x_16);
lean_dec(x_11);
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
x_105 = !lean_is_exclusive(x_35);
if (x_105 == 0)
{
return x_35;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; 
x_106 = lean_ctor_get(x_35, 0);
x_107 = lean_ctor_get(x_35, 1);
lean_inc(x_107);
lean_inc(x_106);
lean_dec(x_35);
x_108 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_108, 0, x_106);
lean_ctor_set(x_108, 1, x_107);
return x_108;
}
}
}
else
{
uint8_t x_109; 
lean_dec(x_16);
lean_dec(x_11);
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
x_109 = !lean_is_exclusive(x_25);
if (x_109 == 0)
{
return x_25;
}
else
{
lean_object* x_110; lean_object* x_111; lean_object* x_112; 
x_110 = lean_ctor_get(x_25, 0);
x_111 = lean_ctor_get(x_25, 1);
lean_inc(x_111);
lean_inc(x_110);
lean_dec(x_25);
x_112 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_112, 0, x_110);
lean_ctor_set(x_112, 1, x_111);
return x_112;
}
}
}
else
{
uint8_t x_113; 
lean_dec(x_16);
lean_dec(x_11);
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
x_113 = !lean_is_exclusive(x_19);
if (x_113 == 0)
{
return x_19;
}
else
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; 
x_114 = lean_ctor_get(x_19, 0);
x_115 = lean_ctor_get(x_19, 1);
lean_inc(x_115);
lean_inc(x_114);
lean_dec(x_19);
x_116 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_116, 0, x_114);
lean_ctor_set(x_116, 1, x_115);
return x_116;
}
}
}
else
{
uint8_t x_117; 
lean_dec(x_11);
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
x_117 = !lean_is_exclusive(x_13);
if (x_117 == 0)
{
return x_13;
}
else
{
lean_object* x_118; lean_object* x_119; lean_object* x_120; 
x_118 = lean_ctor_get(x_13, 0);
x_119 = lean_ctor_get(x_13, 1);
lean_inc(x_119);
lean_inc(x_118);
lean_dec(x_13);
x_120 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_120, 0, x_118);
lean_ctor_set(x_120, 1, x_119);
return x_120;
}
}
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Tactic_higherOrderGetParam___lambda__6___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__3() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l_Tactic_higherOrderGetParam___lambda__6___closed__2;
x_3 = l_Tactic_higherOrderGetParam___lambda__6___closed__1;
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
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Tactic_higherOrderGetParam___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_box(0);
x_4 = 1;
x_5 = 0;
x_6 = l_Tactic_higherOrderGetParam___lambda__6___closed__3;
x_7 = l_Tactic_higherOrderGetParam___lambda__6___closed__4;
x_8 = lean_alloc_ctor(0, 9, 10);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_2);
lean_ctor_set(x_8, 2, x_3);
lean_ctor_set(x_8, 3, x_6);
lean_ctor_set(x_8, 4, x_7);
lean_ctor_set(x_8, 5, x_2);
lean_ctor_set(x_8, 6, x_2);
lean_ctor_set(x_8, 7, x_1);
lean_ctor_set(x_8, 8, x_1);
lean_ctor_set_uint8(x_8, sizeof(void*)*9, x_4);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 1, x_4);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 2, x_5);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 3, x_4);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 4, x_4);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 5, x_5);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 6, x_5);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 7, x_5);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 8, x_4);
lean_ctor_set_uint8(x_8, sizeof(void*)*9 + 9, x_5);
return x_8;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_2);
lean_ctor_set(x_3, 3, x_2);
lean_ctor_set(x_3, 4, x_1);
lean_ctor_set(x_3, 5, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__7() {
_start:
{
uint8_t x_1; uint8_t x_2; uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_1 = 0;
x_2 = 1;
x_3 = 1;
x_4 = 0;
x_5 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_5, 0, x_1);
lean_ctor_set_uint8(x_5, 1, x_1);
lean_ctor_set_uint8(x_5, 2, x_1);
lean_ctor_set_uint8(x_5, 3, x_1);
lean_ctor_set_uint8(x_5, 4, x_1);
lean_ctor_set_uint8(x_5, 5, x_2);
lean_ctor_set_uint8(x_5, 6, x_2);
lean_ctor_set_uint8(x_5, 7, x_1);
lean_ctor_set_uint8(x_5, 8, x_2);
lean_ctor_set_uint8(x_5, 9, x_3);
lean_ctor_set_uint8(x_5, 10, x_1);
lean_ctor_set_uint8(x_5, 11, x_4);
lean_ctor_set_uint8(x_5, 12, x_2);
return x_5;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
x_2 = l_Tactic_higherOrderGetParam___lambda__6___closed__3;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; 
x_1 = lean_box(0);
x_2 = l_Tactic_higherOrderGetParam___lambda__6___closed__7;
x_3 = l_Tactic_higherOrderGetParam___lambda__6___closed__8;
x_4 = l_Tactic_higherOrderGetParam___lambda__6___closed__9;
x_5 = lean_unsigned_to_nat(0u);
x_6 = 0;
x_7 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_7, 0, x_2);
lean_ctor_set(x_7, 1, x_3);
lean_ctor_set(x_7, 2, x_4);
lean_ctor_set(x_7, 3, x_1);
lean_ctor_set(x_7, 4, x_5);
lean_ctor_set(x_7, 5, x_1);
lean_ctor_set_uint8(x_7, sizeof(void*)*6, x_6);
lean_ctor_set_uint8(x_7, sizeof(void*)*6 + 1, x_6);
return x_7;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
x_3 = lean_alloc_ctor(0, 9, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_1);
lean_ctor_set(x_3, 3, x_2);
lean_ctor_set(x_3, 4, x_2);
lean_ctor_set(x_3, 5, x_2);
lean_ctor_set(x_3, 6, x_2);
lean_ctor_set(x_3, 7, x_2);
lean_ctor_set(x_3, 8, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3;
x_2 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
lean_ctor_set(x_2, 2, x_1);
lean_ctor_set(x_2, 3, x_1);
return x_2;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = lean_box(0);
x_2 = l_Tactic_higherOrderGetParam___lambda__6___closed__11;
x_3 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6;
x_4 = l_Tactic_higherOrderGetParam___lambda__6___closed__3;
x_5 = l_Tactic_higherOrderGetParam___lambda__6___closed__12;
x_6 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set(x_6, 1, x_3);
lean_ctor_set(x_6, 2, x_1);
lean_ctor_set(x_6, 3, x_4);
lean_ctor_set(x_6, 4, x_5);
return x_6;
}
}
static lean_object* _init_l_Tactic_higherOrderGetParam___lambda__6___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("'", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_box(0);
x_9 = lean_box(0);
x_10 = l_Tactic_higherOrderGetParam___lambda__6___closed__13;
x_11 = lean_st_mk_ref(x_10, x_7);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_41; lean_object* x_42; 
x_41 = lean_unsigned_to_nat(0u);
x_42 = l_Lean_Syntax_getArg(x_2, x_41);
x_12 = x_42;
goto block_40;
}
else
{
lean_object* x_43; 
x_43 = lean_ctor_get(x_4, 0);
lean_inc(x_43);
x_12 = x_43;
goto block_40;
}
block_40:
{
lean_object* x_13; 
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = l_Tactic_higherOrderGetParam___lambda__6___closed__14;
lean_inc(x_1);
x_35 = lean_name_append_after(x_1, x_34);
x_13 = x_35;
goto block_33;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_36 = lean_ctor_get(x_4, 0);
lean_inc(x_36);
lean_dec(x_4);
x_37 = l_Lean_Syntax_getId(x_36);
lean_dec(x_36);
x_38 = l_Lean_Name_getPrefix(x_1);
x_39 = l_Lean_Name_updatePrefix(x_37, x_38);
x_13 = x_39;
goto block_33;
}
block_33:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_14 = lean_ctor_get(x_11, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_11, 1);
lean_inc(x_15);
lean_dec(x_11);
x_16 = lean_alloc_closure((void*)(l_Tactic_higherOrderGetParam___lambda__5), 12, 5);
lean_closure_set(x_16, 0, x_1);
lean_closure_set(x_16, 1, x_9);
lean_closure_set(x_16, 2, x_13);
lean_closure_set(x_16, 3, x_12);
lean_closure_set(x_16, 4, x_8);
x_17 = l_Tactic_higherOrderGetParam___lambda__6___closed__5;
x_18 = l_Tactic_higherOrderGetParam___lambda__6___closed__6;
x_19 = l_Tactic_higherOrderGetParam___lambda__6___closed__10;
lean_inc(x_14);
x_20 = l_Lean_Elab_Term_TermElabM_run___rarg(x_16, x_17, x_18, x_19, x_14, x_5, x_6, x_15);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = lean_ctor_get(x_21, 0);
lean_inc(x_23);
lean_dec(x_21);
x_24 = lean_st_ref_get(x_14, x_22);
lean_dec(x_14);
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; 
x_26 = lean_ctor_get(x_24, 0);
lean_dec(x_26);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
lean_dec(x_24);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_23);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
else
{
uint8_t x_29; 
lean_dec(x_14);
x_29 = !lean_is_exclusive(x_20);
if (x_29 == 0)
{
return x_20;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_20, 0);
x_31 = lean_ctor_get(x_20, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_20);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
x_6 = l_Lean_Parser_Attr_higherOrder___closed__5;
lean_inc(x_2);
x_7 = l_Lean_Syntax_isOfKind(x_2, x_6);
if (x_7 == 0)
{
lean_object* x_8; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg(x_5);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = lean_unsigned_to_nat(1u);
x_10 = l_Lean_Syntax_getArg(x_2, x_9);
x_11 = l_Lean_Syntax_isNone(x_10);
if (x_11 == 0)
{
uint8_t x_12; 
lean_inc(x_10);
x_12 = l_Lean_Syntax_matchesNull(x_10, x_9);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg(x_5);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_unsigned_to_nat(0u);
x_15 = l_Lean_Syntax_getArg(x_10, x_14);
lean_dec(x_10);
x_16 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_16, 0, x_15);
x_17 = lean_box(0);
x_18 = l_Tactic_higherOrderGetParam___lambda__6(x_1, x_2, x_17, x_16, x_3, x_4, x_5);
lean_dec(x_2);
return x_18;
}
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_dec(x_10);
x_19 = lean_box(0);
x_20 = lean_box(0);
x_21 = l_Tactic_higherOrderGetParam___lambda__6(x_1, x_2, x_20, x_19, x_3, x_4, x_5);
lean_dec(x_2);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_Elab_getDeclarationRange___at_Tactic_higherOrderGetParam___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Tactic_higherOrderGetParam___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Tactic_higherOrderGetParam___spec__4(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_forM___at_Tactic_higherOrderGetParam___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_List_forM___at_Tactic_higherOrderGetParam___spec__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__1___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Tactic_higherOrderGetParam___lambda__1(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Tactic_higherOrderGetParam___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
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
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Tactic_higherOrderGetParam___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Tactic_higherOrderGetParam___lambda__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Tactic_higherOrderGetParam___lambda__6(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_box(0);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_box(0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("higherOrderAttr", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__1;
x_2 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Parser_Attr_higherOrder___closed__4;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("From a lemma of the shape `∀ x, f (g x) = h x` derive an auxiliary lemma of the\nform `f ∘ g = h` for reasoning about higher-order functions.\n\nSyntax: `[higher_order]` or `[higher_order name]`, where the given name is used for the\ngenerated theorem.", 252, 248);
return x_1;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__3;
x_2 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__4;
x_3 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__5;
x_4 = 0;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Tactic_higherOrderGetParam), 5, 0);
return x_1;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__1___boxed), 5, 0);
return x_1;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__2___boxed), 3, 0);
return x_1;
}
}
static lean_object* _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__6;
x_2 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__7;
x_3 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__8;
x_4 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__9;
x_5 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set(x_5, 3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461_(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__10;
x_3 = l_Lean_registerParametricAttribute___rarg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____lambda__2(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_Term(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Apply(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Assumption(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_MatchUtil(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Intro(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_DeclarationRange(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Attr_Register(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_HigherOrder(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_Term(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Apply(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Assumption(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_MatchUtil(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Intro(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_DeclarationRange(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Attr_Register(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_Parser_Attr_higherOrder___closed__1 = _init_l_Lean_Parser_Attr_higherOrder___closed__1();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__1);
l_Lean_Parser_Attr_higherOrder___closed__2 = _init_l_Lean_Parser_Attr_higherOrder___closed__2();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__2);
l_Lean_Parser_Attr_higherOrder___closed__3 = _init_l_Lean_Parser_Attr_higherOrder___closed__3();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__3);
l_Lean_Parser_Attr_higherOrder___closed__4 = _init_l_Lean_Parser_Attr_higherOrder___closed__4();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__4);
l_Lean_Parser_Attr_higherOrder___closed__5 = _init_l_Lean_Parser_Attr_higherOrder___closed__5();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__5);
l_Lean_Parser_Attr_higherOrder___closed__6 = _init_l_Lean_Parser_Attr_higherOrder___closed__6();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__6);
l_Lean_Parser_Attr_higherOrder___closed__7 = _init_l_Lean_Parser_Attr_higherOrder___closed__7();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__7);
l_Lean_Parser_Attr_higherOrder___closed__8 = _init_l_Lean_Parser_Attr_higherOrder___closed__8();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__8);
l_Lean_Parser_Attr_higherOrder___closed__9 = _init_l_Lean_Parser_Attr_higherOrder___closed__9();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__9);
l_Lean_Parser_Attr_higherOrder___closed__10 = _init_l_Lean_Parser_Attr_higherOrder___closed__10();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__10);
l_Lean_Parser_Attr_higherOrder___closed__11 = _init_l_Lean_Parser_Attr_higherOrder___closed__11();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__11);
l_Lean_Parser_Attr_higherOrder___closed__12 = _init_l_Lean_Parser_Attr_higherOrder___closed__12();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__12);
l_Lean_Parser_Attr_higherOrder___closed__13 = _init_l_Lean_Parser_Attr_higherOrder___closed__13();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__13);
l_Lean_Parser_Attr_higherOrder___closed__14 = _init_l_Lean_Parser_Attr_higherOrder___closed__14();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__14);
l_Lean_Parser_Attr_higherOrder___closed__15 = _init_l_Lean_Parser_Attr_higherOrder___closed__15();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__15);
l_Lean_Parser_Attr_higherOrder___closed__16 = _init_l_Lean_Parser_Attr_higherOrder___closed__16();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__16);
l_Lean_Parser_Attr_higherOrder___closed__17 = _init_l_Lean_Parser_Attr_higherOrder___closed__17();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__17);
l_Lean_Parser_Attr_higherOrder___closed__18 = _init_l_Lean_Parser_Attr_higherOrder___closed__18();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__18);
l_Lean_Parser_Attr_higherOrder___closed__19 = _init_l_Lean_Parser_Attr_higherOrder___closed__19();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__19);
l_Lean_Parser_Attr_higherOrder___closed__20 = _init_l_Lean_Parser_Attr_higherOrder___closed__20();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__20);
l_Lean_Parser_Attr_higherOrder___closed__21 = _init_l_Lean_Parser_Attr_higherOrder___closed__21();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder___closed__21);
l_Lean_Parser_Attr_higherOrder = _init_l_Lean_Parser_Attr_higherOrder();
lean_mark_persistent(l_Lean_Parser_Attr_higherOrder);
l_Tactic_mkComp___lambda__1___closed__1 = _init_l_Tactic_mkComp___lambda__1___closed__1();
lean_mark_persistent(l_Tactic_mkComp___lambda__1___closed__1);
l_Tactic_mkComp___lambda__1___closed__2 = _init_l_Tactic_mkComp___lambda__1___closed__2();
lean_mark_persistent(l_Tactic_mkComp___lambda__1___closed__2);
l_Tactic_mkComp___lambda__1___closed__3 = _init_l_Tactic_mkComp___lambda__1___closed__3();
lean_mark_persistent(l_Tactic_mkComp___lambda__1___closed__3);
l_Tactic_mkComp___lambda__1___closed__4 = _init_l_Tactic_mkComp___lambda__1___closed__4();
lean_mark_persistent(l_Tactic_mkComp___lambda__1___closed__4);
l_Tactic_mkComp___closed__1 = _init_l_Tactic_mkComp___closed__1();
lean_mark_persistent(l_Tactic_mkComp___closed__1);
l_Tactic_mkComp___closed__2 = _init_l_Tactic_mkComp___closed__2();
lean_mark_persistent(l_Tactic_mkComp___closed__2);
l_Tactic_mkComp___closed__3 = _init_l_Tactic_mkComp___closed__3();
lean_mark_persistent(l_Tactic_mkComp___closed__3);
l_Tactic_mkComp___closed__4 = _init_l_Tactic_mkComp___closed__4();
lean_mark_persistent(l_Tactic_mkComp___closed__4);
l_Tactic_mkComp___closed__5 = _init_l_Tactic_mkComp___closed__5();
lean_mark_persistent(l_Tactic_mkComp___closed__5);
l_Tactic_mkComp___closed__6 = _init_l_Tactic_mkComp___closed__6();
lean_mark_persistent(l_Tactic_mkComp___closed__6);
l_Tactic_mkComp___closed__7 = _init_l_Tactic_mkComp___closed__7();
lean_mark_persistent(l_Tactic_mkComp___closed__7);
l_Tactic_mkHigherOrderType___lambda__1___closed__1 = _init_l_Tactic_mkHigherOrderType___lambda__1___closed__1();
lean_mark_persistent(l_Tactic_mkHigherOrderType___lambda__1___closed__1);
l_Tactic_mkHigherOrderType___lambda__1___closed__2 = _init_l_Tactic_mkHigherOrderType___lambda__1___closed__2();
lean_mark_persistent(l_Tactic_mkHigherOrderType___lambda__1___closed__2);
l_Tactic_mkHigherOrderType___lambda__1___closed__3 = _init_l_Tactic_mkHigherOrderType___lambda__1___closed__3();
lean_mark_persistent(l_Tactic_mkHigherOrderType___lambda__1___closed__3);
l_Tactic_mkHigherOrderType___lambda__1___closed__4 = _init_l_Tactic_mkHigherOrderType___lambda__1___closed__4();
lean_mark_persistent(l_Tactic_mkHigherOrderType___lambda__1___closed__4);
l_Tactic_mkHigherOrderType___closed__1 = _init_l_Tactic_mkHigherOrderType___closed__1();
lean_mark_persistent(l_Tactic_mkHigherOrderType___closed__1);
l_Tactic_mkHigherOrderType___closed__2 = _init_l_Tactic_mkHigherOrderType___closed__2();
lean_mark_persistent(l_Tactic_mkHigherOrderType___closed__2);
l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__1 = _init_l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__1();
lean_mark_persistent(l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__1);
l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__2 = _init_l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__2();
lean_mark_persistent(l_Lean_Elab_throwUnsupportedSyntax___at_Tactic_higherOrderGetParam___spec__1___rarg___closed__2);
l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1 = _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1();
lean_mark_persistent(l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__1);
l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__2 = _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__2();
lean_mark_persistent(l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__2);
l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3 = _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3();
lean_mark_persistent(l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__3);
l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4 = _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4();
lean_mark_persistent(l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__4);
l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__5 = _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__5();
lean_mark_persistent(l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__5);
l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6 = _init_l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6();
lean_mark_persistent(l_Lean_addDeclarationRanges___at_Tactic_higherOrderGetParam___spec__3___closed__6);
l_Tactic_higherOrderGetParam___lambda__3___closed__1 = _init_l_Tactic_higherOrderGetParam___lambda__3___closed__1();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__3___closed__1);
l_Tactic_higherOrderGetParam___lambda__3___closed__2 = _init_l_Tactic_higherOrderGetParam___lambda__3___closed__2();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__3___closed__2);
l_Tactic_higherOrderGetParam___lambda__4___closed__1 = _init_l_Tactic_higherOrderGetParam___lambda__4___closed__1();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__4___closed__1);
l_Tactic_higherOrderGetParam___lambda__5___closed__1 = _init_l_Tactic_higherOrderGetParam___lambda__5___closed__1();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__5___closed__1);
l_Tactic_higherOrderGetParam___lambda__5___closed__2 = _init_l_Tactic_higherOrderGetParam___lambda__5___closed__2();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__5___closed__2);
l_Tactic_higherOrderGetParam___lambda__5___closed__3 = _init_l_Tactic_higherOrderGetParam___lambda__5___closed__3();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__5___closed__3);
l_Tactic_higherOrderGetParam___lambda__6___closed__1 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__1();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__1);
l_Tactic_higherOrderGetParam___lambda__6___closed__2 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__2();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__2);
l_Tactic_higherOrderGetParam___lambda__6___closed__3 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__3();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__3);
l_Tactic_higherOrderGetParam___lambda__6___closed__4 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__4();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__4);
l_Tactic_higherOrderGetParam___lambda__6___closed__5 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__5();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__5);
l_Tactic_higherOrderGetParam___lambda__6___closed__6 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__6();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__6);
l_Tactic_higherOrderGetParam___lambda__6___closed__7 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__7();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__7);
l_Tactic_higherOrderGetParam___lambda__6___closed__8 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__8();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__8);
l_Tactic_higherOrderGetParam___lambda__6___closed__9 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__9();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__9);
l_Tactic_higherOrderGetParam___lambda__6___closed__10 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__10();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__10);
l_Tactic_higherOrderGetParam___lambda__6___closed__11 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__11();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__11);
l_Tactic_higherOrderGetParam___lambda__6___closed__12 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__12();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__12);
l_Tactic_higherOrderGetParam___lambda__6___closed__13 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__13();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__13);
l_Tactic_higherOrderGetParam___lambda__6___closed__14 = _init_l_Tactic_higherOrderGetParam___lambda__6___closed__14();
lean_mark_persistent(l_Tactic_higherOrderGetParam___lambda__6___closed__14);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__1 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__1();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__1);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__2 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__2();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__2);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__3 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__3();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__3);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__4 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__4();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__4);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__5 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__5();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__5);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__6 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__6();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__6);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__7 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__7();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__7);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__8 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__8();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__8);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__9 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__9();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__9);
l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__10 = _init_l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__10();
lean_mark_persistent(l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461____closed__10);
res = l_Tactic_initFn____x40_Mathlib_Tactic_HigherOrder___hyg_1461_(lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
l_Tactic_higherOrderAttr = lean_io_result_get_value(res);
lean_mark_persistent(l_Tactic_higherOrderAttr);
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
