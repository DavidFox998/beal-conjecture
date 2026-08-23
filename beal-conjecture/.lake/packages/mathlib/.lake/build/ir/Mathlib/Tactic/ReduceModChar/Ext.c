// Lean compiler output
// Module: Mathlib.Tactic.ReduceModChar.Ext
// Imports: Init Mathlib.Init Lean.Meta.Tactic.Simp.Attr
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
LEAN_EXPORT lean_object* l_reduceModCharExt;
LEAN_EXPORT lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5_(lean_object*);
static lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__5;
static lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__3;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__4;
lean_object* l_Lean_Meta_registerSimpAttr(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__2;
static lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__1;
static lean_object* _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("reduce_mod_char", 15, 15);
return x_1;
}
}
static lean_object* _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("reduceModCharExt", 16, 16);
return x_1;
}
}
static lean_object* _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("lemmas for preprocessing and cleanup in the `reduce_mod_char` tactic", 68, 68);
return x_1;
}
}
LEAN_EXPORT lean_object* l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5_(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__2;
x_3 = l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__5;
x_4 = l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__4;
x_5 = l_Lean_Meta_registerSimpAttr(x_2, x_3, x_4, x_1);
return x_5;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Simp_Attr(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_ReduceModChar_Ext(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Simp_Attr(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__1 = _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__1();
lean_mark_persistent(l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__1);
l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__2 = _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__2();
lean_mark_persistent(l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__2);
l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__3 = _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__3();
lean_mark_persistent(l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__3);
l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__4 = _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__4();
lean_mark_persistent(l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__4);
l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__5 = _init_l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__5();
lean_mark_persistent(l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5____closed__5);
res = l_initFn____x40_Mathlib_Tactic_ReduceModChar_Ext___hyg_5_(lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
l_reduceModCharExt = lean_io_result_get_value(res);
lean_mark_persistent(l_reduceModCharExt);
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
