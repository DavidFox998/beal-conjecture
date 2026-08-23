// Lean compiler output
// Module: Mathlib.Data.Sum.Basic
// Imports: Init Mathlib.Logic.Function.Basic Mathlib.Tactic.MkIffOfInductiveProp Batteries.Data.Sum.Lemmas
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
LEAN_EXPORT lean_object* l_Sum3_in_u2082(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sum3_in_u2081(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sum3_in_u2080___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Sum3_in_u2080(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sum3_in_u2082___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Sum3_in_u2081___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Sum3_in_u2080___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Sum3_in_u2080(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Sum3_in_u2080___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Sum3_in_u2081___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Sum3_in_u2081(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Sum3_in_u2081___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Sum3_in_u2082___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Sum3_in_u2082(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Sum3_in_u2082___rarg), 1, 0);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Function_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_MkIffOfInductiveProp(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Data_Sum_Lemmas(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Sum_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Function_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_MkIffOfInductiveProp(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Data_Sum_Lemmas(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
