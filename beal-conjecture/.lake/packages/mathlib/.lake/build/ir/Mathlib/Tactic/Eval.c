// Lean compiler output
// Module: Mathlib.Tactic.Eval
// Imports: Init Mathlib.Init Qq.Macro
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
lean_object* l_Lean_Expr_const___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_eval__expr___closed__5;
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Mathlib_Meta_eval__expr___closed__13;
static lean_object* l_Mathlib_Meta_eval__expr___closed__7;
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_eval__expr___closed__12;
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__8;
lean_object* l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at___aux__Lean__Util__SearchPath______elabRules__termCompile__time__search__path_x25__1___spec__1___rarg(lean_object*);
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__2;
lean_object* l_Lean_Name_mkStr3(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_eval__expr___closed__9;
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__3;
lean_object* l_Lean_Meta_evalExpr___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__7;
lean_object* l_Lean_Meta_mkAppM(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__5;
static lean_object* l_Mathlib_Meta_eval__expr___closed__4;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__6;
static lean_object* l_Mathlib_Meta_eval__expr___closed__2;
static lean_object* l_Mathlib_Meta_eval__expr___closed__1;
static lean_object* l_Mathlib_Meta_eval__expr___closed__10;
static lean_object* l_Mathlib_Meta_eval__expr___closed__6;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__4;
LEAN_EXPORT lean_object* l_Mathlib_Meta_elabEvalExpr(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_eval__expr___closed__11;
lean_object* l_Lean_Elab_Term_elabTermAndSynthesize(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_elabEvalExpr___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Meta_eval__expr;
static lean_object* l_Mathlib_Meta_eval__expr___closed__8;
static lean_object* l_Mathlib_Meta_eval__expr___closed__3;
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Mathlib", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Meta", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("eval_expr", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Meta_eval__expr___closed__1;
x_2 = l_Mathlib_Meta_eval__expr___closed__2;
x_3 = l_Mathlib_Meta_eval__expr___closed__3;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Meta_eval__expr___closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("eval% ", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Meta_eval__expr___closed__7;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Meta_eval__expr___closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Meta_eval__expr___closed__10;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Meta_eval__expr___closed__6;
x_2 = l_Mathlib_Meta_eval__expr___closed__8;
x_3 = l_Mathlib_Meta_eval__expr___closed__11;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Meta_eval__expr___closed__4;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Mathlib_Meta_eval__expr___closed__12;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Meta_eval__expr() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Meta_eval__expr___closed__13;
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ToExpr", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("toExpr", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Meta_elabEvalExpr___closed__1;
x_2 = l_Mathlib_Meta_elabEvalExpr___closed__2;
x_3 = l_Mathlib_Meta_elabEvalExpr___closed__3;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Expr", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Meta_elabEvalExpr___closed__1;
x_2 = l_Mathlib_Meta_elabEvalExpr___closed__6;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Meta_elabEvalExpr___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Meta_elabEvalExpr___closed__7;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_elabEvalExpr(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_Mathlib_Meta_eval__expr___closed__4;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_12 = l_Lean_Elab_throwUnsupportedSyntax___at___aux__Lean__Util__SearchPath______elabRules__termCompile__time__search__path_x25__1___spec__1___rarg(x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_unsigned_to_nat(1u);
x_14 = l_Lean_Syntax_getArg(x_1, x_13);
lean_dec(x_1);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_15 = l_Lean_Elab_Term_elabTermAndSynthesize(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(x_16, x_3, x_4, x_5, x_6, x_7, x_8, x_17);
lean_dec(x_4);
lean_dec(x_3);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = l_Mathlib_Meta_elabEvalExpr___closed__5;
x_22 = lean_array_push(x_21, x_19);
x_23 = l_Mathlib_Meta_elabEvalExpr___closed__4;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_24 = l_Lean_Meta_mkAppM(x_23, x_22, x_5, x_6, x_7, x_8, x_20);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; lean_object* x_29; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = l_Mathlib_Meta_elabEvalExpr___closed__8;
x_28 = 0;
x_29 = l_Lean_Meta_evalExpr___rarg(x_27, x_25, x_28, x_5, x_6, x_7, x_8, x_26);
return x_29;
}
else
{
uint8_t x_30; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_30 = !lean_is_exclusive(x_24);
if (x_30 == 0)
{
return x_24;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_24, 0);
x_32 = lean_ctor_get(x_24, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_24);
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
lean_dec(x_3);
x_34 = !lean_is_exclusive(x_15);
if (x_34 == 0)
{
return x_15;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_15, 0);
x_36 = lean_ctor_get(x_15, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_15);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Qq_Macro(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_Eval(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Qq_Macro(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Mathlib_Meta_eval__expr___closed__1 = _init_l_Mathlib_Meta_eval__expr___closed__1();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__1);
l_Mathlib_Meta_eval__expr___closed__2 = _init_l_Mathlib_Meta_eval__expr___closed__2();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__2);
l_Mathlib_Meta_eval__expr___closed__3 = _init_l_Mathlib_Meta_eval__expr___closed__3();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__3);
l_Mathlib_Meta_eval__expr___closed__4 = _init_l_Mathlib_Meta_eval__expr___closed__4();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__4);
l_Mathlib_Meta_eval__expr___closed__5 = _init_l_Mathlib_Meta_eval__expr___closed__5();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__5);
l_Mathlib_Meta_eval__expr___closed__6 = _init_l_Mathlib_Meta_eval__expr___closed__6();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__6);
l_Mathlib_Meta_eval__expr___closed__7 = _init_l_Mathlib_Meta_eval__expr___closed__7();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__7);
l_Mathlib_Meta_eval__expr___closed__8 = _init_l_Mathlib_Meta_eval__expr___closed__8();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__8);
l_Mathlib_Meta_eval__expr___closed__9 = _init_l_Mathlib_Meta_eval__expr___closed__9();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__9);
l_Mathlib_Meta_eval__expr___closed__10 = _init_l_Mathlib_Meta_eval__expr___closed__10();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__10);
l_Mathlib_Meta_eval__expr___closed__11 = _init_l_Mathlib_Meta_eval__expr___closed__11();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__11);
l_Mathlib_Meta_eval__expr___closed__12 = _init_l_Mathlib_Meta_eval__expr___closed__12();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__12);
l_Mathlib_Meta_eval__expr___closed__13 = _init_l_Mathlib_Meta_eval__expr___closed__13();
lean_mark_persistent(l_Mathlib_Meta_eval__expr___closed__13);
l_Mathlib_Meta_eval__expr = _init_l_Mathlib_Meta_eval__expr();
lean_mark_persistent(l_Mathlib_Meta_eval__expr);
l_Mathlib_Meta_elabEvalExpr___closed__1 = _init_l_Mathlib_Meta_elabEvalExpr___closed__1();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__1);
l_Mathlib_Meta_elabEvalExpr___closed__2 = _init_l_Mathlib_Meta_elabEvalExpr___closed__2();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__2);
l_Mathlib_Meta_elabEvalExpr___closed__3 = _init_l_Mathlib_Meta_elabEvalExpr___closed__3();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__3);
l_Mathlib_Meta_elabEvalExpr___closed__4 = _init_l_Mathlib_Meta_elabEvalExpr___closed__4();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__4);
l_Mathlib_Meta_elabEvalExpr___closed__5 = _init_l_Mathlib_Meta_elabEvalExpr___closed__5();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__5);
l_Mathlib_Meta_elabEvalExpr___closed__6 = _init_l_Mathlib_Meta_elabEvalExpr___closed__6();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__6);
l_Mathlib_Meta_elabEvalExpr___closed__7 = _init_l_Mathlib_Meta_elabEvalExpr___closed__7();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__7);
l_Mathlib_Meta_elabEvalExpr___closed__8 = _init_l_Mathlib_Meta_elabEvalExpr___closed__8();
lean_mark_persistent(l_Mathlib_Meta_elabEvalExpr___closed__8);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
