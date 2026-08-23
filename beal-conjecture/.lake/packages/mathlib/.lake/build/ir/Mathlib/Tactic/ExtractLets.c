// Lean compiler output
// Module: Mathlib.Tactic.ExtractLets
// Imports: Init Mathlib.Lean.Expr.Basic Mathlib.Tactic.Basic Batteries.Tactic.Lint.Misc
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
static lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__1;
static lean_object* l_Lean_MVarId_extractLetsAt_process___closed__4;
static lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_MVarId_extractLetsAt_process___closed__6;
lean_object* l_Lean_Meta_throwTacticEx___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__2;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_checkNotAssigned(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Parser_Tactic_location;
static lean_object* l_Mathlib_extractLets___closed__14;
lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__27;
lean_object* l_Lean_Elab_Tactic_expandOptLocation(lean_object*);
static lean_object* l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
lean_object* l_Array_toSubarray___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__13;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__5___boxed__const__1;
lean_object* lean_mk_array(lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArgs(lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_extractLets;
static lean_object* l_Mathlib_extractLets___closed__15;
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_getMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__2(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_setupNames___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__3;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__2(lean_object*, lean_object*, uint8_t, lean_object*);
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
lean_object* l_Lean_Expr_cleanupAnnotations(lean_object*);
static lean_object* l_Mathlib_extractLets___closed__9;
static lean_object* l_Mathlib_extractLets___closed__7;
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Mathlib_extractLets___closed__12;
static lean_object* l_Mathlib_extractLets___closed__25;
static lean_object* l_Lean_MVarId_extractLetsAt_process___closed__2;
static lean_object* l_Mathlib_extractLets___closed__4;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__6;
static lean_object* l_Mathlib_extractLets___closed__31;
static lean_object* l_Mathlib_extractLets___closed__21;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt_process___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__3(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at_Lean_MVarId_changeLocalDecl___spec__1(size_t, size_t, lean_object*);
static lean_object* l_Mathlib_evalExtractLets___closed__1;
static lean_object* l_Mathlib_extractLets___closed__3;
static lean_object* l_Mathlib_extractLets___closed__17;
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_withLocation(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___at_Lean_Elab_Tactic_evalIntros___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_withReverted___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_getType(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt_process___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_evalExtractLets___closed__4;
static lean_object* l_Mathlib_evalExtractLets___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__28;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_setupNames(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_forallE___override(lean_object*, lean_object*, lean_object*, uint8_t);
lean_object* l_Lean_Elab_Tactic_withMainContext___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_evalExtractLets___closed__5;
lean_object* lean_array_to_list(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__2;
static lean_object* l_Mathlib_evalExtractLets_setupNames___closed__1;
static lean_object* l_Mathlib_evalExtractLets_setupNames___closed__2;
lean_object* l_Lean_FVarId_getType(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__29;
static lean_object* l_Mathlib_evalExtractLets_doExtract___closed__1;
static lean_object* l_Mathlib_extractLets___closed__8;
lean_object* l_Lean_Expr_letE___override(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
lean_object* l_Lean_mkOptionalNode(lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_evalExtractLets_doExtract___closed__3;
uint8_t l_Lean_Syntax_matchesNull(lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__19;
static lean_object* l_Lean_MVarId_extractLetsAt___lambda__2___closed__1;
static lean_object* l_Mathlib_extractLets___closed__2;
lean_object* l_Lean_Meta_withLetDecl___at_Lean_Elab_Structural_addSmartUnfoldingDefAux_visit___spec__10___rarg(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__23;
static lean_object* l_Mathlib_extractLets___closed__24;
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Tactic_Rfl_evalApplyRfl___spec__1___rarg(lean_object*);
static lean_object* l_Mathlib_extractLets___closed__10;
static lean_object* l_Mathlib_extractLets___closed__32;
lean_object* l_Lean_Meta_introNCore(lean_object*, lean_object*, lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_letDepth(lean_object*);
static lean_object* l_Mathlib_extractLets___closed__18;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
lean_object* l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt_process(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__30;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_change(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_MVarId_extractLetsAt_process___closed__3;
static lean_object* l_Mathlib_extractLets___closed__26;
static lean_object* l_Mathlib_extractLets___closed__1;
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_intro(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_evalExtractLets_doExtract___closed__2;
static lean_object* l_Mathlib_extractLets___closed__20;
size_t lean_usize_add(size_t, size_t);
static lean_object* l_Lean_MVarId_extractLetsAt_process___closed__1;
static lean_object* l_Mathlib_extractLets___closed__22;
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__4;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__3___boxed__const__1;
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__5;
static lean_object* l_Mathlib_evalExtractLets___closed__3;
lean_object* lean_array_get_size(lean_object*);
lean_object* l_Array_forInUnsafe_loop___at_Lean_Elab_Tactic_evalIntros___spec__2(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_MVarId_extractLetsAt_process___closed__5;
uint8_t lean_usize_dec_lt(size_t, size_t);
lean_object* l_Lean_Meta_mkLambdaFVars(lean_object*, lean_object*, uint8_t, uint8_t, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_extractLets___closed__11;
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__2___boxed__const__1;
static lean_object* l_Mathlib_extractLets___closed__16;
static lean_object* l_Lean_MVarId_extractLets___lambda__2___closed__1;
lean_object* l_Lean_Elab_Tactic_replaceMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_expr_instantiate1(lean_object*, lean_object*);
static lean_object* l_Lean_MVarId_extractLets___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt_process___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; uint8_t x_15; lean_object* x_16; 
x_10 = lean_expr_instantiate1(x_1, x_4);
x_11 = l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1;
x_12 = lean_array_push(x_11, x_4);
x_13 = lean_apply_1(x_2, x_10);
x_14 = 0;
x_15 = 1;
x_16 = l_Lean_Meta_mkLambdaFVars(x_12, x_13, x_14, x_14, x_14, x_15, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = 1;
x_20 = l_Lean_MVarId_change(x_3, x_17, x_19, x_5, x_6, x_7, x_8, x_18);
return x_20;
}
else
{
uint8_t x_21; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
x_21 = !lean_is_exclusive(x_16);
if (x_21 == 0)
{
return x_16;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_16, 0);
x_23 = lean_ctor_get(x_16, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_16);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("extractLetsAt", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_MVarId_extractLetsAt_process___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("insufficient number of `let` expressions", 40, 40);
return x_1;
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_MVarId_extractLetsAt_process___closed__3;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_MVarId_extractLetsAt_process___closed__4;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt_process___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_MVarId_extractLetsAt_process___closed__5;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt_process(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_Expr_cleanupAnnotations(x_2);
if (lean_obj_tag(x_9) == 8)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
x_12 = lean_ctor_get(x_9, 2);
lean_inc(x_12);
x_13 = lean_ctor_get(x_9, 3);
lean_inc(x_13);
lean_dec(x_9);
x_14 = lean_alloc_closure((void*)(l_Lean_MVarId_extractLetsAt_process___lambda__1___boxed), 9, 3);
lean_closure_set(x_14, 0, x_13);
lean_closure_set(x_14, 1, x_3);
lean_closure_set(x_14, 2, x_1);
x_15 = 0;
x_16 = l_Lean_Meta_withLetDecl___at_Lean_Elab_Structural_addSmartUnfoldingDefAux_visit___spec__10___rarg(x_10, x_11, x_12, x_14, x_15, x_4, x_5, x_6, x_7, x_8);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
lean_dec(x_9);
lean_dec(x_3);
x_17 = l_Lean_MVarId_extractLetsAt_process___closed__2;
x_18 = l_Lean_MVarId_extractLetsAt_process___closed__6;
x_19 = l_Lean_Meta_throwTacticEx___rarg(x_17, x_1, x_18, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt_process___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_MVarId_extractLetsAt_process___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_MVarId_intro(x_4, x_1, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_array_push(x_2, x_14);
lean_ctor_set(x_12, 0, x_15);
x_16 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_16, 0, x_12);
lean_ctor_set(x_10, 0, x_16);
return x_10;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_12, 0);
x_18 = lean_ctor_get(x_12, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_12);
x_19 = lean_array_push(x_2, x_17);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
x_21 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_10, 0, x_21);
return x_10;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_22 = lean_ctor_get(x_10, 0);
x_23 = lean_ctor_get(x_10, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_10);
x_24 = lean_ctor_get(x_22, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_22, 1);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_array_push(x_2, x_24);
if (lean_is_scalar(x_26)) {
 x_28 = lean_alloc_ctor(0, 2, 0);
} else {
 x_28 = x_26;
}
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_25);
x_29 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_29, 0, x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_23);
return x_30;
}
}
else
{
uint8_t x_31; 
lean_dec(x_2);
x_31 = !lean_is_exclusive(x_10);
if (x_31 == 0)
{
return x_10;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_10, 0);
x_33 = lean_ctor_get(x_10, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_10);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__2(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Lean_Expr_forallE___override(x_1, x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, uint8_t x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Lean_Expr_letE___override(x_1, x_5, x_2, x_3, x_4);
return x_6;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unexpected auxiliary target", 27, 27);
return x_1;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__3;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_4, x_3);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_13 = lean_array_uget(x_2, x_4);
x_32 = lean_ctor_get(x_5, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_5, 1);
lean_inc(x_33);
lean_dec(x_5);
lean_inc(x_33);
x_34 = l_Lean_MVarId_getType(x_33, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_34, 1);
lean_inc(x_36);
lean_dec(x_34);
x_37 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_35, x_6, x_7, x_8, x_9, x_36);
x_38 = lean_ctor_get(x_37, 0);
lean_inc(x_38);
switch (lean_obj_tag(x_38)) {
case 7:
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_39 = lean_ctor_get(x_37, 1);
lean_inc(x_39);
lean_dec(x_37);
x_40 = lean_ctor_get(x_38, 0);
lean_inc(x_40);
x_41 = lean_ctor_get(x_38, 1);
lean_inc(x_41);
x_42 = lean_ctor_get(x_38, 2);
lean_inc(x_42);
x_43 = lean_ctor_get_uint8(x_38, sizeof(void*)*3 + 8);
lean_dec(x_38);
x_44 = lean_box(x_43);
x_45 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__2___boxed), 4, 3);
lean_closure_set(x_45, 0, x_40);
lean_closure_set(x_45, 1, x_42);
lean_closure_set(x_45, 2, x_44);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_33);
x_46 = l_Lean_MVarId_extractLetsAt_process(x_33, x_41, x_45, x_6, x_7, x_8, x_9, x_39);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_46, 1);
lean_inc(x_48);
lean_dec(x_46);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_49 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1(x_13, x_32, x_33, x_47, x_6, x_7, x_8, x_9, x_48);
lean_dec(x_33);
x_14 = x_49;
goto block_31;
}
else
{
uint8_t x_50; 
lean_dec(x_33);
lean_dec(x_32);
lean_dec(x_13);
x_50 = !lean_is_exclusive(x_46);
if (x_50 == 0)
{
x_14 = x_46;
goto block_31;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_51 = lean_ctor_get(x_46, 0);
x_52 = lean_ctor_get(x_46, 1);
lean_inc(x_52);
lean_inc(x_51);
lean_dec(x_46);
x_53 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_53, 0, x_51);
lean_ctor_set(x_53, 1, x_52);
x_14 = x_53;
goto block_31;
}
}
}
case 8:
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; uint8_t x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_54 = lean_ctor_get(x_37, 1);
lean_inc(x_54);
lean_dec(x_37);
x_55 = lean_ctor_get(x_38, 0);
lean_inc(x_55);
x_56 = lean_ctor_get(x_38, 1);
lean_inc(x_56);
x_57 = lean_ctor_get(x_38, 2);
lean_inc(x_57);
x_58 = lean_ctor_get(x_38, 3);
lean_inc(x_58);
x_59 = lean_ctor_get_uint8(x_38, sizeof(void*)*4 + 8);
lean_dec(x_38);
x_60 = lean_box(x_59);
x_61 = lean_alloc_closure((void*)(l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__3___boxed), 5, 4);
lean_closure_set(x_61, 0, x_55);
lean_closure_set(x_61, 1, x_57);
lean_closure_set(x_61, 2, x_58);
lean_closure_set(x_61, 3, x_60);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_33);
x_62 = l_Lean_MVarId_extractLetsAt_process(x_33, x_56, x_61, x_6, x_7, x_8, x_9, x_54);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
lean_dec(x_62);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_65 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1(x_13, x_32, x_33, x_63, x_6, x_7, x_8, x_9, x_64);
lean_dec(x_33);
x_14 = x_65;
goto block_31;
}
else
{
uint8_t x_66; 
lean_dec(x_33);
lean_dec(x_32);
lean_dec(x_13);
x_66 = !lean_is_exclusive(x_62);
if (x_66 == 0)
{
x_14 = x_62;
goto block_31;
}
else
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_67 = lean_ctor_get(x_62, 0);
x_68 = lean_ctor_get(x_62, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_62);
x_69 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_69, 0, x_67);
lean_ctor_set(x_69, 1, x_68);
x_14 = x_69;
goto block_31;
}
}
}
default: 
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; uint8_t x_73; 
lean_dec(x_38);
lean_dec(x_32);
lean_dec(x_13);
x_70 = lean_ctor_get(x_37, 1);
lean_inc(x_70);
lean_dec(x_37);
x_71 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__4;
lean_inc(x_1);
x_72 = l_Lean_Meta_throwTacticEx___rarg(x_1, x_33, x_71, x_6, x_7, x_8, x_9, x_70);
x_73 = !lean_is_exclusive(x_72);
if (x_73 == 0)
{
x_14 = x_72;
goto block_31;
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; 
x_74 = lean_ctor_get(x_72, 0);
x_75 = lean_ctor_get(x_72, 1);
lean_inc(x_75);
lean_inc(x_74);
lean_dec(x_72);
x_76 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_76, 0, x_74);
lean_ctor_set(x_76, 1, x_75);
x_14 = x_76;
goto block_31;
}
}
}
}
else
{
uint8_t x_77; 
lean_dec(x_33);
lean_dec(x_32);
lean_dec(x_13);
x_77 = !lean_is_exclusive(x_34);
if (x_77 == 0)
{
x_14 = x_34;
goto block_31;
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; 
x_78 = lean_ctor_get(x_34, 0);
x_79 = lean_ctor_get(x_34, 1);
lean_inc(x_79);
lean_inc(x_78);
lean_dec(x_34);
x_80 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_80, 0, x_78);
lean_ctor_set(x_80, 1, x_79);
x_14 = x_80;
goto block_31;
}
}
block_31:
{
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
if (lean_obj_tag(x_15) == 0)
{
uint8_t x_16; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_16 = !lean_is_exclusive(x_14);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_14, 0);
lean_dec(x_17);
x_18 = lean_ctor_get(x_15, 0);
lean_inc(x_18);
lean_dec(x_15);
lean_ctor_set(x_14, 0, x_18);
return x_14;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_14, 1);
lean_inc(x_19);
lean_dec(x_14);
x_20 = lean_ctor_get(x_15, 0);
lean_inc(x_20);
lean_dec(x_15);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_19);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; size_t x_24; size_t x_25; 
x_22 = lean_ctor_get(x_14, 1);
lean_inc(x_22);
lean_dec(x_14);
x_23 = lean_ctor_get(x_15, 0);
lean_inc(x_23);
lean_dec(x_15);
x_24 = 1;
x_25 = lean_usize_add(x_4, x_24);
x_4 = x_25;
x_5 = x_23;
x_10 = x_22;
goto _start;
}
}
else
{
uint8_t x_27; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
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
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1(x_1, x_2, x_3, x_4, x_5, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; size_t x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_array_size(x_6);
x_18 = l_Array_mapMUnsafe_map___at_Lean_MVarId_changeLocalDecl___spec__1(x_17, x_4, x_6);
lean_ctor_set(x_14, 0, x_18);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_16);
lean_ctor_set(x_19, 1, x_14);
lean_ctor_set(x_12, 0, x_19);
return x_12;
}
else
{
lean_object* x_20; lean_object* x_21; size_t x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_20 = lean_ctor_get(x_14, 0);
x_21 = lean_ctor_get(x_14, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_14);
x_22 = lean_array_size(x_6);
x_23 = l_Array_mapMUnsafe_map___at_Lean_MVarId_changeLocalDecl___spec__1(x_22, x_4, x_6);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_21);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_20);
lean_ctor_set(x_25, 1, x_24);
lean_ctor_set(x_12, 0, x_25);
return x_12;
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; size_t x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_26 = lean_ctor_get(x_12, 0);
x_27 = lean_ctor_get(x_12, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_12);
x_28 = lean_ctor_get(x_26, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_26, 1);
lean_inc(x_29);
if (lean_is_exclusive(x_26)) {
 lean_ctor_release(x_26, 0);
 lean_ctor_release(x_26, 1);
 x_30 = x_26;
} else {
 lean_dec_ref(x_26);
 x_30 = lean_box(0);
}
x_31 = lean_array_size(x_6);
x_32 = l_Array_mapMUnsafe_map___at_Lean_MVarId_changeLocalDecl___spec__1(x_31, x_4, x_6);
if (lean_is_scalar(x_30)) {
 x_33 = lean_alloc_ctor(0, 2, 0);
} else {
 x_33 = x_30;
}
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_29);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_28);
lean_ctor_set(x_34, 1, x_33);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_27);
return x_35;
}
}
else
{
uint8_t x_36; 
lean_dec(x_6);
x_36 = !lean_is_exclusive(x_12);
if (x_36 == 0)
{
return x_12;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_12, 0);
x_38 = lean_ctor_get(x_12, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_12);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt___lambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_MVarId_extractLetsAt___lambda__2___boxed__const__1() {
_start:
{
size_t x_1; lean_object* x_2; 
x_1 = 0;
x_2 = lean_box_usize(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; size_t x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_10 = l_Lean_MVarId_extractLetsAt___lambda__2___closed__1;
lean_inc(x_3);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_3);
x_12 = lean_array_size(x_1);
x_13 = lean_box_usize(x_12);
x_14 = l_Lean_MVarId_extractLetsAt___lambda__2___boxed__const__1;
x_15 = lean_alloc_closure((void*)(l_Lean_MVarId_extractLetsAt___lambda__1___boxed), 11, 6);
lean_closure_set(x_15, 0, x_2);
lean_closure_set(x_15, 1, x_1);
lean_closure_set(x_15, 2, x_13);
lean_closure_set(x_15, 3, x_14);
lean_closure_set(x_15, 4, x_11);
lean_closure_set(x_15, 5, x_4);
x_16 = l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(x_3, x_15, x_5, x_6, x_7, x_8, x_9);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = l_Lean_MVarId_extractLetsAt_process___closed__2;
lean_inc(x_1);
x_10 = l_Lean_MVarId_checkNotAssigned(x_1, x_9, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1;
x_13 = lean_array_push(x_12, x_2);
x_14 = lean_alloc_closure((void*)(l_Lean_MVarId_extractLetsAt___lambda__2), 9, 2);
lean_closure_set(x_14, 0, x_3);
lean_closure_set(x_14, 1, x_9);
x_15 = 0;
x_16 = l_Lean_MVarId_withReverted___rarg(x_1, x_13, x_14, x_15, x_4, x_5, x_6, x_7, x_11);
return x_16;
}
else
{
uint8_t x_17; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_17 = !lean_is_exclusive(x_10);
if (x_17 == 0)
{
return x_10;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_10, 0);
x_19 = lean_ctor_get(x_10, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_10);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_3);
lean_dec(x_3);
x_6 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__2(x_1, x_2, x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = lean_unbox(x_4);
lean_dec(x_4);
x_7 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___lambda__3(x_1, x_2, x_3, x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_2);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLetsAt___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_13 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_14 = l_Lean_MVarId_extractLetsAt___lambda__1(x_1, x_2, x_12, x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_2);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; lean_object* x_12; 
x_9 = lean_array_get_size(x_1);
x_10 = lean_array_to_list(lean_box(0), x_1);
x_11 = 0;
x_12 = l_Lean_Meta_introNCore(x_2, x_9, x_10, x_11, x_11, x_4, x_5, x_6, x_7, x_8);
return x_12;
}
}
static lean_object* _init_l_Lean_MVarId_extractLets___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("extractLets", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Lean_MVarId_extractLets___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_MVarId_extractLets___lambda__2___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
lean_inc(x_1);
x_8 = l_Lean_MVarId_getType(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_9, x_3, x_4, x_5, x_6, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Lean_Expr_cleanupAnnotations(x_12);
x_15 = l_Lean_Expr_letDepth(x_14);
lean_dec(x_14);
x_16 = lean_array_get_size(x_2);
x_17 = lean_nat_dec_lt(x_15, x_16);
lean_dec(x_16);
lean_dec(x_15);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_box(0);
x_19 = l_Lean_MVarId_extractLets___lambda__1(x_2, x_1, x_18, x_3, x_4, x_5, x_6, x_13);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
lean_dec(x_2);
x_20 = l_Lean_MVarId_extractLets___lambda__2___closed__2;
x_21 = l_Lean_MVarId_extractLetsAt_process___closed__6;
x_22 = l_Lean_Meta_throwTacticEx___rarg(x_20, x_1, x_21, x_3, x_4, x_5, x_6, x_13);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
return x_22;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_22, 0);
x_25 = lean_ctor_get(x_22, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_22);
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
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_27 = !lean_is_exclusive(x_8);
if (x_27 == 0)
{
return x_8;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_8, 0);
x_29 = lean_ctor_get(x_8, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_8);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_Lean_MVarId_extractLets___lambda__2), 7, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
x_9 = l_Lean_MVarId_withContext___at___private_Lean_Meta_SynthInstance_0__Lean_Meta_synthPendingImp___spec__2___rarg(x_1, x_8, x_3, x_4, x_5, x_6, x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_MVarId_extractLets___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_MVarId_extractLets___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Mathlib", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_extractLets___closed__1;
x_2 = l_Lean_MVarId_extractLets___lambda__2___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("extract_lets ", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__6() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Mathlib_extractLets___closed__5;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("many", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("colGt", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_extractLets___closed__10;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("orelse", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__12;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__14;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_extractLets___closed__15;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("hole", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__17;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_extractLets___closed__18;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_extractLets___closed__13;
x_2 = l_Mathlib_extractLets___closed__16;
x_3 = l_Mathlib_extractLets___closed__19;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_extractLets___closed__4;
x_2 = l_Mathlib_extractLets___closed__11;
x_3 = l_Mathlib_extractLets___closed__20;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_extractLets___closed__8;
x_2 = l_Mathlib_extractLets___closed__21;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__23() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_extractLets___closed__4;
x_2 = l_Mathlib_extractLets___closed__6;
x_3 = l_Mathlib_extractLets___closed__22;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__24() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("optional", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__25() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__24;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__26() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ppSpace", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__27() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_extractLets___closed__26;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__28() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_extractLets___closed__27;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__29() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_extractLets___closed__4;
x_2 = l_Mathlib_extractLets___closed__28;
x_3 = l_Lean_Parser_Tactic_location;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__30() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_extractLets___closed__25;
x_2 = l_Mathlib_extractLets___closed__29;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__31() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_extractLets___closed__4;
x_2 = l_Mathlib_extractLets___closed__23;
x_3 = l_Mathlib_extractLets___closed__30;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_extractLets___closed__32() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_extractLets___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Mathlib_extractLets___closed__31;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_extractLets() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_extractLets___closed__32;
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_setupNames___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("_", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_setupNames___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_evalExtractLets_setupNames___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_setupNames(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = l_Lean_instantiateMVars___at___private_Lean_Meta_Basic_0__Lean_Meta_isClassApp_x3f___spec__1(x_2, x_3, x_4, x_5, x_6, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = l_Lean_Expr_cleanupAnnotations(x_10);
x_12 = l_Lean_Expr_letDepth(x_11);
lean_dec(x_11);
x_13 = l_Mathlib_evalExtractLets_setupNames___closed__2;
x_14 = lean_mk_array(x_12, x_13);
lean_ctor_set(x_8, 0, x_14);
return x_8;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_15 = lean_ctor_get(x_8, 0);
x_16 = lean_ctor_get(x_8, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_8);
x_17 = l_Lean_Expr_cleanupAnnotations(x_15);
x_18 = l_Lean_Expr_letDepth(x_17);
lean_dec(x_17);
x_19 = l_Mathlib_evalExtractLets_setupNames___closed__2;
x_20 = lean_mk_array(x_18, x_19);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_16);
return x_21;
}
}
else
{
lean_object* x_22; size_t x_23; size_t x_24; lean_object* x_25; lean_object* x_26; 
lean_dec(x_2);
x_22 = lean_ctor_get(x_1, 0);
lean_inc(x_22);
lean_dec(x_1);
x_23 = lean_array_size(x_22);
x_24 = 0;
x_25 = l_Array_mapMUnsafe_map___at_Lean_Elab_Tactic_evalIntros___spec__1(x_23, x_24, x_22);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_7);
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_setupNames___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Mathlib_evalExtractLets_setupNames(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Lean_Elab_Tactic_getMainGoal(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
lean_inc(x_7);
lean_inc(x_1);
x_15 = l_Lean_FVarId_getType(x_1, x_7, x_8, x_9, x_10, x_14);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Mathlib_evalExtractLets_setupNames(x_2, x_16, x_7, x_8, x_9, x_10, x_17);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
x_21 = l_Lean_MVarId_extractLetsAt(x_13, x_1, x_19, x_7, x_8, x_9, x_10, x_20);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_21, 1);
lean_inc(x_23);
lean_dec(x_21);
x_24 = !lean_is_exclusive(x_22);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_25 = lean_ctor_get(x_22, 0);
x_26 = lean_ctor_get(x_22, 1);
x_27 = lean_box(0);
lean_ctor_set_tag(x_22, 1);
lean_ctor_set(x_22, 1, x_27);
lean_ctor_set(x_22, 0, x_26);
x_28 = l_Lean_Elab_Tactic_replaceMainGoal(x_22, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_23);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
if (lean_obj_tag(x_28) == 0)
{
uint8_t x_29; 
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; 
x_30 = lean_ctor_get(x_28, 0);
lean_dec(x_30);
lean_ctor_set(x_28, 0, x_25);
return x_28;
}
else
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_28, 1);
lean_inc(x_31);
lean_dec(x_28);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_25);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
else
{
uint8_t x_33; 
lean_dec(x_25);
x_33 = !lean_is_exclusive(x_28);
if (x_33 == 0)
{
return x_28;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_28, 0);
x_35 = lean_ctor_get(x_28, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_28);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_37 = lean_ctor_get(x_22, 0);
x_38 = lean_ctor_get(x_22, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_22);
x_39 = lean_box(0);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
x_41 = l_Lean_Elab_Tactic_replaceMainGoal(x_40, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_23);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
if (lean_obj_tag(x_41) == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_41, 1);
lean_inc(x_42);
if (lean_is_exclusive(x_41)) {
 lean_ctor_release(x_41, 0);
 lean_ctor_release(x_41, 1);
 x_43 = x_41;
} else {
 lean_dec_ref(x_41);
 x_43 = lean_box(0);
}
if (lean_is_scalar(x_43)) {
 x_44 = lean_alloc_ctor(0, 2, 0);
} else {
 x_44 = x_43;
}
lean_ctor_set(x_44, 0, x_37);
lean_ctor_set(x_44, 1, x_42);
return x_44;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
lean_dec(x_37);
x_45 = lean_ctor_get(x_41, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_41, 1);
lean_inc(x_46);
if (lean_is_exclusive(x_41)) {
 lean_ctor_release(x_41, 0);
 lean_ctor_release(x_41, 1);
 x_47 = x_41;
} else {
 lean_dec_ref(x_41);
 x_47 = lean_box(0);
}
if (lean_is_scalar(x_47)) {
 x_48 = lean_alloc_ctor(1, 2, 0);
} else {
 x_48 = x_47;
}
lean_ctor_set(x_48, 0, x_45);
lean_ctor_set(x_48, 1, x_46);
return x_48;
}
}
}
else
{
uint8_t x_49; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
x_49 = !lean_is_exclusive(x_21);
if (x_49 == 0)
{
return x_21;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_21, 0);
x_51 = lean_ctor_get(x_21, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_21);
x_52 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
return x_52;
}
}
}
else
{
uint8_t x_53; 
lean_dec(x_13);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
x_53 = !lean_is_exclusive(x_15);
if (x_53 == 0)
{
return x_15;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_15, 0);
x_55 = lean_ctor_get(x_15, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_15);
x_56 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
return x_56;
}
}
}
else
{
uint8_t x_57; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
x_57 = !lean_is_exclusive(x_12);
if (x_57 == 0)
{
return x_12;
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_58 = lean_ctor_get(x_12, 0);
x_59 = lean_ctor_get(x_12, 1);
lean_inc(x_59);
lean_inc(x_58);
lean_dec(x_12);
x_60 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
return x_60;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__2(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; 
x_14 = l_Array_forInUnsafe_loop___at_Lean_Elab_Tactic_evalIntros___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
if (lean_obj_tag(x_14) == 0)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_ctor_get(x_14, 0);
lean_dec(x_16);
x_17 = lean_box(0);
lean_ctor_set(x_14, 0, x_17);
return x_14;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_14, 1);
lean_inc(x_18);
lean_dec(x_14);
x_19 = lean_box(0);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
return x_20;
}
}
else
{
uint8_t x_21; 
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
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___lambda__3___boxed__const__1() {
_start:
{
size_t x_1; lean_object* x_2; 
x_1 = 0;
x_2 = lean_box_usize(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
lean_inc(x_1);
x_12 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__1___boxed), 11, 2);
lean_closure_set(x_12, 0, x_2);
lean_closure_set(x_12, 1, x_1);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_13 = l_Lean_Elab_Tactic_withMainContext___rarg(x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_13) == 0)
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_14; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_13, 0);
lean_dec(x_15);
x_16 = lean_box(0);
lean_ctor_set(x_13, 0, x_16);
return x_13;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_13, 1);
lean_inc(x_17);
lean_dec(x_13);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; size_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_20 = lean_ctor_get(x_13, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_13, 1);
lean_inc(x_21);
lean_dec(x_13);
x_22 = lean_ctor_get(x_1, 0);
lean_inc(x_22);
lean_dec(x_1);
x_23 = lean_array_get_size(x_20);
x_24 = lean_unsigned_to_nat(0u);
x_25 = l_Array_toSubarray___rarg(x_20, x_24, x_23);
x_26 = lean_array_size(x_22);
x_27 = lean_box_usize(x_26);
x_28 = l_Mathlib_evalExtractLets_doExtract___lambda__3___boxed__const__1;
x_29 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__2___boxed), 13, 4);
lean_closure_set(x_29, 0, x_22);
lean_closure_set(x_29, 1, x_27);
lean_closure_set(x_29, 2, x_28);
lean_closure_set(x_29, 3, x_25);
x_30 = l_Lean_Elab_Tactic_withMainContext___rarg(x_29, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_21);
return x_30;
}
}
else
{
uint8_t x_31; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_31 = !lean_is_exclusive(x_13);
if (x_31 == 0)
{
return x_13;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_13, 0);
x_33 = lean_ctor_get(x_13, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_13);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_Elab_Tactic_getMainGoal(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
lean_inc(x_12);
x_14 = l_Lean_MVarId_getType(x_12, x_6, x_7, x_8, x_9, x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Mathlib_evalExtractLets_setupNames(x_1, x_15, x_6, x_7, x_8, x_9, x_16);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_20 = l_Lean_MVarId_extractLets(x_12, x_18, x_6, x_7, x_8, x_9, x_19);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = !lean_is_exclusive(x_21);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_24 = lean_ctor_get(x_21, 0);
x_25 = lean_ctor_get(x_21, 1);
x_26 = lean_box(0);
lean_ctor_set_tag(x_21, 1);
lean_ctor_set(x_21, 1, x_26);
lean_ctor_set(x_21, 0, x_25);
x_27 = l_Lean_Elab_Tactic_replaceMainGoal(x_21, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_22);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
if (lean_obj_tag(x_27) == 0)
{
uint8_t x_28; 
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; 
x_29 = lean_ctor_get(x_27, 0);
lean_dec(x_29);
lean_ctor_set(x_27, 0, x_24);
return x_27;
}
else
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_ctor_get(x_27, 1);
lean_inc(x_30);
lean_dec(x_27);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_24);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
else
{
uint8_t x_32; 
lean_dec(x_24);
x_32 = !lean_is_exclusive(x_27);
if (x_32 == 0)
{
return x_27;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_27, 0);
x_34 = lean_ctor_get(x_27, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_27);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_36 = lean_ctor_get(x_21, 0);
x_37 = lean_ctor_get(x_21, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_21);
x_38 = lean_box(0);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
x_40 = l_Lean_Elab_Tactic_replaceMainGoal(x_39, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_22);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
if (lean_obj_tag(x_40) == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
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
if (lean_is_scalar(x_42)) {
 x_43 = lean_alloc_ctor(0, 2, 0);
} else {
 x_43 = x_42;
}
lean_ctor_set(x_43, 0, x_36);
lean_ctor_set(x_43, 1, x_41);
return x_43;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
lean_dec(x_36);
x_44 = lean_ctor_get(x_40, 0);
lean_inc(x_44);
x_45 = lean_ctor_get(x_40, 1);
lean_inc(x_45);
if (lean_is_exclusive(x_40)) {
 lean_ctor_release(x_40, 0);
 lean_ctor_release(x_40, 1);
 x_46 = x_40;
} else {
 lean_dec_ref(x_40);
 x_46 = lean_box(0);
}
if (lean_is_scalar(x_46)) {
 x_47 = lean_alloc_ctor(1, 2, 0);
} else {
 x_47 = x_46;
}
lean_ctor_set(x_47, 0, x_44);
lean_ctor_set(x_47, 1, x_45);
return x_47;
}
}
}
else
{
uint8_t x_48; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_48 = !lean_is_exclusive(x_20);
if (x_48 == 0)
{
return x_20;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_20, 0);
x_50 = lean_ctor_get(x_20, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_20);
x_51 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_51, 0, x_49);
lean_ctor_set(x_51, 1, x_50);
return x_51;
}
}
}
else
{
uint8_t x_52; 
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_52 = !lean_is_exclusive(x_14);
if (x_52 == 0)
{
return x_14;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_14, 0);
x_54 = lean_ctor_get(x_14, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_14);
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
lean_dec(x_1);
x_56 = !lean_is_exclusive(x_11);
if (x_56 == 0)
{
return x_11;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_57 = lean_ctor_get(x_11, 0);
x_58 = lean_ctor_get(x_11, 1);
lean_inc(x_58);
lean_inc(x_57);
lean_dec(x_11);
x_59 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_59, 0, x_57);
lean_ctor_set(x_59, 1, x_58);
return x_59;
}
}
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___lambda__5___boxed__const__1() {
_start:
{
size_t x_1; lean_object* x_2; 
x_1 = 0;
x_2 = lean_box_usize(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
lean_inc(x_1);
x_11 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__4___boxed), 10, 1);
lean_closure_set(x_11, 0, x_1);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_12 = l_Lean_Elab_Tactic_withMainContext___rarg(x_11, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_12) == 0)
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_13; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_12, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_12, 0, x_15);
return x_12;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_12, 1);
lean_inc(x_16);
lean_dec(x_12);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; size_t x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_19 = lean_ctor_get(x_12, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_12, 1);
lean_inc(x_20);
lean_dec(x_12);
x_21 = lean_ctor_get(x_1, 0);
lean_inc(x_21);
lean_dec(x_1);
x_22 = lean_array_get_size(x_19);
x_23 = lean_unsigned_to_nat(0u);
x_24 = l_Array_toSubarray___rarg(x_19, x_23, x_22);
x_25 = lean_array_size(x_21);
x_26 = lean_box_usize(x_25);
x_27 = l_Mathlib_evalExtractLets_doExtract___lambda__5___boxed__const__1;
x_28 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__2___boxed), 13, 4);
lean_closure_set(x_28, 0, x_21);
lean_closure_set(x_28, 1, x_26);
lean_closure_set(x_28, 2, x_27);
lean_closure_set(x_28, 3, x_24);
x_29 = l_Lean_Elab_Tactic_withMainContext___rarg(x_28, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_20);
return x_29;
}
}
else
{
uint8_t x_30; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_30 = !lean_is_exclusive(x_12);
if (x_30 == 0)
{
return x_12;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_12, 0);
x_32 = lean_ctor_get(x_12, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_12);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("extract_lets tactic failed", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__2;
x_12 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_11, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = l_Lean_mkOptionalNode(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_evalExtractLets_doExtract___closed__1;
x_2 = l_Lean_Elab_Tactic_expandOptLocation(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets_doExtract___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__6___boxed), 10, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
lean_inc(x_1);
x_12 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__3), 11, 1);
lean_closure_set(x_12, 0, x_1);
x_13 = lean_alloc_closure((void*)(l_Mathlib_evalExtractLets_doExtract___lambda__5), 10, 1);
lean_closure_set(x_13, 0, x_1);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = l_Mathlib_evalExtractLets_doExtract___closed__2;
x_15 = l_Mathlib_evalExtractLets_doExtract___closed__3;
x_16 = l_Lean_Elab_Tactic_withLocation(x_14, x_12, x_13, x_15, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_16;
}
else
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_2);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_18 = l_Lean_mkOptionalNode(x_2);
x_19 = l_Lean_Elab_Tactic_expandOptLocation(x_18);
lean_dec(x_18);
x_20 = l_Mathlib_evalExtractLets_doExtract___closed__3;
x_21 = l_Lean_Elab_Tactic_withLocation(x_19, x_12, x_13, x_20, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_19);
return x_21;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_22 = lean_ctor_get(x_2, 0);
lean_inc(x_22);
lean_dec(x_2);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_22);
x_24 = l_Lean_mkOptionalNode(x_23);
x_25 = l_Lean_Elab_Tactic_expandOptLocation(x_24);
lean_dec(x_24);
x_26 = l_Mathlib_evalExtractLets_doExtract___closed__3;
x_27 = l_Lean_Elab_Tactic_withLocation(x_25, x_12, x_13, x_26, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_25);
return x_27;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Mathlib_evalExtractLets_doExtract___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
size_t x_14; size_t x_15; lean_object* x_16; 
x_14 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_15 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_16 = l_Mathlib_evalExtractLets_doExtract___lambda__2(x_1, x_14, x_15, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_evalExtractLets_doExtract___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets_doExtract___lambda__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_evalExtractLets_doExtract___lambda__6(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
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
static lean_object* _init_l_Mathlib_evalExtractLets___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("location", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_evalExtractLets___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Mathlib_evalExtractLets___closed__1;
x_2 = l_Mathlib_evalExtractLets___closed__2;
x_3 = l_Mathlib_evalExtractLets___closed__3;
x_4 = l_Mathlib_evalExtractLets___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_evalExtractLets(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Mathlib_extractLets___closed__2;
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
x_13 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Tactic_Rfl_evalApplyRfl___spec__1___rarg(x_10);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
x_16 = lean_unsigned_to_nat(0u);
lean_inc(x_15);
x_17 = l_Lean_Syntax_matchesNull(x_15, x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_18 = lean_unsigned_to_nat(2u);
x_19 = l_Lean_Syntax_getArg(x_1, x_18);
lean_dec(x_1);
lean_inc(x_19);
x_20 = l_Lean_Syntax_matchesNull(x_19, x_16);
if (x_20 == 0)
{
uint8_t x_21; 
lean_inc(x_19);
x_21 = l_Lean_Syntax_matchesNull(x_19, x_14);
if (x_21 == 0)
{
lean_object* x_22; 
lean_dec(x_19);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_22 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Tactic_Rfl_evalApplyRfl___spec__1___rarg(x_10);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_23 = l_Lean_Syntax_getArg(x_19, x_16);
lean_dec(x_19);
x_24 = l_Mathlib_evalExtractLets___closed__5;
lean_inc(x_23);
x_25 = l_Lean_Syntax_isOfKind(x_23, x_24);
if (x_25 == 0)
{
lean_object* x_26; 
lean_dec(x_23);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_26 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Tactic_Rfl_evalApplyRfl___spec__1___rarg(x_10);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_27 = l_Lean_Syntax_getArgs(x_15);
lean_dec(x_15);
x_28 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_28, 0, x_27);
x_29 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_29, 0, x_23);
x_30 = l_Mathlib_evalExtractLets_doExtract(x_28, x_29, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_30;
}
}
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
lean_dec(x_19);
x_31 = l_Lean_Syntax_getArgs(x_15);
lean_dec(x_15);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_31);
x_33 = lean_box(0);
x_34 = l_Mathlib_evalExtractLets_doExtract(x_32, x_33, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_34;
}
}
else
{
lean_object* x_35; lean_object* x_36; uint8_t x_37; 
lean_dec(x_15);
x_35 = lean_unsigned_to_nat(2u);
x_36 = l_Lean_Syntax_getArg(x_1, x_35);
lean_dec(x_1);
lean_inc(x_36);
x_37 = l_Lean_Syntax_matchesNull(x_36, x_16);
if (x_37 == 0)
{
uint8_t x_38; 
lean_inc(x_36);
x_38 = l_Lean_Syntax_matchesNull(x_36, x_14);
if (x_38 == 0)
{
lean_object* x_39; 
lean_dec(x_36);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_39 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Tactic_Rfl_evalApplyRfl___spec__1___rarg(x_10);
return x_39;
}
else
{
lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_40 = l_Lean_Syntax_getArg(x_36, x_16);
lean_dec(x_36);
x_41 = l_Mathlib_evalExtractLets___closed__5;
lean_inc(x_40);
x_42 = l_Lean_Syntax_isOfKind(x_40, x_41);
if (x_42 == 0)
{
lean_object* x_43; 
lean_dec(x_40);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_43 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Tactic_Rfl_evalApplyRfl___spec__1___rarg(x_10);
return x_43;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_box(0);
x_45 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_45, 0, x_40);
x_46 = l_Mathlib_evalExtractLets_doExtract(x_44, x_45, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_46;
}
}
}
else
{
lean_object* x_47; lean_object* x_48; 
lean_dec(x_36);
x_47 = lean_box(0);
x_48 = l_Mathlib_evalExtractLets_doExtract(x_47, x_47, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_48;
}
}
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Lean_Expr_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Lint_Misc(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_ExtractLets(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Lean_Expr_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Lint_Misc(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1 = _init_l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___lambda__1___closed__1);
l_Lean_MVarId_extractLetsAt_process___closed__1 = _init_l_Lean_MVarId_extractLetsAt_process___closed__1();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___closed__1);
l_Lean_MVarId_extractLetsAt_process___closed__2 = _init_l_Lean_MVarId_extractLetsAt_process___closed__2();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___closed__2);
l_Lean_MVarId_extractLetsAt_process___closed__3 = _init_l_Lean_MVarId_extractLetsAt_process___closed__3();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___closed__3);
l_Lean_MVarId_extractLetsAt_process___closed__4 = _init_l_Lean_MVarId_extractLetsAt_process___closed__4();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___closed__4);
l_Lean_MVarId_extractLetsAt_process___closed__5 = _init_l_Lean_MVarId_extractLetsAt_process___closed__5();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___closed__5);
l_Lean_MVarId_extractLetsAt_process___closed__6 = _init_l_Lean_MVarId_extractLetsAt_process___closed__6();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt_process___closed__6);
l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__1 = _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__1);
l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__2 = _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__2();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__2);
l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__3 = _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__3();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__3);
l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__4 = _init_l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__4();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Lean_MVarId_extractLetsAt___spec__1___closed__4);
l_Lean_MVarId_extractLetsAt___lambda__2___closed__1 = _init_l_Lean_MVarId_extractLetsAt___lambda__2___closed__1();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt___lambda__2___closed__1);
l_Lean_MVarId_extractLetsAt___lambda__2___boxed__const__1 = _init_l_Lean_MVarId_extractLetsAt___lambda__2___boxed__const__1();
lean_mark_persistent(l_Lean_MVarId_extractLetsAt___lambda__2___boxed__const__1);
l_Lean_MVarId_extractLets___lambda__2___closed__1 = _init_l_Lean_MVarId_extractLets___lambda__2___closed__1();
lean_mark_persistent(l_Lean_MVarId_extractLets___lambda__2___closed__1);
l_Lean_MVarId_extractLets___lambda__2___closed__2 = _init_l_Lean_MVarId_extractLets___lambda__2___closed__2();
lean_mark_persistent(l_Lean_MVarId_extractLets___lambda__2___closed__2);
l_Mathlib_extractLets___closed__1 = _init_l_Mathlib_extractLets___closed__1();
lean_mark_persistent(l_Mathlib_extractLets___closed__1);
l_Mathlib_extractLets___closed__2 = _init_l_Mathlib_extractLets___closed__2();
lean_mark_persistent(l_Mathlib_extractLets___closed__2);
l_Mathlib_extractLets___closed__3 = _init_l_Mathlib_extractLets___closed__3();
lean_mark_persistent(l_Mathlib_extractLets___closed__3);
l_Mathlib_extractLets___closed__4 = _init_l_Mathlib_extractLets___closed__4();
lean_mark_persistent(l_Mathlib_extractLets___closed__4);
l_Mathlib_extractLets___closed__5 = _init_l_Mathlib_extractLets___closed__5();
lean_mark_persistent(l_Mathlib_extractLets___closed__5);
l_Mathlib_extractLets___closed__6 = _init_l_Mathlib_extractLets___closed__6();
lean_mark_persistent(l_Mathlib_extractLets___closed__6);
l_Mathlib_extractLets___closed__7 = _init_l_Mathlib_extractLets___closed__7();
lean_mark_persistent(l_Mathlib_extractLets___closed__7);
l_Mathlib_extractLets___closed__8 = _init_l_Mathlib_extractLets___closed__8();
lean_mark_persistent(l_Mathlib_extractLets___closed__8);
l_Mathlib_extractLets___closed__9 = _init_l_Mathlib_extractLets___closed__9();
lean_mark_persistent(l_Mathlib_extractLets___closed__9);
l_Mathlib_extractLets___closed__10 = _init_l_Mathlib_extractLets___closed__10();
lean_mark_persistent(l_Mathlib_extractLets___closed__10);
l_Mathlib_extractLets___closed__11 = _init_l_Mathlib_extractLets___closed__11();
lean_mark_persistent(l_Mathlib_extractLets___closed__11);
l_Mathlib_extractLets___closed__12 = _init_l_Mathlib_extractLets___closed__12();
lean_mark_persistent(l_Mathlib_extractLets___closed__12);
l_Mathlib_extractLets___closed__13 = _init_l_Mathlib_extractLets___closed__13();
lean_mark_persistent(l_Mathlib_extractLets___closed__13);
l_Mathlib_extractLets___closed__14 = _init_l_Mathlib_extractLets___closed__14();
lean_mark_persistent(l_Mathlib_extractLets___closed__14);
l_Mathlib_extractLets___closed__15 = _init_l_Mathlib_extractLets___closed__15();
lean_mark_persistent(l_Mathlib_extractLets___closed__15);
l_Mathlib_extractLets___closed__16 = _init_l_Mathlib_extractLets___closed__16();
lean_mark_persistent(l_Mathlib_extractLets___closed__16);
l_Mathlib_extractLets___closed__17 = _init_l_Mathlib_extractLets___closed__17();
lean_mark_persistent(l_Mathlib_extractLets___closed__17);
l_Mathlib_extractLets___closed__18 = _init_l_Mathlib_extractLets___closed__18();
lean_mark_persistent(l_Mathlib_extractLets___closed__18);
l_Mathlib_extractLets___closed__19 = _init_l_Mathlib_extractLets___closed__19();
lean_mark_persistent(l_Mathlib_extractLets___closed__19);
l_Mathlib_extractLets___closed__20 = _init_l_Mathlib_extractLets___closed__20();
lean_mark_persistent(l_Mathlib_extractLets___closed__20);
l_Mathlib_extractLets___closed__21 = _init_l_Mathlib_extractLets___closed__21();
lean_mark_persistent(l_Mathlib_extractLets___closed__21);
l_Mathlib_extractLets___closed__22 = _init_l_Mathlib_extractLets___closed__22();
lean_mark_persistent(l_Mathlib_extractLets___closed__22);
l_Mathlib_extractLets___closed__23 = _init_l_Mathlib_extractLets___closed__23();
lean_mark_persistent(l_Mathlib_extractLets___closed__23);
l_Mathlib_extractLets___closed__24 = _init_l_Mathlib_extractLets___closed__24();
lean_mark_persistent(l_Mathlib_extractLets___closed__24);
l_Mathlib_extractLets___closed__25 = _init_l_Mathlib_extractLets___closed__25();
lean_mark_persistent(l_Mathlib_extractLets___closed__25);
l_Mathlib_extractLets___closed__26 = _init_l_Mathlib_extractLets___closed__26();
lean_mark_persistent(l_Mathlib_extractLets___closed__26);
l_Mathlib_extractLets___closed__27 = _init_l_Mathlib_extractLets___closed__27();
lean_mark_persistent(l_Mathlib_extractLets___closed__27);
l_Mathlib_extractLets___closed__28 = _init_l_Mathlib_extractLets___closed__28();
lean_mark_persistent(l_Mathlib_extractLets___closed__28);
l_Mathlib_extractLets___closed__29 = _init_l_Mathlib_extractLets___closed__29();
lean_mark_persistent(l_Mathlib_extractLets___closed__29);
l_Mathlib_extractLets___closed__30 = _init_l_Mathlib_extractLets___closed__30();
lean_mark_persistent(l_Mathlib_extractLets___closed__30);
l_Mathlib_extractLets___closed__31 = _init_l_Mathlib_extractLets___closed__31();
lean_mark_persistent(l_Mathlib_extractLets___closed__31);
l_Mathlib_extractLets___closed__32 = _init_l_Mathlib_extractLets___closed__32();
lean_mark_persistent(l_Mathlib_extractLets___closed__32);
l_Mathlib_extractLets = _init_l_Mathlib_extractLets();
lean_mark_persistent(l_Mathlib_extractLets);
l_Mathlib_evalExtractLets_setupNames___closed__1 = _init_l_Mathlib_evalExtractLets_setupNames___closed__1();
lean_mark_persistent(l_Mathlib_evalExtractLets_setupNames___closed__1);
l_Mathlib_evalExtractLets_setupNames___closed__2 = _init_l_Mathlib_evalExtractLets_setupNames___closed__2();
lean_mark_persistent(l_Mathlib_evalExtractLets_setupNames___closed__2);
l_Mathlib_evalExtractLets_doExtract___lambda__3___boxed__const__1 = _init_l_Mathlib_evalExtractLets_doExtract___lambda__3___boxed__const__1();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___lambda__3___boxed__const__1);
l_Mathlib_evalExtractLets_doExtract___lambda__5___boxed__const__1 = _init_l_Mathlib_evalExtractLets_doExtract___lambda__5___boxed__const__1();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___lambda__5___boxed__const__1);
l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__1 = _init_l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__1();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__1);
l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__2 = _init_l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__2();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___lambda__6___closed__2);
l_Mathlib_evalExtractLets_doExtract___closed__1 = _init_l_Mathlib_evalExtractLets_doExtract___closed__1();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___closed__1);
l_Mathlib_evalExtractLets_doExtract___closed__2 = _init_l_Mathlib_evalExtractLets_doExtract___closed__2();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___closed__2);
l_Mathlib_evalExtractLets_doExtract___closed__3 = _init_l_Mathlib_evalExtractLets_doExtract___closed__3();
lean_mark_persistent(l_Mathlib_evalExtractLets_doExtract___closed__3);
l_Mathlib_evalExtractLets___closed__1 = _init_l_Mathlib_evalExtractLets___closed__1();
lean_mark_persistent(l_Mathlib_evalExtractLets___closed__1);
l_Mathlib_evalExtractLets___closed__2 = _init_l_Mathlib_evalExtractLets___closed__2();
lean_mark_persistent(l_Mathlib_evalExtractLets___closed__2);
l_Mathlib_evalExtractLets___closed__3 = _init_l_Mathlib_evalExtractLets___closed__3();
lean_mark_persistent(l_Mathlib_evalExtractLets___closed__3);
l_Mathlib_evalExtractLets___closed__4 = _init_l_Mathlib_evalExtractLets___closed__4();
lean_mark_persistent(l_Mathlib_evalExtractLets___closed__4);
l_Mathlib_evalExtractLets___closed__5 = _init_l_Mathlib_evalExtractLets___closed__5();
lean_mark_persistent(l_Mathlib_evalExtractLets___closed__5);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
