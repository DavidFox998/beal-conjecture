// Lean compiler output
// Module: Mathlib.Algebra.Order.Monoid.Unbundled.Basic
// Imports: Init Mathlib.Algebra.Order.Monoid.Unbundled.Defs Mathlib.Data.Ordering.Basic Mathlib.Order.MinMax Mathlib.Tactic.Contrapose Mathlib.Tactic.Use
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
LEAN_EXPORT lean_object* l_Contravariant_toAddRightCancelSemigroup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toRightCancelSemigroup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toAddLeftCancelSemigroup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toAddLeftCancelSemigroup(lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toLeftCancelSemigroup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toAddRightCancelSemigroup___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toRightCancelSemigroup___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toAddLeftCancelSemigroup___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toAddRightCancelSemigroup(lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toLeftCancelSemigroup(lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toLeftCancelSemigroup___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toRightCancelSemigroup(lean_object*);
LEAN_EXPORT lean_object* l_Contravariant_toLeftCancelSemigroup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toLeftCancelSemigroup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Contravariant_toLeftCancelSemigroup___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toLeftCancelSemigroup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Contravariant_toLeftCancelSemigroup___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toAddLeftCancelSemigroup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toAddLeftCancelSemigroup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Contravariant_toAddLeftCancelSemigroup___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toAddLeftCancelSemigroup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Contravariant_toAddLeftCancelSemigroup___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toRightCancelSemigroup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toRightCancelSemigroup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Contravariant_toRightCancelSemigroup___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toRightCancelSemigroup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Contravariant_toRightCancelSemigroup___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toAddRightCancelSemigroup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toAddRightCancelSemigroup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Contravariant_toAddRightCancelSemigroup___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Contravariant_toAddRightCancelSemigroup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Contravariant_toAddRightCancelSemigroup___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Order_Monoid_Unbundled_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Ordering_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_MinMax(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Contrapose(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Use(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Order_Monoid_Unbundled_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Order_Monoid_Unbundled_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Ordering_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_MinMax(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Contrapose(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Use(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
