// Lean compiler output
// Module: Mathlib.Algebra.Ring.Idempotents
// Imports: Init Mathlib.Algebra.Group.Basic Mathlib.Algebra.Group.Commute.Defs Mathlib.Algebra.Ring.Defs Mathlib.Data.Subtype Mathlib.Order.Notation
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
LEAN_EXPORT lean_object* l_IsIdempotentElem_instOneSubtype___rarg___boxed(lean_object*);
lean_object* l_NonAssocRing_toAddCommGroupWithOne___rarg(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instZeroSubtype(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instZeroSubtype___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instHasComplSubtype___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instOneSubtype___rarg(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instZeroSubtype___rarg(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instHasComplSubtype(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instOneSubtype(lean_object*);
lean_object* l_AddCommGroupWithOne_toAddGroupWithOne___rarg(lean_object*);
LEAN_EXPORT lean_object* l_IsIdempotentElem_instZeroSubtype___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instZeroSubtype(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_IsIdempotentElem_instZeroSubtype___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instZeroSubtype___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_IsIdempotentElem_instZeroSubtype___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instOneSubtype___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instOneSubtype(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_IsIdempotentElem_instOneSubtype___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instOneSubtype___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_IsIdempotentElem_instOneSubtype___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instHasComplSubtype___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = l_NonAssocRing_toAddCommGroupWithOne___rarg(x_1);
x_4 = l_AddCommGroupWithOne_toAddGroupWithOne___rarg(x_3);
x_5 = lean_ctor_get(x_4, 3);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_apply_2(x_5, x_6, x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_IsIdempotentElem_instHasComplSubtype(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_IsIdempotentElem_instHasComplSubtype___rarg), 2, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Commute_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Ring_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Subtype(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Notation(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Ring_Idempotents(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Commute_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Ring_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Subtype(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Notation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
