// Lean compiler output
// Module: Mathlib.Order.Synonym
// Imports: Init Mathlib.Logic.Equiv.Defs Mathlib.Logic.Nontrivial.Defs Mathlib.Order.Basic
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
LEAN_EXPORT lean_object* l_OrderDual_toDual(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_rec___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_ofDual(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_rec(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lex_rec___rarg(lean_object*, lean_object*);
static lean_object* l_OrderDual_toDual___closed__1;
LEAN_EXPORT lean_object* l_Lex_rec(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ofLex(lean_object*);
lean_object* l_Equiv_refl(lean_object*);
LEAN_EXPORT lean_object* l_toLex(lean_object*);
static lean_object* _init_l_OrderDual_toDual___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_refl(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderDual_toDual(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_toDual___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_ofDual(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_toDual___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_rec___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_rec(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_OrderDual_rec___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_toLex(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_toDual___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_ofLex(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_toDual___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lex_rec___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lex_rec(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lex_rec___rarg), 2, 0);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Equiv_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Nontrivial_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_Synonym(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Equiv_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Nontrivial_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_OrderDual_toDual___closed__1 = _init_l_OrderDual_toDual___closed__1();
lean_mark_persistent(l_OrderDual_toDual___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
